unit TelaTipoDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, RXCtrls;

type
  TFormTelaTipoDescontoItem = class(TForm)
    DescValor: TRadioButton;
    LblNomeSistema: TRxLabel;
    DescPerc: TRadioButton;
    dxfLabel1: TRxLabel;
    RxLabel1: TRxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTipoDescontoItem: TFormTelaTipoDescontoItem;

implementation

uses UnitLibrary, TelaItens;

{$R *.DFM}

procedure TFormTelaTipoDescontoItem.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_Escape : begin
                  TipoDescItem := '' ;
                  Close ;
                end ;
    VK_Return : begin
                   if DescValor.Checked Then
                   begin
                     TipoDescItem := 'VALOR' ;
                     TipoDescFech := 'VALOR' ;
                   end ;
                   if DescPerc.Checked Then
                   begin
                     TipoDescItem := 'PERCENTUAL' ;
                     TipoDescFech := 'PERCENTUAL' ;
                   end ;

                   Close ;
              end ;
  end ;
end;

procedure TFormTelaTipoDescontoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTipoDescontoItem.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

end.
