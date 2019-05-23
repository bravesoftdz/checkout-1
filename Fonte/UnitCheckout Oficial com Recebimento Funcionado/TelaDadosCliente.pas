unit TelaDadosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ConerBtn, RXCtrls, Mask;

type
  TFormTelaDadosCliente = class(TForm)
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    Label7: TLabel;
    Obs: TEdit;
    Label5: TLabel;
    EditPlaca: TMaskEdit;
    LBKM: TLabel;
    EditKM: TMaskEdit;
    LblTituloTela: TRxLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Nome: TEdit;
    Label1: TLabel;
    CPFCGC: TEdit;
    Endereco: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    Cidade: TEdit;
    Label6: TLabel;
    FONE: TEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ObsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditKMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCliente: TFormTelaDadosCliente;

implementation

uses TelaFechamentoVenda, UnitLibrary;

{$R *.dfm}

procedure TFormTelaDadosCliente.BtnOKClick(Sender: TObject);
begin
  NomeClienteVenda      := Nome.Text;
  DocumentoClienteVenda := CPFCGC.Text;
  EnderecoClienteVenda  := Endereco.Text;
  CidadeClienteVenda    := Cidade.Text;
  FoneClienteVenda      := FONE.Text;
  OBSImpressaoCupom     := Obs.Text;
  PlacaCliente          := EditPlaca.Text;
  KMCliente             := EditKM.text;
  ModalResult := mrOk;
end;

procedure TFormTelaDadosCliente.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormTelaDadosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaDadosCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
  if Key = VK_Escape then
    ModalResult := mrCancel;

end;

procedure TFormTelaDadosCliente.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  Nome.Text             := NomeClienteVenda;
  CPFCGC.Text           := DocumentoClienteVenda;
  Endereco.Text         := EnderecoClienteVenda;
  Cidade.Text           := CidadeClienteVenda;
  Fone.Text             := FoneClienteVenda;
  Obs.Text              := OBSImpressaoCupom ;
  EditPlaca.Text        := PlacaCliente;
  EditKM.text           := KMCliente;
end;

procedure TFormTelaDadosCliente.ObsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key  = 38 then // seta acima
    if Panel1.Enabled then
      Nome.SetFocus;
end;

procedure TFormTelaDadosCliente.EditPlacaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 38 then
    OBS.SetFocus;
end;

procedure TFormTelaDadosCliente.EditKMKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 38 then
    editPlaca.SetFocus;
end;

procedure TFormTelaDadosCliente.FormShow(Sender: TObject);
begin
  Obs.SetFocus;
end;

end.
