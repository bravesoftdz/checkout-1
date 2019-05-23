unit CadastroNegocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, ToolEdit, RXDBCtrl, RxDBComb;

type
  TFormCadastroNegocio = class(TFormCadastroTEMPLATE)
    SQLTemplatePRNEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplatePRNEICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplatePRNEDEMISSAO: TDateTimeField;
    SQLTemplatePRNECSTATUS: TStringField;
    SQLTemplatePRNEA100DESCRICAO: TStringField;
    SQLTemplatePRNEA60CONTATO: TStringField;
    SQLTemplatePRNEA15CONTATOFONE1: TStringField;
    SQLTemplatePRNEA15CONTATOFONE2: TStringField;
    SQLTemplatePRNEN2VALOR: TBCDField;
    SQLTemplatePRNEA254OBS: TStringField;
    SQLTemplatePRNEA15VALIDADE: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePNMFICOD: TIntegerField;
    SQLTemplatePNFEICOD: TIntegerField;
    SQLTemplatePRNECTIPOFRETE: TStringField;
    SQLTemplatePRNEA254MOTFECHA: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lblMotivoFechamento: TLabel;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox2: TRxDBComboBox;
    SQLPlanoRecebimento: TRxQuery;
    SQLMotivoFecha: TRxQuery;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DSSQLPlanoRecebimento: TDataSource;
    DSSQLMotivoFecha: TDataSource;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SQLFormaEnvio: TRxQuery;
    DSSQLFormaEnvio: TDataSource;
    MemoObs: TDBRichEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    lblFechamento: TLabel;
    DblMotFecha: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    SQLTemplatePRCLA60ENDCOM: TStringField;
    SQLTemplatePRCLA60CIDCOM: TStringField;
    SQLTemplatePRCLA2UFCOM: TStringField;
    SQLTemplatePRCLA15FONE1: TStringField;
    SQLTemplatePRCLA254EMAIL: TStringField;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    SQLVendedor: TRxQuery;
    RxDBLookupCombo4: TRxDBLookupCombo;
    dsSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateVENDA60CONTATO: TStringField;
    SQLTemplateVENDA15FONE1: TStringField;
    SQLTemplateVENDA60CID: TStringField;
    SQLTemplateVENDA2UF: TStringField;
    AcessaPlano: TSpeedButton;
    AcessaFormaEnvio: TSpeedButton;
    AcessaVendedor: TSpeedButton;
    AcessaCliente: TSpeedButton;
    SQLTemplatePRNEA60END: TStringField;
    SQLTemplatePRNEA60CIDADE: TStringField;
    SQLTemplatePRNEA2UF: TStringField;
    SQLTemplatePRNEA8CEP: TStringField;
    SQLTemplatePRNEA60EMAIL: TStringField;
    Label5: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    SQLMotivoFechaPNMFICOD: TIntegerField;
    SQLMotivoFechaPNMFA60DESCR: TStringField;
    SQLMotivoFechaPNMFCPEDEMOTIVO: TStringField;
    SQLMotivoFechaREGISTRO: TDateTimeField;
    SQLMotivoFechaPENDENTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MemoObsKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplatePRNECSTATUSChange(Sender: TField);
    procedure AcessaClienteClick(Sender: TObject);
    procedure AcessaVendedorClick(Sender: TObject);
    procedure AcessaPlanoClick(Sender: TObject);
    procedure AcessaFormaEnvioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNegocio: TFormCadastroNegocio;

implementation

uses VarSYS, FormResources, UnitLibrary, CadastroProdutosProspect,
  CadastroCliente, CadastroVendedor, CadastroPlanoRecebimento,
  CadastroFormasDeEnvio, CadastroHistorico;

{$R *.dfm}

procedure TFormCadastroNegocio.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROSPECTNEGOCIO';
  if not SQLMotivoFecha.Active then SQLMotivoFecha.Active  := True;
  if not SQLFormaEnvio.Active  then SQLFormaEnvio.Active   := True;
  if not SQLPlanoRecebimento.Active then SQLPlanoRecebimento.Active  := True;
end;

procedure TFormCadastroNegocio.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRNEN2VALOR.AsFloat:= 0;                              
  SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
  SQLTemplateTERMICOD.AsInteger := TerminalCorrente;
  SQLTemplatePRNEDEMISSAO.AsDateTime := Now;
  SQLTemplatePRNECSTATUS.AsString    := 'A';
end;

procedure TFormCadastroNegocio.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DblMotFecha.KeyValue <> null then
     begin
        if (SQLMotivoFecha.FieldByName('PNMFCPEDEMOTIVO').AsString = 'S') and (MemoObs.Text = '') then
           begin
             lblMotivoFechamento.Visible := True;
             MemoObs.Visible             := True;
             Informa('Você deve imnformar um motivo pra o fechamento.');
             SQLTemplatePRNEA254MOTFECHA.FocusControl;
             Abort;
           end;
     end;

  if (SQLTemplatePRNECSTATUS.AsString = 'F') and (SQLTemplatePNMFICOD.IsNull) then
     begin
        Informa('Você deve informar um motivo de fechamento. Obrigado');
        SQLTemplatePNMFICOD.FocusControl;
        Abort;
     end;

  if SQLTemplatePRNEN2VALOR.AsFloat = 0 then
     begin
        if Application.MessageBox('O valor do Negócio esta zerado. Deseja continuar mesmo assim?', 'Atenção', MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION) = idNo then
           begin
              SQLTemplatePRNEN2VALOR.FocusControl;
              Abort;
           end;
     end;
end;

procedure TFormCadastroNegocio.MemoObsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormCadastroNegocio.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRNECSTATUS.AsString = 'F' then
     begin
        Informa('Você não pode alterar um Negócio Fechado!');
        Abort;
     end;
end;

procedure TFormCadastroNegocio.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroProdutosProspect,'FormCadastroProdutosProspect', True, False,'');
end;

procedure TFormCadastroNegocio.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lblMotivoFechamento.Visible := not (SQLMotivoFecha.FieldByName('PNMFCPEDEMOTIVO').AsString <> 'S') and (SQLTemplatePRNECSTATUS.AsString = 'F');
  MemoObs.Visible             := not (SQLMotivoFecha.FieldByName('PNMFCPEDEMOTIVO').AsString <> 'S') and (SQLTemplatePRNECSTATUS.AsString = 'F');
  lblFechamento.Visible := SQLTemplatePRNECSTATUS.AsString = 'F';
  DblMotFecha.Visible   := SQLTemplatePRNECSTATUS.AsString = 'F';
end;

procedure TFormCadastroNegocio.SQLTemplatePRNECSTATUSChange(
  Sender: TField);
begin
  inherited;
  lblFechamento.Visible := SQLTemplatePRNECSTATUS.AsString = 'F';
  DblMotFecha.Visible   := SQLTemplatePRNECSTATUS.AsString = 'F';
end;

procedure TFormCadastroNegocio.AcessaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRCLA13ID');
  FieldOrigem := 'PRCLA13ID';
  DataSetLookup:= SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,'');
end;

procedure TFormCadastroNegocio.AcessaVendedorClick(Sender: TObject);
begin
  inherited;
  DataSetLookup:= SQLVendedor;
  FieldLookup  := SQLTemplate.FindField('VENDICOD');
  FieldOrigem := 'VENDICOD';
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,'');
end;

procedure TFormCadastroNegocio.AcessaPlanoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PLRCICOD');
  DataSetLookup:= SQLPlanoRecebimento;
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormCadastroPlanoRecebimento,'FormCadastroPlanoRecebimento',False,True,'');
end;

procedure TFormCadastroNegocio.AcessaFormaEnvioClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PNFEICOD');
  DataSetLookup:= SQLFormaEnvio;
  FieldOrigem := 'PNFEICOD';
  CriaFormulario(TFormCadastroFormasDeEnvio,'FormCadastroFormasDeEnvio',False,True,'');
end;

end.
