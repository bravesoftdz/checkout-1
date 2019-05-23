unit TelaExportacaoProsoft;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, DB, DBTables,
  RxQuery, Buttons, jpeg, ExtCtrls, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoProsoft = class(TFormTelaGeralTEMPLATE)
    GroupBox1: TGroupBox;
    CkProdutos: TCheckBox;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    SQLProduto: TRxQuery;
    SQLPesquisa: TRxQuery;
    GroupBox5: TGroupBox;
    MemoErro: TMemo;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3PERCIPI: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TBCDField;
    SQLProdutoPRODN2COMISPRAZO: TBCDField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TBCDField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPRODN3DOLARCUSTO: TBCDField;
    SQLProdutoPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutoPRODN3DOLARVENDA: TBCDField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    SQLProdutoPRODA03GARANTIA: TStringField;
    SQLProdutoPRODA254COMPQUIMICA: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    SQLProdutoPRODN2PERCFRETE: TBCDField;
    SQLProdutoPRODN2PERDA: TBCDField;
    SQLProdutoPRODN2PIS: TBCDField;
    SQLProdutoPRODN3ALTURA: TBCDField;
    SQLProdutoPRODN3COMPRIMENTO: TBCDField;
    SQLProdutoPRODN3DIMENTOTAL: TBCDField;
    SQLProdutoPRODN3LARGURA: TBCDField;
    SQLProdutoPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutoCOLEICOD: TIntegerField;
    SQLProdutoPRODN2PERCDESP: TBCDField;
    SQLProdutoPRODN2PERCSUBST: TBCDField;
    SQLProdutoPRODN3VLRTABFOR: TBCDField;
    SQLProdutoDECRICOD: TIntegerField;
    SQLProdutoPRODN3PERCMARGLUC2: TBCDField;
    SQLProdutoPRODN2PERCDIFICM: TBCDField;
    SQLProdutoPRODN3PERCMGLVFIXA: TBCDField;
    SQLProdutoPRODN3PERCMGLAFIXA: TBCDField;
    SQLProdutoPRODCPERMITETROCA: TStringField;
    SQLProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLProdutoPRODDULTVENDA: TDateTimeField;
    SQLProdutoPRODIPRINCIPAL: TIntegerField;
    SQLProdutoPRODN3QTDULTCOMPRA: TBCDField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoPRODCCOFINS: TStringField;
    SQLProdutoPRODCIMPRECEITA: TStringField;
    SQLProdutoPRODA30CULTURA: TStringField;
    SQLProdutoPRODA30DIAGNOST: TStringField;
    SQLProdutoPRODA30PRINCATV: TStringField;
    SQLProdutoPRODA10MEDIDA: TStringField;
    SQLProdutoPRODA30EPOCAPLIC: TStringField;
    SQLProdutoPRODA30EQUIPAMEN: TStringField;
    SQLProdutoPRODA30FITOTOXID: TStringField;
    SQLProdutoPRODA30CARENCIA: TStringField;
    SQLProdutoPRODA30TOXIDADE: TStringField;
    SQLProdutoPRODN3MULTIPLIC: TBCDField;
    SQLProdutoPRODN2DOSAGEM: TBCDField;
    SQLProdutoPRODTEXTENDIDO: TStringField;
    SQLProdutoPRODTOBSCOMPLEM: TStringField;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
    SQLProdutoPRODCIMPETIQCDBAR: TStringField;
    SQLProdutoPRODA254ORIENTACAO: TStringField;
    SQLProdutoPRODN3QTDVOLUME: TBCDField;
    SQLProdutoPRODCVDESTNEG: TStringField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    SQLProdutoPRODA2CSTIPI: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TBCDField;
    SQLProdutoPRODN2ALIQPIS: TBCDField;
    SQLProdutoPRODCBLOQVPRAZO: TStringField;
    SQLProdutoNCMICOD: TIntegerField;
    SQLProdutoPRODN2DESCMAX: TBCDField;
    SQLProdutoPRODA1MODBC: TStringField;
    SQLProdutoPRODA1MODBCST: TStringField;
    SQLProdutoPRODA1TIPO: TStringField;
    SQLProdutoPRODA20C0DIF: TStringField;
    SQLProdutoPRODA9CODANP: TStringField;
    SQLProdutoPRODN4ALIQCIDE: TBCDField;
    SQLProdutoPRODA20BARRAUNIDADE: TStringField;
    SQLProdutoPRODA2TIPOITEM: TStringField;
    SQLProdutoPRODA30COZINHA: TStringField;
    SQLProdutoPRODA3CSTCOFINSENTRADA: TStringField;
    SQLProdutoPRODA3CSTIPIENTRADA: TStringField;
    SQLProdutoPRODA3CSTPISENTRADA: TStringField;
    SQLProdutoPRODCIMPCOZINHA: TStringField;
    SQLProdutoPRODCIMPVALE: TStringField;
    SQLProdutoPRODN2PERCIPIENTRADA: TBCDField;
    SQLProdutoNCMA30CODIGO: TStringField;
    LBPROGRESS: TLabel;
    ckProdResumido: TCheckBox;
    BTExecutar: TSpeedButton;
    Progress: TProgressBar;
    procedure BTExecutarClick(Sender: TObject);
    procedure ckProdResumidoExit(Sender: TObject);
    procedure CkProdutosExit(Sender: TObject);
  private
    { Private declarations }
    Function Grava(LinhaErro : string): Boolean;
  public
    { Public declarations }
    Arquivo : TextFile;
    CaminhoNomeArquivo, Linha : String ;
    Erro : Boolean;
    I : Integer;
  end;

var
  FormTelaExportacaoProsoft: TFormTelaExportacaoProsoft;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

Function TFormTelaExportacaoProsoft.Grava(LinhaErro : string): Boolean;
Var Gravou: Boolean;
begin
  try
    Writeln(Arquivo,Linha);
    Application.ProcessMessages;
    Gravou := True ;
  except
    Gravou := False;
    Application.ProcessMessages;
  end;
  if Gravou  = False then
    MemoErro.Lines.Add('Não foi possível criar o Registro=' + LinhaErro + ', Verifique!');
  Result := Gravou;
end;

procedure TFormTelaExportacaoProsoft.BTExecutarClick(Sender: TObject);
var CodProd, VlrAux, CST, Origem : string;
begin
  inherited;
  // Exportar Produtos conforme Layout da Prosoft
  CaminhoNomeArquivo := EditDiretorio.Text + '\PRODUTOS.TXT';
  try
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
  except on E:Exception Do
    begin
      ShowMessage('Falha ao Criar Arquivo: '+E.Message);
      Exit;
    end;
  End;

  BTExecutar.Enabled := False;

  if CkProdutos.Checked then
    begin
      SQLProduto.Open;
      Progress.Position := 0;
      Progress.Max := SQLProduto.RecordCount;
      if not SQLProduto.IsEmpty then
        begin
          while not SQLProduto.Eof do
            begin
              LBPROGRESS.Caption := 'Produto Atual =>' + SQLProdutoPRODICOD.AsString;
              LBPROGRESS.Update;
              CodProd := SQLProdutoPRODICOD.AsString;
              Origem  := SQLProdutoPRODIORIGEM.AsString;
              CST     := FormatFloat('##00',SQLProdutoPRODISITTRIB.Value);

              Linha := Preenche(CodProd,' ',20,2);                                  // Codigo  1 - 20
              Linha := Linha + Preenche(SQLProdutoPRODA60DESCR.AsString,' ',80,2);  // Descricao  21-80
              Linha := Linha + Preenche('00',' ',2,2);   // Grupo de Produtos 101-2
              Linha := Linha + Preenche(DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('Produto','PRODICOD','UNIDICOD',CodProd)),' ',3,2);   // Unidade 103-3
              Linha := Linha + Preenche(DM.SQLLocate('NCM','NCMICOD','NCMA30CODIGO',dm.SQLLocate('Produto','PRODICOD','NCMICOD',CodProd)),' ',10,2);       // NCM 106-10
              Linha := Linha + Preenche(' ',' ',2,2);                              // Item Desdobramento CCF  116-2

              // ICMS dentro Estado     118-5
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',strToFloat(DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',dm.SQLLocate('Produto','PRODICOD','ICMSICOD',CodProd))));
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha  := Linha + Preenche(VlrAux,' ',5,0);

              // Reducao Base ICMS     123-5
              VlrAux := '';
              if (CST = '20') and (DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',dm.SQLLocate('Produto','PRODICOD','ICMSICOD',CodProd))= '17') then VlrAux := '41,18'; // 41,176
              if (CST = '20') and (DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',dm.SQLLocate('Produto','PRODICOD','ICMSICOD',CodProd))= '12') then VlrAux := '58,33'; // 58,333
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha  := Linha + Preenche(VlrAux,' ',5,0);

              // Base Calc ST     128-14
              Linha := Linha + Preenche('00.00',' ',14,0);

              // IPI Aliq  142-5
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN3PERCIPI.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha  := Linha + Preenche(VlrAux,' ',5,0);

              // Especie Produto IN 63/01      147-2
              Linha := Linha + Preenche(' ',' ',2,0);

              // Situação Tribuaria           149-3
              Linha := Linha + Preenche(Origem+CST,' ',3,0);

              // Cod Medida Padrao  (11 ou 12)     152-2
              Linha := Linha + Preenche(' ',' ',2,0);

              // Fator Conversao Unidade          154-14
              VlrAux := FormatFloat('#0.00',StrToFloat(DM.SQLLocate('UNIDADE','UNIDICOD','UNIDN3FATORCONV',dm.SQLLocate('Produto','PRODICOD','ICMSICOD',CodProd))));
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha := Linha + Preenche(VlrAux,' ',14,0);

              // Cd Barras        168-14
              Linha := Linha + Preenche(SQLProdutoPRODA60CODBAR.AsString,' ',14,0);

              // Cd Produtos Relevantes       182-7
              Linha := Linha + Preenche(' ',' ',7,0);

              // Tipo de Produto    189-1     L=Publicacao, P=Papel, S=Sobras
              Linha := Linha + Preenche(' ',' ',1,0);

              // Cod Descricao do Produto      190-5
              Linha := Linha + Preenche(' ',' ',5,0);

              // Incentivo Fiscal     195-1
              Linha := Linha + Preenche('N',' ',1,2);

              // Situacao Tributaria Cupom Fiscal       196-4
              if CST = '60' then Linha := Linha + Preenche('F',' ',4,2);
              if CST = '41' then Linha := Linha + Preenche('N',' ',4,2);
              if CST = '40' then Linha := Linha + Preenche('I',' ',4,2);
              if SQLProdutoPRODISITTRIB.Value < 40 then Linha := Linha + Preenche('T',' ',4,2);

              // Campos sem uso    200-27
              Linha := Linha + Preenche(' ',' ',27,0);

              // Aliq Recup PIS Inventario    227-5
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN2ALIQPIS.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha := Linha + Preenche(VlrAux,' ',5,0);

              // Aliq Recup Cofins Inventario     232-5
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN2ALIQCOFINS.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha := Linha + Preenche(VlrAux,' ',5,0);

              // Campos sem uso               237-74
              Linha := Linha + Preenche(' ',' ',74,0);

              // Grupo do Produto             311-4
              Linha := Linha + Preenche('0006',' ',4,0);

              // Campos sem uso               315-13
              Linha := Linha + Preenche(' ',' ',13,0);

              // Sujeito a Subst Tributaria    328-1
              if SQLProdutoPRODISITTRIB.Value = 60 then
                Linha := Linha + Preenche('S',' ',1,2)
              else
                Linha := Linha + Preenche('N',' ',1,2);

              // PRODUTO - SPED.Tipo do Item    329-2
              Linha := Linha + Preenche(SQLProdutoPRODA2TIPOITEM.AsString,' ',2,0);

              // Campos sem uso  331-31
              Linha := Linha + Preenche(' ',' ',31,0);

              // PRODUTO - Comunicação.Tipo de Receita    362-1
              Linha := Linha + Preenche('2',' ',1,0);

              // Campos sem uso         363-112
              Linha := Linha + Preenche(' ',' ',112,0);

              // Comunicação.Tipo de Receita SPED PIS/COFINS   475-1
              Linha := Linha + Preenche('2',' ',1,0);

              // Produto Sujeito a Subst Trib do PIS/COFINS    476-1
              Linha := Linha + Preenche(' ',' ',1,0);

              // Campos sem uso       477-2
              Linha := Linha + Preenche(' ',' ',2,0);

              // CST Pis     479-2
              Linha := Linha + Preenche(SQLProdutoPRODA2CSTPIS.AsString,' ',2,2);

              // CST Cofins  481-2
              Linha := Linha + Preenche(SQLProdutoPRODA2CSTCOFINS.AsString,' ',2,2);

              // Natureza da Receita  483-4
              if SQLProdutoPRODA2CSTCOFINS.AsString = '04' then Linha := Linha + Preenche('4310',' ',4,2);
              if SQLProdutoPRODA2CSTCOFINS.AsString = '05' then Linha := Linha + Preenche('4312',' ',4,2);
              if SQLProdutoPRODA2CSTCOFINS.AsString = '06' then Linha := Linha + Preenche('4313',' ',4,2);
              if (SQLProdutoPRODA2CSTCOFINS.AsString <> '04') and
                 (SQLProdutoPRODA2CSTCOFINS.AsString <> '05') and
                 (SQLProdutoPRODA2CSTCOFINS.AsString <> '06') then Linha := Linha + Preenche(' ',' ',4,2);
              // CFOP Saida   487-4
              if cst = '60' then
                Linha := Linha + Preenche('5405',' ',4,2)
              else
                Linha := Linha + Preenche('5102',' ',4,2);

              // Campos sem uso  491-124
              Linha := Linha + Preenche(' ',' ',124,0);

              If Not Grava(SQLProdutoPRODICOD.AsString) Then
                Exit;

              SQLProduto.Next;
              Progress.Position := Progress.Position + 1;
              Progress.Update;
              Application.ProcessMessages;
            end;
        end;
    end;

  if ckProdResumido.Checked then
    begin
      SQLProduto.Open;
      Progress.Position := 0;
      Progress.Max := SQLProduto.RecordCount;
      if not SQLProduto.IsEmpty then
        begin
          // Grava Cabecalho
          Linha:= 'Cod.Produto          Descricao_Produto                                            UN  NCM        CST  Cofins_Sai Cofins_Ent Cofins_Perc PIS_Sai PIS_Ent PIS_Perc IPI_Sai IPI_Ent IPI_Perc';
          If Not Grava('Cabeçalho!') Then
            Exit;

          while not SQLProduto.Eof do
            begin
              LBPROGRESS.Caption := 'Produto Atual =>' + SQLProdutoPRODICOD.AsString;
              LBPROGRESS.Update;
              CodProd := SQLProdutoPRODICOD.AsString;
              Origem  := SQLProdutoPRODIORIGEM.AsString;
              CST     := FormatFloat('##00',SQLProdutoPRODISITTRIB.Value);

              Linha := Preenche(CodProd,' ',20,2);                                  // Codigo
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco
              Linha := Linha + Preenche(SQLProdutoPRODA60DESCR.AsString,' ',60,2);  // Descricao
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco
              Linha := Linha + Preenche(DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('Produto','PRODICOD','UNIDICOD',CodProd)),' ',3,2);   // Unidade
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco
              Linha := Linha + Preenche(DM.SQLLocate('NCM','NCMICOD','NCMA30CODIGO',dm.SQLLocate('Produto','PRODICOD','NCMICOD',CodProd)),' ',10,2);       // NCM
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco
              Linha := Linha + Preenche(Origem+CST,' ',4,0); // Origem + Situação Tribuaria
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco

              // CST Cofins Saida
              Linha := Linha + Preenche(SQLProdutoPRODA2CSTCOFINS.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',9,2);   // Espaco
              // CST Cofins Entrada
              Linha := Linha + Preenche(SQLProdutoPRODA3CSTCOFINSENTRADA.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',8,2);   // Espaco
              // Aliq Recup Cofins
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN2ALIQCOFINS.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha := Linha + Preenche(VlrAux,' ',5,0);
              Linha := Linha + Preenche(' ',' ',8,2);   // Espaco

              // CST Pis Saida
              Linha := Linha + Preenche(SQLProdutoPRODA2CSTPIS.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',6,2);   // Espaco
              // CST Pis Entrada
              Linha := Linha + Preenche(SQLProdutoPRODA3CSTPISENTRADA.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',5,2);   // Espaco
              // Aliq Recup Pis
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN2ALIQPIS.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha := Linha + Preenche(VlrAux,' ',5,0);
              Linha := Linha + Preenche(' ',' ',5,2);   // Espaco

              // CST IPI Saida
              Linha := Linha + Preenche(SQLProdutoPRODA2CSTIPI.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',6,2);   // Espaco
              // CST IPI Entrada
              Linha := Linha + Preenche(SQLProdutoPRODA3CSTIPIENTRADA.AsString,' ',2,2);
              Linha := Linha + Preenche(' ',' ',6,2);   // Espaco
              // IPI Aliq Entrada
              VlrAux := '';
              VlrAux := FormatFloat('#0.00',SQLProdutoPRODN2PERCIPIENTRADA.Value);
              VlrAux := TrocaVirgulaPorPonto(VlrAux);
              Linha  := Linha + Preenche(VlrAux,' ',5,0);
              Linha := Linha + Preenche(' ',' ',1,2);   // Espaco

              If Not Grava(SQLProdutoPRODICOD.AsString) Then
                Exit;

              SQLProduto.Next;
              Progress.Position := Progress.Position + 1;
              Progress.Update;
              Application.ProcessMessages;
            end;
        end;
    end;
  CloseFile(Arquivo);
  ShowMessage('Geração Concluida com Sucesso!');
  BTExecutar.Enabled := True;
  SQLProduto.Close;
  Progress.Position := 0;
  Progress.Update;
end;

procedure TFormTelaExportacaoProsoft.ckProdResumidoExit(Sender: TObject);
begin
  inherited;
  if ckProdResumido.Checked then
    CkProdutos.Checked := False
  else
    CkProdutos.Checked := True;
end;

procedure TFormTelaExportacaoProsoft.CkProdutosExit(Sender: TObject);
begin
  inherited;
  if CkProdutos.Checked then
    ckProdResumido.Checked := False
  else
    ckProdResumido.Checked := True;
end;

end.
