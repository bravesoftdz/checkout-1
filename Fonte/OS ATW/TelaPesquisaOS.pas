unit TelaPesquisaOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, RXCtrls, RXDBCtrl, Grids, DBGrids, DB,
  DBTables, RxQuery, StdCtrls, DBCtrls, Mask, RxDBComb, Buttons, jpeg,
  ExtCtrls, ConerBtn, RxLookup;

type
  TFormTelaPesquisaOS = class(TFormTelaGeralTEMPLATE)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SQLTemplate: TRxQuery;
    SQLTemplateOSA13ID: TStringField;
    SQLTemplateOSITICOD: TIntegerField;
    SQLTemplateOSITTSTATUS: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateOSITA30NRONF: TStringField;
    SQLTemplateOSITCORIGNF: TStringField;
    SQLTemplateOSITA60EMPRESANF: TStringField;
    SQLTemplateOSITA60SERIEEQUIP: TStringField;
    SQLTemplateOSITTDESCREQUIP: TMemoField;
    SQLTemplateOSITTPROBLEMA: TMemoField;
    SQLTemplateOSITTSOLUCAO: TMemoField;
    SQLTemplateOSITTSOFTDRIVEUTIL: TMemoField;
    SQLTemplateOSITTOBS: TMemoField;
    SQLTemplateOSITN2VLRITEM: TBCDField;
    SQLTemplateOSITN2VLRDESC: TBCDField;
    SQLTemplateOSITN2PERCDESC: TBCDField;
    SQLTemplateOSITN2VLRTOTITEM: TBCDField;
    SQLTemplateOSITDCONCLUSAO: TDateTimeField;
    SQLTemplateUSUA60RESPCONC: TStringField;
    SQLTemplateUSUA60LOGIN: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateFUNCA13ID: TStringField;
    SQLTemplateOSITDCANC: TDateTimeField;
    SQLTemplateOSITN2QTDE: TBCDField;
    DSTemplate: TDataSource;
    cboStatus: TComboBox;
    edNotaFiscal: TEdit;
    edSerie: TEdit;
    edDescrEquip: TEdit;
    DBGridOSItem: TDBGrid;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    dblCliente: TRxDBLookupCombo;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    ckPesquisaExata: TCheckBox;
    ConerBtn1: TConerBtn;
    SQLTemplateCLIENTE: TStringField;
    procedure ConerBtn1Click(Sender: TObject);
    procedure DBGridOSItemDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPesquisaOS: TFormTelaPesquisaOS;

implementation

uses DataModulo, UnitLibrary, FormResources, CadastroOS;

{$R *.dfm}

procedure TFormTelaPesquisaOS.ConerBtn1Click(Sender: TObject);
Var SQL : String;
begin
  inherited;
  SQL := '';
  if (cboStatus.ItemIndex <> -1) and ((cboStatus.ItemIndex < cboStatus.Items.Count - 1)) then
     SQL := ' OSITEM.OSITTSTATUS = "' + copy(cboStatus.Text,1,1) + '"';

  if edNotaFiscal.Text <> '' then
     begin
       if SQL <> '' then
          SQL := SQL + ' and ';
       if not ckPesquisaExata.Checked then
          SQL := SQL + ' OSITEM.OSITA30NRONF like "%' + edNotaFiscal.Text + '%"'
       else
          SQL := SQL + ' OSITEM.OSITA30NRONF = "' + edNotaFiscal.Text + '"';
     end;

  if edSerie.Text <> '' then
     begin
       if SQL <> '' then
          SQL := SQL + ' and ';
       if not ckPesquisaExata.Checked then
         SQL := SQL + ' OSITEM.OSITA60SERIEEQUIP like "%' + edSerie.Text + '%"'
       else
          SQL := SQL + ' OSITEM.OSITA60SERIEEQUIP = "' + edSerie.Text + '"';
     end;

  if edDescrEquip.Text <> '' then
     begin
        if SQL <> '' then
           SQL := SQL + ' and ';
        if not ckPesquisaExata.Checked then
           SQL := SQL + ' OSITEM.OSITTDESCREQUIP like "%' + edDescrEquip.Text + '%"'
        else
           SQL := SQL + ' OSITEM.OSITTDESCREQUIP = "' + edDescrEquip.Text + '"';
     end;

  if dblCliente.KeyValue <> null then
     begin
        if SQL <> '' then
           SQL := SQL + ' and ';
        SQL := SQL + ' OS.CLIEA13ID = "' + dblCliente.KeyValue + '" and OS.OSA13ID = OSITEM.OSA13ID';
     end;


  if SQL = '' then
     SQL := '0=0';

  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').AsString := SQL;
  SQLTemplate.Open;
end;

procedure TFormTelaPesquisaOS.DBGridOSItemDblClick(Sender: TObject);
begin
  inherited;
  DM.OSPesquisa := SQLTemplateOSA13ID.AsString;
  CriaFormulario(TFormCadastroOS,'FormCadastroOS',False, False,False,'');
end;

end.
