unit TelaMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, DB, DBTables, RxQuery, RXCtrls, Inifiles,
  StdCtrls, Buttons, ConerBtn, Mask, ToolEdit, CurrEdit, RDprint, RxLookup,
  dxGDIPlusClasses, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvSmoothPanel;

type
  TFormTelaMesa = class(TForm)
    dsSQLPrevendaContasReceber: TDataSource;
    SQLPrevendaContasReceber: TRxQuery;
    SQLPrevendaContasReceberPVCRICOD: TIntegerField;
    SQLPrevendaContasReceberTERMICOD: TIntegerField;
    SQLPrevendaContasReceberPRVDICOD: TIntegerField;
    SQLPrevendaContasReceberCLIEA13ID: TStringField;
    SQLPrevendaContasReceberNUMEICOD: TIntegerField;
    SQLPrevendaContasReceberPVCRN2VLR: TFloatField;
    SQLPrevendaContasReceberNumerarioDescri: TStringField;
    DSSQLPrevendaNumerario: TDataSource;
    SQLPrevendaNumerario: TRxQuery;
    SQLPrevendaNumerarioTERMICOD: TIntegerField;
    SQLPrevendaNumerarioPRVDICOD: TIntegerField;
    SQLPrevendaNumerarioNUMEICOD: TIntegerField;
    SQLPrevendaNumerarioPVNUN2VLR: TFloatField;
    SQLPrevendaNumerarioNumerarioDescri: TStringField;
    SQLPrevendaItem: TRxQuery;
    SQLPrevendaItemTERMICOD: TIntegerField;
    SQLPrevendaItemPRVDICOD: TIntegerField;
    SQLPrevendaItemPVITIPOS: TIntegerField;
    SQLPrevendaItemPRODICOD: TIntegerField;
    SQLPrevendaItemPVITN3QTD: TFloatField;
    SQLPrevendaItemPVITN3VLRUNIT: TFloatField;
    SQLPrevendaItemVENDICOD: TIntegerField;
    SQLPrevendaItemPVITCSTATUS: TStringField;
    SQLReimpPreVenda: TRxQuery;
    SQLReimpPreVendaTERMICOD: TIntegerField;
    SQLReimpPreVendaPRVDICOD: TIntegerField;
    SQLReimpPreVendaCONVICOD: TIntegerField;
    SQLReimpPreVendaCLIEA13ID: TStringField;
    SQLReimpPreVendaPLRCICOD: TIntegerField;
    SQLReimpPreVendaPRVDCMARCADO: TStringField;
    SQLReimpPreVendaPRVDN2TOTITENS: TFloatField;
    SQLReimpPreVendaVENDICOD: TIntegerField;
    SQLReimpPreVendaCLIEA60RAZAOSOC: TStringField;
    SQLReimpPreVendaPLRCA60DESCR: TStringField;
    SQLReimpPreVendaVENDA60NOME: TStringField;
    SQLReimpPreVendaTERMA60DESCR: TStringField;
    SQLReimpPreVendaPRVDN2ACRESC: TFloatField;
    SQLReimpPreVendaPRVDN2DESC: TFloatField;
    SQLImportarPrevendaSel: TRxQuery;
    SQLImportarPrevendaSelContador: TIntegerField;
    SQLImportarPrevendaSelTERMICOD: TIntegerField;
    SQLImportarPrevendaSelPRVDICOD: TIntegerField;
    SQLImportarPrevendaSelCLIEA13ID: TStringField;
    SQLImportarPrevendaSelClienteNome: TStringField;
    SQLImportarPrevendaSelPLRCICOD: TIntegerField;
    SQLImportarPrevendaSelPlanoNome: TStringField;
    SQLImportarPrevendaSelPRVDN2TOTITENS: TFloatField;
    SQLImportarPrevendaSelVENDICOD: TIntegerField;
    SQLImportarPrevendaSelTerminal: TStringField;
    SQLImportarPrevendaSelPRVDCMARCADO: TBooleanField;
    SQLImportarPrevendaSelClienteEnd: TStringField;
    SQLImportarPrevendaSelClienteCidade: TStringField;
    SQLImportarPrevendaSelClienteObs: TStringField;
    SQLImportarPrevendaSelValorDesconto: TCurrencyField;
    SQLImportarPrevendaSelClienteDocumento: TStringField;
    SQLImportarPrevendaSelCLIETOBS: TStringField;
    SQLImportarPrevendaSelPDVDDHVENDA: TStringField;
    SQLImportarPrevendaSelVendedor: TStringField;
    SQLImportarPrevendaSelCLDPICOD: TIntegerField;
    SQLImportarPrevendaSelORIGEMVENDA: TStringField;
    SQLImportarPrevendaSelMesaICod: TIntegerField;
    SQLImportarPrevendaSelContaICod: TIntegerField;
    TblTicketPreVenda: TTable;
    TblTicketPreVendaNomeEmpresa: TStringField;
    TblTicketPreVendaFoneEmpresa: TStringField;
    TblTicketPreVendaNumeroPreVenda: TStringField;
    TblTicketPreVendaNomeVendedor: TStringField;
    TblTicketPreVendaNomePlano: TStringField;
    TblTicketPreVendaCodigoCliente: TStringField;
    TblTicketPreVendaNomeCliente: TStringField;
    TblTicketPreVendaCodProd: TIntegerField;
    TblTicketPreVendaDescriProd: TStringField;
    TblTicketPreVendaMarcaProd: TStringField;
    TblTicketPreVendaRefProd: TStringField;
    TblTicketPreVendaQtdeProd: TFloatField;
    TblTicketPreVendaPrecoProd: TFloatField;
    TblTicketPreVendaTotalProd: TFloatField;
    TblTicketPreVendaTaxaCred: TFloatField;
    TblTicketPreVendaAcrescimo: TFloatField;
    TblTicketPreVendaDesconto: TFloatField;
    TblTicketPreVendaIDCupom: TStringField;
    DBGridItens: TDBGrid;
    btnF5: TConerBtn;
    btF3: TConerBtn;
    SQLNum: TRxQuery;
    SQLNumNUMEICOD: TIntegerField;
    SQLNumNUMEA30DESCR: TStringField;
    SQLNumNUMEA5TIPO: TStringField;
    dsSQLNumerario: TDataSource;
    EditValorPago: TCurrencyEdit;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TFloatField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    btF4: TConerBtn;
    TblMemPrevendaitem: TTable;
    TblMemPrevendaitemTERMICOD: TIntegerField;
    TblMemPrevendaitemPRVDICOD: TIntegerField;
    TblMemPrevendaitemPVITIPOS: TIntegerField;
    TblMemPrevendaitemPRODICOD: TIntegerField;
    TblMemPrevendaitemPVITN3QTD: TFloatField;
    TblMemPrevendaitemPVITN3VLRUNIT: TFloatField;
    TblMemPrevendaitemPVITCSTATUS: TStringField;
    DSMemPrevendaItem: TDataSource;
    TblMemPrevendaitemTotalItem: TFloatField;
    TblMemPrevendaitemVENDICOD: TIntegerField;
    btF7: TConerBtn;
    TblMemPrevendaitemMarcado: TBooleanField;
    TblMemPrevendaitemVendedor: TStringField;
    TblMemPrevendaitemMesaICod: TIntegerField;
    TblMemPrevendaitemContaICod: TIntegerField;
    rdpExtrato: TRDprint;
    RxLabel1: TRxLabel;
    BtReturn: TSpeedButton;
    BtBackSpace: TSpeedButton;
    BtVirgula: TSpeedButton;
    Bt0: TSpeedButton;
    Bt1: TSpeedButton;
    Bt3: TSpeedButton;
    Bt2: TSpeedButton;
    Bt6: TSpeedButton;
    Bt5: TSpeedButton;
    Bt4: TSpeedButton;
    Bt7: TSpeedButton;
    Bt8: TSpeedButton;
    Bt9: TSpeedButton;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    lbEmpresa: TRxLabel;
    ImgDesligar: TImage;
    EditTotal: TCurrencyEdit;
    RxLabel3: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    ListaParcelasVista: TDBGrid;
    ComboNumerario: TRxDBLookupCombo;
    SQLParcelasVistaVendaTempNumerarioLookup: TStringField;
    TblMemPrevendaitemDescricaoRed: TStringField;
    BtnTodos: TSpeedButton;
    BtnNenhum: TSpeedButton;
    extrato: TMemo;
    lbTaxaServ: TRxLabel;
    BtnRemoveServico: TConerBtn;
    EditDesconto: TCurrencyEdit;
    TblMemPrevendaitemValorServico: TFloatField;
    TblMemPrevendaitemBORDA01: TStringField;
    TblMemPrevendaitemBORDA02: TStringField;
    TblMemPrevendaitemBORDA03: TStringField;
    TblMemPrevendaitemSABOR01: TStringField;
    TblMemPrevendaitemSABOR02: TStringField;
    TblMemPrevendaitemSABOR03: TStringField;
    TblMemPrevendaitemSABOR04: TStringField;
    TblMemPrevendaitemSABOR05: TStringField;
    TblMemPrevendaitemSABOR06: TStringField;
    SQLPrevendaItemBORDA01: TStringField;
    SQLPrevendaItemBORDA02: TStringField;
    SQLPrevendaItemBORDA03: TStringField;
    SQLPrevendaItemSABOR01: TStringField;
    SQLPrevendaItemSABOR02: TStringField;
    SQLPrevendaItemSABOR03: TStringField;
    SQLPrevendaItemSABOR04: TStringField;
    SQLPrevendaItemSABOR05: TStringField;
    SQLPrevendaItemSABOR06: TStringField;
    SQLVendasCanceladas: TRxQuery;
    SQLVendasCanceladasID: TIntegerField;
    SQLVendasCanceladasEMPRICOD: TIntegerField;
    SQLVendasCanceladasTERMICOD: TIntegerField;
    SQLVendasCanceladasCUPOA13ID: TStringField;
    SQLVendasCanceladasPRVDICOD: TIntegerField;
    SQLVendasCanceladasMESAICOD: TIntegerField;
    SQLVendasCanceladasCONTAICOD: TIntegerField;
    SQLVendasCanceladasPRODICOD: TIntegerField;
    SQLVendasCanceladasREGISTRO: TDateTimeField;
    SQLVendasCanceladasCLIENTENOME: TStringField;
    SQLVendasCanceladasCLIENTEFONE: TStringField;
    SQLVendasCanceladasMOTIVO: TStringField;
    SQLVendasCanceladasUSUAICOD: TIntegerField;
    SQLVendasCanceladasVENDICOD: TIntegerField;
    SQLVendasCanceladasPRODUTO: TStringField;
    SQLVendasCanceladasTOTALITEM: TFloatField;
    procedure ImgDesligarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnF5Click(Sender: TObject);
    // Fecha Pedidos
    Function  GravaCupom:Boolean;
    Function  GravaCupomNumerario:Boolean;
    Function  GravaMovCaixa:Boolean;
    procedure btF4Click(Sender: TObject);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btF7Click(Sender: TObject);
    procedure DBGridItensCellClick(Column: TColumn);
    procedure DBGridItensColEnter(Sender: TObject);
    procedure DBGridItensColExit(Sender: TObject);
    procedure DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure DBGridItensDblClick(Sender: TObject);
    procedure EditValorPagoEnter(Sender: TObject);
    procedure value(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btF3Click(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt0Click(Sender: TObject);
    procedure BtVirgulaClick(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure BtReturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboNumerarioClick(Sender: TObject);
    procedure BtnRemoveServicoClick(Sender: TObject);
    procedure EditDescontoExit(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure ItemSaveBoolean(Grid : TDBGrid) ;
    procedure ImprimirPreVenda(Terminal, Numero : string) ;
  public
    { Public declarations }
    ExistePreVendaSelecionada, ExisteItemSelecionada, ErroGravando : Boolean;
    ValorServico, Troco : Double;
    RetornoCampoUsuario : String;
  end;

var
  FormTelaMesa: TFormTelaMesa;

implementation

uses DataModulo, ImportarPreVenda, TelaItens, UnitLibrary, UnitCheckoutLibrary,
  ECFCheckout, TelaTroco, TelaMotivoCancelamento;

{$R *.dfm}

procedure TFormTelaMesa.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaMesa.ImprimirPreVenda(Terminal, Numero : string) ;
begin
  if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value <> 'S') then
    begin
      ShowMessage('Este terminal não está configurado para imprimir pré-venda !') ;
      exit ;
    end ;

  if UsaTablet = 'S' then
    begin
      TblMemPreVendaItem.First;
      while not TblMemPreVendaItem.Eof do
        begin
          if TblMemPrevendaitemMarcado.Value then
            begin
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'Update Prevenda set PRVDCIMPRESSO=''R'' where TERMICOD=' + TblMemPreVendaItemTERMICOD.AsString +
                                                                                  ' and PRVDICOD=' + TblMemPreVendaItemPRVDICOD.AsString;
              dm.SQLTemplate.Prepare;
              try
                dm.SQLTemplate.ExecSQL;
              except
                ShowMessage('Nao foi Possivel trocar Status desse Pedido para Reimpressao!');
              end;
            end;
          TblMemPreVendaItem.next;    
        end;
    end
  else
    GravarTabelaTempImpPreVenda(Terminal,
                                Numero,
                                '',
                                DM.SQLPreVD,
                                DM.SQLPreVDIt) ;
end ;

procedure TFormTelaMesa.ItemSaveBoolean(Grid : TDBGrid) ;
begin
  TblMemPreVendaItem.Edit ;
  TblMemPrevendaitemMarcado.Value := not TblMemPrevendaitemMarcado.Value ;
  if TblMemPrevendaitemMarcado.Value then
    begin
      {Testa Tx.Servico maior que zero}
      if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
        ValorServico := tblMemPrevendaItemTotalItem.Value * 0.100
      else
        ValorServico    := 0;

      EditTotal.Value := EditTotal.Value + tblMemPrevendaItemTotalItem.Value + ValorServico;
    end
  else
    begin
      {Testa Tx.Servico maior que zero}
      if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
        ValorServico := tblMemPrevendaItemTotalItem.Value * 0.100
      else
        ValorServico := 0;
      EditTotal.Value := EditTotal.Value - tblMemPrevendaItemTotalItem.Value - ValorServico;
    end;
  TblMemPrevendaitemValorServico.value := ValorServico ;
  TblMemPreVendaItem.Post ;
end ;

procedure TFormTelaMesa.FormCreate(Sender: TObject);
var TotalCalc : Double;
var i : integer;
begin
  // Limpar tabelas temp Vista Financeiro da Venda
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  TotalCalc := 0 ;
  sqlnum.Open;
  ComboNumerario.KeyValue := SQLNumNUMEICOD.Value;

  try
    TblMemPrevendaItem.Close ;
    TblMemPrevendaItem.DeleteTable ;
    TblMemPrevendaItem.CreateTable ;
  except
    TblMemPrevendaItem.CreateTable ;
  end ;

  TblMemPrevendaitem.open;

  DM.SQLPreVenda.Close ;
  DM.SQLPreVenda.MacroByName('MFiltro').Value  := 'P.PRVDCIMPORT = "N" and P.PDVCPreConclu = "S"' ;
  if CodMesa > 0 then
    DM.SQLPreVenda.MacroByName('MFiltro2').Value := 'P.MESAICOD = ' + IntToStr(CodMesa)
  else
    DM.SQLPreVenda.MacroByName('MFiltro2').Value := '0=0';  // Mesa
  if CodConta > 0 then
    DM.SQLPreVenda.MacroByName('MFiltro3').Value := 'P.CONTAICOD = ' + IntToStr(CodConta)
  else
    DM.SQLPreVenda.MacroByName('MFiltro3').Value := '0=0';  // Comanda
  DM.SQLPreVenda.MacroByName('MFiltro4').Value := 'P.EMPRICOD = ' + dm.SQLTerminalAtivoEMPRICOD.AsString ;
  DM.SQLPreVenda.MacroByName('Ordem').Value    := 'Order by MESAICOD, CONTAICOD ASC';
  DM.SQLPreVenda.Open ;
  DM.SQLPreVenda.First ;
  while not DM.SQLPreVenda.EOF do
    begin
      // Carregar itens na temporaria itens
      SQLPrevendaItem.Close;
      SQLPrevendaItem.MacroByName('MFiltro').Value := 'PVITCSTATUS="A" and TERMICOD = ' + DM.SQLPreVendaTERMICOD.AsString + ' and PRVDICOD = ' + DM.SQLPreVendaPRVDICOD.AsString ;
      SQLPrevendaItem.Open;
      while not SQLPrevendaItem.eof do
        begin
          if SQLPrevendaItemPVITN3QTD.Value > 1 then
            begin
              i := 1;
              while i <= SQLPrevendaItemPVITN3QTD.AsInteger do
                begin
                  TblMemPrevendaitem.Append ;
                  TblMemPreVendaitemMesaICod.Value       := DM.SQLPreVendaMESAICOD.Value;
                  TblMemPreVendaitemContaICod.Value      := DM.SQLPreVendaCONTAICOD.Value;
                  TblMemPrevendaitemTERMICOD.Value       := SQLPrevendaItemTERMICOD.Value;
                  TblMemPrevendaitemPRVDICOD.Value       := SQLPrevendaItemPRVDICOD.Value;
                  TblMemPrevendaitemPVITIPOS.Value       := SQLPrevendaItemPVITIPOS.Value+1000;
                  TblMemPrevendaitemPRODICOD.Value       := SQLPrevendaItemPRODICOD.Value;
                  TblMemPrevendaitemDescricaoRed.Value   := SQLLocate('produto','prodicod','PRODA30ADESCRREDUZ',SQLPrevendaItemPRODICOD.AsString);
                  TblMemPrevendaitemPVITCSTATUS.Value    := SQLPrevendaItemPVITCSTATUS.Value;
                  TblMemPrevendaitemPVITN3VLRUNIT.Value  := SQLPrevendaItemPVITN3VLRUNIT.Value;
                  TblMemPrevendaitemVENDICOD.Value       := DM.SQLPreVendaVENDICOD.Value ;
                  TblMemPreVendaitemVendedor.Value       := DM.SQLPreVendaVENDA60NOME.Value;
                  TblMemPrevendaitemPVITN3QTD.Value      := 1;
                  TblMemPrevendaitemTotalItem.Value      := SQLPrevendaItemPVITN3VLRUNIT.Value;
                  TblMemPrevendaitemMarcado.Value        := True;
                  TblMemPrevendaitemBORDA01.Value        := SQLPrevendaItemBorda01.Value;
                  TblMemPrevendaitemBORDA02.Value        := SQLPrevendaItemBorda02.Value;
                  TblMemPrevendaitemBORDA03.Value        := SQLPrevendaItemBorda03.Value;
                  TblMemPrevendaitemSABOR01.Value        := SQLPrevendaItemSABOR01.Value;
                  TblMemPrevendaitemSABOR02.Value        := SQLPrevendaItemSABOR02.Value;
                  TblMemPrevendaitemSABOR03.Value        := SQLPrevendaItemSABOR03.Value;
                  TblMemPrevendaitemSABOR04.Value        := SQLPrevendaItemSABOR04.Value;
                  TblMemPrevendaitemSABOR05.Value        := SQLPrevendaItemSABOR05.Value;
                  TblMemPrevendaitemSABOR06.Value        := SQLPrevendaItemSABOR06.Value;

                  if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
                    TblMemPrevendaitemValorServico.value := tblMemPrevendaItemTotalItem.Value * 0.100
                  else
                    TblMemPrevendaitemValorServico.value := 0;

                  TblMemPrevendaitem.post;
                  TotalCalc := TotalCalc + TblMemPrevendaitemTotalItem.Value;
                  inc(i);
               end;
            end
          else
            begin
              TblMemPrevendaitem.Append ;
              TblMemPreVendaitemMesaICod.Value       := DM.SQLPreVendaMESAICOD.Value;
              TblMemPreVendaitemContaICod.Value      := DM.SQLPreVendaCONTAICOD.Value;
              TblMemPrevendaitemTERMICOD.Value       := SQLPrevendaItemTERMICOD.Value;
              TblMemPrevendaitemPRVDICOD.Value       := SQLPrevendaItemPRVDICOD.Value;
              TblMemPrevendaitemPVITIPOS.Value       := SQLPrevendaItemPVITIPOS.Value;
              TblMemPrevendaitemPRODICOD.Value       := SQLPrevendaItemPRODICOD.Value;
              TblMemPrevendaitemDescricaoRed.Value   := SQLLocate('produto','prodicod','PRODA30ADESCRREDUZ',SQLPrevendaItemPRODICOD.AsString);
              TblMemPrevendaitemPVITCSTATUS.Value    := SQLPrevendaItemPVITCSTATUS.Value;
              TblMemPrevendaitemPVITN3VLRUNIT.Value  := SQLPrevendaItemPVITN3VLRUNIT.Value;
              TblMemPrevendaitemVENDICOD.Value       := DM.SQLPrevendaVENDICOD.Value ;
              TblMemPrevendaitemPVITN3QTD.Value      := SQLPrevendaItemPVITN3QTD.Value;
              TblMemPrevendaitemTotalItem.Value      := SQLPrevendaItemPVITN3VLRUNIT.Value;
              TblMemPrevendaitemMarcado.Value        := True;
              TblMemPrevendaitemBORDA01.Value        := SQLPrevendaItemBorda01.Value;
              TblMemPrevendaitemBORDA02.Value        := SQLPrevendaItemBorda02.Value;
              TblMemPrevendaitemBORDA03.Value        := SQLPrevendaItemBorda03.Value;
              TblMemPrevendaitemSABOR01.Value        := SQLPrevendaItemSABOR01.Value;
              TblMemPrevendaitemSABOR02.Value        := SQLPrevendaItemSABOR02.Value;
              TblMemPrevendaitemSABOR03.Value        := SQLPrevendaItemSABOR03.Value;
              TblMemPrevendaitemSABOR04.Value        := SQLPrevendaItemSABOR04.Value;
              TblMemPrevendaitemSABOR05.Value        := SQLPrevendaItemSABOR05.Value;
              TblMemPrevendaitemSABOR06.Value        := SQLPrevendaItemSABOR06.Value;

              if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
                TblMemPrevendaitemValorServico.value := tblMemPrevendaItemTotalItem.Value * 0.100
              else
                TblMemPrevendaitemValorServico.value := 0;

              TblMemPrevendaitem.post;
              TotalCalc := TotalCalc + TblMemPrevendaitemTotalItem.Value;
            end;
          SQLPrevendaItem.next;
        end;

      DM.SQLPreVenda.Next;
    end ;

  EditTotal.Value := EditTotal.Value + TotalCalc;

  {Testa Tx.Servico maior que zero}
  if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
    begin
      lbTaxaServ.caption := lbTaxaServ.caption + formatfloat(' ##0.00 %',dm.SQLConfigRestCONFN2TAXASERV.Value);
      ValorServico    := EditTotal.Value * 0.100;
      EditTotal.Value := EditTotal.Value + ValorServico;
    end;
end;

procedure TFormTelaMesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblMemPreVendaitem.Close ;

  // Atualiza a Situacao da Mesa
  {Testa se a mesa tem algum pedido com valor em aberto}
  if CodMesa > 0 then
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.clear;
      dm.SQLTemplate.sql.add('Select Sum(PRVDN2TOTITENS) from prevenda where PRVDCIMPORT = "N" and PDVCPreConclu = "S"');
      dm.SQLTemplate.sql.add(' and MESAICOD = ' + IntToStr(CodMesa)) ;
      if CodConta > 0 then
        dm.SQLTemplate.sql.add(' and CONTAICOD = ' + IntToStr(CodConta)) ;
      dm.SQLTemplate.Open;
      if dm.SQLTemplate.fieldbyname('SUM').Value > 0 then
        begin
          dm.SQLMesaStatus.Edit;
          if dm.SQLMesaStatusMESACSTATUS.Value <> 'E' then
            dm.SQLMesaStatusMESACSTATUS.Value      := 'P';
          dm.SQLMesaStatusMESAN3VLRTOTAL.Value     := dm.SQLTemplate.fieldbyname('SUM').Value ;
          dm.SQLMesaStatus.Post;
        end
      else
        begin
          dm.SQLMesaStatus.Edit;
          dm.SQLMesaStatusMESACSTATUS.Value        := 'F';
          dm.SQLMesaStatusMESAN3VLRTOTAL.Value     :=  0 ;
          dm.SQLMesaStatusMESADABERTURA.AsString   := '' ;
          dm.SQLMesaStatusMESADFECHAMENTO.AsString := '' ;
          dm.SQLMesaStatusNOMECLIENTE.Value        := '' ;
          dm.SQLMesaStatus.Post;
        end;
    end;
  // Lista todas Mesas Atualizadas
  dm.SQLMesaStatus.Close;
  dm.SQLMesaStatus.MacroByName('MFiltro').Value  := 'MESACSTATUS<>"F"';
  dm.SQLMesaStatus.Open;

  Action := caFree ;
end;

procedure TFormTelaMesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);

  if Key = VK_Escape then
    begin
      NomeClienteVenda  := '';
      vImportarPrevenda := False;
      ContinuarPrevenda := False;
      VendedorVenda     := 0;
      Close ;
    end;
end;

procedure TFormTelaMesa.btnF5Click(Sender: TObject);
begin
  // Trocar Status da Venda para Reimprimir
  ImprimirPreVenda(TblMemPrevendaItemTERMICOD.AsString, TblMemPrevendaItemPRVDICOD.AsString) ;
  EditValorPago.SetFocus;
end;

Function TFormTelaMesa.GravaCupom:Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual)+' And EMPRICOD = ' + EmpresaPadrao;
  DM.SQLCupom.Open;

  DM.SQLCupom.Append;

  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;

  if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
    begin
      DM.SQLCupomOPESICOD.Value        := DM.SQLConfigVendaOPESICODCUPOM.Value;
      if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVendaOPESICODCUPOM.AsString],1) then
        begin
          if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
            DM.SQLCupomPLCTA15CODDEB.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
          if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
            DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
        end;
    end;

  DM.SQLCupomEMPRICOD.AsString          := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value             := TerminalAtual;
  DM.SQLCupomUSUAICODVENDA.Value        := dm.SQLUsuarioUSUAICOD.Value;
  DM.SQLCupomCUPODEMIS.Value            := Date;
  DM.SQLCupomCUPODQUITACAO.AsDateTime   := Date;
  DM.SQLCupomCUPOCSTATUS.Value          := 'A';
  DM.SQLCupomCUPON2TOTITENS.Value       := EditTotal.Value;
  DM.SQLCupomCUPON2TOTITENSRET.Value    := 0;
  DM.SQLCupomCUPON2ACRESC.Value         := 0;
  DM.SQLCupomCUPON2DESC.Value           := EditDesconto.value;
  DM.SQLCupomCUPON3CREDTAXA.Value       := ValorServico ;
  DM.SQLCupomCUPON2DESCITENS.Value      := 0;
  DM.SQLCupomCUPOINRO.AsString          := '000000' ;
  DM.SQLCupomCUPOCTIPOPADRAO.Value      := 'VISTA';
  DM.SQLCupomORIGEMVENDA.Value          := 'P';
  DM.SQLCupomCUPON2CONVTAXA.Value       := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value    := 0 ;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value    := 0 ;
  DM.SQLCupomCUPON2JUROATRAS.Value      := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value     := 0 ;
  DM.SQLCupomCUPON3BONUSTROCA.Value     := 0 ;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.asstring          := dm.SQLMesaStatusVENDICOD.asstring;
  DM.SQLCupomCLIEA13ID.Value            := dm.SQLTerminalAtivoCLIEA13ID.Value;
  DM.SQLCupomCLIENTENOME.Value          := 'CONSUMIDOR MESAS';
  try
    DM.SQLCupomMESAICOD.Value          := CodMesa;
  except
    application.ProcessMessages;
  end;

  if Troco > 0 then
    DM.SQLCupomTROCO.value := Troco
  else
    DM.SQLCupomTROCO.value := 0;

  DM.SQLCupomPENDENTE.Value             := 'S' ;
  DM.SQLCupomREGISTRO.Value             := Now ;
  try
    DM.SQLCupom.Post;
    ErroGravando := False;
    Application.ProcessMessages;
  except
    DM.SQLCupom.Cancel;
    ErroGravando := True;
    Application.ProcessMessages;
  end;
end;

Function TFormTelaMesa.GravaCupomNumerario:Boolean;
begin
 // Grava Numerario
 SQLParcelasVistaVendaTemp.first;
  while not SQLParcelasVistaVendaTemp.Eof do
    begin
      DM.SQLCupomNumerario.Close ;
      DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
      DM.SQLCupomNumerario.Open ;
      DM.SQLCupomNumerario.Append ;
      DM.SQLCupomNumerarioCUPOA13ID.Value   := DM.CodNextCupom ;
      DM.SQLCupomNumerarioCLIEA13ID.Value   := dm.SQLTerminalAtivoCLIEA13ID.Value ;
      DM.SQLCupomNumerarioNUMEICOD.Value    := SQLParcelasVistaVendaTempNUMEICOD.Value ;
      DM.SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
      if SQLParcelasVistaVendaTempTIPOPADR.Value = 'DIN' then
        DM.SQLCupomNumerarioCPNMN2VLR.Value := SQLParcelasVistaVendaTempVALORPARC.Value - Troco
      else
        DM.SQLCupomNumerarioCPNMN2VLR.Value := SQLParcelasVistaVendaTempVALORPARC.Value ;

      DM.SQLCupomNumerarioPENDENTE.Value    := 'S' ;
      DM.SQLCupomNumerarioREGISTRO.Value    := Now ;
      if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.Value = 'S' then
        DM.SQLCupomNumerarioCPNMCAUTENT.Value := 'S' ;

      // PLANO DE CONTAS
      if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
       begin
         if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
         begin
           DM.SQLCupomNumerarioPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
         end;
       end;
      TipoPadrao := DM.SQLTemplate.FieldByName('NUMEA5TIPO').AsString;

      try
        DM.SQLCupomNumerario.Post ;
        GravaCupomNumerario := True;
      except
        DM.SQLCupomNumerario.Cancel;
        GravaCupomNumerario := False;
      end ;
      SQLParcelasVistaVendaTemp.Next;
  end;
  SQLParcelasVistaVendaTemp.first;
end;

Function TFormTelaMesa.GravaMovCaixa:Boolean;
begin
  // Grava Mov.Caixa Operacao Caixa
  //TESTAR SE MOVIMENTO DO CAIXA PADRAO PARA TIPO VENDA EXISTE
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "VDVIS"') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.IsEmpty then
    begin
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           'Null',//WNUMEICOD
                           DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           DM.CodNextCupom,//WMVCIXA15DOCORIG
                           (EditTotal.Value-EditDesconto.Value),//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'Baixa Automatica ',//WMVCXA255HIST
                           'N',
                           '');
      // Grava Mov.Caixa Numerario
      SQLParcelasVistaVendaTemp.first;
      while not SQLParcelasVistaVendaTemp.eof do
        begin
          if SQLParcelasVistaVendaTempTIPOPADR.Value = 'DIN' then
            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                 DM.SQLTotalizar,
                                 EmpresaPadrao,//WEMPRICOD
                                 IntToStr(TerminalAtual),//WTERMICOD
                                 FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                 SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                                 'Null',//WOPCXICOD
                                 IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                 DM.CodNextCupom,//WMVCIXA15DOCORIG
                                 SQLParcelasVistaVendaTempVALORPARC.Value - Troco,//WMOVICAIXN2VLR
                                 0,//WMOVICAIXN2VLRJURO
                                 0,//WMOVICAIXN2VLRMULTA
                                 0,//WMOVICAIXN2VLRDEC
                                 'Null',//WMOVICAIXA6NUMCUPOM
                                 'C',//WTIPO
                                 'AVista:DINHEIRO/Quitacao Automatica',//WMVCXA255HIST
                                 'N',
                                 '')
          else
            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                 DM.SQLTotalizar,
                                 EmpresaPadrao,//WEMPRICOD
                                 IntToStr(TerminalAtual),//WTERMICOD
                                 FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                 SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                                 'Null',//WOPCXICOD
                                 IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                 DM.CodNextCupom,//WMVCIXA15DOCORIG
                                 SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                                 0,//WMOVICAIXN2VLRJURO
                                 0,//WMOVICAIXN2VLRMULTA
                                 0,//WMOVICAIXN2VLRDEC
                                 'Null',//WMOVICAIXA6NUMCUPOM
                                 'C',//WTIPO
                                 'AVista:DINHEIRO/Quitacao Automatica',//WMVCXA255HIST
                                 'N',
                                 '');
          SQLParcelasVistaVendaTemp.next;
        end;
    end;
end;

procedure TFormTelaMesa.btF4Click(Sender: TObject);
var TotalPedido, TotalItem : double;
var RetornoUser : TInfoRetornoUser;
var NomeClienteCanc, FoneClienteCanc, MotivoCanc : string;
begin
  {testa se usuario que entrou no sistema pode cancelar ou finalizar mesas}
  if dm.SQLUsuarioCANCMESA.Value <> 'S' then
    begin
      RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'CANCMESA',RetornoUser);
      if RetornoCampoUsuario <> 'S' then
        begin
          Showmessage('Usuario nao tem permissao para Cancelar Pedido!');
          Exit;
        end;
    end;

  Application.CreateForm(TFormTelaDadosCancelamento,FormTelaDadosCancelamento);
  FormTelaDadosCancelamento.ShowModal;
  if FormTelaDadosCancelamento.ModalResult = MrOk then
    begin
      NomeClienteCanc := FormTelaDadosCancelamento.EditClienteNomeMotivoCancelamento.Text;
      FoneClienteCanc := FormTelaDadosCancelamento.EditClienteFoneCancelamento.Text;
      MotivoCanc      := FormTelaDadosCancelamento.EditMotivoCancelamento.Text;
      FormTelaDadosCancelamento.close;
      FormTelaDadosCancelamento.free;
      TblMemPrevendaitem.First;
      while not TblMemPrevendaitem.Eof do
        begin
          if TblMemPrevendaitemMarcado.Value then
            begin
              TotalItem := TblMemPrevendaitemTotalItem.Value;
              {Grava na tabela VendasCanceladas}
              SQLVendasCanceladas.Close;
              SQLVendasCanceladas.Open;
              SQLVendasCanceladas.append;
              SQLVendasCanceladasEMPRICOD.Value    := dm.SQLEmpresaEMPRICOD.Value;
              SQLVendasCanceladasTERMICOD.Value    := dm.SQLTerminalAtivoTERMICOD.Value;
              SQLVendasCanceladasPRVDICOD.Value    := TblMemPrevendaitemPRVDICOD.Value;
              SQLVendasCanceladasREGISTRO.Value    := now;

              SQLVendasCanceladasVENDICOD.Value    := TblMemPrevendaitemVENDICOD.Value;
              if CodUsuarioAutorizouOperacao > 0 then
                SQLVendasCanceladasUSUAICOD.Value := CodUsuarioAutorizouOperacao
              else
                SQLVendasCanceladasUSUAICOD.Value := dm.SQLUsuarioUSUAICOD.value;

              SQLVendasCanceladasMESAICOD.Value    := TblMemPrevendaitemMesaICod.Value;
              SQLVendasCanceladasCONTAICOD.Value   := TblMemPrevendaitemContaICod.Value;

              SQLVendasCanceladasPRODICOD.Value    := TblMemPrevendaitemPRODICOD.Value;
              SQLVendasCanceladasPRODUTO.Value     := TblMemPrevendaitemDescricaoRed.Value;
              SQLVendasCanceladasTOTALITEM.Value   := TblMemPrevendaitemTotalItem.Value;

              SQLVendasCanceladasCLIENTENOME.Value := UpperCase(NomeClienteCanc);
              SQLVendasCanceladasCLIENTEFONE.Value := UpperCase(FoneClienteCanc);
              SQLVendasCanceladasMOTIVO.Value      := UpperCase(MotivoCanc);

              SQLVendasCanceladasID.Value          := SQLMax('vendascanceladas','ID','EMPRICOD = '+DM.SQLEmpresaEMPRICOD.AsString) ;
              SQLVendasCanceladas.post;
              SQLVendasCanceladas.close;

              {Apaga Item do pedido}
              if TblMemPreVendaItemPVITIPOS.Value < 1000 then
                begin
                  SQLPrevendaItem.Close;
                  SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaItemTERMICOD.AsString +
                                                                  ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString +
                                                                  ' and PVITIPOS = ' + TblMemPreVendaItemPVITIPOS.AsString +
                                                                  ' and PRODICOD = ' + TblMemPrevendaitemPRODICOD.AsString ;
                  SQLPrevendaItem.Open;
                  if not SQLPrevendaItem.IsEmpty then
                    SQLPrevendaItem.delete;
                end
              else
                begin
                  SQLPrevendaItem.Close;
                  SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaItemTERMICOD.AsString +
                                                                  ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString +
                                                                  ' and PRODICOD = ' + TblMemPrevendaitemPRODICOD.AsString ;
                  SQLPrevendaItem.Open;
                  if not SQLPrevendaItem.IsEmpty then
                    begin
                      SQLPrevendaItem.Edit;
                      SQLPrevendaItemPVITN3QTD.Value := SQLPrevendaItemPVITN3QTD.value - TblMemPrevendaitemPVITN3QTD.Value;
                      SQLPrevendaItem.Post;
                    end;
                  SQLPrevendaItem.Close;
                end;

              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'Update prevenda set PRVDN2TOTITENS = PRVDN2TOTITENS - '+TrocaVirgulaPorPonto(FloatToStr(TotalItem))+' where TERMICOD = ' + TblMemPreVendaItemTERMICOD.AsString + ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString;
              dm.SQLTemplate.Prepare;
              dm.SQLTemplate.ExecSQL;

              {Atualiza o Valor Total}
              EditTotal.Value := EditTotal.Value - TotalItem;

              {Testa Tx.Servico maior que zero}
              if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
                begin
                  ValorServico    := EditTotal.Value * 0.100;
                  EditTotal.Value := EditTotal.Value + ValorServico;
                end;
            end;
          TblMemPrevendaitem.Next;
        end;

      TblMemPrevendaitem.First;
      while not TblMemPrevendaitem.Eof do
        begin
          if TblMemPrevendaitemMarcado.Value then
            TblMemPrevendaitem.delete
          else
            TblMemPrevendaitem.Next;
        end;
    end;
  // Atualiza Edit com total da mesa
  TblMemPrevendaitem.First;
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.DBGridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE ) then
    begin
      if TblMemPrevendaitemMarcado.AsBoolean = True then
        ItemSaveBoolean(DBGridItens)
      else
        ItemSaveBoolean(DBGridItens);
    end;
  if (Key = VK_F3) then
    begin
      // Imprimir Extrato Consumo Cliente
      ImprimirPreVenda(TblMemPrevendaItemTERMICOD.AsString, TblMemPrevendaItemPRVDICOD.AsString) ;
      exit ;
    end ;
  if (Key = VK_F4) then
    begin
      // Cancela Item do Pedido
      btF4.Click;
    end ;
  if (Key = VK_F5) then
    begin
      // Trocar Status da Venda para Reimprimir
      ImprimirPreVenda(TblMemPrevendaItemTERMICOD.AsString, TblMemPrevendaItemPRVDICOD.AsString) ;
      exit ;
    end ;
  if (Key = VK_F7) then
    begin
      // Apagar Pedido selecionado
      btF7.Click;
    end ;
end;

procedure TFormTelaMesa.btF7Click(Sender: TObject);
begin
  //testa se usuario que entrou no sistema pode cancelar ou finalizar mesas
{  if dm.SQLUsuarioCANCMESA.Value <> 'S' then
    begin
      RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'CANCMESA',RetornoUser);
      if RetornoCampoUsuario <> 'S' then
        begin
          Showmessage('Usuario nao tem permissao para Cancelar Pedido!');
          Exit;
        end;
    end;

  TblMemPrevendaitem.First;
  while not TblMemPrevendaitem.Eof do
    begin
      if TblMemPrevendaitemMarcado.Value then
        begin
          CodTerm   := TblMemPrevendaitemTERMICOD.AsString ;
          CodPedido := TblMemPrevendaitemPRVDICOD.AsString ;

          // Cancela  pedido Cabecalho
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.clear;
          dm.SQLTemplate.sql.Text := 'update prevenda set PDVCPRECONCLU="C" where TERMICOD = ' + CodTerm + ' and PRVDICOD = ' + CodPedido;
          dm.SQLTemplate.Prepare;
          try
            dm.SQLTemplate.ExecSQL;
          except
            application.ProcessMessages;
          end;

          // Cancela  pedido item
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.clear;
          dm.SQLTemplate.sql.Text := 'update prevendaitem set PVITCSTATUS="C" where TERMICOD = ' + CodTerm + ' and PRVDICOD = ' + CodPedido;
          dm.SQLTemplate.Prepare;
          try
            dm.SQLTemplate.ExecSQL;
          except
            application.ProcessMessages;
          end;
        end;
      TblMemPrevendaitem.Next;
    end;
  Close ; }
end;

procedure TFormTelaMesa.DBGridItensCellClick(Column: TColumn);
begin
  if DBGridItens.SelectedField.DataType = ftBoolean then
    ItemSaveBoolean(DBGridItens) ;
end;

procedure TFormTelaMesa.DBGridItensColEnter(Sender: TObject);
begin
  if DBGridItens.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridItens.Options ;
      DBGridItens.Options := DBGridItens.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaMesa.DBGridItensColExit(Sender: TObject);
begin
  if DBGridItens.SelectedField.DataType = ftBoolean then
    DBGridItens.Options := OriginalOptions;
end;

procedure TFormTelaMesa.DBGridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridItens.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridItens.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaMesa.BtnTodosClick(Sender: TObject);
begin
  EditTotal.Value := 0;
  TblMemPrevendaitem.First;
  while not TblMemPrevendaitem.eof do
    begin
      TblMemPrevendaitem.Edit;
      TblMemPrevendaitemMarcado.Value := True ;
      TblMemPrevendaitem.Post;
      EditTotal.Value := EditTotal.Value + TblMemPrevendaitemTotalItem.Value ;
      TblMemPrevendaitem.Next;
    end;
  TblMemPrevendaitem.First;

  {Testa Tx.Servico maior que zero}
  if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
    begin
      ValorServico    := EditTotal.Value * 0.100;
      EditTotal.Value := EditTotal.Value + ValorServico;
    end
  else
    ValorServico :=0;  

  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.BtnNenhumClick(Sender: TObject);
begin
  TblMemPrevendaitem.First;
  while not TblMemPrevendaitem.eof do
    begin
      TblMemPrevendaitem.Edit;
      TblMemPrevendaitemMarcado.Value := False;
      TblMemPrevendaitem.Post;
      TblMemPrevendaitem.Next;
    end;
  TblMemPrevendaitem.First;
  EditTotal.Value     := 0;
  ValorServico        := 0;
  EditValorPago.Value := 0;
  EditDesconto.value  := 0;
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.DBGridItensDblClick(Sender: TObject);
begin
  if TblMemPrevendaitemMarcado.AsBoolean = True then
    ItemSaveBoolean(DBGridItens)
  else
    ItemSaveBoolean(DBGridItens);
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.EditValorPagoEnter(Sender: TObject);
begin
  EditValorPago.SelectAll;
end;

procedure TFormTelaMesa.value(Sender: TObject;
var Key: Word; Shift: TShiftState);
var ItemECF : integer;
var temItensPendentes : boolean;
var Inifile: TInifile;
var Linha, vCol : integer;
var ImpCaixa : String;
var Total, TotalPedido, TotalRecebido : Double;
var RetornoUser : TInfoRetornoUser;
begin
  if key = 13 then
    begin
      {testa se usuario que entrou no sistema pode cancelar ou finalizar mesas}
      if dm.SQLUsuarioCANCMESA.Value <> 'S' then
        begin
          RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'CANCMESA',RetornoUser);
          if RetornoCampoUsuario <> 'S' then
            begin
              Showmessage('Usuario nao tem permissao para Cancelar Pedido!');
              Exit;
            end;
        end;

      if ComboNumerario.KeyValue < 1 then
        begin
          ShowMessage('Escolha algum Numerario! Verifique!');
          ComboNumerario.Setfocus;
          Exit;
        end;
      if (EditValorPago.Value = 0) or (EditValorPago.Text = '') then
        begin
          ShowMessage('Escolha algum Valor de Pagamento! Verifique!');
          EditValorPago.SetFocus;
          Exit;
        end;

      {Atualizar Tabela Temp}
      SQLParcelasVistaVendaTemp.Close ;
      SQLParcelasVistaVendaTemp.SQL.Clear ;
      SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
      SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasVistaVendaTemp.SQL.Add('order by NROITEM') ;
      SQLParcelasVistaVendaTemp.Open ;

      {Somar o total ja lancado}
      TotalRecebido := 0;
      SQLParcelasVistaVendaTemp.First;
      while not SQLParcelasVistaVendaTemp.Eof do
        begin
          TotalRecebido := TotalRecebido + SQLParcelasVistaVendaTempVALORPARC.Value;
          SQLParcelasVistaVendaTemp.Next;
        end;
      SQLParcelasVistaVendaTemp.First;

      {Testar se ja tem o numerario na Tabela Temp, se Sim Soma saldo ao existente caso contrario insere o registro}
      SQLParcelasVistaVendaTemp.Close ;
      SQLParcelasVistaVendaTemp.SQL.Clear ;
      SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
      SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasVistaVendaTemp.SQL.Add(' and NUMEICOD = ' + IntToStr(ComboNumerario.KeyValue)) ;
      SQLParcelasVistaVendaTemp.Open ;
      if SQLParcelasVistaVendaTemp.IsEmpty then
        begin
          SQLParcelasVistaVendaTemp.Append ;
          SQLParcelasVistaVendaTempTERMICOD.Value  := TerminalAtual ;
          SQLParcelasVistaVendaTempNROITEM.Value   := ComboNumerario.KeyValue ;
          SQLParcelasVistaVendaTempNUMEICOD.Value  := ComboNumerario.KeyValue ;
          SQLParcelasVistaVendaTempVALORPARC.Value := EditValorPago.Value ;
          SQLParcelasVistaVendaTempTIPOPADR.Value  := SQLNumNUMEA5TIPO.Value ;
          SQLParcelasVistaVendaTemp.Post ;
        end
      else
        begin
          SQLParcelasVistaVendaTemp.Edit ;
          SQLParcelasVistaVendaTempVALORPARC.Value := SQLParcelasVistaVendaTempVALORPARC.Value + EditValorPago.Value ;
          SQLParcelasVistaVendaTemp.Post ;
        end;

      {Atualizar Tabela Temp}
      SQLParcelasVistaVendaTemp.Close ;
      SQLParcelasVistaVendaTemp.SQL.Clear ;
      SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
      SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasVistaVendaTemp.SQL.Add('order by NROITEM') ;
      SQLParcelasVistaVendaTemp.Open ;

      if ( (TotalRecebido+EditValorPago.Value) < (EditTotal.Value-EditDesconto.Value) ) then
        begin
          //ShowMessage('O Valor de Pagamento é Inferior ao Total Selecionado! Verifique!');
          EditValorPago.Value := (EditTotal.Value-EditDesconto.Value) - (TotalRecebido+EditValorPago.Value);
          ComboNumerario.SetFocus;
          Exit;
        end;

      Application.CreateForm(TFormTelaTroco,FormTelaTroco);
      Troco := (TotalRecebido+EditValorPago.Value) - (EditTotal.Value-EditDesconto.Value);
      FormTelaTroco.labeltroco.Caption :=  FormatFloat('R$ ##0.00',Troco);
      if Troco > 0 then
      begin
        FormTelaTroco.ShowModal;
        DM.TblTicketPreVendaCab.Close;
        DM.TblTicketPreVendaCab.Open;
        DM.TblTicketPreVendaCab.Edit;
        DM.TblTicketPreVendaCabTroco.Value := Troco;
        DM.TblTicketPreVendaCab.Post;
      end;


      // Gravar Cabecalho Cupom
      // ErroGravando := True;
      ErroGravando := False;
      GravaCupom;

      ItemECF:=0;
      TblMemPreVendaItem.first;
      while not TblMemPreVendaItem.eof do
        begin
          // Grava Item atual no banco oficial
          if TblMemPrevendaitemMarcado.Value then
            begin
              ItemECF := ItemECF+1;
              DM.SQLCupomItem.Close;
              DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
              DM.SQLCupomItem.Open;
              DM.SQLCupomItem.Append;
              DM.SQLCupomItemEMPRICOD.Value                := dm.SQLEmpresaEMPRICOD.Value;
              DM.SQLCupomItemCUPOA13ID.Value               := dm.CodNextCupom;
              DM.SQLCupomItemCPITIPOS.Value                := ItemECF;
              DM.SQLCupomItemPRODICOD.AsString             := TblMemPreVendaItemPRODICOD.AsString;
              DM.SQLCupomItemCPITCSTATUS.AsString          := 'A';
              DM.SQLCupomItemCPITN3QTD.Value               := TblMemPreVendaItemPVITN3QTD.Value;
              DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
              DM.SQLCupomItemCPITN3VLRUNIT.Value           := TblMemPreVendaItemPVITN3VLRUNIT.Value;
              DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value       := 0;
              DM.SQLCupomItemCPITN2DESC.Value              := 0;
              DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
              DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := 0;
              DM.SQLCupomItemVENDICOD.asstring             := dm.SQLMesaStatusVENDICOD.asstring;
              DM.SQLCupomItemCOITN2ICMSALIQ.Value          := 0;
              DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
              DM.SQLCupomItemPENDENTE.Value                := 'S';
              DM.SQLCupomItemREGISTRO.Value                := now;
              DM.SQLCupomItem.Post;
              Application.ProcessMessages;
              //----------------------------------------------------
              // Movto Estoque se tiver marcado a Opcao no cad.terminal
              if (DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value = 'S') then
                  GravaMovimentoEstoque(DM.SQLProduto,
                                        DM.SQLProdutoFilho,
                                        DM.SQLProdutoSaldo,
                                        dm.SQLCupomItemEMPRICOD.AsInteger,//Empresa
                                        dm.SQLCupomItemPRODICOD.AsInteger,//Produto
                                        DM.SQLConfigVendaOPESICODCUPOM.Value,//Operacao
                                        dm.SQLCupomItemCPITN3QTD.Value,//Quantidade
                                        'S',//ENTRADA/SAIDA
                                        FormatDateTime('mm/dd/yyyy', Now),
                                        DM.SQLCupomItemCPITN3VLRUNIT.AsString, //vlr venda bruto
                                        'CUPOM',//tabela
                                        DM.CodNextCupom,//id
                                        '');
            end;
          TblMemPreVendaItem.Next;
        end;

      // Tem q Abrir a tabela a Vista e Prazo pra nao dar erro na funcao FechaCupom
      SQLParcelasVistaVendaTemp.Close ;
      SQLParcelasVistaVendaTemp.SQL.Clear ;
      SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
      SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      SQLParcelasVistaVendaTemp.Open ;

      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
      SQLParcelasPrazoVendaTemp.Open;

      // Gravar venda no banco, movimento de caixa e numerario a vista
      GravaCupomNumerario;

      // Gravar o Mvto Caixa
      GravaMovCaixa;

      if FileExists('GAVETA.EXE') then WinExec(Pchar('GAVETA.EXE'),sw_Show);

      if Pergunta('NAO', 'IMPRIMIR COMPROVANTE CLIENTE') then
        begin
          if FileExists('ExtratoMesa.EXE') then WinExec(Pchar('ExtratoMesa.EXE'),sw_Show);
        end;

      // Apagar os itens cobrados na tabela prevendaitem
      TblMemPrevendaitem.First;
      while not TblMemPrevendaitem.eof do
        begin
          if TblMemPrevendaitemMarcado.Value then
            begin
              {Apaga Item do pedido}
              if TblMemPreVendaItemPVITIPOS.Value < 1000 then
                begin
                  SQLPrevendaItem.Close;
                  SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = '      + TblMemPreVendaItemTERMICOD.AsString +
                                                                  ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString +
                                                                  ' and PRODICOD = ' + TblMemPrevendaitemPRODICOD.AsString +
                                                                  ' and PVITIPOS = ' + TblMemPreVendaItemPVITIPOS.AsString ;
                  SQLPrevendaItem.Open;
                  if not SQLPrevendaItem.IsEmpty then
                    SQLPrevendaItem.Delete;
                  SQLPrevendaItem.Close;
                end
              else
                begin
                  SQLPrevendaItem.Close;
                  SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = '      + TblMemPreVendaItemTERMICOD.AsString +
                                                                  ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString +
                                                                  ' and PRODICOD = ' + TblMemPrevendaitemPRODICOD.AsString ;
                  SQLPrevendaItem.Open;
                  if not SQLPrevendaItem.IsEmpty then
                    begin
                      SQLPrevendaItem.Edit;
                      SQLPrevendaItemPVITN3QTD.Value := SQLPrevendaItemPVITN3QTD.value - TblMemPrevendaitemPVITN3QTD.Value;
                      SQLPrevendaItem.Post;
                    end;
                  SQLPrevendaItem.Close;
                end;

              {Atualiza Cabecalho do pedido}
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'select sum(PVITN3VLRUNIT*PVITN3QTD) from PrevendaItem where PVITCSTATUS="A" and TERMICOD = ' + TblMemPreVendaItemTERMICOD.AsString + ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString ;
              dm.SQLTemplate.Open;
              if dm.SQLTemplate.FieldByName('sum').Value > 0 then
                TotalPedido := dm.SQLTemplate.FieldByName('sum').Value
              else
                TotalPedido := 0;

              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'Update prevenda set PRVDN2TOTITENS = '+TrocaVirgulaPorPonto(FloatToStr(TotalPedido))+' where TERMICOD = ' + TblMemPreVendaItemTERMICOD.AsString + ' and PRVDICOD = ' + TblMemPreVendaItemPRVDICOD.AsString;
              dm.SQLTemplate.Prepare;
              dm.SQLTemplate.ExecSQL;

              // Tem q atualizar o Cabecalho caso o valor total seja zero, informar que a prevenda foi importada, para nao aparecer em nenhum lugar. Ex.F9
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'update prevenda set PRVDCIMPORT = "S" where PRVDN2TOTITENS = 0 and TERMICOD = ' + TblMemPrevendaitemTERMICOD.AsString +' and PRVDICOD = '+TblMemPreVendaItemPRVDICOD.AsString;
              dm.SQLTemplate.ExecSQL;
            end;
          TblMemPrevendaitem.next;
        end;

      { Apaga na Temporaria tambem }
      TblMemPrevendaitem.First;
      while not TblMemPrevendaitem.eof do
        begin
          if TblMemPrevendaitemMarcado.Value then
            TblMemPrevendaitem.Delete
          else
            TblMemPrevendaitem.next;
        end;

      {Zerar os Edit}
      EditTotal.Value     := 0;
      ValorServico        := 0;
      EditDesconto.Value  := 0;
      EditValorPago.Value := 0;

      {Apagar a tabela temporaria}
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;
      if (TipoPadrao = 'CRT') or (not FileExists('Confirma.txt')) then
        ImpCupomAutomatico := True;

      if TblMemPrevendaitem.IsEmpty then
        close;
    end;
end;

procedure TFormTelaMesa.btF3Click(Sender: TObject);
var lTotal : Double;
var str_linha : string;
begin
  if TblMemPrevendaitem.IsEmpty then
    begin
      ShowMessage('Não existe nada a ser impresso!');
      Abort;
      Exit;
    end;

  if (ECFAtual = '') or (copy(ECFAtual,1,4) = 'NFCE') then
    begin
      if FileExists('ExtratoMesa.EXE') then
        WinExec(Pchar('ExtratoMesa.EXE'),sw_Show);
    end
  else
    begin
      {Imp. Extrato Fiscal para o Cliente}
      AbreRelatorioGerencial(ECFAtual, PortaECFAtual);
      TblMemPrevendaitem.first;
      lTotal := 0;
      extrato.Lines.Clear;
      extrato.Lines.Add('------------------------------------------------');
      extrato.Lines.Add('      EXTRATO DE CONSUMO MESA => '+IntToStr(CodMesa));
      extrato.Lines.Add('------------------------------------------------');
      extrato.Lines.Add('QTD   DESCRICAO                        TOTAL    ');
      extrato.Lines.Add('------------------------------------------------');
      RelatorioGerencial(ECFAtual, PortaECFAtual, extrato.Lines.Text);
      while not TblMemPrevendaitem.eof do
        begin
          if TblMemPrevendaitemmarcado.Value then
            begin
              lTotal := lTotal + TblMemPrevendaitemTotalItem.Value;
              str_linha := (Preenche(TblMemPrevendaitemPVITN3QTD.AsString,'0',3,0)   + '  ' +
                            Preenche(TblMemPrevendaitemDescricaoRed.AsString,'',30,2)       +
                            Preenche(FormatFloat('##0.00',TblMemPrevendaitemTotalItem.Value),'',10,0)) ;
              RelatorioGerencial(ECFAtual, PortaECFAtual, str_linha);
            end;
          TblMemPrevendaitem.Next;
        end;
      extrato.Lines.Clear;
      extrato.Lines.Add('------------------------------------------------');
      extrato.Lines.Add('      TOTAL ITENS  R$ ' + FormatFloat('##0.00',lTotal));
      extrato.Lines.Add('      TX. SERVICO  R$ ' + FormatFloat('##0.00',(lTotal*0.100)));
      extrato.Lines.Add('      TOTAL GERAL  R$ ' + FormatFloat('##0.00',lTotal+(lTotal*0.100)));
      extrato.Lines.Add('------------------------------------------------');
      RelatorioGerencial(ECFAtual, PortaECFAtual, extrato.Lines.Text);
      FechamentoRelatorioGerencial(ECFAtual, PortaECFAtual);
    end;

  {Trocar Status Mesa para Em Pedido de Conta}
 { dm.SQLMesaStatus.Edit;
  dm.SQLMesaStatusMESACSTATUS.Value       := 'E';
  dm.SQLMesaStatus.Post;   }

  lTotal := 0;
  TblMemPrevendaitem.first;
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.Bt7Click(Sender: TObject);
begin
  keybd_event(55,55,0,0);
end;

procedure TFormTelaMesa.Bt8Click(Sender: TObject);
begin
  keybd_event(56,56,0,0);
end;

procedure TFormTelaMesa.Bt9Click(Sender: TObject);
begin
  keybd_event(57,57,0,0);
end;

procedure TFormTelaMesa.Bt4Click(Sender: TObject);
begin
  keybd_event(52,52,0,0);
end;

procedure TFormTelaMesa.Bt5Click(Sender: TObject);
begin
  keybd_event(53,53,0,0);
end;

procedure TFormTelaMesa.Bt6Click(Sender: TObject);
begin
  keybd_event(54,54,0,0);
end;

procedure TFormTelaMesa.Bt1Click(Sender: TObject);
begin
  keybd_event(49,49,0,0);
end;

procedure TFormTelaMesa.Bt2Click(Sender: TObject);
begin
  keybd_event(50,50,0,0);
end;

procedure TFormTelaMesa.Bt3Click(Sender: TObject);
begin
  keybd_event(51,51,0,0);
end;

procedure TFormTelaMesa.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaMesa.BtVirgulaClick(Sender: TObject);
begin
  keybd_event(188,188,0,0);
end;

procedure TFormTelaMesa.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaMesa.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaMesa.FormShow(Sender: TObject);
begin
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.ComboNumerarioClick(Sender: TObject);
begin
  EditValorPago.SetFocus;
end;

procedure TFormTelaMesa.BtnRemoveServicoClick(Sender: TObject);
begin
  {Reajusta o valor sem a tx servico}
  if dm.SQLConfigRestCONFN2TAXASERV.Value > 0 then
    begin
      if ValorServico > 0 then
        begin
          EditTotal.Value := EditTotal.Value - ValorServico;
          ValorServico := 0
        end
      else
        begin
          ValorServico    := EditTotal.Value * 0.100;
          EditTotal.Value := EditTotal.Value + ValorServico;
        end;
    end
  else
    ValorServico    := 0;
end;

procedure TFormTelaMesa.EditDescontoExit(Sender: TObject);
begin
  EditValorPago.Value := EditTotal.Value - EditDesconto.Value;
  EditValorPago.SetFocus;
end;

end.
