unit CadastroProducaoFases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroProducaoFases = class(TFormCadastroTEMPLATE)
    SQLTemplatePRFAA13ID: TStringField;
    SQLTemplatePRFAICOD: TIntegerField;
    SQLTemplatePRFAA30DESCR: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRFAN2CUSTOTOTAL: TBCDField;
    SQLTemplatePRFAN2TEMPOTOTAL: TBCDField;
    SQLTemplateDias: TFloatField;
    SQLTemplateHoras: TFloatField;
    SQLTemplateMinutos: TFloatField;
    GroupBox1: TGroupBox;
    lblDias: TLabel;
    lblHoras: TLabel;
    Label5: TLabel;
    edDias: TDBEdit;
    edHoras: TDBEdit;
    DBEdit5: TDBEdit;
    SQLTemplatePRFAN2CAPACPROD: TBCDField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoFases: TFormCadastroProducaoFases;

implementation

uses VarSYS, FormResources, CadastroProducaoFasesAtividade;

{$R *.dfm}

procedure TFormCadastroProducaoFases.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUCAOFASES';
end;

procedure TFormCadastroProducaoFases.SQLTemplateCalcFields(
  DataSet: TDataSet);
Var A1,A2,A3, Tempo : Double;
begin
  inherited;
  if not SQLTemplatePRFAN2TEMPOTOTAL.IsNull then
     begin
        Tempo := SQLTemplatePRFAN2TEMPOTOTAL.AsFloat;
        
        if pos(',',FloatToStr((Tempo/60) / 24)) > 0 then
           A1 := StrToFloat(copy(FloatToStr((Tempo/60) / 24),0,pos(',',FloatToStr((Tempo/60) / 24))-1))
        else
           A1 := (Tempo/60) / 24;

        if pos(',',FloatToStr((Tempo/60) - (A1 * 24))) > 0 then
           A2 := StrToFloat(copy(FloatToStr((Tempo/60) - (A1 * 24)),0,pos(',',FloatToStr((Tempo/60) - (A1 * 24)))-1))
        else
           A2 := (Tempo/60) - (A1 * 24);

        A3 := (((Tempo/60) - (A1 * 24) - (A2)) * 60);

        SQLTemplateDias.AsFloat    := A1;
        SQLTemplateHoras.AsFloat   := A2;
        SQLTemplateMinutos.AsFloat := A3;
     end;
end;

procedure TFormCadastroProducaoFases.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

procedure TFormCadastroProducaoFases.Button1Click(Sender: TObject);
begin
  inherited;
  if TSpeedButton(Sender).Name = 'Button3' then
     begin
        DSMasterSys := DSTemplate;
    	CriaFormulario(TFormCadastroProducaoFasesAtividade,'FormCadastroProducaoFasesAtividade',True,False,'Fase : ' + SQLTemplatePRFAA30DESCR.AsString);
     end;
end;

end.
