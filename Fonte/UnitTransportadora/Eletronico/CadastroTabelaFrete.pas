unit CadastroTabelaFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, VarSys;

type
  TFormCadastroTabelaFrete = class(TFormCadastroTEMPLATE)
    SQLTemplateTBFTICOD: TIntegerField;
    SQLTemplateTBFTA60DESCRICAO: TStringField;
    SQLTemplateTBFTA60ORIGEM: TStringField;
    SQLTemplateTBFTA1000OBS: TMemoField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaFrete: TFormCadastroTabelaFrete;

implementation

uses CadastroTabelaFreteCidade, UnitLibrary, FormResources;

{$R *.dfm}

procedure TFormCadastroTabelaFrete.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TABELAFRETE';
end;

procedure TFormCadastroTabelaFrete.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroTabelaFreteCidade,'FormCadastroTabelaFreteCidade',True,False,True,'');
end;

procedure TFormCadastroTabelaFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := Nil;
  DataSetLookup := Nil;
  FieldLookup   := Nil;
end;

end.
