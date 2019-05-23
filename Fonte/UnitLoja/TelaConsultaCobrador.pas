unit TelaConsultaCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, Buttons, RxLookup, Mask,
  DBCtrls;

type
  TFormTelaConsultaCobrador = class(TForm)
    SQLCobrador: TRxQuery;
    DSSQLCobrador: TDataSource;
    SQLCobradorCOBRA60NOME: TStringField;
    ComboCobrador: TRxDBLookupCombo;
    Label1: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    SQLCobradorCOBRA13ID: TStringField;
    SQLCobradorCOBRA60REGIAO: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SQLCobradorCOBRN3COMISCAPITAL: TBCDField;
    SQLCobradorCOBRN3COMISJUROS: TBCDField;
    SQLCobradorCOBRN3COMISFIXA: TBCDField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaCobrador: TFormTelaConsultaCobrador;

implementation

{$R *.dfm}

procedure TFormTelaConsultaCobrador.FormCreate(Sender: TObject);
begin
  if not SQLCobrador.Active then SQLCobrador.Open;
end;

procedure TFormTelaConsultaCobrador.BtnOKClick(Sender: TObject);
begin
  if ComboCobrador.Value = '' then
    begin
      Application.MessageBox('Você deve selecionar um cobrador!','Atenção',MB_OK + MB_SYSTEMMODAL + MB_ICONEXCLAMATION + MB_SETFOREGROUND);
      ComboCobrador.SetFocus;
      Exit;
    end
  else
    ModalResult := MrOk;  
end;

end.
