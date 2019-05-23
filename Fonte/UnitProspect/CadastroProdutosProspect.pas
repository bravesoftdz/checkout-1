unit CadastroProdutosProspect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, StdCtrls, DB, DBTables, DBActns,
  ActnList, ImgList, RxQuery, Menus, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RxLookup;

type
  TFormCadastroProdutosProspect = class(TFormCadastroTEMPLATE)
    SQLTemplatePRNEA13ID: TStringField;
    SQLTemplatePNPRICOD: TIntegerField;
    SQLTemplatePNPRA30CODPROD: TStringField;
    SQLTemplatePNPRA60DESCR: TStringField;
    SQLTemplatePNPRN3QTDE: TBCDField;
    SQLTemplatePNPRA5UNIDADE: TStringField;
    SQLTemplatePNPRN2VLRUNIT: TBCDField;
    SQLTemplatePNPRN2PERCDESC: TBCDField;
    SQLTemplatePNPRN2VLRDESC: TBCDField;
    SQLTemplatePNPRN2PERCACRES: TBCDField;
    SQLTemplatePNPRN2VLRACRES: TBCDField;
    SQLTemplatePNPRN2TOTITEM: TBCDField;
    SQLTemplatePNPRA15PRZENTREGA: TStringField;
    SQLTemplatePNPRA254OBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DblDescricaoProduto: TRxLookupEdit;
    SQLLookupProduto: TRxQuery;
    dsSQLLookupProduto: TDataSource;
    SQLLookupUnidade: TRxQuery;
    DataSource1: TDataSource;
    DblLookupUnidade: TRxLookupEdit;
    DBEdit4: TDBEdit;
    SQLStatus: TRxQuery;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSCPEDEMOTIVO: TStringField;
    SQLStatusPRNSA60DESCR: TStringField;
    SQLStatusPRNSCALTERA: TStringField;
    DSSQLMotivoFecha: TDataSource;
    DBEdit12: TDBEdit;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplatePNPRN2VLRUNITChange(Sender: TField);
    procedure SQLTemplatePNPRN2PERCDESCChange(Sender: TField);
    procedure SQLTemplatePNPRN2VLRDESCChange(Sender: TField);
    procedure SQLTemplatePNPRN2PERCACRESChange(Sender: TField);
    procedure SQLTemplatePNPRN2VLRACRESChange(Sender: TField);
    procedure DblDescricaoProdutoExit(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DblLookupUnidadeExit(Sender: TObject);
  private
    { Private declarations }
    Ocupado : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroProdutosProspect: TFormCadastroProdutosProspect;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroProdutosProspect.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRNEA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRNEA13ID').AsString;
  SQLTemplatePNPRN2TOTITEM.AsFloat := 0;
  SQLTemplatePNPRN3QTDE.AsFloat    := 1;
  SQLTemplatePNPRN2VLRUNIT.AsFloat := 0;
  SQLTemplatePNPRN2PERCDESC.AsFloat:= 0;
  SQLTemplatePNPRN2VLRDESC.AsFloat := 0;
  SQLTemplatePNPRN2PERCACRES.AsFloat := 0;
  SQLTemplatePNPRN2VLRACRES.AsFloat  := 0;
end;

procedure TFormCadastroProdutosProspect.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRNEPRODUTO';
  if not SQLLookupProduto.Active then SQLLookupProduto.Active := True;
  if not SQLLookupUnidade.Active then SQLLookupUnidade.Active := True;
end;

procedure TFormCadastroProdutosProspect.SQLTemplatePNPRN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  SQLTemplatePNPRN2TOTITEM.AsFloat := ((SQLTemplatePNPRN2VLRUNIT.AsFloat * SQLTemplatePNPRN3QTDE.AsFloat) +
                                       SQLTemplatePNPRN2VLRACRES.AsFloat) - SQLTemplatePNPRN2VLRDESC.AsFloat;
end;

procedure TFormCadastroProdutosProspect.SQLTemplatePNPRN2PERCDESCChange(
  Sender: TField);
begin
  inherited;
  if not Ocupado then
     SQLTemplatePNPRN2VLRDESC.AsFloat := (SQLTemplatePNPRN3QTDE.AsFloat * SQLTemplatePNPRN2VLRUNIT.AsFloat) * (SQLTemplatePNPRN2PERCDESC.AsFloat / 100);
  SQLTemplatePNPRN2VLRUNITChange(SQLTemplatePNPRN2VLRUNIT);
end;

procedure TFormCadastroProdutosProspect.SQLTemplatePNPRN2VLRDESCChange(
  Sender: TField);
begin
  inherited;
  Ocupado := True;
  if SQLTemplatePNPRN2VLRUNIT.AsFloat > 0 then
     SQLTemplatePNPRN2PERCDESC.AsFloat := (SQLTemplatePNPRN2VLRDESC.AsFloat / (SQLTemplatePNPRN3QTDE.AsFloat * SQLTemplatePNPRN2VLRUNIT.AsFloat)) * 100;
  Ocupado := False;
  SQLTemplatePNPRN2VLRUNITChange(SQLTemplatePNPRN2VLRUNIT);
end;

procedure TFormCadastroProdutosProspect.SQLTemplatePNPRN2PERCACRESChange(
  Sender: TField);
begin
  inherited;
  if not Ocupado then
     SQLTemplatePNPRN2VLRACRES.AsFloat := (SQLTemplatePNPRN3QTDE.AsFloat * SQLTemplatePNPRN2VLRUNIT.AsFloat) * (SQLTemplatePNPRN2PERCACRES.AsFloat / 100);
  SQLTemplatePNPRN2VLRUNITChange(SQLTemplatePNPRN2VLRUNIT);
end;

procedure TFormCadastroProdutosProspect.SQLTemplatePNPRN2VLRACRESChange(
  Sender: TField);
begin
  inherited;
  Ocupado := True;
  if SQLTemplatePNPRN2VLRUNIT.AsFloat > 0 then
     SQLTemplatePNPRN2PERCACRES.AsFloat := (SQLTemplatePNPRN2VLRACRES.AsFloat / (SQLTemplatePNPRN3QTDE.AsFloat * SQLTemplatePNPRN2VLRUNIT.AsFloat)) * 100;
  Ocupado := False;
  SQLTemplatePNPRN2VLRUNITChange(SQLTemplatePNPRN2VLRUNIT);
end;

procedure TFormCadastroProdutosProspect.DblDescricaoProdutoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in dsEditModes) then
     SQLTemplatePNPRA60DESCR.AsString := DblDescricaoProduto.Text;
end;

procedure TFormCadastroProdutosProspect.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  SQLTemplatePNPRA60DESCR.AsString := DblDescricaoProduto.Text;
  SQLTemplatePNPRA5UNIDADE.AsString:= DblLookupUnidade.Text;
  if SQLTemplatePNPRN2VLRUNIT.AsFloat = 0 then
     begin
       SQLTemplatePNPRN2VLRUNIT.FocusControl;
       Informa('Informe o valor Unitário.');
       Abort;
     end;

  inherited;

  SQLLookupProduto.Close;
  SQLLookupProduto.Open;
end;

procedure TFormCadastroProdutosProspect.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  DblDescricaoProduto.Text := SQLTemplatePNPRA60DESCR.AsString;
  DblLookupUnidade.Text    := SQLTemplatePNPRA5UNIDADE.AsString;
end;

procedure TFormCadastroProdutosProspect.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  DblDescricaoProduto.Visible := SQLTemplate.State in dsEditModes;
  DblLookupUnidade.Visible    := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroProdutosProspect.DblLookupUnidadeExit(
  Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in dsEditModes) then
     SQLTemplatePNPRA5UNIDADE.AsString := DblLookupUnidade.Text;

end;

end.
