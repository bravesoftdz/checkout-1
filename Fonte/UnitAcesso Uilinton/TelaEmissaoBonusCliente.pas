unit TelaEmissaoBonusCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, RxLookup,
  DB, DBTables, RxQuery, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Mask,
  ToolEdit, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaEmissaoBonusCliente = class(TFormTelaGeralTEMPLATE)
    ppReport2Col_Mod01: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    TblMalaDiretaCli: TTable;
    TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField;
    DSTblMalaDiretaCli: TDataSource;
    SQLClienteAUX: TRxQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField1: TDateTimeField;
    StringField25: TStringField;
    IntegerField6: TIntegerField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField42: TStringField;
    DSSQLClienteAUX: TDataSource;
    Label2: TLabel;
    ComboCliente: TRxDBLookupCombo;
    EditNroInicial: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    EditNroFinal: TEdit;
    Label4: TLabel;
    TblMalaDiretaCliVALOR: TFloatField;
    TblMalaDiretaCliNROBONUS: TStringField;
    EditValorBonus: TCurrencyEdit;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    TblMalaDiretaCliExtenso1: TStringField;
    TblMalaDiretaCliExtenso2: TStringField;
    Pipe: TppBDEPipeline;
    ppDBText4: TppDBText;
    BTimprimir: TSpeedButton;
    ppReport2Col_Mod02: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    GroupImprimir: TGroupBox;
    RDLayout01: TRadioButton;
    RDLayout02: TRadioButton;
    LBSeguranca: TppLabel;
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGEIULTBONUS: TIntegerField;
    RDLayout03: TRadioButton;
    ppReport2Col_Mod03: TppReport;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure BTimprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEmissaoBonusCliente: TFormTelaEmissaoBonusCliente;

implementation

uses ExtensoLib;
{$R *.dfm}

procedure TFormTelaEmissaoBonusCliente.FormCreate(Sender: TObject);
begin
  inherited;
  TblMalaDiretaCli.Close ;
  if TblMalaDiretaCli.Exists then
    TblMalaDiretaCli.DeleteTable ;
  TblMalaDiretaCli.CreateTable ;
  TblMalaDiretaCli.Open ;

  SQLClienteAUX.Open;
  SQLConfigGeral.Open;
  EditNroInicial.Text := IntToStr(SQLConfigGeralCFGEIULTBONUS.Value + 1);
end;

procedure TFormTelaEmissaoBonusCliente.BTimprimirClick(Sender: TObject);
var NroFinal, NroInicial, Contador : Double;
begin
  inherited;
  NroInicial := StrToFloat(EditNroInicial.text);
  NroFinal   := StrToFloat(EditNroFinal.text);
  Contador   := NroInicial;
  while Contador <= NroFinal do
    begin
      TblMalaDiretaCli.Append;
      TblMalaDiretaCliCLIEA60RAZAOSOC.Value  := ComboCliente.Text;
      TblMalaDiretaCliNROBONUS.Value         := FormatFloat('########00000000',Contador);
      TblMalaDiretaCliVALOR.Value            := EditValorBonus.Value;
      ValorExtenso(VExt,TblMalaDiretaCliVALOR.Value, '', '', 2, 85, '*',3);
      TblMalaDiretaCliExtenso1.AsString           := VExt[0];
      TblMalaDiretaCliExtenso2.AsString           := VExt[1];
      TblMalaDiretaCli.Post;
      Contador := Contador + 1 ;
    end;
  TblMalaDiretaCli.First;

  if RDLayout01.Checked then ppReport2Col_Mod01.Print;
  if RDLayout02.Checked then ppReport2Col_Mod02.Print;
  if RDLayout03.Checked then ppReport2Col_Mod03.Print;

  TblMalaDiretaCli.Close;

  SQLConfigGeral.Edit;
  SQLConfigGeralCFGEIULTBONUS.AsString := EditNroFinal.Text;
  SQLConfigGeral.Post;
end;

procedure TFormTelaEmissaoBonusCliente.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  LBSeguranca.Caption := FormatDateTime('yymmdd',Now);
end;

end.
