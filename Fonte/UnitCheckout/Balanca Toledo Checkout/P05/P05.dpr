program P05;

uses
  SysUtils,
  Forms,
   UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UConstantes in 'UConstantes.pas';

{$R *.RES}

{Aten��o!!! Os par�metros do P05 possuem a seguinte ordem:
1o. Par�metro   = Porta COM             => 1 = COM 1, 2 = COM 2, 3 = COM 3, 4 = COM 4
2o. Par�metro   = BaudRate              => 0 = 2400, 1 = 4800, 2 = 9600, 3 = 1200, 4 = 19200
3o. Par�metro   = Data Bits             => 0 = 7 bits, 1 = 8 bits
4o. Par�metro   = Paridade              => 0 = Nenhum, 1 = �mpar, 2 = Par, 3 = Espa�o
5o. Par�metro   = Disponibilizar em     => 0 = Arq Texto, 1 = �rea de Transfer�ncia
6o. Par�metro   = Diretorio onde ser� gravado o arquivo. Se vazio significa o diretorio local do programa
7o. Par�metro   = Tipo de leitura	=> 0=P05/P05A, 1=P05B sem tara, 2=P05B com tara
8o. Par�metro   = Utilizar 1 stop bit   => 0=n�o utiliza; 1=utliliza (Opcional)
}

procedure FazPesagemAntesDeSair;
var
  Peso:array[0..14] of char;
begin
  if trim(ParamStr(8)) <> '' then
    begin
      if trim(ParamStr(8)) = '1' then
        DeterminaUmStopBit;
    end;

  if AbrePorta(strtoint(ParamStr(1)),strtoint(ParamStr(2)),strtoint(ParamStr(3)),strtoint(ParamStr(4))) = cSucesso then
    begin
      if StrToInt(ParamStr(7)) = 0 then
        begin
          if trim(ParamStr(6)) = '' then
            PegaPeso(strtoint(ParamStr(5)),Peso,pchar(ExtractFilePath(ParamStr(0))))
          else
            PegaPeso(strtoint(ParamStr(5)),Peso,pchar(ParamStr(6)));
        end
      else
        begin
          if trim(ParamStr(6)) = '' then
            PegaPesoP05B(strtoint(ParamStr(5)),strtoint(ParamStr(7))-1,Peso,pchar(ExtractFilePath(ParamStr(0))))
          else
            PegaPesoP05B(strtoint(ParamStr(5)),strtoint(ParamStr(7))-1,Peso,pchar(ParamStr(6)));
        end;

      FechaPorta;
    end;
end;

begin
  if ParamCount > 0 then
    FazPesagemAntesDeSair
  else
    begin
      Application.Initialize;
      Application.CreateForm(TfrPrincipal, frPrincipal);
      Application.Run;
    end;
end.
