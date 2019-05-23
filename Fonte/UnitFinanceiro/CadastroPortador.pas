unit CadastroPortador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel, VarSYS, FormResources, UnitLibrary;

type
  TFormCadastroPortador = class(TFormCadastroTEMPLATE)
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplatePORTA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    RetornaContaCorrente: TSpeedButton;
    DBEdit17: TDBEdit;
    SQLTemplateCTCRICOD: TIntegerField;
    SQLTemplateNomeContaCorrente: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RetornaContaCorrenteClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPortador: TFormCadastroPortador;

implementation

uses CadastroTipoDocumento, CadastroContaCorrente;

{$R *.DFM}

procedure TFormCadastroPortador.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PORTADOR' ;
end;

procedure TFormCadastroPortador.RetornaContaCorrenteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CTCRICOD') ;
  FieldOrigem := 'CTCRICOD' ;
  CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente',False,True,True,'');
end;

procedure TFormCadastroPortador.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateCTCRICOD.AsInteger > 0 then
    SQLTemplateNomeContaCorrente.AsString := SQLLocate('CONTACORRENTE', 'CTCRICOD', 'CTCRA60TITULAR', '"' + SQLTemplateCTCRICOD.AsString + '"') ;
end;

end.
