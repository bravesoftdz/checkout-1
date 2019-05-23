unit TelaConfiguracaoCrediario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Db,
  DBTables, Mask, ActnList, DBActns, ToolEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoCrediario = class(TFormTelaGeralTEMPLATE)
    SQLConfigCrediario: TQuery;
    DSSQLConfigCrediario: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    ArqCarta1Aviso: TFilenameEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    ArqCarta2Aviso: TFilenameEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    ArqCartaAvisoSPC: TFilenameEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField;
    SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField;
    SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField;
    SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField;
    SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField;
    SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField;
    SQLConfigCrediarioCFCRA255PATHCART1A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART2A: TStringField;
    SQLConfigCrediarioCFCRA255PATHCART3A: TStringField;
    SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField;
    SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField;
    SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField;
    SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField;
    SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField;
    SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField;
    SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField;
    GroupBox5: TGroupBox;
    Label15: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    GroupBox6: TGroupBox;
    DBEdit15: TDBEdit;
    FilenameMaladireta: TFilenameEdit;
    SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField;
    SQLConfigCrediarioCFCRIPRZMINCARTAO: TStringField;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    ArqCartasPerson: TFilenameEdit;
    LabelGravar: TSpeedButton;
    procedure SQLConfigCrediarioAfterEdit(DataSet: TDataSet);
    procedure SQLConfigCrediarioAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ArqCarta1AvisoChange(Sender: TObject);
    procedure ArqCarta2AvisoChange(Sender: TObject);
    procedure ArqCartaAvisoSPCChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FilenameMaladiretaChange(Sender: TObject);
    procedure ArqCartasPersonChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoCrediario: TFormTelaConfiguracaoCrediario;

implementation

uses DataModulo;

{$R *.DFM}

procedure TFormTelaConfiguracaoCrediario.SQLConfigCrediarioAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  //LabelGravar.Enabled := true ;
end;

procedure TFormTelaConfiguracaoCrediario.SQLConfigCrediarioAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //LabelGravar.Enabled := false ;
end;

procedure TFormTelaConfiguracaoCrediario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigCrediario.Open ;
end;

procedure TFormTelaConfiguracaoCrediario.ArqCarta1AvisoChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLConfigCrediario.State in dsEditModes) then
    SQLConfigCrediario.Edit ;

  SQLConfigCrediarioCFCRA255PATHCART1A.Value := ArqCarta1Aviso.Text ;
end;

procedure TFormTelaConfiguracaoCrediario.ArqCarta2AvisoChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLConfigCrediario.State in dsEditModes) then
    SQLConfigCrediario.Edit ;

  SQLConfigCrediarioCFCRA255PATHCART2A.Value := ArqCarta2Aviso.Text ;
end;

procedure TFormTelaConfiguracaoCrediario.ArqCartaAvisoSPCChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLConfigCrediario.State in dsEditModes) then
    SQLConfigCrediario.Edit ;

  SQLConfigCrediarioCFCRA255PATHCART3A.Value := ArqCartaAvisoSPC.Text ;
end;

procedure TFormTelaConfiguracaoCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.SQLConfigCrediario.Close ;
  DM.SQLConfigCrediario.OPen ;
end;

procedure TFormTelaConfiguracaoCrediario.FilenameMaladiretaChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLConfigCrediario.State in dsEditModes) then
    SQLConfigCrediario.Edit ;
  SQLConfigCrediarioCFCRA254PATHMALADIRETA.Value := FilenameMaladireta.Text ;
end;

procedure TFormTelaConfiguracaoCrediario.ArqCartasPersonChange(
  Sender: TObject);
begin
  inherited;
  if not (SQLConfigCrediario.State in dsEditModes) then
    SQLConfigCrediario.Edit ;

  SQLConfigCrediarioCFCRA255PATHCARTPE.Value := ArqCartasPerson.Text ;
end;

end.
