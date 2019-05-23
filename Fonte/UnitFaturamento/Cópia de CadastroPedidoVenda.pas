unit CadastroPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, VarSys, FormResources,
  CurrEdit, RxLookup, UCrpe32, ValEdit;

type
  TFormCadastroPedidoVenda = class(TFormCadastroTEMPLATE)
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TBCDField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TBCDField;
    SQLTemplatePDVDN2TOTPROD: TBCDField;
    SQLTemplatePDVDN2TOTPED: TBCDField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TEvDBNumEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBMemo;
    SQLTemplateTransportadoraLookUp: TStringField;
    DBEdit14: TDBEdit;
    SQLTemplateVendedorLookUp: TStringField;
    DBEdit15: TDBEdit;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    SQLTemplateClienteLookUp: TStringField;
    BtnVendedor: TSpeedButton;
    BtnTransportadora: TSpeedButton;
    MnCancelarPedidodeVenda: TMenuItem;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    BtnCliente: TSpeedButton;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEditCGCCPF: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEditIERG: TDBEdit;
    SQLTemplateClienteEnderecoLookUp: TStringField;
    SQLTemplateClienteEstadoLookUp: TStringField;
    SQLTemplateClienteBairroLookUp: TStringField;
    SQLTemplateClienteCEPLookUp: TStringField;
    SQLTemplateClienteCidadeLookUp: TStringField;
    Label23: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateClienteFoneLookUp: TStringField;
    EtiquetasdeCdigodeBarras1: TMenuItem;
    Label24: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplatePDVDN2VLRDESCPROM: TBCDField;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    Button4: TRxSpeedButton;
    Button5: TRxSpeedButton;
    TabSheetFinanceiro: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    BtnPlanoRecebimento: TSpeedButton;
    DBEdit16: TDBEdit;
    SQLPlano: TRxQuery;
    SQLPlanoParcela: TRxQuery;
    SQLNumerario: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    PanelFinanceiro: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
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
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    DSSQLContasReceber: TDataSource;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLTemplateClienteTabelaPrecoLookUp: TIntegerField;
    ImprimirPedidodeVenda1: TMenuItem;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    Label26: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label27: TLabel;
    DBDateEdit1: TDBDateEdit;
    OrdemdeServio1: TMenuItem;
    SQLPedidoItens: TRxQuery;
    SQLTemplateEmpresaLookUp: TStringField;
    Label51: TLabel;
    DBEditEmpresa: TDBEdit;
    BtnEmpresa: TSpeedButton;
    DBEdit41: TDBEdit;
    SQLTemplatePlanoClienteLookUp: TIntegerField;
    SQLTemplateVendedorClienteLookUp: TIntegerField;
    MnCalcularFinanceiro: TMenuItem;
    SQLVendedor: TTable;
    SQLTransportadora: TTable;
    SQLEmpresa: TTable;
    SQLPlanoRecebimento: TTable;
    Panel8: TPanel;
    Panel11: TPanel;
    Label40: TLabel;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    DBGrid2: TDBGrid;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TBCDField;
    SQLPlanoPLRCN2TXMULTA: TBCDField;
    SQLPlanoPLRCN2TXCRED: TBCDField;
    SQLPlanoPLRCN2PERCDESC: TBCDField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TBCDField;
    SQLPlanoPLRCN2DESC: TBCDField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLCliente: TTable;
    SQLTemplateClienteFisJur: TStringField;
    SQLTemplateClienteCGC: TStringField;
    SQLTemplateClienteIE: TStringField;
    SQLTemplateClienteCPF: TStringField;
    SQLTemplateClienteRG: TStringField;
    ComboNumerarioVista: TRxDBLookupCombo;
    Label28: TLabel;
    SQLNumerarioVista: TRxQuery;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerarioVistaNUMEICOD: TIntegerField;
    SQLNumerarioVistaNUMEA30DESCR: TStringField;
    SQLNumerarioVistaNUMECVISTAPRAZO: TStringField;
    SQLNumerarioVistaNUMECATIVO: TStringField;
    SQLNumerarioVistaNUMEA5TIPO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure BtnPlanoRecebimentoClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure MnCancelarPedidodeVendaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplatePDVDN2VLRDESCPROMChange(Sender: TField);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure ImprimirPedidodeVenda1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure DBEditEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateCLIEA13IDChange(Sender: TField);
    procedure MnCalcularFinanceiroClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ComboNumerarioVistaChange(Sender: TObject);
  private
    { Private declarations }
    PlanoAnterior, PlanoNovo, StatusNovo, StatusAnterior:String;
    PlanoDoCliente, CancelandoPedido,TrocaEntrada, InserindoPedido :Boolean;
    ValorEntrada:Double;
    ContasReceberCliente,ContasReceberID:String;
    BkpEmpresaCorrente : Integer;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVenda: TFormCadastroPedidoVenda;

implementation

uses DataModulo, CadastroCliente, CadastroVendedor, CadastroTransportadora,
  CadastroPlanoRecebimento, CadastroPedidoVendaItem,
  TelaEmissaoEtiquetasCodigoBarras, UnitLibrary,
  CadastroPedidoVendaFinanceiro, CadastroEmpresa;

{$R *.dfm}

procedure TFormCadastroPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PEDIDOVENDA';
  if FileExists('ORDEMCONSULTAPEDIDO.INI') then
    SQLTemplate.SQL.Add('ORDER BY ' + SqlTemplate.Fields[LocateByDisplayLabel(SqlTemplate,ComboOrder.Text)].FieldName + ' DESC');  
end;

procedure TFormCadastroPedidoVenda.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,'') ;
end;

procedure TFormCadastroPedidoVenda.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem := 'VENDICOD' ;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,'') ;
end;

procedure TFormCadastroPedidoVenda.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TRANICOD');
  FieldOrigem := 'TRANICOD' ;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,'') ;
end;

procedure TFormCadastroPedidoVenda.BtnPlanoRecebimentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLRCICOD');
  FieldOrigem := 'PLRCICOD' ;
  CriaFormulario(TFormCadastroPlanoRecebimento,'FormCadastroPlanoRecebimento',False,True,'') ;
end;

procedure TFormCadastroPedidoVenda.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroPedidoVenda.DBEdit12KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnVendedor.Click;
end;

procedure TFormCadastroPedidoVenda.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroPedidoVenda.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPlanoRecebimento.Click;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var
  FaltaNumerario:Boolean;
begin
  BkpEmpresaCorrente := EmpresaCorrente;
  EmpresaCorrente := SQLTemplateEMPRICOD.asInteger;
  If Not DM.InserindoItemPV Then
    Begin
      If (StatusAnterior = '') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'A') Then
          Begin
            ShowMessage('Status Permitido: Aberto');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      If (StatusAnterior = 'A') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'E') Then
          Begin
            ShowMessage('Status Permitido: Encerrado');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      If (StatusAnterior = 'E') and (StatusAnterior<>SQLTemplate.FindField('PDVDCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDVDCSTATUS').asString <> 'C') Then
          Begin
            ShowMessage('Status Permitido: Cancelado');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      StatusNovo := SQLTemplate.FindField('PDVDCSTATUS').asString;
      PlanoNovo  := SQLTemplate.FindField('PLRCICOD').asString;
      If PlanoNovo <> PlanoAnterior Then
      If PlanoNovo <> '' Then
        Begin
          FaltaNumerario := False;
          SQLParcelasPrazoVendaTemp.DisableControls;
          SQLParcelasPrazoVendaTemp.First;
          While Not SQLParcelasPrazoVendaTemp.Eof Do
            Begin
              If SQLParcelasPrazoVendaTempNUMEICOD.asVariant = Null Then
                FaltaNumerario := True;
              SQLParcelasPrazoVendaTemp.Next;
            End;
          SQLParcelasPrazoVendaTemp.First;
          SQLParcelasPrazoVendaTemp.EnableControls;
          If FaltaNumerario Then
            Begin
              ShowMessage('Selecione os Numerários!');
              EmpresaCorrente := BkpEmpresaCorrente;
              Abort;
            End;
        End;
     end;
  inherited;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  StatusAnterior                    := '';
  SQLTemplatePDVDCTIPO.Value        := 'P';
  SQLTemplatePDVDCSTATUS.Value      := 'A';
  SQLTemplatePDVDDEMISSAO.Value     := Date;
  SQLTemplatePDVDDENTREGA.Value     := Date;
  SQLTemplatePDVDN2TOTPROD.Value    := 0;
  SQLTemplatePDVDN2TOTPED.Value     := 0;
  SQLTemplatePDVDN2VLRDESC.Value    := 0;
  SQLTemplatePDVDN2VLRFRETE.Value   := 0;
  SQLTemplatePDVDCTIPOFRETE.Value   := 'C';
  if DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString <> '' then
    SQLTemplatePDVDTOBS.AsString := DM.SQLConfigVendaCFVETOBSPADRAOPED.AsString;
  if DM.SQLTerminalAtivoVENDICOD.AsInteger > 0 then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivoVENDICOD.AsInteger;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
{  If Not CancelandoPedido Then
    If SQLTemplate.FindField('PDVDCSTATUS').asString<>'A' Then
      Begin
        ShowMessage('Pedido de Venda não está aberto!');
        Abort;
      End;}
  StatusAnterior := SQLTemplate.FindField('PDVDCSTATUS').AsString;
  PlanoAnterior  := SQLTemplate.FindField('PLRCICOD').AsString;
  inherited;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
{  If SQLTemplate.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto!');
      Abort;
    End;}
  inherited;
end;

procedure TFormCadastroPedidoVenda.MnCancelarPedidodeVendaClick(
  Sender: TObject);
begin
  inherited;
  If Not SQLTemplate.Eof And (SQLTemplate.FindField('PDVDCSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar o Pedido?','Atenção',MB_YesNo)=IdYes) Then
    Begin
      CancelandoPedido := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('PDVDCSTATUS').asString := 'C';
      SQLTemplate.Post;
      CancelandoPedido := False;
    End;
end;

procedure TFormCadastroPedidoVenda.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroPedidoVendaItem,'FormCadastroPedidoVendaItem',True,False,'Pedido de Venda Nº ' + SQLTemplatePDVDA13ID.asString);
    End;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    PagePrincipal.ActivePage := TabSheetFinanceiro;
  If (Sender as TRxSpeedButton).Name='Button5' Then
    Begin
      If SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
        Begin
          DSMasterSys := DsTemplate;
          CriaFormulario(TFormCadastroPedidoVendaFinanceiro,'FormCadastroPedidoVendaFinanceiro',True,False,'Pedido de Venda Nº ' + SQLTemplatePDVDA13ID.asString);
        End
      Else
        ShowMessage('Informe o Plano no Financeiro!');
    End;
end;

procedure TFormCadastroPedidoVenda.EtiquetasdeCdigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaPedidoVenda := SQLTemplate.FindField('PDVDA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,'');
end;

procedure TFormCadastroPedidoVenda.SQLTemplatePDVDN2VLRDESCPROMChange(
  Sender: TField);
begin
  inherited;
  SQLTemplatePDVDN2TOTPED.asFloat := SQLTemplatePDVDN2TOTPROD.asFloat - SQLTemplatePDVDN2VLRDESCPROM.asFloat + SQLTemplatePDVDN2VLRFRETE.asFloat;
end;

procedure TFormCadastroPedidoVenda.SQLTemplatePLRCICODChange(
  Sender: TField);
Var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro,Acrescimo, EntradaCalc,TaxaCred: Double;
begin
  inherited;
  if SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
    Begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;

      SQLParcelasPrazoVendaTemp.Close ;
      SQLParcelasPrazoVendaTemp.SQL.Clear ;
      SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
      SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
      SQLParcelasPrazoVendaTemp.Open ;

      SQLPlano.Close;
      SQLPlano.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
      SQLPlano.Open;
      if not SQLPlano.Eof then
        Begin
          SQLPlanoParcela.Close;
          SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := SQLTemplate.FindField('PLRCICOD').asInteger;
          SQLPlanoParcela.Open;
          If (DM.SQLTerminalAtivoTERMINUMEVISTA.asString = '') and
             (DM.SQLTerminalAtivoTERMINUMEPRAZO.asString = '') Then
            Begin
              ShowMessage('Você deve configurar os numerários padrão deste Terminal!');
              Abort;
            End;
          SQLPlanoParcela.First;
          ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                       SQLPlano,
                       SQLPlanoParcela,
                       Entrada, Desconto, SQLTemplate.FindField('PDVDN2TOTPED').asFloat , SQLTemplate.FindField('PLRCICOD').asInteger , SQLTemplate.FindField('PDVDDENTREGA').asDateTime,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString, DM.SQLTerminalAtivoTERMINUMEPRAZO.asString,
                       DM.SQLTerminalAtivoTERMINUMEVISTA.asString, DM.SQLTerminalAtivoTERMINUMEPRAZO.asString, SQLTemplate.FindField('PDVDA13ID').asString,
                       DiminuiAcresc,ValorJuro,Acrescimo, EntradaCalc,TaxaCred);
          SQLPlanoParcela.Close;

          SQLNumerarioVista.Close;
          SQLNumerarioVista.Open;

          if Dm.SQLTerminalAtivoTERMINUMEVISTA.AsVariant <> null then
            ComboNumerarioVista.Value := Dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;

          SQLNumerarioPrazo.Close;
          SQLNumerarioPrazo.Open;

          if Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsVariant <> null then
            ComboNumerarioPrazo.Value := Dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;

          if ComboNumerarioVista.Value <> '' then
            ComboNumerarioVistaChange(Self);

          if ComboNumerarioPrazo.Value <> '' then
            ComboNumerarioPrazoChange(Self);
        End;
      SQLPlano.Close;
    End;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateAfterPost(DataSet: TDataSet);
Var
  Erro      : Boolean;
  ValorBase : Double;
  I         : Integer;
begin
  inherited;
  If DM.InserindoItemPV Then Exit;
  If (StatusNovo = 'E') and (DM.SQLConfigVendaCFVECMOVESTOQUEPED.asString='S') Then
    Begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = "' + DataSet.FindField('PDVDA13ID').AsString + '"' ;
      SQLPedidoItens.Open;
      SQLPedidoItens.First;
      While Not SQLPedidoItens.Eof Do
        Begin
          GravaMovimentoEstoque(DM.SQLProduto,
                                DM.SQLProdutoFilho,
                                DM.SQLProdutoSaldo,
                                EmpresaCorrente,//Empresa
                                SQLPedidoItens.FindField('PRODICOD').asInteger,//Produto
                                DM.SQLConfigVendaOPESICODPED.asInteger,//Operacao
                                SQLPedidoItens.FindField('PVITN3QUANT').asFloat,//Quantidade
                                'S',//ENTRADA/SAIDA
                                FormatDateTime('mm/dd/yyyy', Now),
                                SQLPedidoItens.FindField('PVITN2VLRUNIT').asString,
                                'PEDIDOVENDA',
                                SQLTemplate.FieldByName('PDVDA13ID').AsString,
                                '');
          SQLPedidoItens.Next;
        End;
      SQLPedidoItens.Close;
    End;
  If (StatusNovo = 'C') Then
    Begin
      If (DM.SQLConfigVendaCFVECMOVESTOQUEPED.asString='S') Then
        Begin
          SQLPedidoItens.SQL.Text:='Select * From PEDIDOVENDAITEM Where PDVDA13ID="'+DataSet.FindField('PDVDA13ID').AsString+'"';
          SQLPedidoItens.Open;
          SQLPedidoItens.First;
          While Not SQLPedidoItens.Eof Do
            Begin
              GravaMovimentoEstoque(DM.SQLProduto,
                                    DM.SQLProdutoFilho,
                                    DM.SQLProdutoSaldo,
                                    EmpresaCorrente,//Empresa
                                    SQLPedidoItens.FindField('PRODICOD').asInteger,//Produto
                                    DM.SQLConfigVendaOPESICODCANCPED.asInteger,//Operacao
                                    SQLPedidoItens.FindField('PVITN3QUANT').asFloat,//Quantidade
                                    'E',//ENTRADA/SAIDA
                                    FormatDateTime('mm/dd/yyyy', Now),
                                    SQLPedidoItens.FindField('PVITN2VLRUNIT').asString,
                                    'PEDIDOVENDA',
                                    DataSet.FindField('PDVDA13ID').AsString,
                                    '');
              SQLPedidoItens.Next;
            End;
        End;
      // Cancelar Contas Receber
      If Not SQLContasReceber.Active Then
        SQLContasReceber.Open;
      SQLContasReceber.First;
      While Not SQLContasReceber.Eof Do
        Begin
          SQLContasReceber.Edit;
          SQLContasReceberCTRCCSTATUS.Value := 'C';
          SQLContasReceber.Post;
          SQLContasReceber.Next;
        End;
    End;
  If PlanoNovo <> PlanoAnterior Then
    If PlanoNovo <> '' Then
      Begin
        // Gerar Contas Receber
        SQLContasReceber.Close;
        SQLContasReceber.Open;
        SQLContasReceber.First;
        While Not SQLContasReceber.Eof Do
          Begin
            SQLRecebimento.Close;
            SQLRecebimento.Open;
            While not SQLRecebimento.Eof do
              begin
                SQLRecebimento.Delete;
              end;
            SQLContasReceber.Delete;
          End;
        SQLParcelasPrazoVendaTemp.First;
        If SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 Then
          Begin
            SQLContasReceber.Append;
            SQLContasReceberCTRCCSTATUS.Value      := 'A';
            SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('PDVDDEMISSAO').Value;
            SQLContasReceberCTRCDVENC.Value        := SQLTemplate.FindField('PDVDDENTREGA').Value;
            SQLContasReceberCTRCINROPARC.Value     := 0;
            SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
            SQLContasReceberCLIEA13ID.Value        := SQLTemplate.FindField('CLIEA13ID').Value;
            SQLContasReceberPDVDA13ID.Value        := SQLTemplate.FindField('PDVDA13ID').Value;
            SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
            SQLContasReceberTERMICOD.Value         := TerminalCorrente;
            SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
            SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
            SQLContasReceber.Post;
            if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.asString='S' Then
              Begin
                If Not SQLRecebimento.Active Then
                  SQLRecebimento.Open;
                SQLRecebimento.Append;
                SQLRecebimentoCTRCA13ID.Value          := ContasReceberID;
                SQLRecebimentoTERMICODREC.Value        := TerminalCorrente;
                SQLRecebimentoRECEDRECTO.Value         := Now;
                SQLRecebimentoRECEICOD.Value           := 1;
                SQLRecebimentoRECEN2VLRRECTO.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLRecebimentoRECEN2VLRMULTA.Value     := 0;
                SQLRecebimentoRECEN2VLRJURO.Value      := 0;
                SQLRecebimentoRECEN2MULTACOBR.Value    := 0;
                SQLRecebimentoRECEN2DESC.Value         := 0;
                SQLRecebimentoPENDENTE.Value           := 'S';
                SQLRecebimentoEMPRICODREC.Value        := EmpresaCorrente;
                SQLRecebimentoCLIEA13ID.Value          := SQLTemplate.FieldByName('CLIEA13ID').Value;
                SQLRecebimento.Post;
                SQLContasReceber.Edit;
                SQLContasReceberCTRCN2TOTREC.Value     := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLContasReceberCTRCDULTREC.Value      := Now;
                SQLContasReceberEMPRICODULTREC.Value   := EmpresaCorrente;
                SQLContasReceber.Post;
              End;
          end;
        SQLParcelasPrazoVendaTemp.First;
        if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
          SQLParcelasPrazoVendaTemp.Next;
        While Not SQLParcelasPrazoVendaTemp.Eof Do
          Begin
            SQLContasReceber.Append;
            SQLContasReceberCTRCCSTATUS.Value      := 'A';
            SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('PDVDDEMISSAO').Value;
            SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
            SQLContasReceberCTRCINROPARC.AsInteger := SQLParcelasPrazoVendaTempNROPARCELA.AsInteger;
            SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
            SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTIPOPADR.Value;
            SQLContasReceberCLIEA13ID.Value        := SQLTemplate.FindField('CLIEA13ID').Value;
            SQLContasReceberPDVDA13ID.Value        := SQLTemplate.FindField('PDVDA13ID').Value;
            SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;
            SQLContasReceberTERMICOD.Value         := TerminalCorrente;
            SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
            SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;
            SQLContasReceber.Post;
            SQLParcelasPrazoVendaTemp.Next;
          end;
        ComboNumerarioPrazo.Value := '';
      End;
      SQLParcelasPrazoVendaTemp.Close;
  EmpresaCorrente := BkpEmpresaCorrente;
  if InserindoPedido then
    begin
      Button3.Click;
      InserindoPedido := False;
    end;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID      := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTASRECEBER',SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('RECEBIMENTO',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDVDA13ID').Value         := SQLTemplate.FindField('PDVDA13ID').Value;
  DataSet.FindField('CTRCINROPARC').Value      := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value     := 0 ;
  DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value  := 0 ;
end;

procedure TFormCadastroPedidoVenda.ImprimirPedidodeVenda1Click(
  Sender: TObject);
begin
  inherited;
  WinExec(PChar(DM.PathAplicacao + '\PedidoVenda.exe '+SQLTemplatePDVDA13ID.asString),SW_SHOW);
end;

procedure TFormCadastroPedidoVenda.OrdemdeServio1Click(Sender: TObject);
begin
  inherited;
  WinExec(PChar('PedidoVenda '+SQLTemplatePDVDA13ID.asString+' OS'),SW_SHOW);
end;

procedure TFormCadastroPedidoVenda.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  DBEditEmpresa.Enabled := (SQLTemplate.State = dsInsert);
  BtnEmpresa.Enabled    := (SQLTemplate.State = dsInsert);
end;

procedure TFormCadastroPedidoVenda.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormCadastroEmpresa,'FormCadastroEmpresa',False,True,'');
end;

procedure TFormCadastroPedidoVenda.DBEditEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_F2 Then
    BtnEmpresa.Click;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateCLIEA13IDChange(
  Sender: TField);
begin
  inherited;
  PlanoDoCliente := True;
  SQLTemplatePLRCICOD.asVariant := SQLTemplatePlanoClienteLookUp.AsVariant;
  If SQLTemplatePLRCICOD.asVariant<>Null Then
    PlanoAnterior := SQLTemplatePLRCICOD.asString;
  PlanoDoCliente := False;
  SQLTemplateVENDICOD.asVariant := SQLTemplateVendedorClienteLookUp.AsVariant;
end;

procedure TFormCadastroPedidoVenda.MnCalcularFinanceiroClick(
  Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior:='';
end;

procedure TFormCadastroPedidoVenda.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  InserindoPedido := True;

end;

procedure TFormCadastroPedidoVenda.ComboNumerarioPrazoChange(
  Sender: TObject);
begin
  inherited;
  if ComboNumerarioPrazo.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      While not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger <> 0 then
            begin
              SQLParcelasPrazoVendaTemp.Edit;
              SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioPrazo.KeyValue;
              SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioPrazo.Value);
              SQLParcelasPrazoVendaTemp.Post;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      SQLParcelasPrazoVendaTemp.First;
    end;

end;

procedure TFormCadastroPedidoVenda.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  If SQLTemplate.FieldByName('ClienteFisJur').AsString='F' Then
    Begin
      DBEditCGCCPF.DataField   := SqlTemplate.FieldByName('ClienteCPF').FieldName;
      DBEditIERG.DataField     := SqlTemplate.FieldByName('ClienteRG').FieldName;
    End
  Else
    Begin
      DBEditCGCCPF.DataField   := SqlTemplate.FieldByName('ClienteCGC').FieldName;
      DBEditIERG.DataField     := SqlTemplate.FieldByName('ClienteIE').FieldName;
    End;

end;

procedure TFormCadastroPedidoVenda.ComboNumerarioVistaChange(
  Sender: TObject);
begin
  inherited;
  if ComboNumerarioVista.Value <> '' then
    begin
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        begin
          SQLParcelasPrazoVendaTemp.Edit;
          SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioVista.KeyValue;
          SQLParcelasPrazoVendaTempTIPOPADR.AsString  := SQLLocate('NUMERARIO','NUMEICOD','NUMEA5TIPO',ComboNumerarioVista.Value);
          SQLParcelasPrazoVendaTemp.Post;
        end
      else
        Informa('Não existem parcelas à vista para seleção de numerário !');  
      SQLParcelasPrazoVendaTemp.First;
    end;
end;

end.
