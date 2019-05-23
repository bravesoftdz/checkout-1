program P05;

uses
  SysUtils,
  Forms,
   UPrincipal in 'UPrincipal.pas' {frPrincipal},
  UConstantes in 'UConstantes.pas';

{$R *.RES}

{Atenção!!! Os parâmetros do P05 possuem a seguinte ordem:
1o. Parâmetro   = Porta COM             => 1 = COM 1, 2 = COM 2, 3 = COM 3, 4 = COM 4
2o. Parâmetro   = BaudRate              => 0 = 2400, 1 = 4800, 2 = 9600, 3 = 1200, 4 = 19200
3o. Parâmetro   = Data Bits             => 0 = 7 bits, 1 = 8 bits
4o. Parâmetro   = Paridade              => 0 = Nenhum, 1 = Ímpar, 2 = Par, 3 = Espaço
5o. Parâmetro   = Disponibilizar em     => 0 = Arq Texto, 1 = Área de Transferência
6o. Parâmetro   = Diretorio onde será gravado o arquivo. Se vazio significa o diretorio local do programa
7o. Parâmetro   = Tipo de leitura	=> 0=P05/P05A, 1=P05B sem tara, 2=P05B com tara
8o. Parâmetro   = Utilizar 1 stop bit   => 0=não utiliza; 1=utliliza (Opcional)
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
