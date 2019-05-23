unit TelaAtualizaVersao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, IniFiles, FileCtrl, RXCtrls, jpeg, ExtCtrls, ComCtrls,
  Placemnt;

type
  TFormTelaAtualizaVersao = class(TForm)
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    FormStorage: TFormStorage;
    EditOrigemPath: TEdit;
    BTGetDestinoPath: TSpeedButton;
    Label1: TLabel;
    CK_Checkout: TCheckBox;
    CK_Faturamento: TCheckBox;
    CK_Administrativo: TCheckBox;
    CK_Financeiro: TCheckBox;
    CK_Integrador: TCheckBox;
    BtCopiar: TRxSpeedButton;
    OpenDialog: TOpenDialog;
    EditData: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BTGetDestinoPathClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtCopiarClick(Sender: TObject);
  private
    { Private declarations }
    Config : TIniFile;
  public
    { Public declarations }
    Origem, Destino : String;
  end;

var
  FormTelaAtualizaVersao: TFormTelaAtualizaVersao;

implementation

{$R *.DFM}

procedure TFormTelaAtualizaVersao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaAtualizaVersao.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure TFormTelaAtualizaVersao.BTGetDestinoPathClick(Sender: TObject);
begin
  OpenDialog.Filter := 'Aplicativos (*.exe)|*.exe';
  OpenDialog.Execute;
  if OpenDialog.FileName <> '' then
    EditOrigemPath.Text := ExtractFilePath(OpenDialog.FileName);
  EditOrigemPath.SetFocus;
end;

procedure TFormTelaAtualizaVersao.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaAtualizaVersao.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name;
  FormStorage.Active      := true;
end;

procedure TFormTelaAtualizaVersao.BtCopiarClick(Sender: TObject);
begin
  if EditOrigemPath.Text = '' then
    begin
      ShowMessage('Erro! Não foi informado o caminho dos novos executáveis!');
      Abort;
      Exit;
    end;

  // Cria a Pasta de Seguranca
  if not DirectoryExists('C:\Unit\Gestao\VersaoOK') then
    CreateDir('C:\Unit\Gestao\VersaoOK');

  // Backup dos Exec atuais para a pasta Local de Seguranca
  if FileExists('C:\Unit\Gestao\Checkout.exe') then
    CopyFile('C:\Unit\Gestao\Checkout.exe', 'C:\Unit\Gestao\VersaoOK\Checkout.exe', True);
  if FileExists('C:\Unit\Gestao\Faturamento.exe') then
    CopyFile('C:\Unit\Gestao\Faturamento.exe', 'C:\Unit\Gestao\VersaoOK\Faturamento.exe', True);
  if FileExists('C:\Unit\Gestao\Loja.exe') then
    CopyFile('C:\Unit\Gestao\Loja.exe', 'C:\Unit\Gestao\VersaoOK\Loja.exe', True);
  if FileExists('C:\Unit\Gestao\Financeiro.exe') then
    CopyFile('C:\Unit\Gestao\Financeiro.exe', 'C:\Unit\Gestao\VersaoOK\Financeiro.exe', True);
  if FileExists('C:\Unit\Gestao\Integrador.exe') then
    CopyFile('C:\Unit\Gestao\Integrador.exe', 'C:\Unit\Gestao\VersaoOK\Integrador.exe', True);
  if FileExists('C:\Unit\Gestao\Configurador.exe') then
    CopyFile('C:\Unit\Gestao\Configurador.exe', 'C:\Unit\Gestao\VersaoOK\Configurador.exe', True);

  // Copiar do Caminho Padrao os Novos Executaveis
  if (FileExists(EditOrigemPath.Text+'\Checkout.exe')) and (CK_Checkout.Checked) then
    CopyFile(Pchar(EditOrigemPath.Text+'Checkout.exe'),'C:\Unit\Gestao\Checkout.exe', True);
  if (FileExists(EditOrigemPath.Text+'\Faturamento.exe')) and (CK_Faturamento.Checked) then
    CopyFile(Pchar(EditOrigemPath.Text+'Faturamento.exe'),'C:\Unit\Gestao\Faturamento.exe', True);
  if (FileExists(EditOrigemPath.Text+'\Loja.exe')) and (CK_Administrativo.Checked) then
    CopyFile(Pchar(EditOrigemPath.Text+'Loja.exe'),'C:\Unit\Gestao\Loja.exe', True);
  if (FileExists(EditOrigemPath.Text+'\Financeiro.exe')) and (CK_Financeiro.Checked) then
    CopyFile(Pchar(EditOrigemPath.Text+'Financeiro.exe'),'C:\Unit\Gestao\Financeiro.exe', True);
  if (FileExists(EditOrigemPath.Text+'\Integrador.exe')) and (CK_Integrador.Checked) then
    CopyFile(Pchar(EditOrigemPath.Text+'Integrador.exe'),'C:\Unit\Gestao\Integrador.exe', True);
  if (FileExists(EditOrigemPath.Text+'\Configurador.exe')) then
    CopyFile(Pchar(EditOrigemPath.Text+'Configurador.exe'),'C:\Unit\Gestao\Configurador.exe', True);

  ShowMessage('Atualização dos Novos Executáveis concluida com Sucesso!');
  EditData.Text := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
  Close;
end;

end.


