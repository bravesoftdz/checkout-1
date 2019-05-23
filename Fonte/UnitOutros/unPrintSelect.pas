unit unPrintSelect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Inifiles, ComCtrls;

type
  TFrmPrinters = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    edtCopia: TEdit;
    UpDown1: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrinters: TFrmPrinters;

implementation

{$R *.DFM}

procedure TFrmPrinters.FormCreate(Sender: TObject);
var Inifile: TInifile;
begin
  IniFile := TIniFile.Create ('IBGestao.ini');
  // tenta ler um valor e o testa para verificar sua existencia
  if IniFile.ReadString('Printers','prn1','') <> '' then
     ComboBox1.Items.add(IniFile.ReadString('Printers','prn1',''));
  if IniFile.ReadString('Printers','prn2','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn2',''));
  if IniFile.ReadString('Printers','prn3','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn3',''));
  if IniFile.ReadString('Printers','prn4','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn4',''));
  if IniFile.ReadString('Printers','prn5','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn5',''));
  if IniFile.ReadString('Printers','prn6','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn6',''));
  if IniFile.ReadString('Printers','prn7','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn7',''));
  if IniFile.ReadString('Printers','prn8','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn8',''));
  if IniFile.ReadString('Printers','prn9','') <> '' then
       ComboBox1.Items.add(IniFile.ReadString('Printers','prn9',''));

  IniFile.Free;
  ComboBox1.ItemIndex := 0;
end;

procedure TFrmPrinters.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      StrToInt(edtCopia.Text);
   except
      ShowMessage('Número de Cópias Inválido.');
      ModalResult := mrNone;
      edtCopia.Setfocus;
   end;
end;

end.
