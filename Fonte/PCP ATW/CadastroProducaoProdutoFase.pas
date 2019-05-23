unit CadastroProducaoProdutoFase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, RxDBComb;

type
  TFormCadastroProducaoProdutoFase = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SQLFase: TRxQuery;
    dsSQLFase: TDataSource;
    SQLFasePRFAA13ID: TStringField;
    SQLFasePRFAA30DESCR: TStringField;
    SQLFasePRFAN2CUSTOTOTAL: TBCDField;
    SQLFasePRFAN2TEMPOTOTAL: TBCDField;
    SQLTemplatePRFAN2CUSTOTOTAL: TFloatField;
    SQLTemplatePRFAN2TEMPOTOTAL: TFloatField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLTemplatePRFAA13ID: TStringField;
    SQLTemplatePRPFICOD: TIntegerField;
    SQLTemplatePRFAA30DESCR: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    AcessaFase: TSpeedButton;
    Label5: TLabel;
    cboSequencia: TRxDBComboBox;
    SQLTemplatePRPFISEQUENCIAPROD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcessaFaseClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    ValorAnterior : Double;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoProdutoFase: TFormCadastroProducaoProdutoFase;

implementation

uses UnitLibrary, VarSYS, CadastroProducaoFases, FormResources;

{$R *.dfm}

procedure TFormCadastroProducaoProdutoFase.FormCreate(Sender: TObject);
Var I : Integer;
begin
  inherited;
  Tabela := 'PRODUCAOPRODUTOFASE';
  if not SQLFase.Active then SQLFase.Active := True;
  ValorAnterior := 0;

  SQLCount.Close;
  SQLCount.SQL.Text := ' select Count(*) as Total from PRODUCAOFASES ';
  SQLCount.Open;

  if SQLTemplatePRPFISEQUENCIAPROD.AsInteger > SQLCount.FieldByName('Total').AsInteger then
     begin
        for I := 1 to SQLCount.FieldByName('Total').AsInteger  do
           begin
              cboSequencia.Items.Add(IntToStr(I));
              cboSequencia.Values.Add(IntToStr(I));
           end;
     end
  else
     begin
        for I := 1 to SQLTemplatePRPFISEQUENCIAPROD.AsInteger  do
           begin
              cboSequencia.Items.Add(IntToStr(I));
              cboSequencia.Values.Add(IntToStr(I));
           end;
     end;
  if cboSequencia.Items.Count <= 0 then
     begin
       cboSequencia.Items.Add('1');
       cboSequencia.Values.Add('1');
     end;

  SQLCount.Close;
end;

procedure TFormCadastroProducaoProdutoFase.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRODICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsInteger;
end;

procedure TFormCadastroProducaoProdutoFase.SQLTemplatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('PRIMARY or UNIQUE KEY', E.Message) > 0 then
     begin
       Informa('Esta Fase já esta associado a este Produto.' + char(#13) + 'Selecione outra Fase ou cancele a operação.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroProducaoProdutoFase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := nil;
  DataSetLookup := nil;
end;

procedure TFormCadastroProducaoProdutoFase.AcessaFaseClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplatePRFAA13ID;
  FieldOrigem := 'PRFAA13ID';
  DataSetLookup := SQLFase;
  CriaFormulario(TFormCadastroProducaoFases,'FormCadastroProducaoFases',False,True, SQLTemplatePRFAA30DESCR.AsString);
end;

procedure TFormCadastroProducaoProdutoFase.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaFase.Click;
end;

procedure TFormCadastroProducaoProdutoFase.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
     begin
        SQLCount.Close;
        SQLCount.SQL.Text := 'select Count(*) as Total from PRODUCAOPRODUTOFASE where PRODICOD = ' + SQLTemplatePRODICOD.AsString +
                             ' and PRFAA13ID = "' + SQLTemplatePRFAA13ID.AsString + '" and PRPFISEQUENCIAPROD = ' + SQLTemplatePRPFISEQUENCIAPROD.AsString;
        SQLCount.Open;

        if SQLCount.FieldByName('Total').AsInteger > 0 then
           begin
              Informa('Há mais de uma Fase para este produto ("' + SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLTemplatePRODICOD.AsString) + '") com a sequencia: "' + SQLTemplatePRPFISEQUENCIAPROD.AsString +'"'+
                      Char(13) + 'Verifique as sequencias e tente novamente.');
              Abort;
           end;
     end;
end;

end.
