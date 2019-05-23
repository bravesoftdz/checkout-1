unit TelaExportacaoDadosRech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Buttons, jpeg, ExtCtrls, ComCtrls,
  DB, DBTables, RxQuery, RxDBComb, MemTable, Placemnt, Grids, DBGrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoDadosRech = class(TFormTelaGeralTEMPLATE)
    EditArquivo: TEdit;
    Label1: TLabel;
    EditVersao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditTipo: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    ComboMes: TComboBox;
    SQLContasPagar: TRxQuery;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGICOD: TIntegerField;
    SQLContasPagarFORNICOD: TIntegerField;
    SQLContasPagarPLCTA15COD: TStringField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGN3VLR: TBCDField;
    SQLContasPagarTPDCICOD: TIntegerField;
    SQLContasPagarCTPGA5TIPOPADRAO: TStringField;
    SQLContasPagarNOCPA13ID: TStringField;
    SQLContasPagarPORTICOD: TIntegerField;
    SQLContasPagarCTPGDULTPAGTO: TDateTimeField;
    SQLContasPagarCTPGN2TOTPAG: TBCDField;
    SQLContasPagarCTPGN3JUROPAGTO: TBCDField;
    SQLContasPagarCTPGN3MULTAPAGTO: TBCDField;
    SQLContasPagarCTPGN3DESCPAGTO: TBCDField;
    SQLContasPagarCTPGN2DESCPROMO: TBCDField;
    SQLContasPagarPDCPA13ID: TStringField;
    SQLContasPagarCTPGCPREVREAL: TStringField;
    SQLContasPagarCTPGN3TXJURO: TBCDField;
    SQLContasPagarCTPGN3TXMULTA: TBCDField;
    SQLContasPagarPENDENTE: TStringField;
    SQLContasPagarREGISTRO: TDateTimeField;
    SQLContasPagarCTPGA254HIST: TStringField;
    SQLContasPagarNOCPA30NRO: TStringField;
    SQLContasPagarCQEMA13ID: TStringField;
    SQLContasPagarPLCTICODREDUZ: TIntegerField;
    SQLContasPagarPLCTINIVEL: TIntegerField;
    SQLContasPagarPLCTA15CODPAI: TStringField;
    SQLContasPagarPLCTA30CODEDIT: TStringField;
    SQLContasPagarPLCTA60DESCR: TStringField;
    SQLContasPagarPLCTCANALSINT: TStringField;
    SQLContasPagarPLCTCTIPOSALDO: TStringField;
    SQLContasPagarHTPDICOD: TIntegerField;
    ComboResultadoFiscal: TRxDBComboBox;
    MemoryTableTipoReg: TMemoryTable;
    MemoryTableTipoRegTipoRegistro: TStringField;
    DSMemoryTableTipoReg: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15COD_1: TStringField;
    SQLContasReceberPLCTICODREDUZ: TIntegerField;
    SQLContasReceberPLCTINIVEL: TIntegerField;
    SQLContasReceberPLCTA15CODPAI: TStringField;
    SQLContasReceberPLCTA30CODEDIT: TStringField;
    SQLContasReceberPLCTA60DESCR: TStringField;
    SQLContasReceberPLCTCANALSINT: TStringField;
    SQLContasReceberPLCTCTIPOSALDO: TStringField;
    SQLContasReceberPENDENTE_1: TStringField;
    SQLContasReceberREGISTRO_1: TDateTimeField;
    SQLTesouraria: TRxQuery;
    SQLTesourariaTESOA13ID: TStringField;
    SQLTesourariaEMPRICOD: TIntegerField;
    SQLTesourariaTERMICOD: TIntegerField;
    SQLTesourariaTESOICOD: TIntegerField;
    SQLTesourariaTESODMOV: TDateTimeField;
    SQLTesourariaTESON2VLRDEBITO: TBCDField;
    SQLTesourariaTESON2VLRCREDITO: TBCDField;
    SQLTesourariaNUMEICOD: TIntegerField;
    SQLTesourariaOPTEICOD: TIntegerField;
    SQLTesourariaTESOA255HIST: TStringField;
    SQLTesourariaCTRCA13ID: TStringField;
    SQLTesourariaCTPGA13ID: TStringField;
    SQLTesourariaCQEMA13ID: TStringField;
    SQLTesourariaFECXA13ID: TStringField;
    SQLTesourariaUSUAICOD: TIntegerField;
    SQLTesourariaPENDENTE: TStringField;
    SQLTesourariaREGISTRO: TDateTimeField;
    SQLTesourariaPLCTA15COD: TStringField;
    SQLTesourariaHTPDICOD: TIntegerField;
    SQLTesourariaPLCTA15COD_1: TStringField;
    SQLTesourariaPLCTICODREDUZ: TIntegerField;
    SQLTesourariaPLCTINIVEL: TIntegerField;
    SQLTesourariaPLCTA15CODPAI: TStringField;
    SQLTesourariaPLCTA30CODEDIT: TStringField;
    SQLTesourariaPLCTA60DESCR: TStringField;
    SQLTesourariaPLCTCANALSINT: TStringField;
    SQLTesourariaPLCTCTIPOSALDO: TStringField;
    SQLTesourariaPENDENTE_1: TStringField;
    SQLTesourariaREGISTRO_1: TDateTimeField;
    SQLTesourariaTESOA20DOCORIGEM: TStringField;
    FormStorage1: TFormStorage;
    SQLContasPagarFORNA30CODCONTABIL: TStringField;
    SQLContasPagarPLCTA15CODCREDITO: TStringField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasPagarPLCTICODREDUZ_1: TIntegerField;
    SQLContasReceberPLCTICODREDUZ_1: TIntegerField;
    DSSQLContasPagar: TDataSource;
    DSSQLContasReceber: TDataSource;
    DSSQLTesouraria: TDataSource;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasPagarFORNA60RAZAOSOC: TStringField;
    Panel1: TPanel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    GroupBox2: TGroupBox;
    CheckPagar: TCheckBox;
    CheckReceber: TCheckBox;
    CheckCaixa: TCheckBox;
    SQLTesourariaPLCTA15COD1: TStringField;
    SQLTesourariaPLCTICODREDUZ_1: TIntegerField;
    SQLRecebimento: TRxQuery;
    SQLPagamento: TRxQuery;
    DSSQLRecebimento: TDataSource;
    DSSQLPagamento: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoTERMICOD: TIntegerField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRPAGTO: TBCDField;
    SQLPagamentoPAGAN3VLRJURO: TBCDField;
    SQLPagamentoPAGAN3VLRMULTA: TBCDField;
    SQLPagamentoPAGAN3VLRDESC: TBCDField;
    SQLPagamentoPENDENTE: TStringField;
    SQLPagamentoREGISTRO: TDateTimeField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTICODREDUZ: TIntegerField;
    SQLPlanoContasPLCTINIVEL: TIntegerField;
    SQLPlanoContasPLCTA15CODPAI: TStringField;
    SQLPlanoContasPLCTA30CODEDIT: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoContasPLCTCANALSINT: TStringField;
    SQLPlanoContasPLCTCTIPOSALDO: TStringField;
    SQLPlanoContasPENDENTE: TStringField;
    SQLPlanoContasREGISTRO: TDateTimeField;
    SQLRecebimentoContaCreditoVlrLookup: TStringField;
    SQLRecebimentoContaCreditoVlrJuroLookup: TStringField;
    SQLRecebimentoContaCreditoVlrMultaLookup: TStringField;
    SQLRecebimentoContaCreditoVlrDescLookup: TStringField;
    SQLRecebimentoContaDebitoVlrLookup: TStringField;
    SQLRecebimentoContaDebitoVlrJuroLookup: TStringField;
    SQLRecebimentoContaDebitoVlrMultaLookup: TStringField;
    SQLRecebimentoContaDebitoVlrDescLookup: TStringField;
    SQLPagamentoContaCreditoVlrLookup: TStringField;
    SQLPagamentoContaCreditoVlrJuroLookup: TStringField;
    SQLPagamentoContaCreditoVlrMultaLookup: TStringField;
    SQLPagamentoContaCreditoVlrDescLookup: TStringField;
    SQLPagamentoContaDebitoVlrLookup: TStringField;
    SQLPagamentoContaDebitoVlrJuroLookup: TStringField;
    SQLPagamentoContaDebitoVlrMultaLookup: TStringField;
    SQLPagamentoContaDebitoVlrDescLookup: TStringField;
    SQLPagamentoCTPGA20DOCORIG: TStringField;
    SQLPagamentoCTPGDTEMIS: TDateTimeField;
    SQLPagamentoCTPGA254HIST: TStringField;
    SQLRecebimentoCTRCA30NRODUPLICBANCO: TStringField;
    SQLRecebimentoCTRCDEMIS: TDateTimeField;
    SQLRecebimentoCTRCA254HIST: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    SpeedButton1: TSpeedButton;
    BtnConsultar: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    function  MontaLinhaTexto(Sequencia,Versao,Tipo,DebitoCredito,CodAnaliticoPlanoContas,HistoricoPadrao,Documento,ResultadoFiscal:String;DataLancamento : TDateTime; Valor : Double):String;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConsultarClick(Sender: TObject);

  private
    function PreencheValor(STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
    { Private declarations }
  public
  LoteAnt : String;
  NroLote : Integer;
  Arquivo : TextFile;
    { Public declarations }
  end;

var
  FormTelaExportacaoDadosRech: TFormTelaExportacaoDadosRech;
  Mes : array [0..11] of Integer = (01,02,03,04,05,06,07,08,09,10,11,12);

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaExportacaoDadosRech.SpeedButton1Click(Sender: TObject);
var
 I : Integer;
 Valor : Double;
 DebitoCredito : String;
begin
  inherited;
  if EditVersao.Text = '' then
    begin
      Informa('Por favor informe a versão do sistema de contabilidade que irá receber os dados !');
      EditVersao.SetFocus;
      Exit;
    end;
  if EditTipo.Text = '' then
    begin
      Informa('Por favor informe o tipo de registro que deverá ser enviado ao sistema de contabilidade !');
      EditTipo.SetFocus;
      Exit;
    end;
  if ComboResultadoFiscal.Text = '' then
    begin
      Informa('Por favor informe o resultado fiscal que deverá ser enviado ao sistema de contabilidade !');
      ComboResultadoFiscal.SetFocus;
      Exit;
    end;
  if ComboMes.Text = '' then
    begin
      Informa('Por favor informe o mês a ser exportado !');
      ComboMes.SetFocus;
      Exit;
    end;
  //GERA ARQUIVO TEXTO
  AssignFile(Arquivo,EditArquivo.Text);
  Rewrite(Arquivo);
  Reset(Arquivo);
  if not MemoryTableTipoReg.Active then MemoryTableTipoReg.Open;
  // CONTAS A PAGAR
  SQLContasPagar.Close;
  SQLContasPagar.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLContasPagar.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLContasPagar.Open;
  SQLContasPagar.First;
  I := 1;
  if (not SQLContasPagar.IsEmpty) and (CheckPagar.Checked) then
    begin
      while not SQLContasPagar.Eof do
        begin
          if SQLContasPagar.FieldByName('PLCTA15COD').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLContasPagar.FieldByName('PLCTICODREDUZ').AsString,
                              SQLContasPagar.FieldByName('CTPGA254HIST').AsString,
                              SQLContasPagar.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLContasPagar.FieldByName('CTPGDTEMIS').AsDateTime,
                              SQLContasPagar.FieldByName('CTPGN3VLR').AsFloat);
              Inc(I);
            end;
          if SQLContasPagar.FieldByName('PLCTA15CODCREDITO').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLContasPagar.FieldByName('PLCTICODREDUZ_1').AsString,
                              SQLContasPagar.FieldByName('CTPGA254HIST').AsString,
                              SQLContasPagar.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLContasPagar.FieldByName('CTPGDTEMIS').AsDateTime,
                              SQLContasPagar.FieldByName('CTPGN3VLR').AsFloat);
              Inc(I);
            end;
          SQLContasPagar.Next;
        end;
    end;

  // PAGAMENTOS
  SQLPagamento.Close;
  SQLPagamento.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLPagamento.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLPagamento.Open;
  SQLPagamento.First;
  if (not SQLPagamento.IsEmpty) and (CheckPagar.Checked) then
    begin
      while not SQLPagamento.Eof do
        begin
          if SQLPagamento.FieldByName('ContaDebitoVlrLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLPagamento.FieldByName('ContaDebitoVlrLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRPAGTO').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaCreditoVlrLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLPagamento.FieldByName('ContaCreditoVlrLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRPAGTO').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaDebitoVlrJuroLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLPagamento.FieldByName('ContaDebitoVlrJuroLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRJURO').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaCreditoVlrJuroLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLPagamento.FieldByName('ContaCreditoVlrJuroLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRJURO').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaDebitoVlrMultaLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLPagamento.FieldByName('ContaDebitoVlrMultaLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRMULTA').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaCreditoVlrMultaLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLPagamento.FieldByName('ContaCreditoVlrMultaLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRMULTA').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaDebitoVlrDescLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLPagamento.FieldByName('ContaDebitoVlrDescLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRDESC').AsFloat);
              Inc(I);
            end;
          if SQLPagamento.FieldByName('ContaCreditoVlrDescLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLPagamento.FieldByName('ContaCreditoVlrDescLookup').AsString,
                              SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString, // VERIFICAR
                              SQLPagamento.FieldByName('CTPGA20DOCORIG').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLPagamento.FieldByName('PAGADPAGTO').AsDateTime,
                              SQLPagamento.FieldByName('PAGAN3VLRDESC').AsFloat);
              Inc(I);
            end;
          SQLPagamento.Next;
        end;
    end;

  // CONTAS A RECEBER
  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLContasReceber.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLContasReceber.Open;
  SQLContasReceber.First;
  if (not SQLContasReceber.IsEmpty) and (CheckReceber.Checked) then
    begin
      while not SQLContasReceber.Eof do
        begin
          if SQLContasReceber.FieldByName('PLCTA15COD').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLContasReceber.FieldByName('PLCTICODREDUZ').AsString,
                              SQLContasReceber.FieldByName('CTRCA254HIST').AsString,
                              SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLContasReceber.FieldByName('CTRCDEMIS').AsDateTime,
                              SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat);
              Inc(I);
            end;
          if SQLContasReceber.FieldByName('PLCTA15CODDEBITO').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLContasReceber.FieldByName('PLCTICODREDUZ_1').AsString,
                              SQLContasReceber.FieldByName('CTRCA254HIST').AsString,
                              SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLContasReceber.FieldByName('CTRCDEMIS').AsDateTime,
                              SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat);
              Inc(I);
            end;
          SQLContasReceber.Next;
        end;
    end;

  // RECEBIMENTOS
  SQLRecebimento.Close;
  SQLRecebimento.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLRecebimento.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLRecebimento.Open;
  SQLRecebimento.First;
  if (not SQLRecebimento.IsEmpty) and (CheckReceber.Checked) then
    begin
      while not SQLRecebimento.Eof do
        begin
          if SQLRecebimento.FieldByName('ContaDebitoVlrLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLRecebimento.FieldByName('ContaDebitoVlrLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaCreditoVlrLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLRecebimento.FieldByName('ContaCreditoVlrLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaDebitoVlrJuroLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLRecebimento.FieldByName('ContaDebitoVlrJuroLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaCreditoVlrJuroLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLRecebimento.FieldByName('ContaCreditoVlrJuroLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaDebitoVlrMultaLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLRecebimento.FieldByName('ContaDebitoVlrMultaLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaCreditoVlrMultaLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLRecebimento.FieldByName('ContaCreditoVlrMultaLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaDebitoVlrDescLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'D',
                              SQLRecebimento.FieldByName('ContaDebitoVlrDescLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2DESC').AsFloat);
              Inc(I);
            end;
          if SQLRecebimento.FieldByName('ContaCreditoVlrDescLookup').AsString <> '' then
            begin
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              'C',
                              SQLRecebimento.FieldByName('ContaCreditoVlrDescLookup').AsString,
                              SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString, // VERIFICAR
                              SQLRecebimento.FieldByName('CTRCA30NRODUPLICBANCO').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime,
                              SQLRecebimento.FieldByName('RECEN2DESC').AsFloat);
              Inc(I);
            end;
          SQLRecebimento.Next;
        end;
    end;

  // TESOURARIA
  SQLTesouraria.Close;
  SQLTesouraria.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLTesouraria.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLTesouraria.Open;
  SQLTesouraria.First;
  if (not SQLTesouraria.IsEmpty) and (CheckCaixa.Checked) then
    begin
      while not SQLTesouraria.Eof do
        begin
          if SQLTesouraria.FieldByName('TESON2VLRDEBITO').AsFloat > 0 then
            begin
              DebitoCredito := 'D';
              Valor := SQLTesouraria.FieldByName('TESON2VLRDEBITO').AsFloat;
            end
          else
            begin
              DebitoCredito := 'C';
              Valor := SQLTesouraria.FieldByName('TESON2VLRCREDITO').AsFloat;
            end;
          MontaLinhaTexto(IntToStr(I),
                          EditVersao.Text,
                          EditTipo.Text,
                          DebitoCredito,
                          SQLTesouraria.FieldByName('PLCTICODREDUZ').AsString,
                          SQLTesouraria.FieldByName('TESOA255HIST').AsString,
                          SQLTesouraria.FieldByName('TESOA20DOCORIGEM').AsString,
                          MemoryTableTipoRegTipoRegistro.AsString,
                          SQLTesouraria.FieldByName('TESODMOV').AsDateTime,
                          Valor);
          Inc(I);
          if SQLTesouraria.FieldByName('PLCTA15COD1').AsString <> '' then
            begin
              if DebitoCredito = 'C' then
                DebitoCredito := 'D'
              else
                if DebitoCredito = 'D' then
                  DebitoCredito := 'C';
              MontaLinhaTexto(IntToStr(I),
                              EditVersao.Text,
                              EditTipo.Text,
                              DebitoCredito,
                              SQLTesouraria.FieldByName('PLCTICODREDUZ_1').AsString,
                              SQLTesouraria.FieldByName('TESOA255HIST').AsString,
                              SQLTesouraria.FieldByName('TESOA20DOCORIGEM').AsString,
                              MemoryTableTipoRegTipoRegistro.AsString,
                              SQLTesouraria.FieldByName('TESODMOV').AsDateTime,
                              Valor);
              Inc(I);
            end;
          SQLTesouraria.Next;
        end;
    end;
  CloseFile(Arquivo);
  Informa('Exportação gerada com sucesso!');
end;
function TFormTelaExportacaoDadosRech.MontaLinhaTexto(Sequencia,Versao,Tipo,DebitoCredito,CodAnaliticoPlanoContas,HistoricoPadrao,Documento,ResultadoFiscal:String;DataLancamento : TDateTime; Valor : Double):String;
var
  Str,ValorAux : String;
  Lote : String;
  Decimal : Double;
begin
  Str := '';
  Str := Preenche(Sequencia,'0',6,0);// Sequencial
  Str := Str + Preenche(Versao,'0',2,0); // Versao
  Str := Str + '0'; // Controle de Seguranca
  Str := Str + Preenche(Tipo,'0',2,0); // Tipo de Registro
  {TIpo de Registro....................................(010-011)
   Obs: Deve conter o número o qual indica o tipo de
   registro em importação/exportação, de acordo
   com a relação abaixo.
   05 LCL-TIR             PIC IS 9(02).
   TIpo de Registro - LANçamentos da contabilidade
   88 LCL-TIRLAN                       VALUE IS 08.}
  Str := Str + DebitoCredito;
  Str := Str + FormatDateTime('ddmm',DataLancamento);
  // Testar sequencia de Lote
  Lote := FormatDateTime('ddmm',DataLancamento);
//  if (Lote <> LoteAnt) or (LoteAnt = '') then
//  else
  inc(NroLote);
  ///////////////////////////
  Str := Str + Format('%.4d',[NroLote]); // Nro Sequencial dentro do lote
  Str := Str + Format('%.7d',[0]); // código SINtético do plano de contas.................(021-027)
  Str := Str + Preenche(CodAnaliticoPlanoContas,'0',4,0); // Codigo reduzido do plano de contas
  Str := Str + FormatDateTime('yyyymmdd',DataLancamento);
  Str := Str + Preenche(Copy(Trim(HistoricoPadrao),0,31),' ',32,2);  // Descrição da 1ª linha do lançamento
  Str := Str + Preenche(Copy(Documento,0,7),'0',7,0); // Numero do Documento
  ValorAux := FormatFloat('#,##0.00',Valor);

  while Pos('.',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos('.',ValorAux),1);
    end;

  while Pos(',',ValorAux) > 0 do
    begin
      Delete(ValorAux,Pos(',',ValorAux),1);
    end;

  Str := Str + Preenche(ValorAux,'0',14,0); // Valor do Lancamento
  Str := Str + Preenche('0','0',3,0); // Código do Historico Padrao no Sistema da Contabilidade;
  Str := Str + ResultadoFiscal; // Deve indicar se a conta deve ser ignorada " ",
                                // adicionada "A" ou excluída "E" do resultado fiscal.
  Str := PreencheValor(Str,' ',288,2); // Linhas de Complemento;
  Str := PreencheValor(Str,'0',575,2); // Centro de Custo;
//  Str := Preenche(Str,' ',2040,2); // Centro de Custo;
  Append(Arquivo);
  Writeln(Arquivo,Str);
end;
procedure TFormTelaExportacaoDadosRech.FormCreate(Sender: TObject);
begin
  inherited;
  MemoryTableTipoReg.Open;
end;

procedure TFormTelaExportacaoDadosRech.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  MemoryTableTipoReg.Close;
  MemoryTableTipoReg.Free;
end;

Function TFormTelaExportacaoDadosRech.PreencheValor( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
VAR Conta : integer ;
    Aux_Str : String ;
begin
  Aux_Str := '' ;
  FOR Conta := 1 TO TAM DO
     if FloodStr = '' then
       AUX_STR := AUX_STR + ' '
     else
        AUX_STR := AUX_STR + FloodStr ;
  IF JUST = 0 THEN //Esquerda
    AUX_STR := AUX_STR + STRI ;
  IF JUST = 2 THEN //Direita
    AUX_STR := STRI + AUX_STR ;
  PreencheValor := AUX_STR ;
End ;

procedure TFormTelaExportacaoDadosRech.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  if ComboMes.Text = '' then
    begin
      Informa('Por favor informe o mês a ser exportado !');
      ComboMes.SetFocus;
      Exit;
    end;
    
  SQLContasPagar.Close;
  SQLContasPagar.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLContasPagar.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLContasPagar.Open;
  SQLContasPagar.First;

  SQLPagamento.Close;
  SQLPagamento.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLPagamento.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLPagamento.Open;
  SQLPagamento.First;

  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLContasReceber.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLContasReceber.Open;
  SQLContasReceber.First;

  SQLRecebimento.Close;
  SQLRecebimento.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLRecebimento.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLRecebimento.Open;
  SQLRecebimento.First;

  SQLTesouraria.Close;
  SQLTesouraria.ParamByName('Mes').AsInteger := Mes[ComboMes.ItemIndex];
  SQLTesouraria.ParamByName('Ano').AsString  := FormatDateTime('yyyy',Date);
  SQLTesouraria.Open;
  SQLTesouraria.First;
end;

end.

