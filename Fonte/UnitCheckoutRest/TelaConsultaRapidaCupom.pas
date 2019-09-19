unit TelaConsultaRapidaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls, StdCtrls, CartaoCredito,
  Buttons, Mask, ToolEdit, jpeg, RXCtrls, AdvOfficeStatusBar, ECFCheckout, UnitCheckoutLibrary,
  AdvOfficeStatusBarStylers, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, AdvGlowButton,
  DBClient, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TFormTelaConsultaRapidaCupom = class(TForm)
    DSSQLCupom: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel6: TRxLabel;
    SQLCupomItem: TRxQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    chkMostrarCupom: TCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Selecionar: TcxGridDBColumn;
    cxGrid1DBTableView1CUPOA13ID: TcxGridDBColumn;
    cxGrid1DBTableView1CUPODEMIS: TcxGridDBColumn;
    cxGrid1DBTableView1CUPOINRO: TcxGridDBColumn;
    cxGrid1DBTableView1VLRLIQ: TcxGridDBColumn;
    cxGrid1DBTableView1CLIEA60RAZAOSOC: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTECNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1PLRCA60DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1VENDA60NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVEACESSO: TcxGridDBColumn;
    cxGrid1DBTableView1Mensagem: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsCupom: TClientDataSet;
    cdsCupomCUPOA13ID: TStringField;
    cdsCupomCUPOINRO: TIntegerField;
    cdsCupomVLRLIQ: TFloatField;
    cdsCupomCUPODEMIS: TDateTimeField;
    cdsCupomCLIEA60RAZAOSOC: TStringField;
    cdsCupomVENDA60NOME: TStringField;
    cdsCupomPLRCA60DESCR: TStringField;
    cdsCupomCLIENTECNPJ: TStringField;
    cdsCupomCHAVEACESSO: TStringField;
    cdsCupomSelecionar: TBooleanField;
    cdsCupomMensagem: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    btnAtualizar: TSpeedButton;
    edtDataInicial: TDateEdit;
    edtDataFinal: TDateEdit;
    btnEnviarTodos: TAdvGlowButton;
    btTransmite: TAdvGlowButton;
    BtInutilizarNFCE: TAdvGlowButton;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomVLRLIQ: TFloatField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    SQLCupomVENDA60NOME: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    SQLCupomCLIENTECNPJ: TStringField;
    SQLCupomCHAVEACESSO: TStringField;
    procedure BtReturnClick(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
    Procedure AbrirDadosCupom;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLCupomAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEnviarTodosClick(Sender: TObject);
    procedure btTransmiteClick(Sender: TObject);
    procedure BtInutilizarNFCEClick(Sender: TObject);
    procedure cxGrid1DBTableView1SelecionarHeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ProvedorCartao, NomeNumerarioCartao : string;
    TempoLimite, TempoIntervalo: Integer;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
    Cancelamento : Boolean;
  end;

var
  FormTelaConsultaRapidaCupom: TFormTelaConsultaRapidaCupom;

implementation

uses UnitLibrary, TelaItens, DataModulo;

{$R *.dfm}

procedure TFormTelaConsultaRapidaCupom.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaConsultaRapidaCupom.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaConsultaRapidaCupom.AbrirDadosCupom;
begin
  SQLCupom.Close;
  SQLCupom.MacroByName('DataEmissao').Value  := 'Cupom.CUPODEMIS BETWEEN ' + Quotedstr(FormatDateTime('mm/dd/yyyy',edtDataInicial.Date))
     + ' and '+ Quotedstr(FormatDateTime('mm/dd/yyyy',edtDataFinal.Date));
  SQLCupom.MacroByName('Empresa').Value      := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
  SQLCupom.Open;
end;

procedure TFormTelaConsultaRapidaCupom.btnAtualizarClick(Sender: TObject);
begin
  AbrirDadosCupom;
end;

procedure TFormTelaConsultaRapidaCupom.FormCreate(Sender: TObject);
begin
  edtDataInicial.Date := Now;
  edtDataFinal.Date := Now;
  AbrirDadosCupom;
end;

procedure TFormTelaConsultaRapidaCupom.SQLCupomAfterOpen(
  DataSet: TDataSet);
begin
  cdsCupom.close;
  cdsCupom.CreateDataSet;

  cdsCupom.DisableControls;
  SQLCupom.DisableControls;
  try
    while not SQLCupom.eof do
    begin
      cdsCupom.Insert;
      cdsCupomCUPOA13ID.Value := SQLCupomCUPOA13ID.Value;
      cdsCupomCUPOINRO.Value := SQLCupomCUPOINRO.Value;
      cdsCupomVLRLIQ.Value := SQLCupomVLRLIQ.Value;
      cdsCupomCUPODEMIS.Value := SQLCupomCUPODEMIS.Value;
      cdsCupomCLIEA60RAZAOSOC.Value := SQLCupomCLIEA60RAZAOSOC.Value;
      cdsCupomVENDA60NOME.Value := SQLCupomVENDA60NOME.Value;
      cdsCupomPLRCA60DESCR.Value := SQLCupomPLRCA60DESCR.Value;
      cdsCupomCLIENTECNPJ.Value := SQLCupomCLIENTECNPJ.Value;
      cdsCupomCHAVEACESSO.Value := SQLCupomCHAVEACESSO.Value;
      cdsCupomSelecionar.Value := True;
      cdsCupom.Post;
      SQLCupom.next;
    end;
  finally
    SQLCupom.EnableControls;
    cdsCupom.EnableControls;
  end;

end;

procedure TFormTelaConsultaRapidaCupom.cxGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
   SQLCupom.locate('CUPOA13ID', cdsCupomCUPOA13ID.Value, []);
   ModalResult := mrOk;
  end;
  if Key = VK_ESCAPE then  ModalResult := mrCancel;

end;

procedure TFormTelaConsultaRapidaCupom.btnEnviarTodosClick(
  Sender: TObject);
var
 vCupomOK, vCupomNaoOK:Integer;
begin
  if not cdsCupom.Locate('Selecionar', true, []) then
    raise Exception.Create('Nenhum cupom selecionado!');

  vCupomOK := 0;
  vCupomNaoOK := 0;

  cdsCupom.First;
  while not cdsCupom.eof do
  begin
    try
      if cdsCupomSelecionar.Value then
      begin
        Imprimir_Nfce := False;
        FormTelaItens.Transmite_NFCe(cdsCupomCUPOA13ID.Value);
        Inc(vCupomOK);
      end;
    except
      on E: Exception do
      begin
        inc(vCupomNaoOK);
        cdsCupom.Edit;
        cdsCupomMensagem.Value := E.Message;
        cdsCupom.Post;
      end;
    end;
    cdsCupom.Next;
  end;
  Imprimir_Nfce := True;
  ShowMessage('Cupom(s) Enviado(s): ' + FormatFloat('000', vCupomOK)
    + sLineBreak +'Cupom(s) não Enviado(s): '+ FormatFloat('000', vCupomNaoOK));

end;

procedure TFormTelaConsultaRapidaCupom.btTransmiteClick(Sender: TObject);
begin
  ModalResult := mrOk ;
end;

procedure TFormTelaConsultaRapidaCupom.BtInutilizarNFCEClick(
  Sender: TObject);
var
  ano, Modelo, Serie, Justificativa, NumeroInicial, NumeroFinal : string;
begin
  if (copy(ECFAtual,1,4) = 'NFCE')  then
    begin
      ano := FormatDateTime('yyyy',now);

      Modelo := '65';
      Serie  := dm.SQLTerminalAtivoTERMICOD.AsString;

      if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
        exit;

      if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
        exit;

      if Modelo = '' then
        Modelo := '65';

      if Serie = '' then
        Serie  := dm.SQLTerminalAtivoTERMICOD.AsString;

      if not(InputQuery('WebServices Inutilização ', 'Justificativa',  Justificativa)) then
        exit;

      if Justificativa = '' then
        Justificativa := 'Falha no processo de geração desta NFCe!';

      if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
        exit;

      if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
        exit;

      try
        dm.ACBrNFe.WebServices.Inutiliza(dm.SQLEmpresaEMPRA14CGC.AsString,
                                         Justificativa,
                                         StrToInt(Ano),
                                         StrToInt(Modelo),
                                         StrToInt(Serie),
                                         StrToInt(NumeroInicial),
                                         StrToInt(NumeroFinal));

        ShowMessage('Numeração Inutilizada.');
      except
        on e:Exception do
          ShowMessage(e.message);
      end;
    end;

end;

procedure TFormTelaConsultaRapidaCupom.cxGrid1DBTableView1SelecionarHeaderClick(
  Sender: TObject);
begin
  try
    cdsCupom.DisableControls;
    cdsCupom.First;
    while not cdsCupom.eof do
    begin
      cdsCupom.Edit;
      cdsCupomSelecionar.Value := not cdsCupomSelecionar.Value;
      cdsCupom.Post;
      cdsCupom.Next;
    end;
  finally
    cdsCupom.EnableControls;
  end;
end;

procedure TFormTelaConsultaRapidaCupom.FormShow(Sender: TObject);
begin
  if not DelphiAberto then
   btnEnviarTodosClick(Sender);
  btnEnviarTodos.Enabled := not Cancelamento;
  btTransmite.Enabled    := not Cancelamento;
  BtInutilizarNFCE.Enabled := not Cancelamento;
  cxGrid1.SetFocus;
end;

end.
