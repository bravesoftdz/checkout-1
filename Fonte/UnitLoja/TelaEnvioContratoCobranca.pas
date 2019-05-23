unit TelaEnvioContratoCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, dbcgrids, Grids, DBGrids, Buttons, jpeg,
  ExtCtrls, StdCtrls, DB, DBTables, RxQuery, DBCtrls;

type
  TFormTelaEnvioContratoCobranca = class(TFormTelaGeralTEMPLATE)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridLista: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    SQLCobranca: TRxQuery;
    SQLCobrancaCLIEA13ID: TStringField;
    SQLCobrancaAVCOA60NOMECLI: TStringField;
    DSSQLCobranca: TDataSource;
    DSSQLCobrancaContratos: TDataSource;
    SQLCobrancaContratos: TRxQuery;
    SQLCobrancaContratosTOTAL: TBCDField;
    SQLCobrancaContratosCUPOA13ID: TStringField;
    SQLCobrancaContratosAVCODPROCESS: TDateTimeField;
    SQLCobrancaParcelas: TRxQuery;
    DSSQLCobrancaParcelas: TDataSource;
    SQLCobrancaParcelasCTRCINROPARC: TIntegerField;
    SQLCobrancaParcelasCTRCN2VLR: TBCDField;
    SQLCobrancaParcelasAVCODVENC: TDateTimeField;
    SQLCobrancaParcelasAVCOIDIASATRASO: TIntegerField;
    SQLCobrancaParcelasAVCOCENVIADO: TStringField;
    SQLHistorico: TRxQuery;
    DSSQLHistorico: TDataSource;
    Label5: TLabel;
    DBText1: TDBText;
    SQLHistoricoCTRCINROPARC: TIntegerField;
    SQLHistoricoCLHTDEMIS: TDateTimeField;
    SQLHistoricoCLHTTHISTORICO: TMemoField;
    SQLHistoricoCLHTDPROXCONTATO: TDateTimeField;
    Label6: TLabel;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    Bevel1: TBevel;
    BtnVerificar: TSpeedButton;
    procedure BtnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEnvioContratoCobranca: TFormTelaEnvioContratoCobranca;

implementation

{$R *.dfm}

procedure TFormTelaEnvioContratoCobranca.BtnVerificarClick(
  Sender: TObject);
begin
  inherited;
  SQLCobranca.Close;
  SQLCobranca.Open;
  SQLCobrancaContratos.Close;
  SQLCobrancaContratos.Open;
  SQLCobrancaParcelas.Close;
  SQLCobrancaParcelas.Open;
  SQLHistorico.Close;
  SQLHistorico.Open;

end;

end.

