unit RelatorioComparativoICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioComparativoICMSCompraVEnda = class(TFormRelatorioTEMPLATE)
    TblTemporariaDataMovimento: TDateField;
    TblTemporariaSubstTribt: TFloatField;
    TblTemporariaIsento: TFloatField;
    TblTemporariaVlrTotalCompraVenda: TFloatField;
    TblTemporariaIcms25: TFloatField;
    TblTemporariaIcms17: TFloatField;
    TblTemporariaIcms12: TFloatField;
    TblTemporariaIcms7: TFloatField;
    SQLCupom: TRxQuery;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomPRODA60DESCR: TStringField;
    SQLCupomVLRTOTALITEM: TFloatField;
    SQLCupomCPITN3QTD: TBCDField;
    SQLCupomCUPOA13ID: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComparativoICMSCompraVEnda: TFormRelatorioComparativoICMSCompraVEnda;

implementation

{$R *.dfm}

end.
