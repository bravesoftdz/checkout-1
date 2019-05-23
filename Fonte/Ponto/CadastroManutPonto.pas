unit CadastroManutPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxLookup, DBCtrls, RxDBComb, ToolEdit, RXDBCtrl,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroManutPonto = class(TFormCadastroTEMPLATE)
    SQLTemplatePONTA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePONTICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePONTDDATA: TDateTimeField;
    SQLTemplatePONTTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLFunc: TRxQuery;
    SQLFuncFORNICOD: TIntegerField;
    SQLFuncFORNA60RAZAOSOC: TStringField;
    SQLFuncFORNA60NOMEFANT: TStringField;
    SQLFuncTPFRICOD: TIntegerField;
    SQLFuncFORNA60CONTATO: TStringField;
    SQLFuncFORNCFISJURID: TStringField;
    SQLFuncFORNA14CGC: TStringField;
    SQLFuncFORNA20IE: TStringField;
    SQLFuncFORNA11CPF: TStringField;
    SQLFuncFORNA10RG: TStringField;
    SQLFuncFORNA60END: TStringField;
    SQLFuncFORNA60BAI: TStringField;
    SQLFuncFORNA60CID: TStringField;
    SQLFuncFORNA2UF: TStringField;
    SQLFuncFORNA8CEP: TStringField;
    SQLFuncFORNA15FONE1: TStringField;
    SQLFuncFORNA15FONE2: TStringField;
    SQLFuncFORNA15FAX: TStringField;
    SQLFuncFORNA60EMAIL: TStringField;
    SQLFuncFORNA60URL: TStringField;
    SQLFuncFORNTOBS: TStringField;
    SQLFuncPENDENTE: TStringField;
    SQLFuncREGISTRO: TDateTimeField;
    SQLFuncFORNA30CODCONTABIL: TStringField;
    SQLFuncPLCTA15CODDEBITO: TStringField;
    SQLFuncRAMOICOD: TIntegerField;
    SQLFuncSRAMICOD: TIntegerField;
    SQLFuncFORNA15CODNOFORN: TStringField;
    SQLFuncFORNA30LOCCATALOG: TStringField;
    SQLFuncFORNCPERMITETROCA: TStringField;
    SQLFuncFORNCTEMCATALOG: TStringField;
    SQLFuncFORNDCAD: TDateTimeField;
    SQLFuncREPRICOD: TIntegerField;
    SQLFuncFORNCSIMPLES: TStringField;
    SQLFuncFORNA15CXPOSTAL: TStringField;
    SQLFuncFORNIMUNICODFED: TIntegerField;
    SQLFuncFORNBIMAGEM: TBlobField;
    SQLFuncFORNBDIGITAL1: TBlobField;
    SQLFuncFORNBDIGITAL2: TBlobField;
    SQLFuncFORNBDIGITAL3: TBlobField;
    SQLFuncFORNA13IDCRACHA: TStringField;
    ComboConsultaFunc: TRxDBLookupCombo;
    BTNLocalizar: TSpeedButton;
    DSSQLFunc: TDataSource;
    SQLTemplateFornecedorNome: TStringField;
    Label1: TLabel;
    ComboFuncCadastro: TRxDBLookupCombo;
    Label3: TLabel;
    SQLTemplatePONTDMANHAENT: TDateTimeField;
    SQLTemplatePONTDMANHASAI: TDateTimeField;
    SQLTemplatePONTDTARDEENT: TDateTimeField;
    SQLTemplatePONTDTARDESAI: TDateTimeField;
    SQLTemplatePONTDNOITEENT: TDateTimeField;
    SQLTemplatePONTDNOITESAI: TDateTimeField;
    SQLTemplatePONTDDIASEMANA: TStringField;
    SQLTemplatePONTDATRAZO: TDateTimeField;
    SQLTemplatePONTDEXTRA: TDateTimeField;
    DBEdit4: TDBEdit;
    MemoOBS: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBDataRef: TDBDateEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBDataRefExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroManutPonto: TFormCadastroManutPonto;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormCadastroManutPonto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PontoFunc';
  SQLFunc.Open;
end;

procedure TFormCadastroManutPonto.BTNLocalizarClick(Sender: TObject);
var
Clausula, vdata : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboConsultaFunc.Value <> '' then
    Clausula := 'FORNICOD = ' + ComboConsultaFunc.KeyValue;

  if EditProcura.Text <> '' then
    vdata := EditProcura.Text;

  if vdata <> '  /  /    ' then
    Clausula := Clausula + ' and ' + 'PONTDDATA = "' + FormatDateTime('mm/dd/yyyy',StrToDate(vdata)) + '"';

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));

  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    ShowMessage('Pesquisa incompleta, verifique!');
end;

procedure TFormCadastroManutPonto.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePONTDDATA.AsString <> '' then
    SQLTemplatePONTDDATA.AsString := FormatDateTime('dd/mm/yyyy',now);

  if SQLTemplatePONTTOBS.AsString = '' then
    SQLTemplatePONTTOBS.Value := 'Batida Manual';
end;

procedure TFormCadastroManutPonto.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePONTDDATA.AsString := FormatDateTime('dd/mm/yyyy',now);
  SQLTemplatePONTTOBS.Value     := 'Batida Manual';
end;

procedure TFormCadastroManutPonto.DBDataRefExit(Sender: TObject);
begin
  inherited;
  if DSTemplate.State in DSEditModes then
    SQLTemplatePONTDDIASEMANA.Value := FormatDateTime('ddd',SQLTemplatePONTDDATA.Value);
end;

end.
