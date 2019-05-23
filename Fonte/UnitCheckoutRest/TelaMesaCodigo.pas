unit TelaMesaCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, jpeg, Buttons,
  RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaMesaCodigo = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBox1: TScrollBox;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    BtnTransfConta: TSpeedButton;
    ImgDesligar: TImage;
    Panel1: TPanel;
    Bt7: TSpeedButton;
    Bt8: TSpeedButton;
    Bt9: TSpeedButton;
    BtReturn: TSpeedButton;
    BtBackSpace: TSpeedButton;
    BtVirgula: TSpeedButton;
    Bt0: TSpeedButton;
    Bt1: TSpeedButton;
    Bt2: TSpeedButton;
    Bt3: TSpeedButton;
    Bt6: TSpeedButton;
    Bt5: TSpeedButton;
    Bt4: TSpeedButton;
    RxLabel2: TRxLabel;
    EditCodMesa: TCurrencyEdit;
    EditCodComanda: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    lbTitulo: TRxLabel;
    EditSenha: TEdit;
    RxLabel4: TRxLabel;
    EditVendedorCodigo: TEdit;
    procedure ImgDesligarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtReturnClick(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure BtVirgulaClick(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt0Click(Sender: TObject);
    procedure EditCodComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodMesaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaMesaCodigo: TFormTelaMesaCodigo;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaMesaCodigo.ImgDesligarClick(Sender: TObject);
begin
  ModalResult := MrCancel;
  Close;
end;

procedure TFormTelaMesaCodigo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormTelaMesaCodigo.Bt7Click(Sender: TObject);
begin
  keybd_event(55,55,0,0);
end;

procedure TFormTelaMesaCodigo.Bt8Click(Sender: TObject);
begin
  keybd_event(56,56,0,0);
end;

procedure TFormTelaMesaCodigo.Bt9Click(Sender: TObject);
begin
  keybd_event(57,57,0,0);
end;

procedure TFormTelaMesaCodigo.Bt4Click(Sender: TObject);
begin
  keybd_event(52,52,0,0);
end;

procedure TFormTelaMesaCodigo.Bt5Click(Sender: TObject);
begin
  keybd_event(53,53,0,0);
end;

procedure TFormTelaMesaCodigo.Bt6Click(Sender: TObject);
begin
  keybd_event(54,54,0,0);
end;

procedure TFormTelaMesaCodigo.Bt1Click(Sender: TObject);
begin
  keybd_event(49,49,0,0);
end;

procedure TFormTelaMesaCodigo.Bt2Click(Sender: TObject);
begin
  keybd_event(50,50,0,0);
end;

procedure TFormTelaMesaCodigo.Bt3Click(Sender: TObject);
begin
  keybd_event(51,51,0,0);
end;

procedure TFormTelaMesaCodigo.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaMesaCodigo.BtVirgulaClick(Sender: TObject);
begin
  keybd_event(188,188,0,0);
end;

procedure TFormTelaMesaCodigo.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaMesaCodigo.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaMesaCodigo.EditCodMesaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    EditCodComanda.SetFocus;
  if Key = 27 then
    ModalResult := MrCancel;
end;

procedure TFormTelaMesaCodigo.EditCodComandaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    EditSenha.SetFocus;
  if Key = 27 then
    ModalResult := MrCancel;
end;

procedure TFormTelaMesaCodigo.EditSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var sVendedor : string;
begin
  sVendedor := '';
  EditVendedorCodigo.Text := '';
  if Key = 13 then {Testa se a senha do garcon confere com a mesa lancada}
    begin
      if strtoint(EditCodMesa.Text) > 0 then
        begin
          dm.sqlConsulta.Close;
          dm.sqlConsulta.sql.Text := 'select vendicod from mesa where mesaicod = ' + EditCodMesa.Text;
          dm.sqlConsulta.open;
          sVendedor := dm.sqlConsulta.fieldbyname('vendicod').AsString;
          {Se tiver vendedor exclusivo para a mesa informada entao testar se a senha digitada pertence ao vendedor da mesa}
          if (sVendedor<>'') then
            begin
              {testa se o garcon cuida a mesa digitada. se sim deixa avancar}
              dm.sqlConsulta.Close;
              dm.sqlConsulta.sql.Text := 'select VENDICOD from vendedor where VENDICOD = '+sVendedor+' and VENDA30SENHA = "'+EditSenha.Text+'"';
              dm.sqlConsulta.open;
              if dm.sqlConsulta.RecordCount = 1 then {ta correto}
                begin
                  EditVendedorCodigo.Text := sVendedor ;
                  dm.sqlConsulta.close;
                  ModalResult := MrOK;
                end
              else
                begin
                  showmessage('Garcon nao atende essa MESA ou SENHA Errada!');
                  EditCodMesa.SetFocus;
                end;
            end
          else
            begin
              // Caso nao tenha vendedor apenas fechar a tela com o OK.
              ModalResult := MrOK;
            end;
        end
      else
        ModalResult := MrOK;

      dm.sqlConsulta.close;
    end;

  if Key = 27 then
    ModalResult := MrCancel;
end;

end.
