unit TelaDadosVersaoCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, RxRichEd;

type
  TFormTelaDadosVersaoCompras = class(TFormTelaGeralTEMPLATE)
    RichEdit1: TRxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosVersaoCompras: TFormTelaDadosVersaoCompras;

implementation

{$R *.dfm}

end.
