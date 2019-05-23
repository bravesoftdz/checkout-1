unit CadastroOperacaoFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb;

type
  TFormCadastroOperacaoFrete = class(TFormCadastroTEMPLATE)
    SQLTemplateOPFRA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateOPFRICOD: TIntegerField;
    SQLTemplateOPFRA60DESCR: TStringField;
    SQLTemplateOPFRCTIPOOPERACAO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboTipoOperacao: TRxDBComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoFrete: TFormCadastroOperacaoFrete;

implementation

{$R *.dfm}

procedure TFormCadastroOperacaoFrete.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOFRETE';
end;

procedure TFormCadastroOperacaoFrete.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('OPFRCTIPOOPERACAO').AsString := 'C';
end;

end.
