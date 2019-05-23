unit DataModulo;

interface

uses
  SysUtils, Classes, DB, DBTables, RxQuery;

type
  TDM = class(TDataModule)
    DB: TDatabase;
    SQLFuncionario: TRxQuery;
    SQLFuncionarioFORNICOD: TIntegerField;
    SQLFuncionarioFORNA60RAZAOSOC: TStringField;
    SQLPontoFunc: TRxQuery;
    SQLTemplate: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLFuncionarioFORNBIMAGEM: TBlobField;
    SQLFuncionarioFORNBDIGITAL1: TBlobField;
    SQLFuncionarioFORNBDIGITAL2: TBlobField;
    SQLFuncionarioFORNBDIGITAL3: TBlobField;
    SQLFuncionarioFORNA13IDCRACHA: TStringField;
    SQLPontoFuncPONTA13ID: TStringField;
    SQLPontoFuncEMPRICOD: TIntegerField;
    SQLPontoFuncPONTICOD: TIntegerField;
    SQLPontoFuncFORNICOD: TIntegerField;
    SQLPontoFuncPONTDDATA: TDateTimeField;
    SQLPontoFuncPONTDMANHAENT: TDateTimeField;
    SQLPontoFuncPONTDMANHASAI: TDateTimeField;
    SQLPontoFuncPONTDTARDEENT: TDateTimeField;
    SQLPontoFuncPONTDTARDESAI: TDateTimeField;
    SQLPontoFuncPONTDNOITEENT: TDateTimeField;
    SQLPontoFuncPONTDNOITESAI: TDateTimeField;
    SQLPontoFuncPONTDDIASEMANA: TStringField;
    SQLPontoFuncPONTDATRAZO: TDateTimeField;
    SQLPontoFuncPONTDEXTRA: TDateTimeField;
    SQLPontoFuncPONTTOBS: TStringField;
    SQLPontoFuncREGISTRO: TDateTimeField;
    SQLPontoFuncPENDENTE: TStringField;
    SQLHorario: TRxQuery;
    SQLHorarioHORAICOD: TIntegerField;
    SQLHorarioHORAA60DESCR: TStringField;
    SQLHorarioHORADSEGMANENT: TDateTimeField;
    SQLHorarioHORADSEGMANSAI: TDateTimeField;
    SQLHorarioHORADSEGTARENT: TDateTimeField;
    SQLHorarioHORADSEGTARSAI: TDateTimeField;
    SQLHorarioHORADSEGNOIENT: TDateTimeField;
    SQLHorarioHORADSEGNOISAI: TDateTimeField;
    SQLHorarioHORADTERMANENT: TDateTimeField;
    SQLHorarioHORADTERMANSAI: TDateTimeField;
    SQLHorarioHORADTERTARENT: TDateTimeField;
    SQLHorarioHORADTERTARSAI: TDateTimeField;
    SQLHorarioHORADTERNOIENT: TDateTimeField;
    SQLHorarioHORADTERNOISAI: TDateTimeField;
    SQLHorarioHORADQUAMANENT: TDateTimeField;
    SQLHorarioHORADQUAMANSAI: TDateTimeField;
    SQLHorarioHORADQUATARENT: TDateTimeField;
    SQLHorarioHORADQUATARSAI: TDateTimeField;
    SQLHorarioHORADQUANOIENT: TDateTimeField;
    SQLHorarioHORADQUANOISAI: TDateTimeField;
    SQLHorarioHORADQUIMANENT: TDateTimeField;
    SQLHorarioHORADQUIMANSAI: TDateTimeField;
    SQLHorarioHORADQUITARENT: TDateTimeField;
    SQLHorarioHORADQUITARSAI: TDateTimeField;
    SQLHorarioHORADQUINOIENT: TDateTimeField;
    SQLHorarioHORADQUINOISAI: TDateTimeField;
    SQLHorarioHORADSEXMANENT: TDateTimeField;
    SQLHorarioHORADSEXMANSAI: TDateTimeField;
    SQLHorarioHORADSEXTARENT: TDateTimeField;
    SQLHorarioHORADSEXTARSAI: TDateTimeField;
    SQLHorarioHORADSEXNOIENT: TDateTimeField;
    SQLHorarioHORADSEXNOISAI: TDateTimeField;
    SQLHorarioHORADSABMANENT: TDateTimeField;
    SQLHorarioHORADSABMANSAI: TDateTimeField;
    SQLHorarioHORADSABTARENT: TDateTimeField;
    SQLHorarioHORADSABTARSAI: TDateTimeField;
    SQLHorarioHORADSABNOIENT: TDateTimeField;
    SQLHorarioHORADSABNOISAI: TDateTimeField;
    SQLHorarioHORADDOMMANENT: TDateTimeField;
    SQLHorarioHORADDOMMANSAI: TDateTimeField;
    SQLHorarioHORADDOMTARENT: TDateTimeField;
    SQLHorarioHORADDOMTARSAI: TDateTimeField;
    SQLHorarioHORADDOMNOIENT: TDateTimeField;
    SQLHorarioHORADDOMNOISAI: TDateTimeField;
    SQLHorarioHORADTOLEXTRA: TDateTimeField;
    SQLHorarioHORADTOLATRAZO: TDateTimeField;
    SQLFuncionarioHORAICOD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLPontoFuncBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    EmpresaCorrente : Integer;
    { Public declarations }
    Function DigitVerifEAN(Cod:string) : string ;
    function ProximoCodigoUnico(Tabela:String;Campo:String):Integer;
    function ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    DB.Connected   := True;
    SQLEmpresa.Open;
    EmpresaCorrente := SQLEmpresaEMPRICOD.Value;
  except
    Halt;
  end;
end;

function TDM.ProximoCodigoUnico(Tabela:String;Campo:String):Integer;
begin
  If SQLTemplate.Active Then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.ADD('Select MAX('+Campo+') as ProximoCodigo from '+Tabela);
  SQLTemplate.Open;
  if SQLTemplate.FindField('ProximoCodigo').AsInteger > 0 Then
    Result := SQLTemplate.FindField('ProximoCodigo').asInteger + 1
  else
    Result:=1;
end;

function TDM.ProximoCodigoPorEmpresa(Tabela:String;Campo:String):Integer;
Begin
  if SQLTemplate.Active then
    SQLTemplate.Close;
  SQLTemplate.SQL.Clear;
  SQLTemplate.SQL.ADD('Select MAX('+Campo+') as ProximoCodigo from '+Tabela);
  SQLTemplate.SQL.ADD('Where');
  SQLTemplate.SQL.ADD('EMPRICOD='+IntToStr(EmpresaCorrente));
  SQLTemplate.Open;
  If SQLTemplate.FindField('ProximoCodigo').AsInteger > 0 Then
    Result := SQLTemplate.FindField('ProximoCodigo').asInteger + 1
  Else
    Result:=1;
end;

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
           StrtoInt(Copy(Cod,10,1)) +
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

procedure TDM.SQLPontoFuncBeforePost(DataSet: TDataSet);
begin
  SQLPontoFuncPONTICOD.Value  := ProximoCodigoPorEmpresa('PontoFunc','PONTICOD');
  SQLPontoFuncPONTA13ID.Value := FormatFloat('###000',SQLPontoFuncEMPRICOD.Value) +
                                 FormatFloat('#########000000000',SQLPontoFuncPONTICOD.Value);
  SQLPontoFuncPONTA13ID.Value := SQLPontoFuncPONTA13ID.Value + DigitVerifEAN(SQLPontoFuncPONTA13ID.Value);
end;

end.
