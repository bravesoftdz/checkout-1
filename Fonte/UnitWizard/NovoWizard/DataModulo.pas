unit DataModulo;

interface

uses
  SysUtils, Classes, DB, DBTables, jpeg, Handprot, Forms, Windows, RxQuery,
  Variants;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    HandProt: THandProt;
    SQLTemplate: TRxQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    ModulosHabilitados : String;
    EmpresaCorrente    : Integer;
    function  VerificaAplicacaoHP(ATag : Integer): Boolean;
    procedure CodigoAutomatico(Tabela:String; DataSource:TDataSource;DataSet: TDataSet; CampoAutoIncremento : Integer; CampoID: Integer);
    function ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
    Function DigitVerifEAN(Cod:string) : string ;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}
Function TDM.DigitVerifEAN(Cod:string) : string ;
Var Digito     : string[1] ;
    DAux       : Double ;
    Par,
    Impar : Integer ;
    Str_Aux : string ;
begin
  DigitVerifEAN := '' ;

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 Then
  begin
    Impar := StrtoInt(Copy(Cod,1,1)) +
             StrtoInt(Copy(Cod,3,1)) ;

    Par := StrtoInt(Copy(Cod,2,1)) ;

    DAux := (Par*3) + Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) +
             StrtoInt(Copy(Cod,13,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Impar*3)+Par ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;
end ;

function TDM.ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
Begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.ADD('Select MAX('+Campo+') as ProximoCodigo from '+Tabela);
  SQLTemplate.SQL.ADD('Where');
  SQLTemplate.SQL.ADD('EMPRICOD='+IntToStr(EmpresaCorrente));
  SQLTemplate.Open;
  If SQLTemplate.FindField('ProximoCodigo').asVariant <> Null Then
    Result := SQLTemplate.FindField('ProximoCodigo').asInteger + 1
  Else
    Result:=1;
end;

procedure TDM.CodigoAutomatico(Tabela:String; DataSource:TDataSource;DataSet: TDataSet; CampoAutoIncremento : Integer; CampoID: Integer);
Var
  ID:String;
begin
  Case DataSet.Tag Of
{    1:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
        ProximoCodigoUnico(Tabela,DataSet,DataSet.DataSource,CampoAutoIncremento);
      End; }
    2:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
        ProximoCodigoPorEmpresa(Tabela,DataSet.Fields[CampoAutoIncremento].FieldName);
        ID:=Format('%.3d',[EmpresaCorrente])+Format('%.9d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
        DataSet.Fields[CampoID].asString:=ID+DigitVerifEAN(ID);
      End;
{    3:Begin
        DataSet.Fields[CampoAutoIncremento].Value:=
        ProximoCodigoPorEmpresaPorTerminal(Tabela,DataSet.Fields[CampoAutoIncremento].FieldName);
        ID:=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.Fields[CampoAutoIncremento].asInteger]);
        DataSet.Fields[CampoID].asString:=ID+DigitVerifEAN(ID);
      End;  }
   End;
end;

function TDM.VerificaAplicacaoHP(ATag : Integer): Boolean;
begin
  if HandProt.Active then
     begin
        if HandProt.ProtectionCheck then
            begin
              HandProt.ShowErrorMsg := False;
              ModulosHabilitados := IntToStr(HandProt.ProtectionInfo.UsrIntField);
              if ModulosHabilitados <> '9' then
                 if Pos(IntToStr(ATag), ModulosHabilitados) = 0 then
                    begin
                      Application.MessageBox('Este Módulo não esta Habilitado neste Computador.', 'Atenção', MB_OK +MB_ICONINFORMATION+MB_SYSTEMMODAL);
                      Application.Terminate;
                    end;
            end;
     end;
  Result := True;
end;

begin
end.
