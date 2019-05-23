unit CadastroFreteFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DBCtrls, StdCtrls, EDBNum, ToolEdit,
  RXDBCtrl, DB, DBTables, DBActns, ActnList, ImgList, RxQuery, Menus, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, VarSys;

type
  TFormCadastroFreteFinanceiro = class(TFormCadastroTEMPLATE)
    TblFrete: TTable;
    DSTblNotaFiscal: TDataSource;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DSSQLNumerario: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    DSSQLTipoDocumento: TDataSource;
    SQLAvalista: TRxQuery;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLAvalistaAVALA60ENDRES: TStringField;
    DSSQLAvalista: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    DBEdit3: TEvDBNumEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label5: TLabel;
    BtnPortadores: TSpeedButton;
    Label14: TLabel;
    BtnTipoDocumento: TSpeedButton;
    Label20: TLabel;
    BtnHistorico: TSpeedButton;
    Label21: TLabel;
    Label4: TLabel;
    BtnAvalista: TSpeedButton;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    Label18: TLabel;
    RetornaPlanoContas: TSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    TabDebito: TTabSheet;
    Label19: TLabel;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEditHistoricoPadrao: TDBEdit;
    MemoHistorico: TDBMemo;
    ComboPortador: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboAvalista: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCCSTATUS: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TBCDField;
    SQLTemplateCTRCN2DESCFIN: TBCDField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TBCDField;
    SQLTemplateCTRCN2TXMULTA: TBCDField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TBCDField;
    SQLTemplateCTRCN2TOTJUROREC: TBCDField;
    SQLTemplateCTRCN2TOTMULTAREC: TBCDField;
    SQLTemplateCTRCN2TOTDESCREC: TBCDField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateCTRCN2TOTMULTACOBR: TBCDField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateNumerarioLookUp: TStringField;
    SQLTemplatePortadorLookUp: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateTipoDocumentoLookUp: TStringField;
    SQLTemplateTipoPadraoLookUp: TStringField;
    SQLTemplateCTRCA254HIST: TStringField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    SQLTemplatePlanodeContasCreditoCalcField: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplateAvalistaLookup: TStringField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateHTPDICOD: TIntegerField;
    TblFreteFRETA13ID: TStringField;
    SQLTemplateFRETA13ID: TStringField;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    RadioPago: TDBRadioGroup;
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboAvalistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAvalistaClick(Sender: TObject);
    procedure BtnTipoDocumentoClick(Sender: TObject);
    procedure BtnPortadoresClick(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFreteFinanceiro: TFormCadastroFreteFinanceiro;

implementation

uses UnitLibrary, FormResources, CadastroHistoricoPadrao,
  TelaConsultaPlanoContas, CadastroAvalista, TelaConsultaTipoDocumento,
  TelaConsultaPortador, DataModulo;

{$R *.dfm}


procedure TFormCadastroFreteFinanceiro.ComboPortadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((Sender as trxdblookupcombo).Value = '')
    or ((Sender as trxdblookupcombo).Value <> (Sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value) then
      (Sender as trxdblookupcombo).KeyValue := (Sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value;

  if Key = VK_F2 then
    BtnPortadores.Click;
end;

procedure TFormCadastroFreteFinanceiro.ComboTipoDocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    if ((Sender as TRxDBLookupCombo).Value = '')
    or ((Sender as TRxDBLookupCombo).Value <> (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value) then
      (Sender as TRxDBLookupCombo).KeyValue := (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value;

  if Key = VK_F2 then
    BtnTipoDocumento.Click;
end;
procedure TFormCadastroFreteFinanceiro.ComboAvalistaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    if ((Sender as TRxDBLookupCombo).Value = '')
    or ((Sender as TRxDBLookupCombo).Value <> (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value) then
      (Sender as TRxDBLookupCombo).KeyValue := (Sender as TRxDBLookupCombo).LookupSource.DataSet.FieldByName((Sender as TRxDBLookupCombo).LookupField).Value;

  if Key = VK_F2 then
    BtnAvalista.Click;
end;


procedure TFormCadastroFreteFinanceiro.DBEditHistoricoPadraoExit(
  Sender: TObject);
var
  Tam : Integer;
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
    begin
      MemoHistorico.SetFocus;
      Tam := Length(MemoHistorico.Text) + 2;
      MemoHistorico.SelStart := Tam;
    end;
end;

procedure TFormCadastroFreteFinanceiro.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroFreteFinanceiro.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.RetornaPlanoContasClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.DBEdit13KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click ;
end;

procedure TFormCadastroFreteFinanceiro.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;
end;

procedure TFormCadastroFreteFinanceiro.BtnAvalistaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('AVALA13ID');
  FieldOrigem   := 'AVALA13ID';
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista,'FormCadastroAvalista',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.BtnTipoDocumentoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('TPDCICOD');
  FieldOrigem   := 'TPDCICOD';
  DataSetLookup := SQLTipoDocumento;
  CriaFormulario(TFormTelaConsultaTipoDocumento,'FormTelaConsultaTipoDocumento',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.BtnPortadoresClick(Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('PORTICOD');
  FieldOrigem   := 'PORTICOD';
  DataSetLookup := SQLPortador;
  CriaFormulario(TFormTelaConsultaPortador,'FormTelaConsultaPortador',False,True,True,'');

end;

procedure TFormCadastroFreteFinanceiro.SQLTemplateHTPDICODChange(
  Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
   if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DSTemplate.DataSet.FieldByName('HTPDICOD').AsString],1) Then
        begin
          DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
          if (DSTemplate.DataSet.State in DsEditModes) then
             DSTemplate.DataSet.FieldByName('CTRCA254HIST').AsVariant             := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
        end
      else
        DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;

end;

procedure TFormCadastroFreteFinanceiro.SQLTemplateNUMEICODChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.Value := SQLTemplateTipoPadraoLookUp.asString;
end;

procedure TFormCadastroFreteFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := Nil;
end;

procedure TFormCadastroFreteFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONTASRECEBER';
  if not TblFrete.Active then TblFrete.Open;
end;

end.
