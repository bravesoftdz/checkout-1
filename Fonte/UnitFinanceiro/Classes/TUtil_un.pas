unit TUtil_un;

interface

uses DB, DBXpress, Dialogs, SysUtils, SqlExpr;

type
  TFormataString = class
  public
    class function ZeroEsquerda(const I: Integer; const Casas: Byte): String;
  end;

implementation

{ TFormataString }

class function TFormataString.ZeroEsquerda(const I: Integer;
  const Casas: Byte): String;
  var Ch: Char;
begin
  Result := IntToStr(I);

  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;

end;

end.
