unit CadastroTipoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, FormResources, VarSys;

type
  TFormCadastroTipoRetorno = class(TFormCadastroTEMPLATE)
    SQLTemplateTPRTICOD: TIntegerField;
    SQLTemplateTPRTA60DESCR: TStringField;
    SQLTemplateTPCTICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    SQLTemplateTipoContatoLookUp: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnTipoContato: TSpeedButton;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnTipoContatoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoRetorno: TFormCadastroTipoRetorno;

implementation

uses CadastroTipoContato;

{$R *.dfm}

procedure TFormCadastroTipoRetorno.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'TIPORETORNO';
end;

procedure TFormCadastroTipoRetorno.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnTipoContato.Click ;
end;

procedure TFormCadastroTipoRetorno.BtnTipoContatoClick(Sender: TObject);
begin
  inherited;
  LookUpDataSet := SQLTipoContato;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPCTICOD') ;
  FieldOrigem := 'TPCTICOD' ;
  CriaFormulario(TFormCadastroTipoContato,'FormCadastroTipoContato',False,True,'');
end;

end.
