unit CadastroInsumoProdutoProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DBCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg;

type
  TFormCadastroInsumoProdutoProducao = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLInsumo: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLExec: TRxQuery;
    SQLInsumo: TRxQuery;
    DSSQLInsumo: TDataSource;
    SQLProduto: TRxQuery;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePPINN3QTDE: TBCDField;
    SQLTemplateINSUICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePRSAICOD: TIntegerField;
    SQLTemplatePPINICOD: TIntegerField;
    SQLTemplateINSUA60DESCR: TStringField;
    SQLSemi: TRxQuery;
    SQLTemplatePRSAA60DESCR: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    rbTipo: TRadioGroup;
    DSSQLSemi: TDataSource;
    SQLSemiPRSAICOD: TIntegerField;
    SQLSemiPRSAA60DESCR: TStringField;
    SQLSemiPRSAN3VLRCOMPRA: TBCDField;
    SQLSemiPRSAN3VLRCOMPRAMED: TBCDField;
    SQLSemiPRSAN3VLRCUSTO: TBCDField;
    SQLSemiPRSAN3VLRCUSTOMED: TBCDField;
    SQLSemiPRSAA254DADOSTEC: TStringField;
    SQLSemiPRSAA254COMPQUIMICA: TStringField;
    SQLSemiPRSAA60CODBAR: TStringField;
    SQLSemiPRSAN3PESOLIQ: TBCDField;
    SQLSemiPRSAN3PESOBRUTO: TBCDField;
    SQLSemiPRSAN3QTDE: TBCDField;
    SQLSemiPRSAA254DIMENSOES: TStringField;
    SQLSemiICMSICOD: TIntegerField;
    SQLSemiUNIDICOD: TIntegerField;
    SQLSemiPRSAN3IPI: TBCDField;
    SQLSemiMARCICOD: TIntegerField;
    SQLSemiPENDENTE: TStringField;
    SQLSemiGRUPICOD: TIntegerField;
    SQLSemiREGISTRO: TDateTimeField;
    SQLTemplateINPRCTIPO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure rbTipoClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroInsumoProdutoProducao: TFormCadastroInsumoProdutoProducao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormCadastroInsumoProdutoProducao.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOPRODINSUMO'; 
  if not SQLInsumo.Active then SQLInsumo.Active := true;
end;

procedure TFormCadastroInsumoProdutoProducao.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var Tipo : String;
begin
inherited;
  SQLExec.Close;
  SQLExec.SQL.Clear;
  SQLExec.SQL.Text := 'select * from PRODUTOPRODINSUMO where PRODICOD = '+ DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsString+'';
  case rbTipo.ItemIndex of
     0 : begin
              SQLTemplatePRSAICOD.AsVariant := Null;
              SQLTemplateINPRCTIPO.AsString := 'I';
              SQLExec.SQL.Add(' and INSUICOD = '+DBLInsumo.KeyValue+'');
              Tipo := 'Insumo';
         end;
     1 : begin
              SQLTemplateINSUICOD.AsVariant := Null;
              SQLTemplateINPRCTIPO.AsString := 'S';
              SQLExec.SQL.Add(' and PRSAICOD = '+DBLInsumo.KeyValue+'');
              Tipo := 'Semi-Acabado';
         end;
  end;
  SQLExec.Open;
  if not SQLExec.IsEmpty then
    begin
      Informa('Este '+Tipo+' já está relacionado para este produto.');
      Abort;
    end;
end;

procedure TFormCadastroInsumoProdutoProducao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRODICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsInteger;
end;

procedure TFormCadastroInsumoProdutoProducao.rbTipoClick(
  Sender: TObject);
begin
  inherited;
  if rbTipo.ItemIndex = 0 then
     begin
       with DBLInsumo do
         begin
           DataField     := '';            LookupField   := '';
           LookupDisplay := '';            LookupSource  := DSSQLInsumo;
           LookupField   := 'INSUICOD';    LookupDisplay := 'INSUA60DESCR';
           DataField     := 'INSUICOD';

         end;
     end
  else
     begin
       with DBLInsumo do
         begin
           DataField     := '';            LookupField   := '';
           LookupDisplay := '';            LookupSource  := DSSQLSemi;
           LookupField   := 'PRSAICOD';    LookupDisplay := 'PRSAA60DESCR';
           DataField     := 'PRSAICOD';
         end;
     end

end;

procedure TFormCadastroInsumoProdutoProducao.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if SQLTemplate.State in [dsBrowse] then
    if not SQLTemplateINSUICOD.IsNull then
       rbTipo.ItemIndex := 0
    else if not SQLTemplatePRSAICOD.IsNull then
       rbTipo.ItemIndex := 1;
end;

end.
