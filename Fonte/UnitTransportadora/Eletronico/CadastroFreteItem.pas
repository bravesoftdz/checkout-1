unit CadastroFreteItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources, RxDBComb;

type
  TFormCadastroFreteItem = class(TFormCadastroTEMPLATE)
    QueryProduto: TQuery;
    QueryUnidade: TQuery;
    QueryIcms: TQuery;
    QueryProdutoPRODICOD: TIntegerField;
    QueryProdutoPRODA60DESCR: TStringField;
    QueryProdutoPRODN3VLRVENDA: TBCDField;
    QueryProdutoICMSICOD: TIntegerField;
    QueryProdutoICMSN2ALIQUOTA: TStringField;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateFRITICOD: TIntegerField;
    SQLTemplateINFOSERIE: TStringField;
    SQLTemplateINFONOTANUM: TIntegerField;
    SQLTemplateINFODATAEMISSAO: TDateTimeField;
    SQLTemplateINFOCFOP: TIntegerField;
    SQLTemplateINFOBASEICMS: TBCDField;
    SQLTemplateINFOICMS: TBCDField;
    SQLTemplateINFOBASEICMSST: TBCDField;
    SQLTemplateINFOICMSST: TBCDField;
    SQLTemplateINFOPESO: TIntegerField;
    SQLTemplateINFOVALORPRODUTO: TBCDField;
    SQLTemplateINFOVALORNOTA: TBCDField;
    SQLTemplateINFOCHAVE: TStringField;
    SQLTemplateINFOTIPOOUTROS: TStringField;
    PageControl4: TPageControl;
    TabSheet11: TTabSheet;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    DBEdit1: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    TabSheet12: TTabSheet;
    Label80: TLabel;
    DBEdit66: TDBEdit;
    TabSheet13: TTabSheet;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    DBEdit67: TDBEdit;
    RxDBComboBox9: TRxDBComboBox;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure RxDBComboBox9Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFreteItem: TFormCadastroFreteItem;

implementation

uses TelaConsultaProduto, CadastroUnidade;

{$R *.dfm}


procedure TFormCadastroFreteItem.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FRETEINFO';
end;

procedure TFormCadastroFreteItem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  PageControl4.Pages[0].Enabled := False;
  PageControl4.Pages[1].Enabled := False;
  PageControl4.Pages[2].Enabled := False;
  PageControl4.Pages[DataSet.DataSource.DataSet.FindField('FRETA1TIPODOC').AsInteger].Enabled := True;
  PageControl4.ActivePageIndex := DataSet.DataSource.DataSet.FindField('FRETA1TIPODOC').AsInteger;

  DataSet.FindField('FRETA13ID').Value := DataSet.DataSource.DataSet.FindField('FRETA13ID').Value;
  DataSet.FindField('INFOBASEICMS').Value    := 0;
  DataSet.FindField('INFOICMS').Value        := 0;
  DataSet.FindField('INFOBASEICMSST').Value  := 0;
  DataSet.FindField('INFOICMSST').Value      := 0;
  DataSet.FindField('INFOPESO').Value        := 0;
  DataSet.FindField('INFOVALORPRODUTO').Value:= 0;
  DataSet.FindField('INFOVALORNOTA').Value   := 0;
  Case DataSet.DataSource.DataSet.FindField('FRETA1TIPODOC').AsInteger of
  0 : DBEdit1.SetFocus;
  1 : DBEdit66.SetFocus;
  2 : RxDBComboBox9.SetFocus;
  end;
end;

procedure TFormCadastroFreteItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
var
  Qtde,BaseCalculo,Icms,Frete : double;
begin
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort
  else
     inherited;
end;

procedure TFormCadastroFreteItem.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort
end;

procedure TFormCadastroFreteItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort;
end;

procedure TFormCadastroFreteItem.RxDBComboBox9Change(Sender: TObject);
begin
  inherited;
  DBEdit67.Enabled := RxDBComboBox9.ItemIndex = 1;
end;

end.
