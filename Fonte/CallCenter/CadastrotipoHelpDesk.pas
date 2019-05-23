unit CadastrotipoHelpDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTipoHelpDesk = class(TFormCadastroTEMPLATE)
    SQLTemplateTPHPICOD: TIntegerField;
    SQLTemplateTPHPA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLTemplateTPHPCGERATAREFA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoHelpDesk: TFormCadastroTipoHelpDesk;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTipoHelpDesk.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TIPOHELPDESK';
end;

end.
