unit TelaDadosVersaoCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, RxRichEd, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaDadosVersaoCrediario = class(TFormTelaGeralTEMPLATE)
    RichEdit1: TRxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosVersaoCrediario: TFormTelaDadosVersaoCrediario;

implementation

{$R *.dfm}

end.
