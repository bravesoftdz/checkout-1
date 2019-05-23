unit TelaConfiguracaoEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, Mask, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoEmail = class(TFormTelaGeralTEMPLATE)
    SQLConfigEmail: TRxQuery;
    DSSQLConfigEmail: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLConfigEmailCFEMA60REMETENTE: TStringField;
    SQLConfigEmailCFEMTMAILREMET: TStringField;
    SQLConfigEmailCFEMIPORTA: TIntegerField;
    SQLConfigEmailCFEMTUSUARIO: TStringField;
    SQLConfigEmailCFEMTHOST: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLConfigEmailCFEMA15SENHA: TStringField;
    SQLConfigEmailCFEMCAUTENTICA: TStringField;
    LabelGravar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoEmail: TFormTelaConfiguracaoEmail;

implementation

{$R *.dfm}

procedure TFormTelaConfiguracaoEmail.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigEmail.Close;
  SQLConfigEmail.Open;
end;

procedure TFormTelaConfiguracaoEmail.LabelGravarClick(Sender: TObject);
begin
  inherited;
  SQLConfigEmail.Post;
end;

end.
