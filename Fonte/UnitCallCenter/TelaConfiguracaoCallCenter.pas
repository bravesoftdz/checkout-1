unit TelaConfiguracaoCallCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxLookup, DB, RxQuery, ActnList, DBActns, DBTables, Mask, RXCtrls;

type
  TFormTelaConfiguracaoCallCenter = class(TFormTelaGeralTEMPLATE)
    SQLConfigVenda: TQuery;
    DSSQLConfigVenda: TDataSource;
    UpdateSQLConfigVenda: TUpdateSQL;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    LabelGravar: TSpeedButton;
    SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECVENDAESTNEGAT: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TBCDField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TBCDField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVECCALCVOLUMENF: TStringField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaCFVECIMPOBSPED: TStringField;
    SQLConfigVendaCFVECADICIONALNF: TStringField;
    SQLConfigVendaOPESICODCANCRET: TIntegerField;
    SQLConfigVendaOPESICODRET: TIntegerField;
    SQLConfigVendaCFVECFINNFPED: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SQLTipoContato: TRxQuery;
    DSSQLTipoContato: TDataSource;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SQLConfigVendaTPCTICODCADCLI: TIntegerField;
    SQLConfigVendaTPCTICODCADCLIDIAS: TIntegerField;
    SQLConfigVendaTPCTICODOS: TIntegerField;
    SQLConfigVendaTPCTICODOSDIAS: TIntegerField;
    SQLConfigVendaTPCTICODVENDA: TIntegerField;
    SQLConfigVendaTPCTICODVENDADIAS: TIntegerField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfiguracaoCallCenter: TFormTelaConfiguracaoCallCenter;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConfiguracaoCallCenter.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigVenda.Open;
  SQLTipoContato.Open ;
end;

procedure TFormTelaConfiguracaoCallCenter.BtnFecharTelaClick(
  Sender: TObject);
begin
  If DM.SQLConfigVenda.Active Then DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;
  inherited;
end;

procedure TFormTelaConfiguracaoCallCenter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;
end;

end.
