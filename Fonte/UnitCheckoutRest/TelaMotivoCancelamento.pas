unit TelaMotivoCancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Buttons, ConerBtn;

type
  TFormTelaDadosCancelamento = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel5: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    EditClienteNomeMotivoCancelamento: TEdit;
    Label3: TLabel;
    EditClienteFoneCancelamento: TEdit;
    BtnGravar: TConerBtn;
    EditMotivoCancelamento: TMemo;
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCancelamento: TFormTelaDadosCancelamento;

implementation

{$R *.dfm}

procedure TFormTelaDadosCancelamento.BtnGravarClick(Sender: TObject);
var erro: boolean;
begin
//  erro := False;
//   if Length(EditClienteNomeMotivoCancelamento.Text) < 2 then
//     begin
//       ShowMessage('Necessario Informar Nome do Cliente!');
//       erro := True;
//     end;
//
//   if length(EditClienteFoneCancelamento.Text) < 8 then
//     begin
//       ShowMessage('Necessario Informar Telefone do Cliente!');
//       erro := True;
//     end;
//
//   if length(EditMotivoCancelamento.Text) < 10 then
//     begin
//       ShowMessage('Necessario Informar o Motivo');
//       erro := True;
//     end;
//   if not erro then
     ModalResult := MrOK;
end;

end.
