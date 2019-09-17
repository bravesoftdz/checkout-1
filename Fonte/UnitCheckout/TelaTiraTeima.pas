unit TelaTiraTeima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, JPEG, DBCtrls, RXCtrls, Mask, ToolEdit, CurrEdit, EWall,
  TFlatSpeedButtonUnit, AdvSmoothPanel, DB, DBClient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBTables, MemTable, RxQuery, Grids, DBGrids;

type
  TProtectDBGrid = Class(TDBGrid);
  TFormTelaTiraTeima = class(TForm)
    LblNomeSistema: TRxLabel;
    TimerTiraTela: TTimer;
    AdvSmoothPanel3: TAdvSmoothPanel;
    DescricaoTecnica: TLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    lbLocalizacao: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Foto: TImage;
    AdvSmoothPanel2: TAdvSmoothPanel;
    LBPreco: TRxLabel;
    PrecoNormal: TCurrencyEdit;
    lbPrecoAtacado: TRxLabel;
    PrecoAtacado: TCurrencyEdit;
    lbPrecoPromocao: TRxLabel;
    PrecoPromocao: TCurrencyEdit;
    RxLabel3: TRxLabel;
    SaldoAtual: TCurrencyEdit;
    btFalta: TFlatSpeedButton;
    LBMarca: TRxLabel;
    lbGrupo: TRxLabel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    DescricaoProduto: TRxLabel;
    lbPREVCOMPRA: TRxLabel;
    EntradaDados: TEdit;
    cdsEstoqueEmpresas: TClientDataSet;
    cdsEstoqueEmpresasNome: TStringField;
    cdsEstoqueEmpresasQtde: TFloatField;
    dsEstoqueEmpresas: TDataSource;
    pnlEstoqueEmpresas: TAdvSmoothPanel;
    btnFecharEstoqueEmpresas: TFlatSpeedButton;
    btnBuscarEstoqueFiliais: TFlatSpeedButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Qtde: TcxGridDBColumn;
    RxLabel4: TRxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pnlGrade: TAdvSmoothPanel;
    btnFecharGrade: TFlatSpeedButton;
    RxLabel5: TRxLabel;
    btnConsultarGrade: TFlatSpeedButton;
    TblSaldoEmpresa: TMemoryTable;
    TblSaldoEmpresaEmpresa: TStringField;
    TblSaldoEmpresaCor: TStringField;
    TblSaldoEmpresaTotal: TFloatField;
    TblSaldoEmpresaQtd1: TFloatField;
    TblSaldoEmpresaQtd2: TFloatField;
    TblSaldoEmpresaQtd3: TFloatField;
    TblSaldoEmpresaQtd4: TFloatField;
    TblSaldoEmpresaQtd5: TFloatField;
    TblSaldoEmpresaQtd6: TFloatField;
    TblSaldoEmpresaQtd7: TFloatField;
    TblSaldoEmpresaQtd8: TFloatField;
    TblSaldoEmpresaQtd9: TFloatField;
    TblSaldoEmpresaQtd10: TFloatField;
    TblSaldoEmpresaQtd11: TFloatField;
    TblSaldoEmpresaQtd12: TFloatField;
    TblSaldoEmpresaQtd13: TFloatField;
    TblSaldoEmpresaQtd14: TFloatField;
    TblSaldoEmpresaQtd15: TFloatField;
    TblSaldoEmpresaQtd16: TFloatField;
    TblSaldoEmpresaQtd17: TFloatField;
    TblSaldoEmpresaQtd18: TFloatField;
    TblSaldoEmpresaQtd19: TFloatField;
    TblSaldoEmpresaQtd20: TFloatField;
    TblSaldoEmpresaQtd21: TFloatField;
    TblSaldoEmpresaQtd22: TFloatField;
    TblSaldoEmpresaQtd23: TFloatField;
    TblSaldoEmpresaQtd24: TFloatField;
    TblSaldoEmpresaQtd25: TFloatField;
    DSTblSaldoEmpresa: TDataSource;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLGradeTamanhoPENDENTE: TStringField;
    SQLGradeTamanhoREGISTRO: TDateTimeField;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLProdutoGradePRODN3VLRVENDA: TFloatField;
    SQLProdutoGradePRODN3VLRCOMPRA: TFloatField;
    SQLProdutoGradePRODN3VLRCUSTO: TFloatField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    RxQuery1: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD2: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE2: TIntegerField;
    SQLProdutoPRODA60DESCR2: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoPSLDN3QTDE: TFloatField;
    SQLProdutoEMPRICOD: TIntegerField;
    gridGradeEstoque: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTiraTelaTimer(Sender: TObject);
    procedure btFaltaClick(Sender: TObject);
    procedure btnFecharEstoqueEmpresasClick(Sender: TObject);
    procedure btnBuscarEstoqueFiliaisClick(Sender: TObject);
    procedure btnConsultarGradeClick(Sender: TObject);
    procedure btnFecharGradeClick(Sender: TObject);
    procedure gridGradeEstoqueDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    BlobStream: TStream;
    JPEGImage: TJPEGImage;
  end;

var
  FormTelaTiraTeima: TFormTelaTiraTeima;

implementation

uses TelaItens, UnitLibrary, DataModulo, UnitCheckoutLibrary, VarSYS;



{$R *.DFM}

procedure TFormTelaTiraTeima.FormCreate(Sender: TObject);
begin
  if DM.SQLConfigVendaCFVEITEMPOCONSPROD.Value > 0 then
  begin
    TimerTiraTela.Interval := DM.SQLConfigVendaCFVEITEMPOCONSPROD.Value * 1000;
    TimerTiraTela.Enabled := true;
  end;
end;

procedure TFormTelaTiraTeima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) then Close;
  if (Key = VK_Return) and (EntradaDados.Text <> '') then
  begin
    if EncontrouProduto(EntradaDados.Text, FormTelaItens.SQLProduto) then
    begin
          // RETORNA SALDO DO PRODUTO
      if FileExists('MostraSaldo.txt') then
      begin
        DM.SQLTemplate.Close;
        DM.SQLTemplate.SQL.Clear;
        DM.SQLTemplate.SQL.Add('select PRODUTO.PRODICOD,');
        DM.SQLTemplate.SQL.Add('(select PRODUTOSALDO.PSLDN3QTDE from PRODUTOSALDO');
        DM.SQLTemplate.SQL.Add('where PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao);
        DM.SQLTemplate.SQL.Add('and   PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as QUANT');
        DM.SQLTemplate.SQL.Add('from PRODUTO');
        DM.SQLTemplate.SQL.Add('where PRODUTO.PRODICOD = ' + FormTelaItens.SQLProdutoPRODICOD.AsString);
        DM.SQLTemplate.Open;
      end;
      EntradaDados.Text := CodigoProduto;
      EntradaDados.Update;
      DescricaoProduto.Caption := FormTelaItens.SQLProdutoPRODICOD.AsString + '-' + FormTelaItens.SQLProduto.FieldByName('PRODA60DESCR').AsString;
      if RetornaTamanhoProduto(FormTelaItens.SQLProdutoGRADICOD.AsString, FormTelaItens.SQLProdutoGRTMICOD.AsString) <> '' then
        DescricaoProduto.Caption := DescricaoProduto.Caption + '/' + RetornaTamanhoProduto(FormTelaItens.SQLProdutoGRADICOD.AsString, FormTelaItens.SQLProdutoGRTMICOD.AsString);

      if DM.SQLConfigVendaTPRCICOD.AsString <> '' then
        PrecoNormal.Value := StrToFloat(FormatFloat('##0.00', RetornaPreco(FormTelaItens.SQLProduto, DM.SQLConfigVendaTPRCICOD.AsString, UsaPrecoVenda)))
      else
        PrecoNormal.Value := FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
      PrecoAtacado.Value := FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDA2').AsFloat;

      if ((FormTelaItens.SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (FormTelaItens.SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or
        ((FormTelaItens.SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (FormTelaItens.SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
        PrecoPromocao.Value := FormTelaItens.SQLProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat
      else
        PrecoPromocao.Value := 0;

      if PrecoPromocao.Value > 0 then
      begin
        lbPrecoPromocao.Visible := True;
        PrecoPromocao.Visible := True;
      end
      else
      begin
        lbPrecoPromocao.Visible := False;
        PrecoPromocao.Visible := False;
      end;

      if FormTelaItens.SQLProduto.FieldByName('PRODA255DESCRTEC').AsString <> '' then
        DescricaoTecnica.Caption := 'Ref.' + FormTelaItens.SQLProduto.FieldByName('PRODA60REFER').AsString + CHR(13) +
          FormTelaItens.SQLProduto.FieldByName('PRODA255DESCRTEC').AsString;

      LBMarca.Caption := dm.SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', FormTelaItens.SQLProdutoMARCICOD.AsString);
      lbGrupo.Caption := dm.SQLLocate('GRUPO', 'GRUPICOD', 'GRUPA60DESCR', FormTelaItens.SQLProdutoGRUPICOD.AsString);
      lbLocalizacao.Caption := 'Pavimento: ' + FormTelaItens.SQLProdutoPRODA15APAVIM.Value + ' Rua: ' + FormTelaItens.SQLProdutoPRODA15RUA.Value +
        'Prateleira: ' + FormTelaItens.SQLProdutoPRODA15PRATEL.Value;

      if FormTelaItens.SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString <> '' then
        lbPREVCOMPRA.Caption := 'Prev.Compra. ' + FormTelaItens.SQLProduto.FieldByName('PRODDPREVCOMPRA').AsString
      else
        lbPREVCOMPRA.Caption := '';
      SaldoAtual.Value := 0;
      if FileExists('MostraSaldo.txt') then
        if DM.SQLTemplate.FieldByName('QUANT').AsString <> '' then
          SaldoAtual.Value := DM.SQLTemplate.FieldByName('QUANT').Value;

          // Mostra Imagem Associada ao Produto
          {if (FormTelaItens.SQLProdutoPRODBIMAGEM.BlobSize <> 0) then
            begin
              BlobStream := FormTelaItens.SQLProduto.CreateBlobStream(FormTelaItens.SQLProdutoPRODBIMAGEM,bmRead);
              JPEGImage  := TJPEGImage.Create;
              try
                JPEGImage.LoadFromStream(BlobStream);
                Foto.Picture.Assign(JPEGImage);
              finally
                BlobStream.Free;
                JPEGImage.Free;
              end;
            end
          else
            Foto.Picture.Assign(FormTelaItens.Foto.Picture) ;}
    end
    else
      InformaG('Produto não encontrado!');
  end;
end;

procedure TFormTelaTiraTeima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  FormTelaItens.SQLProduto.Close;
end;

procedure TFormTelaTiraTeima.TimerTiraTelaTimer(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaTiraTeima.btFaltaClick(Sender: TObject);
var xQtdeMinima: string;
begin
  xQtdeMinima := InputBox('Lanças Faltas!', 'Informar Quantidade Minima?', '');
  dm.zConsulta.Close;
  dm.zConsulta.sql.Text := 'Select * from produtosaldo where prodicod = ' + FormTelaItens.SQLProdutoPRODICOD.AsString + ' and empricod = ' + EmpresaPadrao;
  dm.zConsulta.Open;
  if Pergunta('NAO', '* * * CONFIRMA O LANÇAMENTO DA FALTA? * * *') then
  begin
    if not dm.zConsulta.IsEmpty then
    begin
      dm.zConsulta.edit;
      dm.zConsulta.fieldbyname('PSLDN3QTDMIN').AsFloat := StrToFloat(xQtdeMinima);
      dm.zConsulta.post;
    end;
  end;
end;

procedure TFormTelaTiraTeima.btnFecharEstoqueEmpresasClick(
  Sender: TObject);
begin
  pnlEstoqueEmpresas.Visible := False;
end;

procedure TFormTelaTiraTeima.btnBuscarEstoqueFiliaisClick(Sender: TObject);
var
  xsql: string;
begin
  if FormTelaItens.SQLProdutoPRODICOD.AsString = '' then exit;

  cdsEstoqueEmpresas.Close;
  cdsEstoqueEmpresas.CreateDataSet;

  xsql := ' select B.empra60nomefant ,A.psldn3qtde from PRODUTOSALDO A '
    + ' INNER JOIN empresa B ON B.empricod = A.empricod WHERE A.prodicod = ' + FormTelaItens.SQLProdutoPRODICOD.AsString;

  dm.zdbServidor.Connected := False;
  dm.zdbServidor.HostName := Servidor_HostName;
  dm.zdbServidor.Database := Servidor_Database;  
  try
    dm.zServidor_Consulta.Close;
    dm.zServidor_Consulta.sql.Clear;
    dm.zServidor_Consulta.SQL.Add(xsql);
    try
      dm.zdbServidor.Connected := True;
      dm.zServidor_Consulta.Open; 
      dm.zServidor_Consulta.First;
      while not dm.zServidor_Consulta.eof do
      begin
        cdsEstoqueEmpresas.InsertRecord([dm.zServidor_Consulta.FieldByName('empra60nomefant').AsString,
          dm.zServidor_Consulta.FieldByName('psldn3qtde').AsFloat]);
        dm.zServidor_Consulta.Next;
      end;

    except
      with ExecSql(xsql) do
      try
        First;
        while not eof do
        begin
          cdsEstoqueEmpresas.InsertRecord([FieldByName('empra60nomefant').AsString,
            FieldByName('psldn3qtde').AsFloat]);
          Next;
        end;
      finally
        free;
      end;
    end;

    if cdsEstoqueEmpresas.RecordCount > 0 then
    begin
      pnlEstoqueEmpresas.Width := 825;
      pnlEstoqueEmpresas.Visible := True;
    end;
  finally
    dm.zServidor_Consulta.Close;
    dm.zdbServidor.Connected := False;
  end;
end;

procedure TFormTelaTiraTeima.btnConsultarGradeClick(Sender: TObject);
var
  Empresa, Cor: string;
  Posicao, I: Integer;
  Soma, SomaE: Double;
  Qtd: array[1..25] of Double;
  QtdE: array[1..25] of Double;
begin
  if FormTelaItens.SQLProdutoPRODICOD.AsString = '' then exit;

  if EncontrouProduto(FormTelaItens.SQLProdutoPRODICOD.AsString, SQLProdutoGrade) then
  begin
    if not TblSaldoEmpresa.Active then
      TblSaldoEmpresa.Open;
    while TblSaldoEmpresa.RecordCount > 0 do
      TblSaldoEmpresa.Delete;
    SQLGradeTamanho.Close;
    SQLGradeTamanho.ParamByName('GRADICOD').asInteger := SQLProdutoGradeGRADICOD.asInteger;
    SQLGradeTamanho.Open;
    SQLGradeTamanho.First;
    I := 0;
    if not SQLGradeTamanho.IsEmpty then
    begin
      if SQLGradeTamanho.RecordCount > 25 then
      begin
        Informa('Problemas no cadastro da grade... ' + #13 + 'Número de tamanhos excedeu o limite de 25, verifique seu cadastro!' + #13 + 'A operação será cancelada!');
        Exit;
      end;
      while not SQLGradeTamanho.Eof do
      begin
        Inc(I);
        TblSaldoEmpresa.FindField('Qtd' + IntToStr(I)).DisplayLabel := SQLGradeTamanhoGRTMA5DESCR.asString;
        SQLGradeTamanho.Next;
      end;
    end
    else
    begin
      for I := 0 to TblSaldoEmpresa.FieldCount - 1 do
      begin
        if Pos('Qtd', TblSaldoEmpresa.Fields[I].FieldName) > 0 then
          TblSaldoEmpresa.Fields[I].DisplayLabel := ' ';
      end;
      I := 0;
    end;
    inc(I);
    if (I < 25) and (I > 0) then
      for I := I to 25 do
        TblSaldoEmpresa.FindField('Qtd' + IntToStr(I)).DisplayLabel := ' ';
    SQLGradeTamanho.Close;
    SQLProduto.Close;
    SQLProduto.ParamByName('PRODIAGRUPGRADE').asInteger := SQLProdutoGradePRODIAGRUPGRADE.asInteger;
    SQLProduto.Open;
    SQLProduto.First;
    Empresa := '';
    Cor := '';
    Soma := 0;
    for I := 1 to 25 do
      Qtd[I] := 0;
    if SQLProduto.IsEmpty then
    begin
      Informa('A grade para este produto Não foi gerada!');
      Exit;
    end;
    while not SQLProduto.Eof do
    begin
      if (Empresa <> SQLProdutoEMPRICOD.AsString) or (Cor <> SQLProdutoCORICOD.AsString) then
      begin
        TblSaldoEmpresa.Append;
        if (Empresa <> SQLProdutoEMPRICOD.AsString) then
        begin
          TblSaldoEmpresaEmpresa.asString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC', SQLProdutoEMPRICOD.AsString);
          SomaE := 0;
          for I := 1 to 25 do
            QtdE[I] := 0;
        end;
        TblSaldoEmpresaCor.asString := SQLProdutoCORA30DESCR.AsString;
        Empresa := SQLProdutoEMPRICOD.AsString;
        Cor := SQLProdutoCORICOD.AsString;
      end
      else
        TblSaldoEmpresa.Edit;
      TblSaldoEmpresaTotal.asFloat := TblSaldoEmpresaTotal.asFloat + SQLProdutoPSLDN3QTDE.asFloat;
      Posicao := PosicaoGrade(SQLProdutoGRADICOD.asInteger, SQLProdutoGRTMICOD.asInteger);
      TblSaldoEmpresa.FindField('Qtd' + IntToStr(Posicao)).asFloat := SQLProdutoPSLDN3QTDE.asFloat;
      TblSaldoEmpresa.Post;

      Soma := Soma + SQLProdutoPSLDN3QTDE.asFloat;
      SomaE := SomaE + SQLProdutoPSLDN3QTDE.asFloat;

      Qtd[Posicao] := Qtd[Posicao] + SQLProdutoPSLDN3QTDE.asFloat;
      QtdE[Posicao] := QtdE[Posicao] + SQLProdutoPSLDN3QTDE.asFloat;

      SQLProduto.Next;

      if (Empresa <> SQLProdutoEMPRICOD.AsString) or SQLProduto.Eof then
      begin
//        TblSaldoEmpresa.Append;
//        TblSaldoEmpresaEmpresa.asString := '------------------------------------------------------------';
//        TblSaldoEmpresaCor.asString := 'SubTotal';
//        TblSaldoEmpresaTotal.asFloat := SomaE;
//        for I := 1 to 25 do
//          TblSaldoEmpresa.FindField('Qtd' + IntToStr(I)).asFloat := QtdE[I];
//        TblSaldoEmpresa.Post;
              // LINHA EM BRANCO
        TblSaldoEmpresa.Append;
        TblSaldoEmpresaEmpresa.asString := '============================================================';
        TblSaldoEmpresaCor.asString := '============================================================';
        TblSaldoEmpresa.Post;
      end;
    end;
    SQLProduto.Close;
    if TblSaldoEmpresa.RecordCount > 0 then
    begin
      TblSaldoEmpresa.Append;
      TblSaldoEmpresaEmpresa.asString := '____________________________________________________________';
      TblSaldoEmpresaCor.asString := 'Total Geral';
      TblSaldoEmpresaTotal.asFloat := Soma;
      for I := 1 to 25 do
        TblSaldoEmpresa.FindField('Qtd' + IntToStr(I)).asFloat := Qtd[I];
      TblSaldoEmpresa.Post;
    end;
  end;
  TblSaldoEmpresa.First;
  try
    if TblSaldoEmpresa.RecordCount > 0 then
    begin
      pnlGrade.Width := 825;
      pnlGrade.Left := 8;
      pnlGrade.Visible := True;
    end;
  finally
  end;

end;

procedure TFormTelaTiraTeima.btnFecharGradeClick(Sender: TObject);
begin
  pnlGrade.Visible := False
end;

procedure TFormTelaTiraTeima.gridGradeEstoqueDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if gdSelected in State then
     begin
       TDBGrid(Sender).Canvas.Brush.Color := clBlack;
       TDBGrid(Sender).Canvas.Font.Color := clWhite;
     end
   else
      begin
         if Odd((TProtectDBGrid(Sender).DataLink).ActiveRecord) then
            TDBGrid(Sender).Canvas.Brush.Color := $00EBEBEB  {cor linha diferente}
         else
            TDBGrid(Sender).Canvas.Brush.Color := TDBGrid(Sender).Color;

         TDBGrid(Sender).Canvas.Font.Color := clBlack;
      end;
   TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.

