unit TelaDadosVersaoLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, RxRichEd;

type
  TFormTelaDadosVersaoLoja = class(TFormTelaGeralTEMPLATE)
    RichEdit1: TRxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosVersaoLoja: TFormTelaDadosVersaoLoja;

implementation

{$R *.dfm}

end.
