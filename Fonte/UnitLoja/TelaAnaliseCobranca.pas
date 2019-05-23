unit TelaAnaliseCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, dbcgrids, Grids, DBGrids, Buttons, jpeg,
  ExtCtrls, StdCtrls, DB, DBTables, RxQuery, DBCtrls, RxLookup, Menus,
  RXCtrls, UCrpe32, Mask, ToolEdit, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaAnaliseCobranca = class(TFormTelaGeralTEMPLATE)
    Panel1: TPanel;
    Label1: TLabel;
    SQLCobranca: TRxQuery;
    SQLCobrancaCLIEA13ID: TStringField;
    SQLCobrancaAVCOA60NOMECLI: TStringField;
    DSSQLCobranca: TDataSource;
    DSSQLCobrancaContratos: TDataSource;
    SQLCobrancaContratos: TRxQuery;
    SQLCobrancaContratosTOTAL: TBCDField;
    SQLCobrancaContratosCUPOA13ID: TStringField;
    SQLCobrancaParcelas: TRxQuery;
    DSSQLCobrancaParcelas: TDataSource;
    SQLCobrancaParcelasCTRCINROPARC: TIntegerField;
    SQLCobrancaParcelasCTRCN2VLR: TBCDField;
    SQLCobrancaParcelasAVCODVENC: TDateTimeField;
    SQLCobrancaParcelasAVCOIDIASATRASO: TIntegerField;
    SQLCobrancaParcelasAVCOCENVIADO: TStringField;
    SQLHistorico: TRxQuery;
    DSSQLHistorico: TDataSource;
    SQLHistoricoCTRCINROPARC: TIntegerField;
    SQLHistoricoCLHTDEMIS: TDateTimeField;
    SQLHistoricoCLHTTHISTORICO: TMemoField;
    SQLHistoricoCLHTDPROXCONTATO: TDateTimeField;
    Panel5: TPanel;
    ComboCliente: TRxDBLookupCombo;
    Label7: TLabel;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    SQLItensCPITN3QTD: TBCDField;
    SQLItensCPITN3VLRUNIT: TBCDField;
    SQLItensCPITN2DESC: TBCDField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensPRODA60DESCR: TStringField;
    SQLCobrancaContratosCUPODEMIS: TDateTimeField;
    SQLHistoricoCUPOA13ID: TStringField;
    BtnContrato: TSpeedButton;
    BtnCliente: TSpeedButton;
    SQLContasReceber: TRxQuery;
    UpdateSQLContasReceber: TUpdateSQL;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLCobrancaParcelasCTRCA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLCobrancaParcelasCOBRA13ID: TStringField;
    SQLCobrador: TRxQuery;
    SQLCobrancaParcelasCOBRA60NOME: TStringField;
    SQLCobrancaParcelasCTRCDENVIOCOBRANCA: TDateTimeField;
    SplitterHist: TSplitter;
    Panel4: TPanel;
    Label4: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    Label5: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    Label9: TLabel;
    DBText3: TDBText;
    DBMemo1: TDBMemo;
    SplitterCliente: TSplitter;
    Panel2: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    SplitterContrato: TSplitter;
    SplitterParcela: TSplitter;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    BtnHistorico: TSpeedButton;
    PopupMenuHistorico: TPopupMenu;
    Replicarestehistricoparatodasasparcelas1: TMenuItem;
    PopupMenuImpressao: TPopupMenu;
    LabelImpressao: TRxSpeedButton;
    ContratoSelecionado1: TMenuItem;
    Clienteselecionado1: TMenuItem;
    odosClientes1: TMenuItem;
    FichadeCobrana1: TMenuItem;
    TblFichaCobranca: TTable;
    TblFichaCobrancaContrato: TTable;
    TblFichaCobrancaContratoCUPOA13ID: TStringField;
    TblFichaCobrancaContratoCUPODEMIS: TDateField;
    TblFichaCobrancaContratoCUPOINROCUPOM: TIntegerField;
    TblFichaCobrancaContratoPLRCICOD: TIntegerField;
    TblFichaCobrancaContratoPLRCA60DESCR: TStringField;
    TblFichaCobrancaContratoCTRCA13ID: TStringField;
    TblFichaCobrancaContratoCTRCINROPARC: TIntegerField;
    TblFichaCobrancaContratoCTRCDVENC: TDateField;
    TblFichaCobrancaContratoCTRCN2VLR: TFloatField;
    TblFichaCobrancaContratoCTRCDULTREC: TDateField;
    TblFichaCobrancaContratoCLIEA13ID: TStringField;
    SQLClienteFicha: TRxQuery;
    SQLClienteFichaCLIEA13ID: TStringField;
    SQLClienteFichaEMPRICOD: TIntegerField;
    SQLClienteFichaCLIEICOD: TIntegerField;
    SQLClienteFichaCLIEA5FISJURID: TStringField;
    SQLClienteFichaCLIEA14CGC: TStringField;
    SQLClienteFichaCLIEA20IE: TStringField;
    SQLClienteFichaCLIEA11CPF: TStringField;
    SQLClienteFichaCLIEA10RG: TStringField;
    SQLClienteFichaCLIEA60RAZAOSOC: TStringField;
    SQLClienteFichaCLIEA60NOMEFANT: TStringField;
    SQLClienteFichaCLIEA60CONTATO: TStringField;
    SQLClienteFichaCLIEA15FONE1: TStringField;
    SQLClienteFichaCLIEA15FONE2: TStringField;
    SQLClienteFichaCLIEA15FAX: TStringField;
    SQLClienteFichaCLIEA30OUTROSDOC: TStringField;
    SQLClienteFichaCLIECSEXO: TStringField;
    SQLClienteFichaCLIEA60PROFISSAO: TStringField;
    SQLClienteFichaCLIEA60ENDRES: TStringField;
    SQLClienteFichaCLIEA60BAIRES: TStringField;
    SQLClienteFichaCLIEA60CIDRES: TStringField;
    SQLClienteFichaCLIEA2UFRES: TStringField;
    SQLClienteFichaCLIEA8CEPRES: TStringField;
    SQLClienteFichaCLIEA60EMAIL: TStringField;
    SQLClienteFichaCLIEA60URL: TStringField;
    SQLClienteFichaCLIEN2RENDA: TBCDField;
    SQLClienteFichaCLIEN2LIMITECRED: TBCDField;
    SQLClienteFichaCLIEA60NOMEPAI: TStringField;
    SQLClienteFichaCLIEA60NOMEMAE: TStringField;
    SQLClienteFichaCLIEDNASC: TDateTimeField;
    SQLClienteFichaCLIECESTADOCIVIL: TStringField;
    SQLClienteFichaCLIEA60CONJUGE: TStringField;
    SQLClienteFichaCLIEA60CONJUGEMAE: TStringField;
    SQLClienteFichaCLIEN2CONJUGERENDA: TBCDField;
    SQLClienteFichaCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteFichaCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteFichaCLIEA15CONJFONEMPR: TStringField;
    SQLClienteFichaCLIEA60EMPRESA: TStringField;
    SQLClienteFichaCLIEA60ENDEMPRESA: TStringField;
    SQLClienteFichaCLIEA60BAIEMPRESA: TStringField;
    SQLClienteFichaCLIEA60CIDEMPRESA: TStringField;
    SQLClienteFichaCLIEA2UFEMPRESA: TStringField;
    SQLClienteFichaCLIEA8CEPEMPRESA: TStringField;
    SQLClienteFichaCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteFichaCLIEA15FONEEMPRESA: TStringField;
    SQLClienteFichaBANCA5COD: TStringField;
    SQLClienteFichaCLIEA5AGENCIA: TStringField;
    SQLClienteFichaCLIEA10CONTA: TStringField;
    SQLClienteFichaCLIEA60TITULAR: TStringField;
    SQLClienteFichaCLIEDABERTCONTA: TDateTimeField;
    SQLClienteFichaCLIETOBS: TStringField;
    SQLClienteFichaTPCLICOD: TIntegerField;
    SQLClienteFichaMTBLICOD: TIntegerField;
    SQLClienteFichaPROFICOD: TIntegerField;
    SQLClienteFichaVENDICOD: TIntegerField;
    SQLClienteFichaCLIEDCAD: TDateTimeField;
    SQLClienteFichaCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteFichaCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteFichaCLIEA254PATHFOTO: TStringField;
    SQLClienteFichaCLIECRECAVISATRASO: TStringField;
    SQLClienteFichaCLIEA30NATURALIDADE: TStringField;
    SQLClienteFichaCLIECRECEBECARTAO: TStringField;
    SQLClienteFichaCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteFichaCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteFichaCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteFichaCLIEA10CODCONV: TStringField;
    SQLClienteFichaCLIEA10CODANT: TStringField;
    SQLClienteFichaCLIEA20NROCARTCRED: TStringField;
    SQLClienteFichaPENDENTE: TStringField;
    SQLClienteFichaREGISTRO: TDateTimeField;
    SQLClienteFichaCLIEA35NROCARTCRED: TStringField;
    SQLClienteFichaCLIEA60EMAILCONJUG: TStringField;
    SQLClienteFichaCLIEDCASAMENTO: TDateTimeField;
    SQLClienteFichaTPRCICOD: TIntegerField;
    SQLClienteFichaCLIEA60ENDCOB: TStringField;
    SQLClienteFichaCLIEA60BAICOB: TStringField;
    SQLClienteFichaCLIEA60CIDCOB: TStringField;
    SQLClienteFichaCLIEA2UFCOB: TStringField;
    SQLClienteFichaCLIEA8CEPCOB: TStringField;
    SQLClienteFichaPLRCICOD: TIntegerField;
    SQLClienteFichaCLIEA30TEMPOMORADIA: TStringField;
    SQLClienteFichaCLIECCASAPROPRIA: TStringField;
    TblFichaCobrancaCLIEA13ID: TStringField;
    TblFichaCobrancaEMPRICOD: TIntegerField;
    TblFichaCobrancaCLIEICOD: TIntegerField;
    TblFichaCobrancaCLIEA5FISJURID: TStringField;
    TblFichaCobrancaCLIEA14CGC: TStringField;
    TblFichaCobrancaCLIEA20IE: TStringField;
    TblFichaCobrancaCLIEA11CPF: TStringField;
    TblFichaCobrancaCLIEA10RG: TStringField;
    TblFichaCobrancaCLIEA60RAZAOSOC: TStringField;
    TblFichaCobrancaCLIEA60NOMEFANT: TStringField;
    TblFichaCobrancaCLIEA60CONTATO: TStringField;
    TblFichaCobrancaCLIEA15FONE1: TStringField;
    TblFichaCobrancaCLIEA15FONE2: TStringField;
    TblFichaCobrancaCLIEA15FAX: TStringField;
    TblFichaCobrancaCLIEA30OUTROSDOC: TStringField;
    TblFichaCobrancaCLIECSEXO: TStringField;
    TblFichaCobrancaCLIEA60PROFISSAO: TStringField;
    TblFichaCobrancaCLIEA60ENDRES: TStringField;
    TblFichaCobrancaCLIEA60BAIRES: TStringField;
    TblFichaCobrancaCLIEA60CIDRES: TStringField;
    TblFichaCobrancaCLIEA2UFRES: TStringField;
    TblFichaCobrancaCLIEA8CEPRES: TStringField;
    TblFichaCobrancaCLIEA60EMAIL: TStringField;
    TblFichaCobrancaCLIEA60URL: TStringField;
    TblFichaCobrancaCLIEN2RENDA: TBCDField;
    TblFichaCobrancaCLIEN2LIMITECRED: TBCDField;
    TblFichaCobrancaCLIEA60NOMEPAI: TStringField;
    TblFichaCobrancaCLIEA60NOMEMAE: TStringField;
    TblFichaCobrancaCLIEDNASC: TDateTimeField;
    TblFichaCobrancaCLIECESTADOCIVIL: TStringField;
    TblFichaCobrancaCLIEA60CONJUGE: TStringField;
    TblFichaCobrancaCLIEA60CONJUGEMAE: TStringField;
    TblFichaCobrancaCLIEN2CONJUGERENDA: TBCDField;
    TblFichaCobrancaCLIEDNASCCONJUGE: TDateTimeField;
    TblFichaCobrancaCLIEA60CONJUGEEMPR: TStringField;
    TblFichaCobrancaCLIEA15CONJFONEMPR: TStringField;
    TblFichaCobrancaCLIEA60EMPRESA: TStringField;
    TblFichaCobrancaCLIEA60ENDEMPRESA: TStringField;
    TblFichaCobrancaCLIEA60BAIEMPRESA: TStringField;
    TblFichaCobrancaCLIEA60CIDEMPRESA: TStringField;
    TblFichaCobrancaCLIEA2UFEMPRESA: TStringField;
    TblFichaCobrancaCLIEA8CEPEMPRESA: TStringField;
    TblFichaCobrancaCLIEDAMISEMPRESA: TDateTimeField;
    TblFichaCobrancaCLIEA15FONEEMPRESA: TStringField;
    TblFichaCobrancaBANCA5COD: TStringField;
    TblFichaCobrancaCLIEA5AGENCIA: TStringField;
    TblFichaCobrancaCLIEA10CONTA: TStringField;
    TblFichaCobrancaCLIEA60TITULAR: TStringField;
    TblFichaCobrancaCLIEDABERTCONTA: TDateTimeField;
    TblFichaCobrancaCLIETOBS: TStringField;
    TblFichaCobrancaTPCLICOD: TIntegerField;
    TblFichaCobrancaMTBLICOD: TIntegerField;
    TblFichaCobrancaPROFICOD: TIntegerField;
    TblFichaCobrancaVENDICOD: TIntegerField;
    TblFichaCobrancaCLIEDCAD: TDateTimeField;
    TblFichaCobrancaCLIEDPRICOMPRA: TDateTimeField;
    TblFichaCobrancaCLIEDULTCOMPRA: TDateTimeField;
    TblFichaCobrancaCLIEA254PATHFOTO: TStringField;
    TblFichaCobrancaCLIECRECAVISATRASO: TStringField;
    TblFichaCobrancaCLIEA30NATURALIDADE: TStringField;
    TblFichaCobrancaCLIECRECEBECARTAO: TStringField;
    TblFichaCobrancaCLIEDENVCARTIMP: TDateTimeField;
    TblFichaCobrancaCLIEDRETCARTIMP: TDateTimeField;
    TblFichaCobrancaCLIEDENVCARTCLI: TDateTimeField;
    TblFichaCobrancaCLIEA10CODCONV: TStringField;
    TblFichaCobrancaCLIEA10CODANT: TStringField;
    TblFichaCobrancaCLIEA20NROCARTCRED: TStringField;
    TblFichaCobrancaPENDENTE: TStringField;
    TblFichaCobrancaREGISTRO: TDateTimeField;
    TblFichaCobrancaCLIEA35NROCARTCRED: TStringField;
    TblFichaCobrancaCLIEA60EMAILCONJUG: TStringField;
    TblFichaCobrancaCLIEDCASAMENTO: TDateTimeField;
    TblFichaCobrancaTPRCICOD: TIntegerField;
    TblFichaCobrancaCLIEA60ENDCOB: TStringField;
    TblFichaCobrancaCLIEA60BAICOB: TStringField;
    TblFichaCobrancaCLIEA60CIDCOB: TStringField;
    TblFichaCobrancaCLIEA2UFCOB: TStringField;
    TblFichaCobrancaCLIEA8CEPCOB: TStringField;
    TblFichaCobrancaPLRCICOD: TIntegerField;
    TblFichaCobrancaCLIEA30TEMPOMORADIA: TStringField;
    TblFichaCobrancaCLIECCASAPROPRIA: TStringField;
    BatchMoveFicha: TBatchMove;
    SQLContratoFicha: TRxQuery;
    SQLHistoricoFicha: TRxQuery;
    DSSQLContratoFicha: TDataSource;
    SQLHistoricoFichaCLHTDEMIS: TDateTimeField;
    SQLHistoricoFichaCLHTTHISTORICO: TMemoField;
    TblFichaCobrancaContratoCLHTTHISTORICO: TMemoField;
    TblFichaCobrancaContratoCLHTDEMIS: TDateTimeField;
    TblFichaCobrancaHistorico: TTable;
    SQLHistoricoFichaCTRCA13ID: TStringField;
    SQLHistoricoFichaCTRCINROPARC: TIntegerField;
    BatchMoveHist: TBatchMove;
    TblFichaCobrancaHistoricoCTRCA13ID: TStringField;
    TblFichaCobrancaHistoricoCTRCINROPARC: TIntegerField;
    TblFichaCobrancaHistoricoCLHTDEMIS: TDateTimeField;
    TblFichaCobrancaHistoricoCLHTTHISTORICO: TMemoField;
    SQLHistoricoFichaCLHTICOD: TIntegerField;
    TblFichaCobrancaHistoricoCLHTICOD: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    Report: TCrpe;
    SQLProcuraCliente: TRxQuery;
    DSSQLProcuraCliente: TDataSource;
    SQLProcuraClienteCLIEA13ID: TStringField;
    SQLProcuraClienteAVCOA60NOMECLI: TStringField;
    SQLCobrancaCLIEA15FONE1: TStringField;
    SQLCobrancaCLIEA15FONE2: TStringField;
    SQLCobrancaCLIEA15FAX: TStringField;
    SQLCobrancaCLIEA15FONEEMPRESA: TStringField;
    SQLCobrancaCLIEA60CONJUGE: TStringField;
    SQLCobrancaCLIEA15CONJFONEMPR: TStringField;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    SQLCobrancaContratosPROCESSADO: TDateTimeField;
    SQLContratoFichaCLIEA13ID: TStringField;
    SQLContratoFichaCUPOA13ID: TStringField;
    SQLContratoFichaCUPODEMIS: TDateTimeField;
    SQLContratoFichaCUPOINRO: TIntegerField;
    SQLContratoFichaPLRCICOD: TIntegerField;
    SQLContratoFichaCTRCA13ID: TStringField;
    SQLContratoFichaCTRCINROPARC: TIntegerField;
    SQLContratoFichaCTRCDVENC: TDateTimeField;
    SQLContratoFichaCTRCN2VLR: TBCDField;
    SQLContratoFichaCTRCDULTREC: TDateTimeField;
    TblFichaCobrancaContratoATRAZO: TIntegerField;
    TblFichaCobrancaContratoVLRJUROS: TFloatField;
    TblFichaCobrancaContratoVLRMULTA: TFloatField;
    TblFichaCobrancaContratoVLRTXCOBR: TFloatField;
    TblFichaCobrancaContratoVLRDESC: TFloatField;
    TblFichaCobrancaContratoTOTALPAGAR: TFloatField;
    SQLContratoFichaCTRCN2TOTREC: TBCDField;
    SQLContratoFichaCTRCN2TXJURO: TBCDField;
    SQLContratoFichaCTRCN2TXMULTA: TBCDField;
    TblFichaCobrancaContratoCTRCN2TOTREC: TBCDField;
    TblFichaCobrancaContratoCTRCN2TXJURO: TBCDField;
    TblFichaCobrancaContratoCTRCN2TXMULTA: TBCDField;
    GroupBox1: TGroupBox;
    De: TDateEdit;
    Ate: TDateEdit;
    Label18: TLabel;
    Label19: TLabel;
    BtnVerificar: TSpeedButton;
    BtnListar: TSpeedButton;
    procedure BtnContratoClick(Sender: TObject);
    function  VerificaContratoNaCobranca(IDCupom:String) : String;
    function  VerificaClienteNaCobranca(IDCliente : String) : String;
    procedure LancaHistoricoCliente(IDCliente, IDCupom, IDContasReceber, Parcela, Historico : String);
    procedure BtnClienteClick(Sender: TObject);
    procedure LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure Replicarestehistricoparatodasasparcelas1Click(
      Sender: TObject);
    procedure Clienteselecionado1Click(Sender: TObject);
    procedure GeraCabecalhoFichaCobranca;
    procedure GeraContratoFichaCobranca;
    procedure ReajustaValoresCobranca;
    procedure ContratoSelecionado1Click(Sender: TObject);
    procedure GeraHistoricoFichaCobranca;
    procedure MarcaParcelaComoEnviado(IDCupom, Parcela : String);
    procedure PreparaTabelasParadox;
    procedure odosClientes1Click(Sender: TObject);
    procedure ImprimeFichaCobranca;
    procedure BtnVerificarClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAnaliseCobranca: TFormTelaAnaliseCobranca;

implementation

uses TelaConsultaCobrador, UnitLibrary, DataModulo, WaitWindow,
  TelaClienteHistorico;

{$R *.dfm}

procedure TFormTelaAnaliseCobranca.BtnContratoClick(Sender: TObject);
var
  Cobranca : String;
  Entra : Boolean;
begin
  inherited;
  if SQLCliente.IsEmpty then
    begin
      Informa('Nenhum registro selecionado!');
      Exit;
    end;
  Cobranca := VerificaContratoNaCobranca(SQLCobrancaContratosCUPOA13ID.AsString);
  if Cobranca <> '' then
    begin
      Entra := Pergunta('NAO','Este contrato já está na cobrança ' + SQLLocate('COBRADOR','COBRA13ID','COBRA60NOME','"' + Cobranca + '"') + ', deseja alterar ?');
    end
  else
    Entra := True;
  if Entra then
    begin
      if Pergunta('SIM','Esta rotina irá associar um cobrador ao contrato selecionado!' + #13 + 'Deseja realmente enviar o contrato ' + SQLCobrancaContratosCUPOA13ID.AsString + ' para cobrança?') then
        begin
          Application.CreateForm(TFormTelaConsultaCobrador,FormTelaConsultaCobrador);
          FormTelaConsultaCobrador.ShowModal;
          if FormTelaConsultaCobrador.ModalResult = MrOK then
            begin
              if SQLCobrancaParcelasCOBRA13ID.AsString <> '' then
                if SQLCobrancaParcelasCOBRA13ID.AsString = FormTelaConsultaCobrador.SQLCobradorCOBRA13ID.AsString then
                  begin
                    Informa('O cobrador: ' + FormTelaConsultaCobrador.SQLCobradorCOBRA60NOME.AsString + ' já foi associado ao contrato: ' + SQLCobrancaContratosCUPOA13ID.AsString + #13 + 'A operação será cancelada!');
                    Exit;
                  end;
              SQLContasReceber.Close;
              SQLContasReceber.MacroByName('Cupom').AsString := 'CUPOA13ID = "' + SQLCobrancaContratosCUPOA13ID.AsString + '"';
              SQLContasReceber.Open;
              SQLContasReceber.First;
              while not SQLContasReceber.Eof do
                begin
                  SQLContasReceber.Edit;
                  SQLContasReceberCOBRA13ID.AsString := FormTelaConsultaCobrador.SQLCobradorCOBRA13ID.AsString;
                  SQLContasReceberCTRCDENVIOCOBRANCA.AsString := FormatDateTime('dd/mm/yyyy',Now);
                  SQLContasReceber.Post;
                  LancaHistoricoCliente(SQLCobrancaCLIEA13ID.AsString,
                                        SQLContasReceberCUPOA13ID.AsString,
                                        SQLContasReceberCTRCA13ID.AsString,
                                        SQLContasReceberCTRCINROPARC.AsString,
                                        'ENVIVADO PARA COBRANÇA : ' + FormTelaConsultaCobrador.SQLCobradorCOBRA60NOME.AsString);
                  SQLContasReceber.Next;
                  MarcaParcelaComoEnviado(SQLContasReceberCUPOA13ID.AsString,SQLContasReceberCTRCINROPARC.AsString);
                end;
              try
                SQLContasReceber.ApplyUpdates;
              except
                on E:Exception do
                  begin
                     Informa('Problemas ao enviar contrato para cobrança, anote o ERRO: ' + E.Message);
                     Exit;
                  end;
              end;
            end
          else
            begin
              Informa('Operação Cancelada Pelo Usuário!');
            end;
        end;
    end
  else
    Informa('Operação Cancelada Pelo Usuário!');
end;
function TFormTelaAnaliseCobranca.VerificaContratoNaCobranca(IDCupom:String) : String;
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.ADD('SELECT COBRA13ID FROM CONTASRECEBER WHERE CUPOA13ID = "' + IDCupom + '"' + ' AND COBRA13ID IS NOT NULL');
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.IsEmpty then
    result := DM.SQLTemplate.FieldByName('COBRA13ID').AsString
  else
    result := '';
end;
function TFormTelaAnaliseCobranca.VerificaClienteNaCobranca(IDCliente : String) : String;
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.ADD('SELECT COBRA13ID FROM CONTASRECEBER WHERE CLIEA13ID = "' + IDCliente + '"' + ' AND COBRA13ID IS NOT NULL');
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.IsEmpty then
    result := DM.SQLTemplate.FieldByName('COBRA13ID').AsString
  else
   result := '';
end;
procedure TFormTelaAnaliseCobranca.LancaHistoricoCliente(IDCliente, IDCupom, IDContasReceber, Parcela, Historico : String);
var
  SQLHistorico, SQLIncremento : TRxQuery;
  NextCodigo : Integer;
  Sair : Boolean;
begin
  SQLHistorico := TRxQuery.Create(DM);
  SQLHistorico.DatabaseName := 'DB';
  SQLIncremento := TRxQuery.Create(DM);
  SQLIncremento.DatabaseName := 'DB';
  Sair := False;
  While not Sair do
    begin
      SQLIncremento.Close;
      SQLIncremento.SQL.Clear;
      SQLIncremento.SQL.ADD('SELECT MAX(CLHTICOD) FROM CLIENTEHISTORICO WHERE CLIEA13ID  = "' + IDCliente + '"');
      SQLIncremento.Open;
      //RETORNA ULTIMO CODIGO DA TABELA
      if SQLIncremento.IsEmpty then
        NextCodigo := 1
      else
        NextCodigo := SQLIncremento.FieldByName('MAX').AsInteger + 1;
      /////////////////////////////////
      SQLHistorico.Close;
      SQLHistorico.SQL.Clear;
      SQLHistorico.SQL.Add('INSERT INTO CLIENTEHISTORICO (');
      SQLHistorico.SQL.Add('CLIEA13ID , ');
      SQLHistorico.SQL.Add('CLHTICOD  , ');
      SQLHistorico.SQL.Add('CLHTDEMIS , ');
      SQLHistorico.SQL.Add('CLHTTHISTORICO , ');
      SQLHistorico.SQL.Add('CUPOA13ID , ');
      SQLHistorico.SQL.Add('CTRCA13ID , ');
      SQLHistorico.SQL.Add('CTRCINROPARC , ');
      SQLHistorico.SQL.Add('PENDENTE , ');
      SQLHistorico.SQL.Add('REGISTRO ');
      SQLHistorico.SQL.Add(') ');
      SQLHistorico.SQL.Add('VALUES (');
      SQLHistorico.SQL.Add('"' + IDCliente + '" , ');
      SQLHistorico.SQL.Add(IntToStr(NextCodigo) + ' , ');
      SQLHistorico.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',Now) + '" , ');
      SQLHistorico.SQL.Add('"' + Historico + '" , ');
      if IDCupom <> '' then
        SQLHistorico.SQL.Add('"' + IDCupom + '" , ')
      else
        SQLHistorico.SQL.Add('Null , ');
      if IDContasReceber <> '' then
        SQLHistorico.SQL.Add('"' + IDContasReceber + '" , ')
      else
        SQLHistorico.SQL.Add('Null , ');
      if Parcela <> '' then
        SQLHistorico.SQL.Add(Parcela + ' , ')
      else
        SQLHistorico.SQL.Add('Null , ');

      SQLHistorico.SQL.Add('"S" , ');
      SQLHistorico.SQL.Add('"' +FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+ '")');
      try
        SQLHistorico.ExecSQL;
        Sair := True;
      except
         on E:Exception do
           begin
             ShowMessage('Problemas ao gravar histórico, anote o ERRO: ' + E.Message);
             Inc(NextCodigo);
           end;
      end
    end;
    SQLHistorico.Close;
    SQLHistorico.Free;
    SQLIncremento.Close;
    SQLIncremento.Free;
end;
procedure TFormTelaAnaliseCobranca.MarcaParcelaComoEnviado(IDCupom, Parcela : String);
var
  SQLCobranca : TRxQuery;
begin
  if (IDCupom <> '') and (Parcela <> '')  then
    begin
      SQLCobranca := TRxQuery.Create(DM);
      SQLCobranca.DatabaseName := 'DB';
      with SQLCobranca do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CARTAAVISOCOBRANCA SET Pendente="S", AVCOCENVIADO = "S" ');
          SQL.Add('where CUPOA13ID = "' + IDCupom + '"');
          SQL.Add('and   CTRCINROPARC = ' + Parcela);
          try
            ExecSQL;
          Close;
          Destroy;
          except
            on E:Exception do
              begin
                Informa('Problemas ao alterar status da parcela para enviado!');
                Close;
                Destroy;
                Exit;
              end;
          end;
        end;
    end
  else
    begin
      Informa('Parâmetros incorretos, verifique!');
      Exit;
    end;
end;
procedure TFormTelaAnaliseCobranca.BtnClienteClick(Sender: TObject);
var
  Cobranca : String;
  Entra : Boolean;
begin
  inherited;
  if SQLCliente.IsEmpty then
    begin
      Informa('Nenhum registro selecionado!');
      Exit;
    end;
  Cobranca := VerificaClienteNaCobranca(SQLCobrancaCLIEA13ID.AsString);
  if Cobranca <> '' then
    begin
      informa('Este Cliente já possui contrato(s) na cobrança ' + SQLLocate('COBRADOR','COBRA13ID','COBRA60NOME','"' + Cobranca + '"') + ', impossível enviar o(s) contrato(s)!');
      Exit;
    end
  else
    Entra := True;
  if Entra then
    begin
      if Pergunta('SIM','Esta rotina irá associar um cobrador à todos os contratos do cliente selecionado!' + #13 + 'Deseja realmente enviar o(s) contrato(s) do cliente ' + SQLCobrancaAVCOA60NOMECLI.AsString + ' para cobrança?') then
        begin
          Application.CreateForm(TFormTelaConsultaCobrador,FormTelaConsultaCobrador);
          FormTelaConsultaCobrador.ShowModal;
          if FormTelaConsultaCobrador.ModalResult = MrOK then
            begin
              MakeWindowMessage('Enviando Contratos para Cobrança!');
              SQLCobrancaContratos.First;
              while not SQLCobrancaContratos.Eof do
                begin
                  SQLContasReceber.Close;
                  SQLContasReceber.MacroByName('Cupom').AsString := 'CUPOA13ID = "' + SQLCobrancaContratosCUPOA13ID.AsString + '"';
                  SQLContasReceber.Open;
                  SQLContasReceber.First;
                  while not SQLContasReceber.Eof do
                    begin
                      SQLContasReceber.Edit;
                      SQLContasReceberCOBRA13ID.AsString := FormTelaConsultaCobrador.SQLCobradorCOBRA13ID.AsString;
                      SQLContasReceberCTRCDENVIOCOBRANCA.AsString := FormatDateTime('dd/mm/yyyy',Now);
                      SQLContasReceber.Post;
                      LancaHistoricoCliente(SQLCobrancaCLIEA13ID.AsString,
                                            SQLContasReceberCUPOA13ID.AsString,
                                            SQLContasReceberCTRCA13ID.AsString,
                                            SQLContasReceberCTRCINROPARC.AsString,
                                            'ENVIVADO PARA COBRANÇA : ' + FormTelaConsultaCobrador.SQLCobradorCOBRA60NOME.AsString);
                      MarcaParcelaComoEnviado(SQLContasReceberCUPOA13ID.AsString,SQLContasReceberCTRCINROPARC.AsString);
                      SQLContasReceber.Next;
                    end;
                    try
                      SQLContasReceber.ApplyUpdates;
                    except
                      on E:Exception do
                        begin
                           Informa('Problemas ao enviar contrato para cobrança, anote o ERRO: ' + E.Message);
                           DestroyWindow;
                           Exit;
                        end;
                    end;
                  SQLCobrancaContratos.Next;
                end;
              DestroyWindow;
              FormTelaConsultaCobrador.Close;
              FormTelaConsultaCobrador.Free;
            end
          else
            begin
              Informa('Operação Cancelada Pelo Usuário!');
            end;
        end;
    end
  else
    Informa('Operação Cancelada Pelo Usuário!');
end;
procedure TFormTelaAnaliseCobranca.LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
begin
  Application.CreateForm(TFormTelaClienteHistorico,FormTelaClienteHistorico);
  FormTelaClienteHistorico.Cliente       := IDCliente;
  FormTelaClienteHistorico.Cupom         := IDCupom;
  FormTelaClienteHistorico.ContasReceber := IDcontasReceber;
  FormTelaClienteHistorico.Parcela       := Parcela;
  FormTelaClienteHistorico.SQLTemplate.Close;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cliente').AsString := IDCliente;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cupom').AsString   := IDCupom;
  FormTelaClienteHistorico.SQLTemplate.Open;
  FormTelaClienteHistorico.ShowModal;
  FormTelaClienteHistorico.Close;
  FormTelaClienteHistorico.Free;
end;

procedure TFormTelaAnaliseCobranca.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  if SQLCliente.IsEmpty then
    begin
      Informa('Nenhum registro selecionado!');
      Exit;
    end;
  LancaHistorico(SQLCobrancaCLIEA13ID.AsString,
                 SQLCobrancaContratosCUPOA13ID.AsString,
                 SQLCobrancaParcelasCTRCA13ID.AsString,
                 SQLCobrancaParcelasCTRCINROPARC.AsString);
  SQLHistorico.Close;
  SQLHistorico.Open;
end;

procedure TFormTelaAnaliseCobranca.Replicarestehistricoparatodasasparcelas1Click(
  Sender: TObject);
begin
  inherited;
  MakeWindowMessage('Gerando histórico de parcelas!');
  while not SQLCobrancaParcelas.Eof do
    begin
      LancaHistoricoCliente(SQLCobrancaCLIEA13ID.AsString,
                            SQLCobrancaContratosCUPOA13ID.AsString,
                            SQLCobrancaParcelasCTRCA13ID.AsString,
                            SQLCobrancaParcelasCTRCINROPARC.AsString,
                            SQLHistoricoCLHTTHISTORICO.AsString);
      SQLCobrancaParcelas.Next;
    end;
    SQLCobrancaParcelas.First;
    DestroyWindow;
    Informa('Histórico gerado com sucesso!');
end;

procedure TFormTelaAnaliseCobranca.Clienteselecionado1Click(
  Sender: TObject);
begin
  inherited;
  SQLCobranca.DisableControls;
  SQLCobrancaContratos.DisableControls;
  SQLCobrancaParcelas.DisableControls;
  MakeWindowMessage('Gerando Ficha de Cobrança para o Cliente Selecionado...');
  PreparaTabelasParadox;
  SQLCobrancaContratos.First;
  GeraCabecalhoFichaCobranca;
  while not SQLCobrancaContratos.Eof do
    begin
      GeraContratoFichaCobranca;
      SQLCobrancaContratos.Next;
    end;
  ReajustaValoresCobranca;
  DestroyWindow;
  ImprimeFichaCobranca;
  SQLCobranca.EnableControls;
  SQLCobrancaContratos.EnableControls;
  SQLCobrancaParcelas.EnableControls;
end;
procedure TFormTelaAnaliseCobranca.GeraCabecalhoFichaCobranca;
begin
  SQLClienteFicha.Close;
  SQLClienteFicha.ParamByName('CLIEA13ID').AsString := SQLCobrancaCLIEA13ID.AsString;
  SQLClienteFicha.Open;
  BatchMoveFicha.Execute;
end;
procedure TFormTelaAnaliseCobranca.GeraContratoFichaCobranca;
begin
  SQLContratoFicha.Close;
  SQLContratoFicha.ParamByName('CUPOA13ID').AsString := SQLCobrancaContratosCUPOA13ID.AsString;
  SQLContratoFicha.Open;
  SQLContratoFicha.First;
  while not SQLContratoFicha.Eof do
    begin
      TblFichaCobrancaContrato.Append;
      TblFichaCobrancaContratoCLIEA13ID.AsString      := SQLContratoFichaCLIEA13ID.AsString;
      TblFichaCobrancaContratoCUPOA13ID.AsString      := SQLContratoFichaCUPOA13ID.AsString;
      TblFichaCobrancaContratoCUPODEMIS.AsDateTime    := SQLContratoFichaCUPODEMIS.AsDateTime;
      TblFichaCobrancaContratoCUPOINROCUPOM.AsString  := SQLContratoFichaCUPOINRO.AsString;
      TblFichaCobrancaContratoPLRCICOD.AsString       := SQLContratoFichaPLRCICOD.AsString;
      TblFichaCobrancaContratoPLRCA60DESCR.AsString   := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLContratoFichaPLRCICOD.AsString);
      TblFichaCobrancaContratoCTRCA13ID.AsString      := SQLContratoFichaCTRCA13ID.AsString;
      TblFichaCobrancaContratoCTRCINROPARC.AsString   := SQLContratoFichaCTRCINROPARC.AsString;
      TblFichaCobrancaContratoCTRCDVENC.AsDateTime    := SQLContratoFichaCTRCDVENC.AsDateTime;
      TblFichaCobrancaContratoCTRCN2VLR.AsFloat       := SQLContratoFichaCTRCN2VLR.AsFloat;
      TblFichaCobrancaContratoCTRCDULTREC.AsDateTime  := SQLContratoFichaCTRCDULTREC.AsDateTime;
      TblFichaCobrancaContratoCTRCN2TOTREC.AsFloat    := SQLContratoFichaCTRCN2TOTREC.AsFloat;
      TblFichaCobrancaContratoCTRCN2TXJURO.AsFloat    := SQLContratoFichaCTRCN2TXJURO.AsFloat;
      TblFichaCobrancaContratoCTRCN2TXMULTA.AsFloat   := SQLContratoFichaCTRCN2TXMULTA.AsFloat;
      TblFichaCobrancaContrato.Post;
      // LANCA HISTORICO
      GeraHistoricoFichaCobranca;
      ///////////////////////
      SQLContratoFicha.Next;
    end;
end;
procedure TFormTelaAnaliseCobranca.GeraHistoricoFichaCobranca;
begin
  SQLHistoricoFicha.Close;
  SQLHistoricoFicha.ParamByName('CTRCA13ID').AsString := SQLContratoFichaCTRCA13ID.AsString;
  SQLHistoricoFicha.Open;
  SQLHistoricoFicha.First;
  while not SQLHistoricoFicha.Eof do
    begin
      TblFichaCobrancaHistorico.Append;
      TblFichaCobrancaHistoricoCTRCA13ID.AsString      := SQLHistoricoFichaCTRCA13ID.AsString;
      TblFichaCobrancaHistoricoCLHTICOD.AsString       := SQLHistoricoFichaCLHTICOD.AsString;
      TblFichaCobrancaHistoricoCLHTDEMIS.AsDateTime    := SQLHistoricoFichaCLHTDEMIS.AsDateTime;
      TblFichaCobrancaHistoricoCTRCINROPARC.AsString   := SQLHistoricoFichaCTRCINROPARC.AsString;
      TblFichaCobrancaHistoricoCLHTTHISTORICO.AsString := SQLHistoricoFichaCLHTTHISTORICO.AsString;
      TblFichaCobrancaHistorico.Post;
      SQLHistoricoFicha.Next;
    end;
end;
procedure TFormTelaAnaliseCobranca.ContratoSelecionado1Click(
  Sender: TObject);
begin
  inherited;
  SQLCobranca.DisableControls;
  SQLCobrancaContratos.DisableControls;
  SQLCobrancaParcelas.DisableControls;
  MakeWindowMessage('Gerando Ficha de Cobrança para o Contrato Selecionado...');
  PreparaTabelasParadox;
  GeraCabecalhoFichaCobranca;
  GeraContratoFichaCobranca;
  SQLCobranca.EnableControls;
  SQLCobrancaContratos.EnableControls;
  SQLCobrancaParcelas.EnableControls;
  ReajustaValoresCobranca;
  DestroyWindow;
  ImprimeFichaCobranca;
end;
procedure TFormTelaAnaliseCobranca.PreparaTabelasParadox;
begin
  TblFichaCobranca.Close;
  try
    TblFichaCobranca.DeleteTable;
    TblFichaCobranca.CreateTable;
  except
    TblFichaCobranca.CreateTable;
  end;
  TblFichaCobranca.AddIndex('Cliente','CLIEA13ID',[ixPrimary]);
  TblFichaCobranca.Open;

  TblFichaCobrancaContrato.Close;
  try
    TblFichaCobrancaContrato.DeleteTable;
    TblFichaCobrancaContrato.CreateTable;
  except
    TblFichaCobrancaContrato.CreateTable;
  end;
  TblFichaCobrancaContrato.AddIndex('ContaReceber','CTRCA13ID',[ixPrimary]);
  TblFichaCobrancaContrato.Open;

  TblFichaCobrancaHistorico.Close;
  try
    TblFichaCobrancaHistorico.DeleteTable;
    TblFichaCobrancaHistorico.CreateTable;
  except
    TblFichaCobrancaHistorico.CreateTable;
  end;
  TblFichaCobrancaHistorico.AddIndex('ContRecCodigo','CTRCA13ID;CLHTICOD',[ixPrimary]);
  TblFichaCobrancaHistorico.Open;
end;
procedure TFormTelaAnaliseCobranca.odosClientes1Click(Sender: TObject);
begin
  inherited;
  SQLCobranca.DisableControls;
  SQLCobrancaContratos.DisableControls;
  SQLCobrancaParcelas.DisableControls;
  MakeWindowMessage('Gerando Ficha de Cobrança para Todos os Clientes...');
  PreparaTabelasParadox;
  SQLCobranca.First;
  while not SQLCobranca.Eof do
    begin
      SQLCobrancaContratos.Close;
      SQLCobrancaContratos.Open;
      SQLCobrancaContratos.First;
      GeraCabecalhoFichaCobranca;
      while not SQLCobrancaContratos.Eof do
        begin
          GeraContratoFichaCobranca;
          SQLCobrancaContratos.Next;
        end;
      SQLCobranca.Next;
    end;
  SQLCobranca.EnableControls;
  SQLCobrancaContratos.EnableControls;
  SQLCobrancaParcelas.EnableControls;
  ReajustaValoresCobranca;
  DestroyWindow;
  ImprimeFichaCobranca;
end;
procedure TFormTelaAnaliseCobranca.ImprimeFichaCobranca;
begin
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cobranca.rpt' ;
  Report.ReportTitle       := 'Ficha de Cobrança';
  Report.WindowStyle.Title := 'Ficha de Cobrança';
  Report.Execute ;
end;
procedure TFormTelaAnaliseCobranca.BtnVerificarClick(Sender: TObject);
begin
  inherited;
  SQLCobrancaContratos.Close;
  SQLCobranca.Close;
  SQLCobranca.ParamByName('CLIEA13ID').AsString := SQLProcuraClienteCLIEA13ID.AsString;
  SQLCobranca.Open;
  SQLCobrancaContratos.ParamByName('CLIEA13ID').AsString := SQLCobrancaCLIEA13ID.AsString;
  SQLCobrancaContratos.Open;
  SQLCobrancaParcelas.Close;
  SQLCobrancaParcelas.Open;
  SQLItens.Close;
  SQLItens.Open;
  SQLHistorico.Close;
  SQLHistorico.Open;
end;

procedure TFormTelaAnaliseCobranca.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    BtnVerificar.Click;
end;
procedure TFormTelaAnaliseCobranca.ReajustaValoresCobranca;
var
  Saldo : Double;
begin
  TblFichaCobrancaContrato.Open ;
  TblFichaCobrancaContrato.First ;
  while not TblFichaCobrancaContrato.EOF do
  begin
    Saldo := TblFichaCobrancaContratoCTRCN2VLR.Value - TblFichaCobrancaContratoCTRCN2TOTREC.Value ;

    TblFichaCobrancaContrato.Edit ;
    TblFichaCobrancaContrato.FieldByName('ATRAZO').Value := Date -
                                                 TblFichaCobrancaContratoCTRCDVENC.Value ;

    if TblFichaCobrancaContratoCTRCN2TXJURO.Value > 0 then
      TblFichaCobrancaContrato.FieldByName('VLRJUROS').Value := CalculaJuroMultaDesc( Saldo,
                                                                           TblFichaCobrancaContratoCTRCN2TXJURO.Value,
                                                                           TblFichaCobrancaContratoCTRCDVENC.Value,
                                                                           Date,
                                                                           TblFichaCobrancaContratoCTRCDVENC.Value,
                                                                           DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                                                           'Juro',
                                                                           TblFichaCobrancaContratoCUPOA13ID.AsString,
                                                                           TblFichaCobrancaContratoCTRCINROPARC.AsString) ;

    if TblFichaCobrancaContratoCTRCN2TXMULTA.Value > 0 then
      TblFichaCobrancaContrato.FieldByName('VLRMULTA').Value := CalculaJuroMultaDesc(Saldo,
                                                                          TblFichaCobrancaContratoCTRCN2TXMULTA.Value,
                                                                          TblFichaCobrancaContratoCTRCDVENC.Value,
                                                                          Date,
                                                                          0,
                                                                          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                                                          'Multa',
                                                                          TblFichaCobrancaContratoCUPOA13ID.AsString,
                                                                          TblFichaCobrancaContratoCTRCINROPARC.AsString) ;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
      TblFichaCobrancaContrato.FieldByName('VLRTXCOBR').Value := CalculaJuroMultaDesc(Saldo,
                                                                           DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
                                                                           TblFichaCobrancaContratoCTRCDVENC.Value,
                                                                           Date,
                                                                           0,
                                                                           0,
                                                                           'TaxaCobranca',
                                                                           TblFichaCobrancaContratoCUPOA13ID.AsString,
                                                                           TblFichaCobrancaContratoCTRCINROPARC.AsString) ;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
      TblFichaCobrancaContrato.FieldByName('VLRDESC').Value := CalculaJuroMultaDesc(Saldo,
                                                                         DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                                                         TblFichaCobrancaContratoCTRCDVENC.Value,
                                                                         Date,
                                                                         0,
                                                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                                                         'Desconto',
                                                                         TblFichaCobrancaContratoCUPOA13ID.AsString,
                                                                         TblFichaCobrancaContratoCTRCINROPARC.AsString) ;

    if not (TblFichaCobrancaContrato.FieldByName('ATRAZO').Value > 0) then
      TblFichaCobrancaContrato.FieldByName('ATRAZO').Value   := 0 ;
    if not (TblFichaCobrancaContrato.FieldByName('VLRJUROS').Value > 0) then
      TblFichaCobrancaContrato.FieldByName('VLRJUROS').Value := 0 ;
    if not (TblFichaCobrancaContrato.FieldByName('VLRMULTA').Value > 0) then
      TblFichaCobrancaContrato.FieldByName('VLRMULTA').Value := 0 ;
    if not (TblFichaCobrancaContrato.FieldByName('VLRTXCOBR').Value > 0) then
      TblFichaCobrancaContrato.FieldByName('VLRTXCOBR').Value := 0 ;
    if not (TblFichaCobrancaContrato.FieldByName('VLRDESC').Value > 0) then
      TblFichaCobrancaContrato.FieldByName('VLRDESC').Value := 0 ;

    TblFichaCobrancaContratoTOTALPAGAR.Value := Saldo +
                                     TblFichaCobrancaContrato.FieldByName('VLRJUROS').Value +
                                     TblFichaCobrancaContrato.FieldByName('VLRMULTA').Value +
                                     TblFichaCobrancaContrato.FieldByName('VLRTXCOBR').Value -
                                     TblFichaCobrancaContrato.FieldByName('VLRDESC').Value ;


    TblFichaCobrancaContrato.Post ;

    TblFichaCobrancaContrato.Next ;
  end ;
end;
procedure TFormTelaAnaliseCobranca.BtnListarClick(Sender: TObject);
begin
  inherited;
  SQLProcuraCliente.Close;
  SQLProcuraCliente.MacroByName('MDataVencimento').AsString := 'AVCODVENC >= "' + FormatDateTime('mm/dd/yyyy',DE.Date) + '" AND ' +
                                                               'AVCODVENC <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLProcuraCliente.Open;

end;

end.

