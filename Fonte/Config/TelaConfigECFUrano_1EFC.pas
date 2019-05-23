unit TelaConfigECFUrano_1EFC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TFormTelaConfigECFUrano_1EFC = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditComprovante: TEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Button3: TButton;
    EditForma: TEdit;
    GroupBox3: TGroupBox;
    ComboCOM: TComboBox;
    Button5: TButton;
    Button6: TButton;
    Button2: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label4: TLabel;
    EditCodForma: TMaskEdit;
    EditCodCNFNV: TMaskEdit;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Conectou : Boolean;    
  end;

var
  FormTelaConfigECFUrano_1EFC: TFormTelaConfigECFUrano_1EFC;

implementation

uses Urano_1EFC;

{$R *.dfm}

procedure TFormTelaConfigECFUrano_1EFC.Button5Click(Sender: TObject);
var
   i:integer;
   conf:string;
   s: array[0..99] of Char;
begin
   Conf := (ComboCOM.Text);
   i := InicializaDLL(Conf);
   if i in [1,33] then
     Begin
       Conectou := True;
       ShowMessage('Conexão OK!');
     end
   else
     MostraErro(i);  
end;

procedure TFormTelaConfigECFUrano_1EFC.Button6Click(Sender: TObject);
begin
  try
    if Conectou then
      FecharPortaECF_Urano_1EFC();
  except
  end;
end;

procedure TFormTelaConfigECFUrano_1EFC.Button2Click(Sender: TObject);
begin
  LeituraX_Urano_1EFC;
end;

procedure TFormTelaConfigECFUrano_1EFC.Button4Click(Sender: TObject);
begin
  Reducao_Z_Urano_1EFC;
end;

procedure TFormTelaConfigECFUrano_1EFC.Button1Click(Sender: TObject);
var
   Nome:string;
   i:integer;
begin
   if not Conectou then
     begin
       ShowMessage('Impressora não conectada!');
       Exit;
     end;
   if EditCodCNFNV.Text = '' then
     begin
       ShowMessage('Você deve informar um código!');
       EditCodCNFNV.SetFocus;
       Exit;
     end;
   if EditComprovante.Text = '' then
     begin
       ShowMessage('Você deve informar o nome do comprovante!');
       EditComprovante.SetFocus;
       Exit;
     end;
   Nome := EditComprovante.text;
   i := CargaNaoVinculado(EditCodCNFNV.Text,Nome);
   If i in [1,33] then
     ShowMessage('Cadastrado com Sucesso!')
   else
     MostraErro(i);  
end;

procedure TFormTelaConfigECFUrano_1EFC.Button3Click(Sender: TObject);
var
   Nome:string;
   i:integer;
begin
   if not Conectou then
     begin
       ShowMessage('Impressora não conectada!');
       Exit;
     end;
   if EditCodForma.Text = '' then
     begin
       ShowMessage('Você deve informar um código para a forma de pagamento!');
       EditCodForma.SetFocus;
       Exit;
     end;
   if EditComprovante.Text = '' then
     begin
       ShowMessage('Você deve informar o nome da forma de pagamento!');
       EditComprovante.SetFocus;
       Exit;
     end;
   Nome := EditForma.text;
   i := FormaPagamento(EditCodForma.Text,Nome);
   If i in [1,33] then
     ShowMessage('Cadastrado com Sucesso!')
   else
     MostraErro(i);  
end;

end.
