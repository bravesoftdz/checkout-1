unit TelaConfiguracaoGeral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Db, DBTables, Buttons, jpeg, ExtCtrls, DBCtrls,
  StdCtrls, Mask, RxLookup, ToolEdit, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoGeral = class(TFormTelaGeralTEMPLATE)
    SQLConfigGeral: TQuery;
    DSSQLConfigGeral: TDataSource;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    SQLEmpresa: TQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    GroupBox4: TGroupBox;
    DBEdit11: TDBEdit;
    FilePath: TDirectoryEdit;
    DBCheckBox1: TDBCheckBox;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    DBCheckBox2: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    Dialog: TOpenDialog;
    ButtonDialog: TSpeedButton;
    DBCheckBox3: TDBCheckBox;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    DBCheckBox4: TDBCheckBox;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    DBCheckBox5: TDBCheckBox;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    GroupBox2: TGroupBox;
    dblOpEntradaTransf: TRxDBLookupCombo;
    Label11: TLabel;
    dblOpSaidaTransf: TRxDBLookupCombo;
    Label2: TLabel;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    GroupBox3: TGroupBox;
    DBEdit7: TDBEdit;
    SQLConfigGeralCFGEIULTBONUS: TIntegerField;
    BotaoGravar: TSpeedButton;
    DBCheckBox6: TDBCheckBox;
    SQLConfigGeralSOLICITA_TROCO_ABERTURA: TStringField;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    SQLConfigGeralDIAS_AVISO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BotaoGravarClick(Sender: TObject);
    procedure DSSQLConfigGeralDataChange(Sender: TObject; Field: TField);
    procedure FilePathChange(Sender: TObject);
    procedure ButtonDialogClick(Sender: TObject);
    procedure dblOpEntradaTransfChange(Sender: TObject);
    procedure dblOpSaidaTransfChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoGeral: TFormTelaConfiguracaoGeral;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormTelaConfiguracaoGeral.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigGeral.Open ;
  SQLEmpresa.Open ;
  SQLOperacaoEstoque.Open;
end;

procedure TFormTelaConfiguracaoGeral.BotaoGravarClick(Sender: TObject);
begin
  inherited;
  SQLConfigGeral.Post ;
  DM.SQLConfigGeral.Close ;
  DM.SQLConfigGeral.Open ;
  BotaoGravar.Enabled := false ;
end;

procedure TFormTelaConfiguracaoGeral.DSSQLConfigGeralDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  BotaoGravar.Enabled := true ;
end ;

procedure TFormTelaConfiguracaoGeral.FilePathChange(Sender: TObject);
begin
  inherited;
  if not (SQLConfigGeral.State in dsEditModes) then
    SQLConfigGeral.Edit ;

  SQLConfigGeralCFGEA255PATHREPORT.Value := FilePath.Text ;
end;

procedure TFormTelaConfiguracaoGeral.ButtonDialogClick(Sender: TObject);
begin
  inherited;
  if not (SQLConfigGeral.State in dsEditModes) then
    SQLConfigGeral.Edit ;
  Dialog.Execute;
  SQLConfigGeral.FieldByName('CFGEA255EXEDUPLICATA').AsString := Dialog.FileName;

end;

procedure TFormTelaConfiguracaoGeral.dblOpEntradaTransfChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString = 'S' then
     begin
       Informa('A Operação de Estoque deve ser de ENTRADA.');
       dblOpEntradaTransf.SetFocus;
       dblOpEntradaTransf.KeyValue := '';
       Abort;
     end;

end;

procedure TFormTelaConfiguracaoGeral.dblOpSaidaTransfChange(
  Sender: TObject);
begin
  inherited;
  if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString = 'E' then
     begin
       Informa('A Operação de Estoque deve ser de SAÍDA.');
       dblOpSaidaTransf.SetFocus;
       dblOpSaidaTransf.KeyValue := '';
       Abort;
     end;
end;

end.
