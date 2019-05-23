unit CadastroFreteItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources;

type
  TFormCadastroFreteItem = class(TFormCadastroTEMPLATE)
    DBEdit1: TDBEdit;
    BtnProduto: TSpeedButton;
    Label9: TLabel;
    QueryProduto: TQuery;
    DBEdit8: TDBEdit;
    QueryUnidade: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonCadastroUnidade: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    QueryIcms: TQuery;
    QueryProdutoPRODICOD: TIntegerField;
    QueryProdutoPRODA60DESCR: TStringField;
    QueryProdutoPRODN3VLRVENDA: TBCDField;
    QueryProdutoICMSICOD: TIntegerField;
    QueryProdutoICMSN2ALIQUOTA: TStringField;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateFRITICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODN2VLR: TBCDField;
    SQLTemplateFRITN2ICMS: TBCDField;
    SQLTemplateFRITN2VLRICMS: TBCDField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateFRITN3QTDE: TBCDField;
    SQLTemplateFRITA30ESPECIE: TStringField;
    SQLTemplateFRITA30MARCA: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplateUNIDA5DESCR: TStringField;
    SQLTemplateFRITINOTAFISCAL: TStringField;
    SQLTemplateFRITN2VLRNOTA: TBCDField;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateFRITANATCARGA: TStringField;
    SQLTemplateFRITN2PEDAGIO: TBCDField;
    SQLTemplateFRITN2VLRCAT: TBCDField;
    SQLTemplateFRITN2VLRVALOREM: TBCDField;
    SQLTemplateFRITN2VOLUMES: TBCDField;
    SQLTemplateFRITN3OUTROS: TBCDField;
    SQLTemplateFRITN3PESO: TBCDField;
    SQLTemplateFRITN4PERCVALOREM: TBCDField;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    procedure BtnProdutoClick(Sender: TObject);
    procedure ButtonCadastroUnidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplatePRODN2VLRChange(Sender: TField);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AtualizaTotais(QTDE,BASECALCULO,ICMS : double);
  public
    { Public declarations }
  end;

var
  FormCadastroFreteItem: TFormCadastroFreteItem;

implementation

uses TelaConsultaProduto, CadastroUnidade;

{$R *.dfm}

procedure TFormCadastroFreteItem.AtualizaTotais(QTDE,BASECALCULO,ICMS : double);
begin
  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat :=
  DSMasterTemplate.DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat +
  QTDE;
 { DSMasterTemplate.DataSet.FieldByName('FRETN2BASECALCULO').AsFloat :=
  DSMasterTemplate.DataSet.FieldByName('FRETN2BASECALCULO').AsFloat +
  BASECALCULO;
  }
  DSMasterTemplate.DataSet.FieldByName('FRETN2ICMS').AsFloat :=
  DSMasterTemplate.DataSet.FieldByName('FRETN2ICMS').AsFloat +
  ICMS;
  DSMasterTemplate.DataSet.Post;
end;

procedure TFormCadastroFreteItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,False,'');
end;

procedure TFormCadastroFreteItem.ButtonCadastroUnidadeClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('UNIDICOD');
  FieldOrigem := 'UNIDICOD';
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'');
end;

procedure TFormCadastroFreteItem.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FRETEITEM';
end;

procedure TFormCadastroFreteItem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('FRETA13ID').Value := DataSet.DataSource.DataSet.FindField('FRETA13ID').Value;
end;

procedure TFormCadastroFreteItem.FormActivate(Sender: TObject);
begin
  inherited;
  if QueryUnidade.Active then
    QueryUnidade.Close;
  QueryUnidade.Open;
  if QueryProduto.Active then
    QueryProduto.Close;
  QueryProduto.Open;
end;

procedure TFormCadastroFreteItem.SQLTemplatePRODICODChange(Sender: TField);
begin
  inherited;
  if Sender is TField then
    if TField(Sender) <> nil then
      if TField(Sender).DataSet.Active then
        if TField(Sender).DataSet.State in dsEditModes then
          begin
            if TField(Sender).DataSet.FieldByName('PRODN2VLR').AsVariant = null then
              TField(Sender).DataSet.FieldByName('PRODN2VLR').AsFloat := QueryProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
            if TField(Sender).DataSet.FieldByName('FRITN2ICMS').AsVariant = null then
              TField(Sender).DataSet.FieldByName('FRITN2ICMS').AsFloat := QueryProduto.FieldByName('ICMSN2ALIQUOTA').AsFloat;
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
    begin
      Qtde := (-1 * DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat);
      BaseCalculo := (-1 *(DSTemplate.DataSet.FieldByName('PRODN2VLR').AsFloat * DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat));
      Icms := (-1 * DSTemplate.DataSet.FieldByName('FRITN2VLRICMS').AsFloat);
     inherited;
      AtualizaTotais(Qtde,BaseCalculo,Icms);
    end;
end;

procedure TFormCadastroFreteItem.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort
  else
    AtualizaTotais(-1 * (DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat),
                   -1 *(DSTemplate.DataSet.FieldByName('PRODN2VLR').AsFloat *
                        DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat),
                   -1 * DSTemplate.DataSet.FieldByName('FRITN2VLRICMS').AsFloat);
end;

procedure TFormCadastroFreteItem.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizaTotais(DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat,
                 (DSTemplate.DataSet.FieldByName('PRODN2VLR').AsFloat *
                  DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat),
                 DSTemplate.DataSet.FieldByName('FRITN2VLRICMS').AsFloat);
end;

procedure TFormCadastroFreteItem.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  AtualizaTotais(DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat,
                 (DSTemplate.DataSet.FieldByName('PRODN2VLR').AsFloat *
                  DSTemplate.DataSet.FieldByName('FRITN3QTDE').AsFloat),
                 DSTemplate.DataSet.FieldByName('FRITN2VLRICMS').AsFloat);
end;

procedure TFormCadastroFreteItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('FRETCSTATUS').AsString <> 'A' then
    Abort;
end;

procedure TFormCadastroFreteItem.SQLTemplatePRODN2VLRChange(
  Sender: TField);
begin
  inherited;
  if Sender is TField then
    if TField(Sender) <> nil then
      if TField(Sender).DataSet.Active then
        if TField(Sender).DataSet.State in dsEditModes then
          TField(Sender).DataSet.FieldByName('FRITN2VLRICMS').AsFloat :=
          ((TField(Sender).DataSet.FieldByName('PRODN2VLR').AsFloat *
            TField(Sender).DataSet.FieldByName('FRITN3QTDE').AsFloat) *
           TField(Sender).DataSet.FieldByName('FRITN2ICMS').AsFloat) / 100;
end;

procedure TFormCadastroFreteItem.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    BtnProduto.Click;
end;

procedure TFormCadastroFreteItem.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroUnidade.Click;
end;

end.
