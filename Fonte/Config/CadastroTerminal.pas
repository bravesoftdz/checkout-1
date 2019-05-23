unit CadastroTerminal;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, ToolEdit, RXDBCtrl, RxDBComb, Printers, DBActns, ActnList,
  ImgList, RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTerminais = class(TFormCadastroTEMPLATE)
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateTERMCTIPO: TStringField;
    SQLTemplateTERMCSTATUSCAIXA: TStringField;
    SQLTemplateTERMDSTATUSCAIXA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    SQLTemplateTERMA60DESCR: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateTERMCMOVESTOQUE: TStringField;
    SQLTemplateTERMA60IMPCARNE: TStringField;
    SQLTemplateTERMA60IMPPEDIDO: TStringField;
    SQLTemplateTERMA60IMPORCAMEN: TStringField;
    SQLTemplateTERMA60IMPCHEQUE: TStringField;
    SQLTemplateTERMA60IMPTCKAFCX: TStringField;
    SQLTemplateTERMCIMPRIMECHEQUE: TStringField;
    SQLTemplateTERMCCONFIMPCARNE: TStringField;
    SQLTemplateTERMCIMPCONFDIVIDA: TStringField;
    SQLTemplateTERMA255MSGCARNE: TStringField;
    SQLTemplateTERMCIMPBARRASPED: TStringField;
    SQLTemplateTERMCINFDADOCLIPAD: TStringField;
    SQLTemplateTERMINRODECQUANT: TIntegerField;
    SQLTemplateEMPRESALOOKUP: TStringField;
    SQLTemplatePLANORECTOLOOKUP: TStringField;
    SQLTemplateVENDEDORLOOKUP: TStringField;
    Label6: TLabel;
    DBEditEmpresa: TDBEdit;
    RetornaEmpresa: TSpeedButton;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    ComboTipoTerminal: TRxDBComboBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    SpeedButtonCliente: TSpeedButton;
    SpeedButtonVendedor: TSpeedButton;
    DBEdit11: TDBEdit;
    SpeedButtonPlanoRecto: TSpeedButton;
    DBEdit12: TDBEdit;
    Label22: TLabel;
    TabSheetAdicional: TTabSheet;
    SQLTemplateTIPONUMEVISTALOOKUP: TStringField;
    SQLTemplateTIPONUMEPRAZOLOOKUP: TStringField;
    SQLTemplateTERMINUMEVISTA: TIntegerField;
    SQLTemplateTERMINUMEPRAZO: TIntegerField;
    SQLTemplateUSUAICODATIVO: TIntegerField;
    SQLTemplateTERMCATIVO: TStringField;
    SQLTemplateTERMCECFIMPRCLIE: TStringField;
    SQLTemplateTERMCECFIMPRVEND: TStringField;
    SQLTemplateTERMCECFIMPRCONFDIV: TStringField;
    SQLTemplateStatusCaixaCalcField: TStringField;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    RetornaECF: TSpeedButton;
    DBEdit19: TDBEdit;
    SQLTemplateECFA13ID: TStringField;
    SQLTemplateECFLookup: TStringField;
    ComboPortaECF: TDBComboBox;
    SQLTemplateTERMA5ECFPORTACOM: TStringField;
    Label34: TLabel;
    DBEdit10: TDBEdit;
    SQLTemplateTERMCIMPPREVENDA: TStringField;
    SQLTemplateTERMA60NOMECOMPUT: TStringField;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    CapturaComput: TSpeedButton;
    GroupBox1: TGroupBox;
    ImpPreVenda: TDBCheckBox;
    ImpConfDiv: TDBCheckBox;
    ImpCDBarrasPrevenda: TDBCheckBox;
    ImpCheque: TDBCheckBox;
    SQLTemplateTERMCAUTENTRFIMCUP: TStringField;
    ConfirmaImpCarne: TDBCheckBox;
    AutenticEntradaFinalCupom: TDBCheckBox;
    SQLTemplateTERMCHIDECLIVENDPL: TStringField;
    OcultarVendCliPlano: TDBCheckBox;
    ImpDadosInternosCupom: TDBCheckBox;
    SQLTemplateTERMCIMPRDADINTCUP: TStringField;
    MovEstoque: TDBCheckBox;
    SQLTemplateTERMCCONFFECHCUPOM: TStringField;
    ConfirmaEncerramentoCupom: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    ComboCarne: TDBComboBox;
    ComboFichaCli: TDBComboBox;
    SQLTemplateTERMA60IMPFICHACLI: TStringField;
    SQLTemplateTERMA60IMPAUTORIZCOM: TStringField;
    Label12: TLabel;
    ComboAutDep: TDBComboBox;
    SQLTemplateTERMCMOSTRAIDCUPOM: TStringField;
    MostraIDCupomNoFechamento: TDBCheckBox;
    InformaDadosClienteNoFechamento: TDBCheckBox;
    SQLTemplateTERMITMPLIMITESERV: TIntegerField;
    SQLTemplateTERMIINTERVALOSERV: TIntegerField;
    TblEmpresa: TTable;
    TblEmpresaEMPRICOD: TIntegerField;
    TblEmpresaEMPRA60RAZAOSOC: TStringField;
    TblEmpresaEMPRA60NOMEFANT: TStringField;
    TblECF: TTable;
    TblECFECFA13ID: TStringField;
    TblECFECFA30DESCR: TStringField;
    TblCliente: TTable;
    TblClienteCLIEA13ID: TStringField;
    TblClienteCLIEA60RAZAOSOC: TStringField;
    TblVendedor: TTable;
    TblVendedorVENDICOD: TIntegerField;
    TblVendedorVENDA60NOME: TStringField;
    TblPlano: TTable;
    TblPlanoPLRCICOD: TIntegerField;
    TblPlanoPLRCA60DESCR: TStringField;
    TblNumerario: TTable;
    TblNumerarioNUMEICOD: TIntegerField;
    TblNumerarioNUMEA30DESCR: TStringField;
    GroupBox5: TGroupBox;
    RetornoNumeVista: TSpeedButton;
    RetornoNumePrazo: TSpeedButton;
    RetornoNumeRecCred: TSpeedButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SQLTemplateCLIENTELOOKUP: TStringField;
    ComboCasasDecimais: TRxDBComboBox;
    SQLTemplateTIPONUMECREDLOOKUP: TStringField;
    TblNumerarioCred: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SQLTemplateTERMINUMERECCRED: TIntegerField;
    TabSheetAdicionalDois: TTabSheet;
    Button4: TRxSpeedButton;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    SQLTemplateTERMINROVIASTEF: TIntegerField;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateCFGIICOD: TIntegerField;
    GroupBox6: TGroupBox;
    DBEdit5: TDBEdit;
    ButtonCadastroConfigIntegracao: TSpeedButton;
    DBEdit26: TDBEdit;
    TblConfigIntegracao: TTable;
    SQLTemplateCFGIA60DESCRLookup: TStringField;
    SQLTemplateTERMTPATHNF: TStringField;
    GroupBox7: TGroupBox;
    ButtonDialog: TSpeedButton;
    DBEdit27: TDBEdit;
    Dialog: TOpenDialog;
    AutenticImpMatricial: TDBCheckBox;
    SQLTemplateTERMCAUTENTIMPMATRI: TStringField;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label32: TLabel;
    ComboTicket: TDBComboBox;
    Label30: TLabel;
    ComboCheque: TDBComboBox;
    GroupBox8: TGroupBox;
    FilenameImpPedOrc: TFilenameEdit;
    RxDBComboBox4: TRxDBComboBox;
    SQLTemplateTERMACTIPOIMPPEDORC: TStringField;
    SQLTemplateTERMTPATHPEDORC: TStringField;
    DBEdit28: TDBEdit;
    GroupImp: TGroupBox;
    Label26: TLabel;
    ComboPedido: TDBComboBox;
    ComboImpNaoFiscal: TRxDBComboBox;
    Label21: TLabel;
    SQLTemplateTERMA30MODIMPNFISC: TStringField;
    ImpEntradaCarne: TDBCheckBox;
    SQLTemplateTERMCIMPENTCARNE: TStringField;
    SQLTemplateTERMCDISPOENTRADA: TStringField;
    GroupLeitor: TGroupBox;
    SQLTemplateTERMA60MODLEITOR: TStringField;
    RadioDispositivoEntrada: TDBRadioGroup;
    ComboLeitor: TRxDBComboBox;
    Label25: TLabel;
    ComboPortaLeitor: TDBComboBox;
    Label29: TLabel;
    SQLTemplateTERMA5LEITPORTACOM: TStringField;
    GroupTipoDoc: TGroupBox;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    SQLTemplateTERMCIMPCOMPTOTREC: TStringField;
    SQLTemplateTERMCNAOAUTRCTOCRD: TStringField;
    NaoAutenticParcNoRecto: TDBCheckBox;
    ImpComprovComTotalRecto: TDBCheckBox;
    SQLTemplateTERMCUSAVENDEDOR: TStringField;
    SQLTemplateTERMCUSALIMITECRED: TStringField;
    SQLTemplateTERMCUSAMOEDA: TStringField;
    SQLTemplateTERMCINFDADOSCLICP: TStringField;
    SQLTemplateTERMCIMPIDCUPOM: TStringField;
    SQLTemplateTERMIPROXCODCTRC: TIntegerField;
    SQLTemplateTERMCSQLORDENADO: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateTERMA60MENSAGEMPDV: TStringField;
    InfDadosCartaoCred: TDBCheckBox;
    SQLTemplateTERMCINFDADOCARTAO: TStringField;
    TabImpCheque: TTabSheet;
    GroupBox9: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLTemplateTERMA30MODIMPCHQ: TStringField;
    SQLTemplateTERMA5IMPCHQPORTA: TStringField;
    Button5: TRxSpeedButton;
    RxDBComboBox5: TRxDBComboBox;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    ComboImpNotaFiscal: TDBComboBox;
    SQLTemplateTERMA60IMPNF: TStringField;
    InformaTrocoDestaqueCupom: TDBCheckBox;
    SQLTemplateTERMCMOSTRATROCOCUP: TStringField;
    SQLTemplateTERMCIMPNFPRT: TStringField;
    SQLTemplateTERMCIMPPEDPRT: TStringField;
    CKVisualizarNF: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    SQLTemplateTERMCSOLCODVEND: TStringField;
    CheckVendInicioVenda: TDBCheckBox;
    SQLTemplateTERMCIMPPREVENDASIM: TStringField;
    DBCheckBox2: TDBCheckBox;
    BTLimpaPortaSerial: TButton;
    DBCheckBox3: TDBCheckBox;
    SQLTemplateTERMCBXESTFECHCX: TStringField;
    Label37: TLabel;
    ComboTecladoReduzido: TRxDBComboBox;
    SQLTemplateTERMCTECLREDUZ: TStringField;
    Button6: TButton;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    SQLTemplateTERMIQTDEPADRAO: TIntegerField;
    SQLTemplateTERMCMPATACADO: TStringField;
    CheckMostraPAtacadoPDV: TDBCheckBox;
    SQLEspelhoNovoLanc: TRxQuery;
    MnCriarTerminalNovocomPerfildoTerminalAtual: TMenuItem;
    SQLTemplateTERMCECFIMPRCONFDIVIMPFAT: TStringField;
    SQLTemplateTERMCECFIMPRCONFDIVIMPITENS: TStringField;
    SQLTemplateTERMCECFIMPRCONFDIVPERGUNTA: TStringField;
    ImpConfDivPerg: TDBCheckBox;
    ImpConfDivItens: TDBCheckBox;
    ImpConfDivFat: TDBCheckBox;
    Label38: TLabel;
    ComboDecVenda: TRxDBComboBox;
    SQLTemplateTERMINRODECVALORUNIT: TIntegerField;
    SQLTemplateTERMA20NROSERIE: TStringField;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    SQLTemplateTERMCMOVTRANSF: TStringField;
    DBCheckBox4: TDBCheckBox;
    SQLTemplateECF_VELOC: TIntegerField;
    Label40: TLabel;
    ComboVelocidadeECF: TDBComboBox;
    SQLTemplateUSATABLET: TStringField;
    DBCheckBox5: TDBCheckBox;
    SQLTemplateVALOR_LIMITE_SANGRIA: TFloatField;
    DBEdit20: TDBEdit;
    Label3: TLabel;
    DBCheckBox6: TDBCheckBox;
    SQLTemplateALTERA_NOSSO_NUMERO: TStringField;
    DBCheckBox7: TDBCheckBox;
    SQLTemplateCONTROLA_CONSULTA_CP: TStringField;
    DBCheckBox8: TDBCheckBox;
    SQLTemplateCONTROLA_ES_RAPIDA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure DBEditEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButtonClienteClick(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButtonVendedorClick(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButtonPlanoRectoClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornoNumeVistaClick(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornoNumePrazoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure RetornaECFClick(Sender: TObject);
    procedure CapturaComputClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornoNumeRecCredClick(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure ButtonCadastroConfigIntegracaoClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonDialogClick(Sender: TObject);
    procedure FilenameImpPedOrcChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateTERMCDISPOENTRADAChange(Sender: TField);
    procedure BTLimpaPortaSerialClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure MnCriarTerminalNovocomPerfildoTerminalAtualClick(
      Sender: TObject);
    procedure ImpConfDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTerminais: TFormCadastroTerminais;

implementation

uses DataModulo, CadastroEcf, CadastroUsuario, CadastroEmpresa,
  CadastroPlanoRecebimento, CadastroNumerario, UnitLibrary,
  TelaConsultaCliente, TelaConsultaVendedor, CadastroConfigIntegracao;

{$R *.DFM}

procedure TFormCadastroTerminais.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TERMINAL';
  if not SQLTipoDocumento.Active then SQLTipoDocumento.Open; 
end;

procedure TFormCadastroTerminais.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateTERMCSTATUSCAIXA.Value = 'A' then
    SQLTemplateStatusCaixaCalcField.Value := 'Aberto em ' + FormatDateTime('dd/mm/yyyy', SQLTemplateTERMDSTATUSCAIXA.Value) ;
  if SQLTemplateTERMCSTATUSCAIXA.Value = 'F' then
    SQLTemplateStatusCaixaCalcField.Value := 'Fechado em ' + FormatDateTime('dd/mm/yyyy', SQLTemplateTERMDSTATUSCAIXA.Value) ;

end;

procedure TFormCadastroTerminais.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormCadastroEmpresa,'FormCadastroEmpresa',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEditEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    RetornaEmpresa.Click;
end;

procedure TFormCadastroTerminais.SpeedButtonClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  CriaFormulario(TFormTelaConsultaCliente,'FormTelaConsultaCliente',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_F2 then
    SpeedButtonCliente.Click;
end;

procedure TFormCadastroTerminais.SpeedButtonVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem := 'VENDICOD' ;
  CriaFormulario(TFormTelaConsultaVendedor,'FormTelaConsultaVendedor',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_F2 then
    SpeedButtonVendedor.Click;
end;

procedure TFormCadastroTerminais.SpeedButtonPlanoRectoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLRCICOD');
  FieldOrigem := 'PLRCICOD' ;
  CriaFormulario(TFormCadastroPlanoRecebimento,'FormCadastroPlanoRecebimento',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    SpeedButtonPlanoRecto.Click;
end;

procedure TFormCadastroTerminais.RetornoNumeVistaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TERMINUMEVISTA');
  FieldOrigem := 'NUMEICOD' ;
  CriaFormulario(TFormCadastroNumerario,'FormCadastroNumerario',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If key = Vk_F2 then
    RetornoNumeVista.Click;
end;

procedure TFormCadastroTerminais.DBEdit17KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    RetornoNumePrazo.Click;
end;

procedure TFormCadastroTerminais.RetornoNumePrazoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TERMINUMEPRAZO');
  FieldOrigem := 'NUMEICOD' ;
  CriaFormulario(TFormCadastroNumerario,'FormCadastroNumerario',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTERMCATIVO.Value            := 'I';
  SQLTemplateTERMINRODECQUANT.AsString   := '2';
  SQLTemplateTERMCIMPPREVENDA.AsString   := 'N';
  SQLTemplateTERMCIMPBARRASPED.AsString  := 'N';
  SQLTemplateTERMCAUTENTRFIMCUP.AsString := 'S';
  SQLTemplateTERMCHIDECLIVENDPL.AsString := 'N';
  SQLTemplateTERMCCONFFECHCUPOM.AsString := 'N';
  SQLTemplateTERMCIMPCONFDIVIDA.AsString := 'S';
  SQLTemplateTERMCIMPRDADINTCUP.AsString := 'S';
  SQLTemplateTERMCCONFIMPCARNE.AsString  := 'N';
  SQLTemplateTERMCINFDADOCLIPAD.AsString := 'N';
  SQLTemplateTERMCMOSTRAIDCUPOM.AsString := 'N';
  SQLTemplateTERMCMOVESTOQUE.AsString    := 'S';
  SQLTemplateTERMCINFDADOCARTAO.AsString := 'N';
  SQLTemplateTERMCMOVTRANSF.AsString     := 'N';
end;

procedure TFormCadastroTerminais.RetornaECFClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ECFA13ID');
  FieldOrigem := 'ECFA13ID' ;
  CriaFormulario(TFormCadastroEcf,'FormCadastroEcf',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.CapturaComputClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
  begin
    Informa('Coloque o terminal em modo de edição !') ;
    exit ;
  end ;

  if not Pergunta('NAO', 'Esta rotina deve ser executada no computador que será o usuário deste terminal.' + #13 +
                         'Tem certeza que este computador irá usar este terminal ?') then
    exit ;

  SQLTemplateTERMA60NOMECOMPUT.Value := AnsiUpperCase(RetornarNomeComputador);
end;

procedure TFormCadastroTerminais.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    RetornaECF.Click;
end;

procedure TFormCadastroTerminais.RetornoNumeRecCredClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TERMINUMERECCRED');
  FieldOrigem := 'NUMEICOD' ;
  CriaFormulario(TFormCadastroNumerario,'FormCadastroNumerario',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit21KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    RetornoNumeRecCred.Click;
end;

procedure TFormCadastroTerminais.Button3Click(Sender: TObject);
begin
  inherited;
  If (Sender as TrxSpeedButton).Name = 'Button3' Then
    Begin
      PagePrincipal.ActivePage := TabSheetAdicional ;

      ComboCarne.Items.Clear ;
      ComboPedido.Items.Clear ;
      ComboFichaCli.Items.Clear ;
      ComboAutDep.Items.Clear ;
      ComboCheque.Items.Clear ;
      ComboTicket.Items.Clear ;
      ComboImpNotaFiscal.Items.Clear;
      ComboCarne.Items.Text    := Printer.Printers.Text;
      ComboPedido.Items.Text   := Printer.Printers.Text;
      ComboFichaCli.Items.text := Printer.Printers.Text;
      ComboAutDep.Items.text   := Printer.Printers.Text;
      ComboCheque.Items.text   := Printer.Printers.Text;
      ComboTicket.Items.text   := Printer.Printers.Text;
      ComboImpNotaFiscal.Items.text  := Printer.Printers.Text;      
    End;
  If (Sender as TrxSpeedButton).Name = 'Button4' Then
    PagePrincipal.ActivePage := TabSheetAdicionalDois;
  If (Sender as TrxSpeedButton).Name = 'Button5' Then
    PagePrincipal.ActivePage := TabImpCheque;
end;

procedure TFormCadastroTerminais.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplateTERMCMOVTRANSF.AsString = '' then
     SQLTemplateTERMCMOVTRANSF.AsString := 'N';

  if SQLTemplateEMPRESALOOKUP.AsString = '' then
    begin
      Informa('Empresa não encontrada!');
      DBEditEmpresa.SetFocus;
      Abort;
    end;
  if (SQLTemplate.FieldByName('TERMCDISPOENTRADA').AsString = 'L') and (SQLTemplate.FieldByName('TERMA60MODLEITOR').AsString = '') then
    begin
      Informa('Você selecionou como dispositivo de entrada "LEITOR", mas não informou o modelo do leitor. Verifique!');
      Abort;
    end;
  inherited;
end;

procedure TFormCadastroTerminais.ButtonCadastroConfigIntegracaoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFGIICOD');
  FieldOrigem := 'CFGIICOD';
  CriaFormulario(TFormCadastroConfigIntegracao,'FormCadastroConfigIntegracao',False,True,True,'Terminal ' + SQLTemplateTERMA60DESCR.Value);
end;

procedure TFormCadastroTerminais.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroConfigIntegracao.Click;
end;

procedure TFormCadastroTerminais.ButtonDialogClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    SQLTemplate.Edit ;
  Dialog.Execute;
  SQLTemplate.FieldByName('TERMTPATHNF').AsString := Dialog.FileName;

end;

procedure TFormCadastroTerminais.FilenameImpPedOrcChange(Sender: TObject);
begin
  inherited;
  if FilenameImpPedOrc.Text <> '' then
    SQLTemplateTERMTPATHPEDORC.AsString := FilenameImpPedOrc.FileName;
end;

procedure TFormCadastroTerminais.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLTemplate.FieldByName('TERMCDISPOENTRADA').AsString = 'L' then
    begin
      ComboLeitor.Enabled      := True;
      ComboPortaLeitor.Enabled := True;
    end
  else
    begin
      ComboLeitor.Enabled      := False;
      ComboPortaLeitor.Enabled := False;
    end;
end;

procedure TFormCadastroTerminais.SQLTemplateTERMCDISPOENTRADAChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.FieldByName('TERMCDISPOENTRADA').AsString = 'L' then
    begin
      ComboLeitor.Enabled      := True;
      ComboPortaLeitor.Enabled := True;
    end
  else
    begin
      ComboLeitor.Enabled      := False;
      ComboPortaLeitor.Enabled := False;
    end;
end;

procedure TFormCadastroTerminais.BTLimpaPortaSerialClick(Sender: TObject);
begin
  inherited;
  if DSTemplate.State in dseditmodes then
    begin
      SQLTemplateECFA13ID.Value          := '';
      SQLTemplateTERMA20NROSERIE.Value   := '';
      SQLTemplateTERMA5ECFPORTACOM.Value := '';
      SQLTemplateECF_VELOC.AsString      := '';
    end;
end;

Procedure TFormCadastroTerminais.Button6Click(Sender: TObject);
begin
  inherited;
  if DSTemplate.State in dseditmodes then
    SQLTemplateTERMCTECLREDUZ.Value := '';
end;

procedure TFormCadastroTerminais.MnCriarTerminalNovocomPerfildoTerminalAtualClick(
  Sender: TObject);
var i : integer;  
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLTemplateTERMICOD.AsString ;
  SQLEspelhoNovoLanc.Open ;

  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'TERMICOD') then
      begin
        try
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
        except
          Application.ProcessMessages;
        end;
      end;
  SQLTemplateTERMA60DESCR.Value := '';
  SQLTemplateTERMA60DESCR.FocusControl ;
end;

procedure TFormCadastroTerminais.ImpConfDivClick(Sender: TObject);
begin
  inherited;
  ImpConfDivPerg.Enabled := ImpConfDiv.Checked;
  ImpConfDivFat.Enabled  := ImpConfDiv.Checked;
  ImpConfDivItens.Enabled:= ImpConfDiv.Checked;
  if not (ImpConfDiv.Checked) and (SQLTemplate.State in ([dsEdit,dsInsert])) then
    begin
      SQLTemplateTERMCECFIMPRCONFDIVPERGUNTA.AsString := 'N';
      SQLTemplateTERMCECFIMPRCONFDIVIMPITENS.AsString := 'N';
      SQLTemplateTERMCECFIMPRCONFDIVIMPFAT.AsString   := 'N';
    end;
end;

end.
