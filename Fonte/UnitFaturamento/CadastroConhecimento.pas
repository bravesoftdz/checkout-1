unit CadastroConhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxLookup, DBCtrls, RxDBComb, VARSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel ;

type
  TCadastroConhecimentos = class(TFormCadastroTEMPLATE)
    SQLTemplateIDCON: TIntegerField;
    SQLTemplateIND_OPER: TStringField;
    SQLTemplateIND_EMIT: TStringField;
    SQLTemplateCOD_MOD: TStringField;
    SQLTemplateCOD_SIT: TStringField;
    SQLTemplateSERIE_DOC: TStringField;
    SQLTemplateSUBSERIE: TStringField;
    SQLTemplateNUM_DOC: TIntegerField;
    SQLTemplateCHV_CTE: TStringField;
    SQLTemplateDT_DOC: TDateTimeField;
    SQLTemplateDT_AQUIS: TDateTimeField;
    SQLTemplateTP_CT_E: TIntegerField;
    SQLTemplateCHV_CTE_REF: TStringField;
    SQLTemplateVL_DOC: TBCDField;
    SQLTemplateVL_DESC: TBCDField;
    SQLTemplateIND_FRT: TStringField;
    SQLTemplateVL_SERV: TBCDField;
    SQLTemplateVL_BC_ICMS: TBCDField;
    SQLTemplateVL_ICMS: TBCDField;
    SQLTemplateVL_NAOTRIBUT: TBCDField;
    SQLTemplateINFORMACAO: TMemoField;
    SQLTemplateCOD_CTA: TStringField;
    RxDBComboBox3: TRxDBComboBox;
    Label42: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label1: TLabel;
    Label3: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    Label2: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBMemo1: TDBMemo;
    SQLTemplateCON_CFOP: TStringField;
    SQLTemplateRED_BC_ICMS: TBCDField;
    SQLTemplateALIQ_ICMS: TBCDField;
    SQLTemplateCST_ICMS: TStringField;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLCFOPCFOPCDESTVLRNTRIB: TStringField;
    dsSQLCFOP: TDataSource;
    Label22: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ComboSitTrib: TRxDBComboBox;
    Label43: TLabel;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLTransportadoraTRANA11CPF: TStringField;
    DSSQLTransportadora: TDataSource;
    Label27: TLabel;
    EditCdTransp: TDBEdit;
    ComboTransp: TRxDBLookupCombo;
    BtnTransportadora: TSpeedButton;
    SQLTemplateCOD_PART: TIntegerField;
    SQLPesquisa: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure SQLTemplateIND_EMITChange(Sender: TField);
    procedure SQLTemplateDT_DOCChange(Sender: TField);
    procedure SQLTemplateVL_DOCChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroConhecimentos: TCadastroConhecimentos;

implementation

uses CadastroTransportadora;

{$R *.dfm}

procedure TCadastroConhecimentos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONHECIMENTOS';
  SQLTransportadora.Open;
  SQLCFOP.Open;
end;

procedure TCadastroConhecimentos.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;

  SQLTemplateIND_OPER.AsString := '0';
  SQLTemplateIND_EMIT.AsString := '1';
  SQLTemplateCOD_SIT.AsString  := '08';
  SQLTemplateTP_CT_E.AsString  := '0';
  SQLTemplateCON_CFOP.AsString := '2352';
  SQLTemplateCOD_MOD.AsString  := '08';
  SQLTemplateIND_FRT.AsString  := '1';
  SQLTemplateCST_ICMS.AsString := '040';
  SQLTemplateSERIE_DOC.AsString:= 'CTRC';
  SQLTemplateVL_DOC.Value      := 0;
  SQLTemplateVL_DESC.Value     := 0;
  SQLTemplateVL_SERV.Value     := 0;
  SQLTemplateVL_BC_ICMS.Value  := 0;
  SQLTemplateVL_ICMS.Value     := 0;
  SQLTemplateVL_NAOTRIBUT.Value:= 0;
  SQLTemplateRED_BC_ICMS.Value := 0;
  SQLTemplateALIQ_ICMS.Value   := 0;

end;

procedure TCadastroConhecimentos.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (SQLTemplateCOD_MOD.AsString = '57') and (SQLTemplateCHV_CTE.AsString = '') Then // conhecimento de frete Eletronico
  begin
    ShowMessage('Deve Ser Informada a Chave do Conhecimento Eletrônico');
    Abort;
  End;
  SQLPesquisa.Close;
  SQLPesquisa.Prepare;
  SQLPesquisa.ParamByName('xNum').AsString   := SQLTemplateNUM_DOC.AsString;
  SQLPesquisa.ParamByName('xpart').AsString  := SQLTemplateCOD_PART.AsString;
  SQLPesquisa.Open;

  if not SQLPesquisa.IsEmpty then
  begin
    ShowMessage('Documento Ja Digitado. Verifique!');
    SQLPesquisa.Close;
    Abort;
  end;
  SQLPesquisa.Close;

end;

procedure TCadastroConhecimentos.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('COD_PART');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TCadastroConhecimentos.DBEdit13Enter(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
    if SQLTemplateRED_BC_ICMS.Value > 0 then
      SQLTemplateVL_ICMS.Value := (SQLTemplateVL_BC_ICMS.Value * (SQLTemplateRED_BC_ICMS.Value / 100)) * (SQLTemplateALIQ_ICMS.Value / 100)
    Else
      SQLTemplateVL_ICMS.Value := SQLTemplateVL_BC_ICMS.Value  * (SQLTemplateALIQ_ICMS.Value / 100)

end;

procedure TCadastroConhecimentos.SQLTemplateIND_EMITChange(Sender: TField);
begin
  inherited;
  if SQLTemplateIND_EMIT.AsString = '1' then
    SQLTemplateIND_OPER.AsString := '0';
end;

procedure TCadastroConhecimentos.SQLTemplateDT_DOCChange(Sender: TField);
begin
  inherited;
  SQLTemplateDT_AQUIS.AsDateTime := SQLTemplateDT_DOC.AsDateTime;
end;

procedure TCadastroConhecimentos.SQLTemplateVL_DOCChange(Sender: TField);
begin
  inherited;
  SQLTemplateVL_SERV.Value  := SQLTemplateVL_DOC.Value;
end;

end.
