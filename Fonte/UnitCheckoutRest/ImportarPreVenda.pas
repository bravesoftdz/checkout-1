unit ImportarPreVenda;

interface

uses
  VarSYS, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  DBCtrls, DBCGrids, MemTable, RXCtrls, EWall, Mask, RxLookup, Buttons,
  ConerBtn, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImportarPreVenda = class(TForm)
    SQLCliente: TRxQuery;
    DSMemPrevenda: TDataSource;
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
    DBGridLista: TDBGrid;
    SQLPrevendaItem: TRxQuery;
    SQLPrevendaItemTERMICOD: TIntegerField;
    SQLPrevendaItemPRVDICOD: TIntegerField;
    SQLPrevendaItemPVITIPOS: TIntegerField;
    SQLPrevendaItemPRODICOD: TIntegerField;
    SQLPrevendaItemPVITN3QTD: TFloatField;
    SQLPrevendaItemPVITN3VLRUNIT: TFloatField;
    SQLPrevendaItemPVITN3VLRCUSTUNIT: TFloatField;
    SQLPrevendaItemPVITN2DESC: TFloatField;
    SQLPrevendaItemVENDICOD: TIntegerField;
    SQLPrevendaItemPVITN3VLRUNITLUCR: TFloatField;
    SQLPrevendaItemPVITCSTATUS: TStringField;
    SQLPrevendaItemPVITN2ICMSALIQ: TFloatField;
    SQLPrevendaItemPRODA60NROSERIE: TStringField;
    SQLPrevendaItemPVITN3QTDTROCA: TFloatField;
    DSSQLPrevendaItem: TDataSource;
    DBGrid1: TDBGrid;
    Label22: TLabel;
    LBTipoTerm: TLabel;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLPrevendaItemDescricaoRed: TStringField;
    SQLPrevendaNumerario: TRxQuery;
    SQLPrevendaNumerarioTERMICOD: TIntegerField;
    SQLPrevendaNumerarioPRVDICOD: TIntegerField;
    SQLPrevendaNumerarioNUMEICOD: TIntegerField;
    SQLPrevendaNumerarioPVNUN2VLR: TFloatField;
    DSSQLPrevendaNumerario: TDataSource;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLPrevendaNumerarioNumerarioDescri: TStringField;
    SQLPrevendaContasReceber: TRxQuery;
    SQLPrevendaContasReceberPVCRICOD: TIntegerField;
    SQLPrevendaContasReceberTERMICOD: TIntegerField;
    SQLPrevendaContasReceberPRVDICOD: TIntegerField;
    SQLPrevendaContasReceberCLIEA13ID: TStringField;
    SQLPrevendaContasReceberNUMEICOD: TIntegerField;
    SQLPrevendaContasReceberPVCRN2VLR: TFloatField;
    SQLPrevendaContasReceberNumerarioDescri: TStringField;
    dsSQLPrevendaContasReceber: TDataSource;
    TblMemPreVenda: TTable;
    TblMemPreVendaContador: TAutoIncField;
    TblMemPreVendaTERMICOD: TIntegerField;
    TblMemPreVendaPRVDICOD: TIntegerField;
    TblMemPreVendaCLIEA13ID: TStringField;
    TblMemPreVendaClienteNome: TStringField;
    TblMemPreVendaPLRCICOD: TIntegerField;
    TblMemPreVendaPlanoNome: TStringField;
    TblMemPreVendaPRVDN2TOTITENS: TFloatField;
    TblMemPreVendaVENDICOD: TIntegerField;
    TblMemPreVendaTerminal: TStringField;
    TblMemPreVendaPRVDCMARCADO: TBooleanField;
    TblMemPreVendaClienteEnd: TStringField;
    TblMemPreVendaClienteCidade: TStringField;
    TblMemPreVendaClienteObs: TStringField;
    TblMemPreVendaClienteTipoCliente: TStringField;
    TblMemPreVendaValorDesconto: TCurrencyField;
    TblMemPreVendaClienteDocumento: TStringField;
    TblMemPreVendaCLIETOBS: TStringField;
    TblMemPreVendaPDVDDHVENDA: TStringField;
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
    TblMemPreVendaVendedor: TStringField;
    SQLImportarPrevendaSelVendedor: TStringField;
    TblMemPreVendaCLDPICOD: TIntegerField;
    SQLImportarPrevendaSelCLDPICOD: TIntegerField;
    TblMemPreVendaORIGEMVENDA: TStringField;
    SQLImportarPrevendaSelORIGEMVENDA: TStringField;
    TblMemPreVendaMesaICod: TIntegerField;
    SQLImportarPrevendaSelMesaICod: TIntegerField;
    TblMemPreVendaContaICod: TIntegerField;
    SQLImportarPrevendaSelContaICod: TIntegerField;
    SQLPrevendaItemPVITTOBS: TStringField;
    TblMemPreVendaMTBYICOD: TIntegerField;
    TblMemPreVendaMotoBoyNome: TStringField;
    dsSQLMotoboy: TDataSource;
    SQLMotoboy: TRxQuery;
    SQLMotoboyMTBYICOD: TIntegerField;
    SQLMotoboyMTBYA30DESCR: TStringField;
    ComboMotoBoy: TRxDBLookupCombo;
    Label2: TLabel;
    BtnTransfMotoboy: TConerBtn;
    BTQuitarTELE: TConerBtn;
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
    dsSQLNumerario: TDataSource;
    ComboNumerario: TRxDBLookupCombo;
    Label3: TLabel;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNum: TRxQuery;
    SQLNumNUMEICOD: TIntegerField;
    SQLNumNUMEA30DESCR: TStringField;
    SQLNumNUMEA5TIPO: TStringField;
    TblMemPreVendaEMPRICOD: TIntegerField;
    TblMemPreVendaSequencial: TIntegerField;
    TblMemPreVendaTELETAXA: TCurrencyField;
    TblMemPreVendaClienteFone: TStringField;
    TblMemPreVendaClienteBairro: TStringField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    ImgDesligar: TImage;
    Label1: TLabel;
    EntradaDados: TEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSMemPrevendaDataChange(Sender: TObject; Field: TField);
    procedure BtnTransfMotoboyClick(Sender: TObject);
    procedure BTQuitarTELEClick(Sender: TObject);
    // Quitar Tele Entrega
    Function  GravaCupom:Boolean;
    Function  GravaCupomItem:Boolean;
    Function  GravaCupomNumerario:Boolean;
    Function  GravaMovCaixa:Boolean;
    procedure DBGridListaDblClick(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
  private
    MostraItens : Boolean;
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure ImprimirPreVenda(Terminal, Numero : string) ;
  public
    { Public declarations }
  ExistePreVendaSelecionada, ErroGravando : Boolean;
  end;

var
  FormTelaImportarPreVenda: TFormTelaImportarPreVenda;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo,
     UnitCheckoutLibrary, DataModuloTemplate, TelaMotivoCancelamento;

{$R *.DFM}

procedure TFormTelaImportarPreVenda.SaveBoolean(Grid : TDBGrid) ;
begin
  TblMemPreVenda.Edit ;
  TblMemPreVendaPRVDCMARCADO.Value := not TblMemPreVendaPRVDCMARCADO.Value ;
  TblMemPreVenda.Post ;
end ;

procedure TFormTelaImportarPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblMemPreVenda.Close ;
  Action := caFree ;
end;

procedure TFormTelaImportarPreVenda.FormCreate(Sender: TObject);
begin
  MostraItens := False;

  AtualizarPedidos := False;

  SQLMotoboy.Open;
  SQLNum.Open;

  try
    TblMemPrevenda.Close ;
    TblMemPrevenda.DeleteTable ;
    TblMemPrevenda.CreateTable ;
  except
    TblMemPrevenda.CreateTable ;
  end ;
  TblMemPrevenda.Open ;


  if vImportarPrevenda then
    begin
      DM.SQLPreVenda.Close ;
      DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and PDVCPreConclu = "S" and ORIGEMVENDA = "TELE"' ;
      DM.SQLPreVenda.MacroByName('MFiltro2').Value := '0=0';
      DM.SQLPreVenda.MacroByName('MFiltro3').Value := '0=0';
      DM.SQLPreVenda.MacroByName('MFiltro4').Value := '0=0';
      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by ' + dm.SQLConfigVendaCFVEA20ORDIMPVEND.Value;

      // MESAICOD, PRVDICOD
      DM.SQLPreVenda.Open ;
      DM.SQLPreVenda.First ;
      while not DM.SQLPreVenda.EOF do
      begin
        TblMemPrevenda.Append ;
        TblMemPrevendaTERMICOD.Value        := DM.SQLPreVendaTERMICOD.Value ;
        TblMemPrevendaPRVDICOD.Value        := DM.SQLPreVendaPRVDICOD.Value ;
        TblMemPrevendaCLIEA13ID.Value       := DM.SQLPreVendaCLIEA13ID.Value ;
        TblMemPreVendaCLDPICOD.AsVariant    := DM.SQLPreVendaCLDPICOD.AsVariant;
        TblMemPreVendaPDVDDHVENDA.AsString  := DM.SQLPreVendaPDVDDHVENDA.AsString ;
        TblMemPreVendaORIGEMVENDA.Value     := DM.SQLPreVendaORIGEMVENDA.Value ;
        TblMemPreVendaMesaICod.Value        := DM.SQLPreVendaMESAICOD.Value;
        TblMemPreVendaContaICod.Value       := DM.SQLPreVendaCONTAICOD.Value;
        TblMemPreVendaSequencial.Value      := DM.SQLPreVendaSEQUENCIAL.Value;
        TblMemPreVendaMTBYICOD.AsString     := DM.SQLPreVendaMTBYICOD.AsString;
        if DM.SQLPreVendaMTBYICOD.AsString <> '' then
          TblMemPreVendaMotoBoyNome.Value     := DM.SQLLocate('MotoBoy','MTBYICOD','MTBYA30DESCR',DM.SQLPreVendaMTBYICOD.AsString);

        if DM.SQLPreVendaCLIENTENOME.Value <> '' then
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIENTENOME.Value
        else
          TblMemPrevendaClienteNome.Value    := DM.SQLPreVendaCLIEA60RAZAOSOC.Value ;

        if DM.SQLPreVendaCLIENTEFONE.Value <> '' then
          TblMemPreVendaClienteFone.Value    := DM.SQLPreVendaCLIENTEFONE.Value
        else
          TblMemPreVendaClienteFone.Value    := DM.SQLPreVendaCLIEA15FONE1.Value ;

        if DM.SQLPreVendaCLIENTEENDE.Value <> '' then
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIENTEENDE.Value
        else
          TblMemPreVendaClienteEnd.Value     := DM.SQLPreVendaCLIEA60ENDRES.Value;

        if dm.SQLPreVendaCLIENTECIDA.Value <> '' then
          TblMemPreVendaClienteCidade.Value  := dm.SQLPreVendaCLIENTECIDA.Value
        else
          TblMemPreVendaClienteCidade.Value  := DM.SQLPreVendaCLIEA60CIDRES.Value;

        if dm.SQLPreVendaCLIENTEOBS.Value <> '' then
          TblMemPreVendaClienteObs.Value     := dm.SQLPreVendaCLIENTEOBS.Value;
        if DM.SQLPreVendaCLIETOBS1.Value <> '' then
          TblMemPreVendaCLIETOBS.Value     := DM.SQLPreVendaCLIETOBS1.Value;
        if DM.SQLPreVendaCLIENTECNPJ.Value <> '' then
          TblMemPreVendaClienteDocumento.Value   := DM.SQLPreVendaCLIENTECNPJ.Value;

        TblMemPrevendaVENDICOD.Value          := DM.SQLPreVendaVENDICOD.Value ;
        TblMemPreVendaVendedor.Value          := DM.SQLPreVendaVENDA60NOME.Value;
        TblMemPrevendaPlanoNome.Value         := DM.SQLPreVendaPLRCA60DESCR.Value ;
        TblMemPrevendaPLRCICOD.Value          := DM.SQLPreVendaPLRCICOD.Value ;
        TblMemPrevendaPRVDN2TOTITENS.Value    := DM.SQLPreVendaPRVDN2TOTITENS.Value ;
        TblMemPrevendaTELETAXA.Value          := DM.SQLPreVendaPRVDN2CONVTAXA.Value ;
        TblMemPreVendaValorDesconto.AsString  := DM.SQLPreVendaPRVDN2DESC.AsString ;
     //   TblMemPreVendaTerminal.Value          := DM.SQLPreVendaTERMA60DESCR.Value ;
        TblMemPrevendaPRVDCMARCADO.Value      := False ;
        TblMemPrevenda.Post ;

        DM.SQLPreVenda.Next;
      end ;
    end ;

  if ContinuarPrevenda then
    begin
      DM.SQLPreVenda.Close ;
      if NomeClienteVenda = '' then
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and P.MESAICOD = ' + IntToStr(CodMesa)
      else
        DM.SQLPreVenda.MacroByName('MFiltro').Value := 'PRVDCIMPORT = "N" and P.MESAICOD = ' + IntToStr(CodMesa) +
                                                       ' and CLIENTENOME Like "%'+NomeClienteVenda+'%"';

      DM.SQLPreVenda.MacroByName('MFiltro2').Value := '0=0';

      DM.SQLPreVenda.MacroByName('Ordem').Value   := 'Order by ' + dm.SQLConfigVendaCFVEA20ORDIMPVEND.Value ;
      DM.SQLPreVenda.Open ;

      DM.SQLPreVenda.First ;
      while not DM.SQLPreVenda.EOF do
      begin
        TblMemPrevenda.Append ;
        TblMemPrevendaTERMICOD.Value    := DM.SQLPreVendaTERMICOD.Value ;
        TblMemPrevendaPRVDICOD.Value    := DM.SQLPreVendaPRVDICOD.Value ;
        TblMemPrevendaCLIEA13ID.Value   := DM.SQLPreVendaCLIEA13ID.Value ;
        TblMemPreVendaCLDPICOD.AsVariant   := DM.SQLPreVendaCLDPICOD.AsVariant;
        TblMemPreVendaPDVDDHVENDA.AsString := FormatDateTime('dd/mm/yyyy hh:mm:ss',DM.SQLPreVendaPDVDDHVENDA.Value) ;
        TblMemPreVendaORIGEMVENDA.Value := DM.SQLPreVendaORIGEMVENDA.Value ;
        TblMemPreVendaMesaICod.Value    := DM.SQLPreVendaMESAICOD.Value;
        TblMemPreVendaContaICod.Value   := DM.SQLPreVendaCONTAICOD.Value;
        TblMemPreVendaMTBYICOD.AsString     := DM.SQLPreVendaMTBYICOD.AsString;
        if DM.SQLPreVendaMTBYICOD.AsString <> '' then
          TblMemPreVendaMotoBoyNome.Value     := DM.SQLLocate('MotoBoy','MTBYICOD','MTBYA30DESCR',DM.SQLPreVendaMTBYICOD.AsString);

        if DM.SQLPreVendaCLIENTENOME.Value <> ''  then
          TblMemPrevendaClienteNome.Value := DM.SQLPreVendaCLIENTENOME.Value
        else
          TblMemPrevendaClienteNome.Value := DM.SQLPreVendaCLIEA60RAZAOSOC.Value ;
        TblMemPrevendaVENDICOD.Value := DM.SQLPreVendaVENDICOD.Value ;
        TblMemPreVendaVendedor.Value := DM.SQLPreVendaVENDA60NOME.Value;
        TblMemPrevendaPlanoNome.Value := DM.SQLPreVendaPLRCA60DESCR.Value ;
        TblMemPrevendaPLRCICOD.Value := DM.SQLPreVendaPLRCICOD.Value ;
        TblMemPrevendaPRVDN2TOTITENS.Value := DM.SQLPreVendaPRVDN2TOTITENS.Value ;
        TblMemPreVendaValorDesconto.AsString := DM.SQLPreVendaPRVDN2DESC.AsString ;
    //    TblMemPreVendaTerminal.Value := DM.SQLPreVendaTERMA60DESCR.Value ;
        TblMemPrevendaPRVDCMARCADO.Value := False ;

        if DM.SQLPreVendaCLIENTEENDE.Value <> '' then
          TblMemPreVendaClienteEnd.Value := DM.SQLPreVendaCLIENTEENDE.Value
        else
          TblMemPreVendaClienteEnd.Value := DM.SQLPreVendaCLIEA60ENDRES.Value;

        if dm.SQLPreVendaCLIENTECIDA.Value <> '' then
          TblMemPreVendaClienteCidade.Value := dm.SQLPreVendaCLIENTECIDA.Value
        else
          TblMemPreVendaClienteCidade.Value := DM.SQLPreVendaCLIEA60CIDRES.Value;

        if dm.SQLPreVendaCLIENTEOBS.Value <> '' then
          TblMemPreVendaClienteObs.Value := dm.SQLPreVendaCLIENTEOBS.Value;

        if DM.SQLPreVendaCLIETOBS1.Value <> '' then
          TblMemPreVendaCLIETOBS.Value := DM.SQLPreVendaCLIETOBS1.Value;

        if DM.SQLPreVendaCLIENTECNPJ.Value <> '' then
          TblMemPreVendaClienteDocumento.Value := DM.SQLPreVendaCLIENTECNPJ.Value;

        TblMemPrevenda.Post ;

        DM.SQLPreVenda.Next;
      end ;
    end;

  MostraItens := True;

  TblMemPrevenda.First ;
  DM.SQLPreVenda.First ;

  if DM.SQLConfigVendaCFVECIMPPREVDCOD.Value = 'S' then
    EntradaDados.Visible := True
  else
    EntradaDados.Visible := False ;

  if ECFAtual = '' then
    LBTipoTerm.Visible := True
  else
    LBTipoTerm.Visible := False;
end;

procedure TFormTelaImportarPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Escape then
    begin
      NomeClienteVenda  := '';
      vImportarPrevenda := False;
      ContinuarPrevenda := False;
      VendedorVenda     := 0;
      Close ;
    end;
end;

procedure TFormTelaImportarPreVenda.ImprimirPreVenda(Terminal, Numero : string) ;
begin
  if (DM.SQLTerminalAtivoTERMCIMPPREVENDA.Value <> 'S') then
    begin
      Informa('Este terminal não está configurado para imprimir pré-venda !') ;
      exit ;
    end ;
  GravarTabelaTempImpPreVenda(Terminal,
                              Numero,
                              '',
                              DM.SQLPreVD,
                              DM.SQLPreVDIt) ;
end ;


procedure TFormTelaImportarPreVenda.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  InfoRetornoUser : TInfoRetornoUser;
  NomeClienteCanc, FoneClienteCanc, MotivoCanc : string;
begin
  if (Key = VK_SPACE ) then
    begin
      if TblMemPreVendaPRVDCMARCADO.AsBoolean = True then
        begin
          ExistePreVendaSelecionada := False;
          SaveBoolean(DBGridLista);
        end
      else
        begin
          ExistePreVendaSelecionada := True;
          SaveBoolean(DBGridLista);
        end;
    end;

  if (Key = VK_F5) then
  begin
    ImprimirPreVenda(TblMemPrevendaTERMICOD.AsString, TblMemPrevendaPRVDICOD.AsString) ;
    exit ;
  end ;

  if (Key = VK_F6) then
    begin
      if AutenticaUsuario(UsuarioAtualNome,'USUACCANCPREVENDA',InfoRetornoUser) = 'S' then
        begin
          if not Pergunta('Sim', '* * * CONFIRMA A DESATIVAÇÃO DESTA PRÉ-VENDA ? * * *') then
           exit ;
        end
      else
        begin
          Informa('Você não tem permissão para desativar uma pré-venda !');
          Exit;
        end;

      TblMemPreVenda.First;
      while not TblMemPreVenda.Eof do
        begin
          if TblMemPreVendaPRVDCMARCADO.Value then
            begin
              Application.CreateForm(TFormTelaDadosCancelamento,FormTelaDadosCancelamento);
              FormTelaDadosCancelamento.ShowModal;
              if FormTelaDadosCancelamento.ModalResult = MrOk then
                begin
                  NomeClienteCanc := FormTelaDadosCancelamento.EditClienteNomeMotivoCancelamento.Text;
                  FoneClienteCanc := FormTelaDadosCancelamento.EditClienteFoneCancelamento.Text;
                  MotivoCanc      := FormTelaDadosCancelamento.EditMotivoCancelamento.Text;
                  FormTelaDadosCancelamento.close;
                  FormTelaDadosCancelamento.free;

                  {Grava na tabela VendasCanceladas}
                  SQLVendasCanceladas.Close;
                  SQLVendasCanceladas.Open;
                  SQLVendasCanceladas.append;
                  SQLVendasCanceladasEMPRICOD.Value    := dm.SQLEmpresaEMPRICOD.Value;
                  SQLVendasCanceladasTERMICOD.Value    := dm.SQLTerminalAtivoTERMICOD.Value;
                  SQLVendasCanceladasPRVDICOD.Value    := TblMemPrevendaPRVDICOD.Value;
                  SQLVendasCanceladasREGISTRO.Value    := now;

                  SQLVendasCanceladasVENDICOD.AsString  := TblMemPreVendaVENDICOD.AsString;
                  SQLVendasCanceladasUSUAICOD.Value     := dm.SQLUsuarioUSUAICOD.value;

                  SQLVendasCanceladasPRODUTO.Value     := 'Venda Tele';
                  SQLVendasCanceladasTOTALITEM.Value   := TblMemPreVendaPRVDN2TOTITENS.Value;

                  SQLVendasCanceladasCLIENTENOME.Value := UpperCase(NomeClienteCanc);
                  SQLVendasCanceladasCLIENTEFONE.Value := UpperCase(FoneClienteCanc);
                  SQLVendasCanceladasMOTIVO.Value      := UpperCase(MotivoCanc);

                  SQLVendasCanceladasID.Value          := SQLMax('vendascanceladas','ID','EMPRICOD = '+DM.SQLEmpresaEMPRICOD.AsString) ;
                  SQLVendasCanceladas.post;
                  SQLVendasCanceladas.close;
                end;

              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('update PREVENDA') ;
              DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "D"') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + TblMemPrevendaTERMICOD.AsString) ;
              DM.SQLTemplate.SQL.Add('and   PRVDICOD = ' + TblMemPrevendaPRVDICOD.AsString) ;
              DM.SQLTemplate.ExecSQL ;

              TblMemPreVenda.Delete ;
              TblMemPreVenda.Prior ;
            end;
          TblMemPreVenda.Next;
        end;

      Informa('Pré-vendas desativadas com sucesso!') ;
      exit ;
    end ;

  if Key = VK_Return then
    begin
      if ReativarPreVenda then
        begin
          if not Pergunta('Sim', '* * * CONFIRMA A REATIVAÇÃO DESTA(S) PRÉ-VENDA(S) ? * * *') then
            exit ;

          TblMemPrevenda.First ;
          while not TblMemPrevenda.EOF do
            begin
              if TblMemPrevendaPRVDCMARCADO.Value then
                begin
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('Update PREVENDA') ;
                  DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "N"') ;
                  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + TblMemPrevendaTERMICOD.AsString) ;
                  DM.SQLTemplate.SQL.Add('and   PRVDICOD = ' + TblMemPrevendaPRVDICOD.AsString) ;
                  DM.SQLTemplate.ExecSQL ;
                end ;

              TblMemPrevenda.Next ;
            end ;
        end
      else
        begin
          if (ExistePreVendaSelecionada) or (Dm.SQLConfigVendaCFVECIMPPREVDCOD.AsString = 'S') then
            begin
              if not Pergunta('Sim', '* * * CONFIRMA A IMPORTAÇÃO DESTE(S) ATENDIMENTO(S) ? * * *') then
                exit;

              SQLPrevendaItem.Close;
              SQLPrevendaNumerario.Close;
              SQLPrevendaContasReceber.Close;
              SQLNumerario.Close;
              SQLProduto.Close;
              SQLCliente.Close;

              ImportandoPreVenda := True;
              TblMemPrevenda.Close ;
              SQLImportarPrevendaSel.Close;
              SQLImportarPrevendaSel.Open;
              FormTelaImportarPreVenda.Hide ;
              FormTelaItens.Refresh ;
              PedidosImportados := '' ;
              ValorDescontoASerImportado := 0;
              DM.MemPedidosImportados.Open;
              While Not SQLImportarPrevendaSel.EOF Do
                Begin
                  If SQLImportarPrevendaSelPRVDCMARCADO.Value Then
                    Begin
                      if ContinuarPrevenda then
                        begin
                          CodMesa   := SQLImportarPrevendaSelMesaICod.Value;
                          CodConta  := SQLImportarPrevendaSelContaICOD.Value;
                        end;
                      if vImportarPrevenda then
                        begin
                          If FormTelaItens.EstadoPDVChk = 'AguardandoNovaVenda' Then
                            FormTelaItens.FormKeyDown(Sender, F2, [ssAlt]);

                          TermPVImp := SQLImportarPrevendaSelTERMICOD.Value ;
                          CodPVImp  := SQLImportarPrevendaSelPRVDICOD.Value ;

                          ValorDescontoASerImportado := ValorDescontoASerImportado + SQLImportarPrevendaSelValorDesconto.Value;

                          DM.SQLPreVendaItem1.Close ;
                          DM.SQLPreVendaItem1.MacroByName('MFiltro').Value := 'TERMICOD = ' + SQLImportarPrevendaSelTERMICOD.AsString + ' and ' +
                                                                              'PRVDICOD = ' + SQLImportarPrevendaSelPRVDICOD.AsString ;
                          DM.SQLPreVendaItem1.Open;
                          //INCLUINDO OS ITENS DA PRE-VENDA
                          DM.SQLPreVendaItem1.First;
                          While Not DM.SQLPreVendaItem1.EOF Do
                            Begin
                              FormTelaItens.TrocandoItens         := False ;
                              FormTelaItens.EstadoPDVChk          := 'InformandoItens';
                              FormTelaItens.EditQtde.Value        := DM.SQLPreVendaItem1PVITN3QTD.Value;
                              FormTelaItens.ValorItem             := DM.SQLPreVendaItem1PVITN3VLRUNIT.Value;
                              FormTelaItens.DescItemVlr           := DM.SQLPreVendaItem1PVITN2DESC.Value;
                              FormTelaItens.VendPreVenda          := DM.SQLPreVendaItem1VENDICOD.Value;
                              FormTelaItens.NroSerieProduto       := DM.SQLPreVendaItem1PRODA60NROSERIE.AsString;

                              FormTelaItens.EntradaDados.Text     := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',DM.SQLPreVendaItem1PRODICOD.AsString);
                              if FormTelaItens.EntradaDados.Text = '' then
                                DM.SQLPreVendaItem1PRODICOD.AsString;
                              FormTelaItens.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                              DM.SQLPreVendaItem1.Next;
                            end;
                          // Preparando pra Finalizar a Venda
                          FormTelaItens.EstadoPDVChk  := 'InformandoItens';
                          VendedorVenda               := SQLImportarPrevendaSelVENDICOD.Value;
                          ClienteVenda                := SQLImportarPrevendaSelCLIEA13ID.Value;
                          NomeClienteVenda            := SQLImportarPrevendaSelClienteNome.Value;
                          EnderecoClienteVenda        := SQLImportarPrevendaSelClienteEnd.Value;
                          CidadeClienteVenda          := SQLImportarPrevendaSelClienteCidade.Value;
                          DocumentoClienteVenda       := SQLImportarPrevendaSelClienteDocumento.Value;
                          ClienteDependente           := SQLImportarPrevendaSelCLDPICOD.AsString;
                          ObsCupom                    := SQLImportarPrevendaSelClienteObs.Value;
                          OrigemVenda                 := SQLImportarPrevendaSelORIGEMVENDA.Value;
                          CodMesa                     := SQLImportarPrevendaSelMesaICod.Value;
                          CodConta                    := SQLImportarPrevendaSelContaICOD.Value;

                          if SQLImportarPrevendaSelClienteObs.Value <> '' then
                            OBSImpressaoCupom  := SQLImportarPrevendaSelClienteObs.Value;

                          PlanoVenda := SQLImportarPrevendaSelPLRCICOD.Value;

                          // Mostrar dados do Atendimento Atual
                         { FormTelaItens.EditAtendente.Text    := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',IntToStr(VendedorVenda));}
                          FormTelaItens.EditContaCodigo.Text  := IntToStr(CodConta);
                          FormTelaItens.EditNomeCli.Text      := NomeClienteVenda;
                          FormTelaItens.Update;
                          FormTelaItens.Update;
                          FormTelaItens.Update;


                          dm.MemPedidosImportados.Append;
                          dm.MemPedidosImportadosTERMICOD.Value := SQLImportarPrevendaSelTERMICOD.Value;
                          dm.MemPedidosImportadosPRVDICOD.Value := SQLImportarPrevendaSelPRVDICOD.value;
                          dm.MemPedidosImportados.Post;
                        {  if PedidosImportados = '' then
                            PedidosImportados := (SQLImportarPrevendaSelTERMICOD.AsString + '-' + FormatFloat('000000', SQLImportarPrevendaSelPRVDICOD.AsFloat))
                          else
                            PedidosImportados := PedidosImportados + ',' + (SQLImportarPrevendaSelTERMICOD.AsString + '-' + FormatFloat('000000', SQLImportarPrevendaSelPRVDICOD.AsFloat)) ; }
                        end ;
                    end;
                  SQLImportarPrevendaSel.Next ;
                end ;
              //APÓS INCLUIR OS ITENS
              // ImportandoPreVenda := False;
              if vImportarPrevenda then
               // FormTelaItens.FormKeyDown(Sender, F3, [ssAlt]);
            end
          else
            begin
              Informa('Nenhum Atendimento foi selecionado para importação! Operação Cancelada!') ;
              Abort;
            end;
        end ;
      Close ;
    end ;
end;

procedure TFormTelaImportarPreVenda.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaImportarPreVenda.DBGridListaColExit(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaImportarPreVenda.DBGridListaColEnter(Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaImportarPreVenda.DBGridListaCellClick(Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaImportarPreVenda.EntradaDadosKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
  if key =  VK_Return then
    begin
      TblMemPreVenda.DisableControls ;
      TblMemPreVenda.First ;
      while not TblMemPreVenda.Eof do
        begin
          if (TblMemPreVendaTERMICOD.AsString = Copy(EntradaDados.Text, 1, Pos('.', EntradaDados.Text)-1)) and
             (TblMemPreVendaPRVDICOD.AsString = Copy(EntradaDados.Text, Pos('.', EntradaDados.Text)+1, Length(EntradaDados.Text))) then
            begin
              TblMemPreVenda.Edit ;
              TblMemPreVendaPRVDCMARCADO.Value := True ;
              TblMemPreVenda.Post ;
              Break ;
            end ;

          TblMemPreVenda.Next ;
        end ;

      TblMemPreVenda.EnableControls ;

      DBGridListaKeyDown(Sender, Enter, [ssAlt]);
    end ;

{  if key =  VK_Return then
    begin
      if TblMemPreVenda.Locate('ClienteNome',EntradaDados.Text,[]) then
        begin
          DBGridLista.SetFocus;
          Showmessage('Achou!');
        end;
    end; }
end;

procedure TFormTelaImportarPreVenda.DSMemPrevendaDataChange(
  Sender: TObject; Field: TField);
begin
  if (TblMemPreVendaPRVDICOD.AsString <> '') and (TblMemPreVendaTERMICOD.AsString <> '')  and (MostraItens) then
    begin
      SQLPrevendaItem.Close;
      SQLPrevendaItem.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaItem.Open;
    {  SQLPrevendaNumerario.Close;
      SQLPrevendaNumerario.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaNumerario.Open;
      SQLPrevendaContasReceber.Close;
      SQLPrevendaContasReceber.MacroByName('MFiltro').Value := 'TERMICOD = ' + TblMemPreVendaTERMICOD.AsString + 'and PRVDICOD = ' + TblMemPreVendaPRVDICOD.AsString;
      SQLPrevendaContasReceber.Open;}
    end;
end;

procedure TFormTelaImportarPreVenda.BtnTransfMotoboyClick(Sender: TObject);
begin
  if ComboMotoBoy.Value <> '' then
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Update Prevenda set MTBYICOD='+ComboMotoBoy.Value);
      dm.SQLTemplate.sql.Add('Where TERMICOD='+TblMemPreVendaTERMICOD.AsString);
      dm.SQLTemplate.sql.Add(' and  PRVDICOD='+TblMemPreVendaPRVDICOD.AsString);
      dm.SQLTemplate.ExecSQL;

      TblMemPreVenda.Edit;
      TblMemPreVendaMTBYICOD.AsString  := ComboMotoBoy.Value;
      TblMemPreVendaMotoBoyNome.Value  := ComboMotoBoy.DisplayValue;
      TblMemPreVenda.Post;
    end;
end;

procedure TFormTelaImportarPreVenda.BTQuitarTELEClick(Sender: TObject);
begin
  if ComboNumerario.KeyValue < 1 then
    begin
      ShowMessage('Escolha algum Numerario! Verifique!');
      Exit;
    end;

  // Gravar Cabecalho Cupom
  if TblMemPreVendaPRVDCMARCADO.Value then
    begin
      ErroGravando := True;
      GravaCupom;
      // Grava Item atual no banco oficial
      if not ErroGravando then
        GravaCupomItem;

      // Tem q Abrir a tabela a Vista e Prazo pra nao dar erro na funcao FechaCupom
      // Tem q alimentar a tab a Vista com o registro em Dinheiro do total
      SQLParcelasVistaVendaTemp.Close;
      SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
      SQLParcelasVistaVendaTemp.Open;
      if not SQLParcelasVistaVendaTemp.IsEmpty then
        begin
          while not SQLParcelasVistaVendaTemp.eof do
            SQLParcelasVistaVendaTemp.Delete;
        end;
      SQLParcelasVistaVendaTemp.Close;
      SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+TblMemPreVendaTERMICOD.AsString;
      SQLParcelasVistaVendaTemp.Open;
      SQLParcelasVistaVendaTemp.Append;
      SQLParcelasVistaVendaTempNROITEM.Value     := 1;
      SQLParcelasVistaVendaTempNUMEICOD.Value    := ComboNumerario.KeyValue;
      SQLParcelasVistaVendaTempTERMICOD.Value    := TerminalAtual;
      SQLParcelasVistaVendaTempTIPOPADR.Value    := SQLNumNUMEA5TIPO.Value;
      SQLParcelasVistaVendaTempVALORPARC.Value   := TblMemPreVendaPRVDN2TOTITENS.Value;
      SQLParcelasVistaVendaTemp.Post;

      SQLParcelasVistaVendaTemp.Close;
      SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+TblMemPreVendaTERMICOD.AsString;
      SQLParcelasVistaVendaTemp.Open;

      SQLParcelasPrazoVendaTemp.Close;
      SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+TblMemPreVendaTERMICOD.AsString;
      SQLParcelasPrazoVendaTemp.Open;

      // Gravar venda no banco, movimento de caixa e numerario a vista
      if not ErroGravando then
        GravaCupomNumerario;
      // Gravar o Mvto Caixa
      if not ErroGravando then
        GravaMovCaixa;

      if not ErroGravando then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          dm.SQLTemplate.sql.Add('Update Prevenda set PRVDCIMPORT="S"');
          dm.SQLTemplate.sql.Add('Where TERMICOD='+TblMemPreVendaTERMICOD.AsString);
          dm.SQLTemplate.sql.Add(' and  PRVDICOD='+TblMemPreVendaPRVDICOD.AsString);
          dm.SQLTemplate.ExecSQL;

          tblmemprevenda.Delete;
        end;
    end
  else
    ShowMessage('Atendimento não esta Selecionado! Verifique!');
end;

Function TFormTelaImportarPreVenda.GravaCupom:Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual) + ' And EMPRICOD = ' + EmpresaPadrao;
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
  DM.SQLCupomUSUAICODVENDA.Value        := UsuarioCorrente;
  DM.SQLCupomCUPODEMIS.Value            := Date;
  DM.SQLCupomCUPODQUITACAO.AsDateTime   := Date;
  DM.SQLCupomCUPOCSTATUS.Value          := 'A';
  DM.SQLCupomCUPON2TOTITENS.Value       := TblMemPreVendaPRVDN2TOTITENS.Value-TblMemPreVendaTELETAXA.Value;
  DM.SQLCupomCUPON3CREDTAXA.Value       := TblMemPreVendaTELETAXA.Value;
  DM.SQLCupomMTBYICOD.Value             := TblMemPreVendaMTBYICOD.Value;
  DM.SQLCupomCUPON2TOTITENSRET.Value    := 0;
  DM.SQLCupomCUPON2ACRESC.Value         := 0;
  DM.SQLCupomCUPON2DESC.Value           := 0;
  DM.SQLCupomCUPON2DESCITENS.Value      := 0;
  DM.SQLCupomCUPOINRO.AsString          := '000000' ;
  DM.SQLCupomCUPOCTIPOPADRAO.Value      := SQLNumNUMEA5TIPO.Value;
  DM.SQLCupomCUPON2CONVTAXA.Value       := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value    := 0 ;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value    := 0 ;
  DM.SQLCupomCUPON2JUROATRAS.Value      := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value     := 0 ;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.Value             := dm.SQLTerminalAtivoVENDICOD.Value;
  DM.SQLCupomCLIEA13ID.Value            := TblMemPreVendaCLIEA13ID.Value;
  DM.SQLCupomCLIENTENOME.Value          := TblMemPreVendaClienteNome.Value;
  DM.SQLCupomCLIENTEFONE.Value          := TblMemPreVendaClienteFone.Value;
  DM.SQLCupomCLIENTEENDE.Value          := TblMemPreVendaClienteEnd.Value;
  DM.SQLCupomCLIENTEBAIRRO.Value        := TblMemPreVendaClienteBairro.Value;
  DM.SQLCupomCLIENTECIDA.Value          := TblMemPreVendaClienteCidade.Value;
  DM.SQLCupomPENDENTE.Value             := 'S' ;
  DM.SQLCupomREGISTRO.Value             := Now ;
  DM.SQLCupomORIGEMVENDA.Value          := TblMemPreVendaORIGEMVENDA.Value;

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

Function TFormTelaImportarPreVenda.GravaCupomItem:Boolean;
var ItemECF : integer;
begin
  SQLPrevendaItem.First;
  ItemECF:=0;
  while not SQLPrevendaItem.Eof do
    begin
      ItemECF := ItemECF+1;
      DM.SQLCupomItem.Close;
      DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
      DM.SQLCupomItem.Open;
      DM.SQLCupomItem.Append;
      DM.SQLCupomItemEMPRICOD.Value                := EmpresaCorrente;
      DM.SQLCupomItemCUPOA13ID.Value               := dm.CodNextCupom;
      DM.SQLCupomItemCPITIPOS.Value                := ItemECF;
      DM.SQLCupomItemPRODICOD.AsString             := SQLPrevendaItemPRODICOD.AsString;
      DM.SQLCupomItemCPITCSTATUS.AsString          := 'A';
      DM.SQLCupomItemCPITN3QTD.Value               := SQLPrevendaItemPVITN3QTD.Value;
      DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
      DM.SQLCupomItemCPITN3VLRUNIT.Value           := SQLPrevendaItemPVITN3VLRUNIT.Value;
      DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value       := SQLPrevendaItemPVITN3VLRCUSTUNIT.Value;
      DM.SQLCupomItemCPITN2DESC.Value              := 0;
      DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
      DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := SQLPrevendaItemPVITN3VLRUNITLUCR.Value;
      DM.SQLCupomItemVENDICOD.Value                := dm.SQLTerminalAtivoVENDICOD.Value;
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
      //-----------------------------------------------------
      SQLPrevendaItem.Next;
    end;
end;

Function TFormTelaImportarPreVenda.GravaCupomNumerario:Boolean;
begin
 // Grava Numerario
  DM.SQLCupomNumerario.Close ;
  DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
  DM.SQLCupomNumerario.Open ;
  DM.SQLCupomNumerario.Append ;
  DM.SQLCupomNumerarioCUPOA13ID.Value   := DM.CodNextCupom ;
  DM.SQLCupomNumerarioNUMEICOD.Value    := SQLParcelasVistaVendaTempNUMEICOD.Value ;
  DM.SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
  DM.SQLCupomNumerarioCPNMN2VLR.Value   := TblMemPreVendaPRVDN2TOTITENS.Value;
  DM.SQLCupomNumerarioCLIEA13ID.Value   := dm.SQLTerminalAtivoCLIEA13ID.Value ;
  DM.SQLCupomNumerarioPENDENTE.Value    := 'S' ;
  DM.SQLCupomNumerarioREGISTRO.Value    := Now ;
  if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.Value = 'S' then
    DM.SQLCupomNumerarioCPNMCAUTENT.Value := 'S' ;

  // PLANO DE CONTAS
  if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
    begin
      if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
        DM.SQLCupomNumerarioPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
    end;
  try
    DM.SQLCupomNumerario.Post ;
    GravaCupomNumerario := True;
  except
    DM.SQLCupomNumerario.Cancel;
    GravaCupomNumerario := False;
  end ;
end;

Function TFormTelaImportarPreVenda.GravaMovCaixa:Boolean;
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
                           TblMemPreVendaPRVDN2TOTITENS.Value,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'Baixa Automatica ',//WMVCXA255HIST
                           'N',
                           '');
      // Grava Mov.Caixa Numerario
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                           'Null',//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           DM.CodNextCupom,//WMVCIXA15DOCORIG
                           TblMemPreVendaPRVDN2TOTITENS.Value,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'AVista:DINHEIRO/Quitacao Automatica',//WMVCXA255HIST
                           'N',
                           '');
    end;
end;

procedure TFormTelaImportarPreVenda.DBGridListaDblClick(Sender: TObject);
begin
  TblMemPrevenda.Edit;
  if TblMemPreVendaPRVDCMARCADO.Value then
    TblMemPreVendaPRVDCMARCADO.Value := False
  else
    TblMemPreVendaPRVDCMARCADO.Value := True;
  TblMemPrevenda.Post;
end;

procedure TFormTelaImportarPreVenda.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
