unit TelaConfigECFDaruma345;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormTelaConfigECFDaruma345 = class(TForm)
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    EditComprovante: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    EditForma: TEdit;
    ComboAlfabeto: TComboBox;
    GroupBox3: TGroupBox;
    ComboCOM: TComboBox;
    Button5: TButton;
    Button6: TButton;
    Button2: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    Conectou : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigECFDaruma345: TFormTelaConfigECFDaruma345;

implementation

uses Sigtron_FS345_FuncoesDLL;

{$R *.dfm}

procedure TFormTelaConfigECFDaruma345.Button1Click(Sender: TObject);
var
   Tipo:char;
   Nome:string;
   i:integer;
   s: array[0..99] of Char;
begin
   if not Conectou then
     begin
       ShowMessage('Impressora não conectada!');
       Exit;
     end;
   if ListBox1.ItemIndex < 0 then
     begin
       ShowMessage('Você deve selecionar um tipo de comprovante!');
       ListBox1.SetFocus;
       Exit;
     end;
   if EditComprovante.Text = '' then
     begin
       ShowMessage('Você deve informar o nome do comprovante!');
       EditComprovante.SetFocus;
       Exit;
     end;
   If ListBox1.ItemIndex = 0 then
     Tipo := 'V';
   If ListBox1.ItemIndex = 1 then
     Tipo := '+';
   Nome := EditComprovante.text;
   i := DAR_CriaCNF(Tipo,Nome,'1');
   If i = -1 then
    Begin
    i:= DAR_erro;
    showmessage('Erro retornou:' + IntToStr(i - 536870912));
   end
   else
     ShowMessage('Cadastrado com Sucesso!');
end;

procedure TFormTelaConfigECFDaruma345.Button3Click(Sender: TObject);
var
   Opcao, Cnt, Id:char;
   Text:string;
   i:Integer;
   s: array[0..99] of Char;
begin
   if not Conectou then
     begin
       ShowMessage('Impressora não conectada!');
       Exit;
     end;
   if ComboAlfabeto.ItemIndex < 0 then
     begin
       ShowMessage('Selecione o tipo de A-P.');
       ComboAlfabeto.SetFocus;
       Exit;
     end;
   if EditForma.Text = '' then
     begin
       ShowMessage('Informe o nome da forma de pagamento!');
       EditForma.SetFocus;
       Exit;
     end;
   Opcao:=('P');
   Cnt:=('V');
   Id:= chr(ComboAlfabeto.ItemIndex + 65);
   Text:=EditForma.Text;
   i := DAR_PersonaMens(Opcao,Cnt,Id,Text,'1');
   If i = -1 then
    Begin
    i:= DAR_erro;
    showmessage('Erro retornou:' + IntToStr(i - 536870912));
   end
   else
     ShowMessage('Cadastrado com Sucesso!');
end;

procedure TFormTelaConfigECFDaruma345.Button5Click(Sender: TObject);
var
   i:integer;
   conf:string;
   s: array[0..99] of Char;
begin
   Conf := (ComboCOM.Text + ':9600,n,8,1');
   i := DAR_AbreSerial(conf);
   If i = -1 then
     Begin
       i:= DAR_erro;
       Conectou := False;
       showmessage('Erro retornou:' + IntToStr(i - 536870912));
     end
   else
     begin
       Conectou := True;
       ShowMessage('Conexão OK!');
     end;
end;

procedure TFormTelaConfigECFDaruma345.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if Conectou then
      DAR_FechaSerial('1');
  except
  end;
end;

procedure TFormTelaConfigECFDaruma345.Button2Click(Sender: TObject);
begin
  if not Conectou then
    begin
      ShowMessage('Impressora não conectada!');
      Exit;
    end;
  DAR_LeituraX('1');
end;

procedure TFormTelaConfigECFDaruma345.Button4Click(Sender: TObject);
var
   dtaformat , tmeformat : string;
   DatHor:string;
   i:integer;
begin
  if not Conectou then
    begin
      ShowMessage('Impressora não conectada!');
      Exit;
    end;

  ShortDateFormat := 'ddmmyy';
  LongTimeFormat := 'hhnnss';
  DatHor:= copy(DateTimeToStr(Now),1,6)+copy(DateTimeToStr(Now),8,6);
  showmessage(DatHor);
  i := DAR_ReducaoZ(DatHor,'1');
end;

procedure TFormTelaConfigECFDaruma345.Button6Click(Sender: TObject);
begin
  try
    if Conectou then
      DAR_FechaSerial('1');
  except
  end;
end;

end.
