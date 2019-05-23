unit LeitorCodigoBarrasCheckout;

interface
uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms,
     RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls,
     Registry, CommDlg, Messages, Graphics,IniFiles, FileCtrl,Math, DateUtils, Serial;


//declaração das funções da DLL Teclado Gertec T44 c Display
function OpenTec44: integer; stdcall; external 'tec44win.dll';
function CloseTec44: integer; stdcall; external 'tec44win.dll';
function FormFeed: integer; stdcall; external 'tec44win.dll';
function LineFeed: integer; stdcall; external 'tec44win.dll';
function CarRet: integer; stdcall; external 'tec44win.dll';
function GoToXY(lin, col: integer): integer; stdcall; external 'tec44win.dll';
function DispStr(Str: LPSTR): integer; stdcall; external 'tec44win.dll';

//declaração das funções da DLL Teclado Gertec T65 c Display
function OpenTec65: integer; stdcall; external 'tec65_32.dll';
function CloseTec65: integer; stdcall; external 'tec65_32.dll';
{function FormFeed65: integer; stdcall; external 'tec65_32.dll';
function LineFeed65: integer; stdcall; external 'tec65_32.dll';
function CarRet65: integer;   stdcall; external 'tec65_32.dll';
function GoToXY65(lin, col: integer): integer; stdcall; external 'tec65_32.dll';
function DispStr65(Str: LPSTR): integer; stdcall; external 'tec65_32.dll';}

function EnviaTecladoTextoDisplay44(Linha1, Linha2 : String) : Boolean;
function EnviaTecladoTextoDisplay65(Linha1, Linha2 : String) : Boolean;

implementation

uses DataModulo, TelaItens;

function EnviaTecladoTextoDisplay44(Linha1, Linha2 : String) : Boolean;
begin
  FormFeed;                            //limpa display
  if Linha1 <> '' then
    DispStr(Pchar(Linha1));
  if Linha2 <> '' then
    begin
      LineFeed;
      CarRet;
      DispStr(Pchar(Linha2));
    end;
end;

function EnviaTecladoTextoDisplay65(Linha1, Linha2 : String) : Boolean;
var men: array[0..40] of byte;
begin
  FormFeed;                            //limpa display
  StrPCopy(@men,Linha1);
  DispStr(@men);                       //mostra no display
end;

end.
