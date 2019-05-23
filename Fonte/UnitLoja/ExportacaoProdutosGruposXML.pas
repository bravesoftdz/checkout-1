unit ExportacaoProdutosGruposXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, StdCtrls, ComCtrls,
  Mask, ToolEdit, Buttons, jpeg, ExtCtrls, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormExportacaoProdutosGruposXML = class(TFormTelaGeralTEMPLATE)
    BtnIniciar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    HoraInicial: TDateTimePicker;
    HoraFinal: TDateTimePicker;
    Label1: TLabel;
    EditCaminho: TEdit;
    SQLSubGrupoXML: TRxQuery;
    SQLSubGrupoXMLGRUPICOD: TIntegerField;
    SQLSubGrupoXMLSUBGICOD: TIntegerField;
    SQLSubGrupoXMLSUBGA60DESCR: TStringField;
    SQLGrupoXML11: TQuery;
    SQLGrupoXML11GRUPICOD: TIntegerField;
    SQLGrupoXML11GRUPA60DESCR: TStringField;
    SQLProdutoXML: TRxQuery;
    SQLPRodutoGradeXML: TRxQuery;
    SQLGrupoXML: TRxQuery;
    SQLGrupoXMLGRUPICOD: TIntegerField;
    SQLGrupoXMLGRUPA60DESCR: TStringField;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    Label8: TLabel;
    ComboMarca: TRxDBLookupCombo;
    ckPeriodo: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportacaoProdutosGruposXML: TFormExportacaoProdutosGruposXML;

implementation

uses DataModulo,  UnitLibrary;

{$R *.dfm}

procedure TFormExportacaoProdutosGruposXML.FormCreate(Sender: TObject);
begin
  inherited;
  DataInicial.Date := Date;
  DataFinal.Date   := Date;
  HoraInicial.Time := StrToTime('00:00:00');
  HoraFinal.Time   := StrToTime('23:59:00');
  SQLMarca.Open;
end;

procedure TFormExportacaoProdutosGruposXML.BtnIniciarClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha, Ativo, Grade, Tamanho : String;
    SaldoTotalGrade : Integer;
    Arquivo : TextFile;
    Erro : boolean;
begin
  inherited;
  // Cria Categorias
  CaminhoNomeArquivo := '..\XML\categoria.xml';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Erro := False;
  except
    Erro := True;
  end;

  // Cabecalho Categorias
  Linha :=   '<?xml version="1.0" encoding= "utf-8" ?>'         + CHR(13) +
             '<categoria>'                                      + CHR(13) +
             '    <child>'                                      + CHR(13) +
             '        <id>1</id>'                               + CHR(13) +
             '        <id_parent>0</id_parent>'                 + CHR(13) +
             '        <nome>PRODUTOS</nome>'                    + CHR(13) +
             '        <descricao></descricao>'                  + CHR(13) +
             '        <ordem></ordem>'                          + CHR(13) +
             '        <dinamico>1</dinamico>'                   + CHR(13) +
             '        <children>';
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Registros a Lancar
  // Grupos e Subgrupos, para nao ter problemas de Key violation no site, concatenar cod.grupo+cd.subgrupo
  // Lancar Grupos ALTERADOS
  SQLGrupoXML.close;
  if ckPeriodo.Checked then
    begin
      SQLGrupoXML.MacroByName('MInicio').AsString  := '0=0';
      SQLGrupoXML.MacroByName('MFim').AsString     := '0=0';
    end
  else
    begin
      SQLGrupoXML.MacroByName('MInicio').AsString  := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy',DataInicial.Date) + ' ' + FormatDateTime('hh:nn:ss',HoraInicial.Time) + '"';
      SQLGrupoXML.MacroByName('MFim').AsString     := 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy',DataFinal.Date)   + ' ' + FormatDateTime('hh:nn:ss',HoraFinal.Time)   + '"';
    end;

  SQLGrupoXML.open;
  SQLGrupoXML.first;

  while not SQLGrupoXML.Eof do
    begin
      Linha := '            <child>'                                                   + CHR(13) +
               '                <id>'+SQLGrupoXMLGRUPICOD.AsString+'0'+'</id>'         + CHR(13) +
               '                <id_parent>1</id_parent>'                              + CHR(13) +
               '                <nome>'+ConverteAcentos(SQLGrupoXMLGRUPA60DESCR.AsString)+'</nome>'     + CHR(13) +
               '                <descricao></descricao>'                               + CHR(13) +
               '                <ordem></ordem>'                                       + CHR(13) +
               '                <dinamico>1</dinamico>'                                + CHR(13) +
               '                <children>';
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      // Lancar SubGrupos ALTERADOS
      SQLSubGrupoXML.close;
      SQLSubGrupoXML.MacroByName('Filtro').Value      := 'GRUPICOD = '   + SQLGrupoXMLGRUPICOD.AsString;
    //  SQLSubGrupoXML.MacroByName('MInicio').AsString  := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy',DataInicial.Date) + ' ' + FormatDateTime('hh:nn:ss',HoraInicial.Time) + '"';
    //  SQLSubGrupoXML.MacroByName('MFim').AsString     := 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy',DataFinal.Date)   + ' ' + FormatDateTime('hh:nn:ss',HoraFinal.Time)   + '"';
      SQLSubGrupoXML.MacroByName('MInicio').AsString  := '0=0';
      SQLSubGrupoXML.MacroByName('MFim').AsString     := '0=0';
      SQLSubGrupoXML.open;
      SQLSubGrupoXML.first;
      while not SQLSubGrupoXML.Eof do
        begin
          Linha := '                   <child>'                                                                            + CHR(13) +
                   '                       <id>'+SQLGrupoXMLGRUPICOD.AsString+'0'+SQLSubGrupoXMLSUBGICOD.AsString+'</id>'  + CHR(13) +
                   '                       <id_parent>'+SQLGrupoXMLGRUPICOD.AsString+'0'+'</id_parent>'                    + CHR(13) +
                   '                       <nome>'+ConverteAcentos(SQLSubGrupoXMLSUBGA60DESCR.AsString)+'</nome>'          + CHR(13) +
                   '                       <descricao></descricao>'                                                        + CHR(13) +
                   '                       <ordem></ordem>'                                                                + CHR(13) +
                   '                       <dinamico>1</dinamico>'                                                         + CHR(13) +
                   '                       <children>'                                                                     + CHR(13) +
                   '                       </children>'                                                                    + CHR(13) +
                   '                   </child>';
          try
            Append(Arquivo);
            Writeln(Arquivo,Linha);
            Erro := False;
          except
            Erro := True;
          end;

          SQLSubGrupoXML.Next;
        end;

      // Fecha a Tag
      Linha :=    '                </children>' + CHR(13) +
                  '            </child>';
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      SQLGrupoXML.Next;
    end;
  SQLGrupoXML.Close;

  // Rodape Categorias
  Linha :=   '        </children>'     + CHR(13) +
             '    </child>'          + CHR(13) +
             '</categoria>';
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Fechar Arquivo
  CloseFile(Arquivo);
//------------------------------------------------------------------------------

  // Cria Produtos
  CaminhoNomeArquivo := '..\XML\produtos.xml';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Erro := False;
  except
    Erro := True;
  end;

  // Cabecalho Produtos
  Linha :=   '<?xml version="1.0" encoding="utf-8" ?>'     + CHR(13) +
             '<produtos>' ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Lancar Registros Produtos
  SQLProdutoXML.close;
  if ckPeriodo.Checked then
    begin
      SQLProdutoXML.MacroByName('MInicio').AsString  := '0=0';
      SQLProdutoXML.MacroByName('MFim').AsString     := '0=0';
    end
  else
    begin
      SQLProdutoXML.MacroByName('MInicio').AsString  := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy',DataInicial.Date) + ' ' + FormatDateTime('hh:nn:ss',HoraInicial.Time) + '"';
      SQLProdutoXML.MacroByName('MFim').AsString     := 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy',DataFinal.Date)   + ' ' + FormatDateTime('hh:nn:ss',HoraFinal.Time)   + '"';
    end;

   if ComboMarca.KeyValue <> null then
     SQLProdutoXML.MacroByName('MMarca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.KeyValue
   else
     SQLProdutoXML.MacroByName('MMarca').Value := '0=0';

  SQLProdutoXML.open;
  SQLProdutoXML.first;
  while not SQLProdutoXML.Eof do
    begin
      // 1 = Ativo e 0 = Inativo
      if SQLProdutoXML.findfield('PRODCATIVO').AsString = 'S' then
        Ativo := '1'  else  Ativo := '0';
      // Se o produto nao tiver Grade, lanca direto
      if SQLProdutoXML.findfield('GRADICOD').AsString = '' then
        begin
          Linha := '    <produto>'                                                                                          + CHR(13) +
                   '        <id_categoria>'+SQLProdutoXML.findfield('GRUPICOD').AsString+'0'+
                                            SQLProdutoXML.findfield('SUBGICOD').AsString+'</id_categoria>'                  + CHR(13) +
                   '        <codigo>'+SQLProdutoXML.findfield('PRODICOD').AsString+'</codigo>'                              + CHR(13) +
                   '        <nome>'+ConverteAcentos(SQLProdutoXML.findfield('PRODA60DESCR').AsString)+'</nome>'             + CHR(13) +
                   '        <resumo>'+ConverteAcentos(SQLProdutoXML.findfield('PRODA60DESCR').AsString)+'</resumo>'         + CHR(13) +
                   '        <descricao>'+ConverteAcentos(SQLProdutoXML.findfield('PRODA60DESCR').AsString)+'</descricao>'   + CHR(13) +
                   '        <fichatecnica></fichatecnica>'                                                                  + CHR(13) +
                   '        <valor>'+SQLProdutoXML.findfield('PRODN3VLRVENDA').AsString+'</valor>'                          + CHR(13) +
                   '        <estoque>'+dm.SQLLocate('PRODUTOSALDO','PRODICOD','PSLDN3QTDE',SQLProdutoXML.findfield('PRODICOD').AsString)+'</estoque>'+ CHR(13) +
                   '        <prioridade>1</prioridade>'                                                                     + CHR(13) +
                   '        <destaque>0</destaque>'                                                                         + CHR(13) +
                   '        <ativo>'+Ativo+'</ativo>'                                                                       + CHR(13) +
                   '            <numeracao></numeracao>' ;
          try
            Append(Arquivo);
            Writeln(Arquivo,Linha);
            Erro := False;
          except
            Erro := True;
          end;
        end
      else
        begin
          // Para produtos com Grade, tem q achar o total de estoque e lancar na tag estoque, depois lancar os tamanhos separados
          SaldoTotalGrade := 0;
          SQLPRodutoGradeXML.Close;
          SQLPRodutoGradeXML.MacroByName('Filtro').Value := 'PRODIAGRUPGRADE = ' + SQLProdutoXML.findfield('PRODIAGRUPGRADE').AsString;
          SQLPRodutoGradeXML.Open;
          if not SQLPRodutoGradeXML.IsEmpty then
            begin
              while not SQLPRodutoGradeXML.eof do
                begin
                  try
                    SaldoTotalGrade := SaldoTotalGrade + StrToInt(dm.SQLLocate('PRODUTOSALDO','PRODICOD','PSLDN3QTDE',SQLProdutoGradeXML.findfield('PRODICOD').AsString));
                  except
                    Application.ProcessMessages;
                  end;
                  SQLPRodutoGradeXML.Next;
                end;
              SQLPRodutoGradeXML.First;
              // Lanca Primeiro Produto com os dados principais do XML
              Linha := '    <produto>'                                                                                      + CHR(13) +
                       '        <id_categoria>'+SQLProdutoGradeXML.findfield('GRUPICOD').AsString+'0'+
                                                SQLProdutoGradeXML.findfield('SUBGICOD').AsString+'</id_categoria>'         + CHR(13) +
                       '        <codigo>'+SQLProdutoGradeXML.findfield('PRODICOD').AsString+'</codigo>'                     + CHR(13) +
                       '        <nome>'+ConverteAcentos(SQLProdutoGradeXML.findfield('PRODA60DESCR').AsString)+'</nome>'                     + CHR(13) +
                       '        <resumo>'+ConverteAcentos(SQLProdutoGradeXML.findfield('PRODA60DESCR').AsString)+'</resumo>'                 + CHR(13) +
                       '        <descricao>'+ConverteAcentos(SQLProdutoGradeXML.findfield('PRODA60DESCR').AsString)+'</descricao>'           + CHR(13) +
                       '        <fichatecnica></fichatecnica>'                                                              + CHR(13) +
                       '        <valor>'+SQLProdutoGradeXML.findfield('PRODN3VLRVENDA').AsString+'</valor>'                 + CHR(13) +
                       '        <estoque>'+intToStr(SaldoTotalGrade)+'</estoque>'                                           + CHR(13) +
                       '        <prioridade>1</prioridade>'                                                                 + CHR(13) +
                       '        <destaque>1</destaque>'                                                                     + CHR(13) +
                       '        <ativo>'+Ativo+'</ativo>' ;
              try
                Append(Arquivo);
                Writeln(Arquivo,Linha);
                Erro := False;
              except
                Erro := True;
              end;

              // Laco dos Tamanhos x Cores
              while not SQLPRodutoGradeXML.eof do
                begin
                  SaldoTotalGrade := StrToInt(dm.SQLLocate('PRODUTOSALDO','PRODICOD','PSLDN3QTDE',SQLProdutoGradeXML.findfield('PRODICOD').AsString));
                  Grade   := SQLProdutoGradeXML.findfield('GRADICOD').AsString;
                  Tamanho := SQLProdutoGradeXML.findfield('GRTMICOD').AsString;
                  Linha := '            <numeracao>'                                                                            + CHR(13) +
                           '                <numeracao>'+RetornaTamanhoProduto(Grade,Tamanho)+'</numeracao>'                    + CHR(13) +
                           '                <estoque>'+intToStr(SaldoTotalGrade)+'</estoque>'                                   + CHR(13) +
                           '                <cor>'+RetornaCorProduto(SQLProdutoGradeXML.findfield('CORICOD').AsString)+'</cor>' + CHR(13) +
                           '            </numeracao>' ;
                  try
                    Append(Arquivo);
                    Writeln(Arquivo,Linha);
                    Erro := False;
                  except
                    Erro := True;
                  end;

                  SQLPRodutoGradeXML.Next;
                end;
            end;
        end;

      Linha := '    </produto>' ;
      try
        Append(Arquivo);
        Writeln(Arquivo,Linha);
        Erro := False;
      except
        Erro := True;
      end;

      SQLProdutoXML.Next;
    end;
  // Rodape Produtos
  Linha :=   '</produtos>' ;
  try
    Append(Arquivo);
    Writeln(Arquivo,Linha);
    Erro := False;
  except
    Erro := True;
  end;

  // Fechar Arquivo
  CloseFile(Arquivo);
  ShowMessage('Geracao de Categorias e Produtos com Sucesso!');
end;

end.
