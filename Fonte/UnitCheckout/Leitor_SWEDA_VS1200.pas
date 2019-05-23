unit Leitor_SWEDA_VS1200;

interface
uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms,
     RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls,
     Registry, CommDlg, Messages, Graphics,IniFiles, FileCtrl,Math, DateUtils;


function AbrirPortaLEITOR_SWEDAVS1200(Porta : String) : Boolean;
function FecharPortaLEITOR_SWEDAVS1200(Porta : String) : Boolean;
function HabilitarLEITOR_SWEDAVS1200(Porta : String) : Boolean;
function DesabilitarLEITOR_SWEDAVS1200(Porta : String) : Boolean;
function CarregaDLL(NomeDaBiblioteca:String) : Boolean;

//Funcoes da DLL
Function SW_AbrePortaScanner(var Numero:Integer):Boolean; external 'scsweda.dll'
Function SW_FechaPortaScanner:Boolean; external 'scsweda.dll'
Function SW_HabilitaScanner(var habilita:integer):Boolean; external 'scsweda.dll'

implementation
var
 DLL : THandle;
function CarregaDLL(NomeDaBiblioteca:String) : Boolean;
begin
  DLL := LoadLibrary(PChar(NomeDaBiblioteca));
end;
function AbrirPortaLEITOR_SWEDAVS1200(Porta : String) : Boolean;
var
 Numero : Integer;
begin
  if Porta = 'COM1' then
    Numero := 1;
  if Porta = 'COM2' then
    Numero := 2;
  if Porta = 'COM3' then
    Numero := 3;
  if Porta = 'COM4' then
    Numero := 4;
  if Porta = 'COM5' then
    Numero := 5;
  AbrirPortaLEITOR_SWEDAVS1200 := SW_AbrePortaScanner(Numero);
end;
function FecharPortaLEITOR_SWEDAVS1200(Porta : String) : Boolean;
begin
  FecharPortaLEITOR_SWEDAVS1200 := SW_FechaPortaScanner;
end;
function HabilitarLEITOR_SWEDAVS1200(Porta : String) : Boolean;
var
  Hab : Integer;
begin
  Hab := 1;
  HabilitarLEITOR_SWEDAVS1200 := SW_HabilitaScanner(Hab);
end;
function DesabilitarLEITOR_SWEDAVS1200(Porta : String) : Boolean;
var
  Hab1 : Integer;
begin
  Hab1 := 0;
  DesabilitarLEITOR_SWEDAVS1200 := SW_HabilitaScanner(Hab1);
end;

end.
