unit CallCenterLibrary;

interface
var
KeyCharsSet: set of Char = [ '.', ',', '''', ';', ':', '?', '>', ' ',#13,#10,#9,'´', '`','!'];
function TotalPalavras(const WordText:String):Integer;
implementation



function TotalPalavras(const WordText:String):Integer;
var
i: Integer;
F1,F2: boolean;

begin
  result := 0;
  for i := 1 to length(WordText)-1 do
  begin
    F1 := not( WordText[i] in KeyCharsSet);
    F2 := not( WordText[i+1] in KeyCharsSet);
    if (F1 and not F2) or ((i = length(WordText)-1)and F2) then
    begin
      result := result + 1;
    end;
  end;
  if(length(WordText)=1)and Not( WordText[1] in KeyCharsSet) then
  begin
    result := 1;
  end;
end;

end.
