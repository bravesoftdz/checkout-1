unit TelaEntregaOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, RxDBComb,
  ToolEdit, RXDBCtrl, DBCtrls, DB, Mask, DBTables, RxQuery, UnitLibrary;

type
  TFormTelaEntregaOS = class(TFormTelaGeralTEMPLATE)
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteCLIEN2CONJUGERENDA: TBCDField;
    SQLClienteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteCLIEA2UFEMPRESA: TStringField;
    SQLClienteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteCLIETOBS: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteCLIEA254PATHFOTO: TStringField;
    SQLClienteCLIECRECAVISATRASO: TStringField;
    SQLClienteCLIEA30NATURALIDADE: TStringField;
    SQLClienteCLIECRECEBECARTAO: TStringField;
    SQLClienteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteCLIEA10CODCONV: TStringField;
    SQLClienteCLIEA10CODANT: TStringField;
    SQLClienteCLIEA20NROCARTCRED: TStringField;
    SQLClientePENDENTE: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClienteCLIEA35NROCARTCRED: TStringField;
    SQLClienteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteCLIECCASAPROPRIA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSSQLOS: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    TOTAL: TDBEdit;
    DBVlrServico: TDBEdit;
    VlrFrete: TDBEdit;
    VlrDesconto: TDBEdit;
    VlrProdutos: TDBEdit;
    vlrISSQN: TDBEdit;
    BaseISSQN: TDBEdit;
    PercDesconto: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    DSSQLCliente: TDataSource;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    GrupoDadosEntrega: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    DBEditDocPessoaEntrega: TDBEdit;
    DBEditPessoaEntrega: TDBEdit;
    DBDataEntrega: TDBDateEdit;
    DBEdit8: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    LabelAlterar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    Label22: TLabel;
    DataSource1: TDataSource;
    Label23: TLabel;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    Label27: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label25: TLabel;
    DBEdit12: TDBEdit;
    SQLClienteCLIEA30TEMPOMORADIA: TStringField;
    procedure LabelCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabelAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEntregaOS: TFormTelaEntregaOS;
  RetornoUser    : TInfoRetornoUser;

implementation

uses CadastroOS, CadastroTEMPLATE,  FormResources,
  WindowsLibrary;

{$R *.dfm}

procedure TFormTelaEntregaOS.LabelCancelarClick(Sender: TObject);
begin
  inherited;
  DSSQLOS.DataSet.Cancel;
  Close;
end;

procedure TFormTelaEntregaOS.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active   then SQLCliente.Active := true;
  AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser);
  if RetornoUser.ModalResult <> MrOk then
     begin
        Informa('Você deve informar um Usuário e Senha corretos para encerrar o Item.');
        FormTelaEntregaOS.Close;
        Abort;
     end;
  DSSQLOS.DataSet.Edit;
  DSSQLOS.DataSet.FieldByName('USUA60RESPENT').AsString := RetornoUser.NomeUsuarioAutenticado;
  FormTelaEntregaOS.ShowModal;

end;


procedure TFormTelaEntregaOS.LabelAlterarClick(Sender: TObject);
begin
  inherited;
  if DBDataEntrega.Date = 0 then
     begin
        DBDataEntrega.SetFocus;
        Informa('Informe uma data Valida para a entrega.');
        Abort;
     end;
  if DBEditPessoaEntrega.Text = '' then
     begin
        DBEditPessoaEntrega.SetFocus;
        Informa('Informe o nome da pessoa que retirou o(s) equipamento(s).');
        Abort;
     end;
  if DBEditDocPessoaEntrega.Text = '' then
     begin
        DBEditDocPessoaEntrega.SetFocus;
        Informa('Informe um documento da pessoa que retirou o(s) equipamneto(s).');
        Abort;
     end;
  DSSQLOS.DataSet.Post;
  Close;
end;

end.
