unit TelaDadosVersaoFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, RxRichEd;

type
  TFormTelaDadosVersaoFin = class(TFormTelaGeralTEMPLATE)
    RichEdit1: TRxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosVersaoFin: TFormTelaDadosVersaoFin;

implementation

{$R *.dfm}

end.
