unit TelaDadosTeleEntrega;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ConerBtn, ExtCtrls, Mask, ToolEdit, DBTables, Db,
  RxLookup, RxQuery, DBCtrls, RXDBCtrl, ppDB, ppDBPipe, ppDBBDE, ppMemo,
  ppBands, ppVar, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, DateUtils, RXCtrls;

type
  TFormTelaDadosTeleEntrega = class(TForm)
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    ComboTipoVenda: TRxDBLookupCombo;
    SQLTipoVenda: TRxQuery;
    DSSQLTipoVenda: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DSSQLTeleEntrega: TDataSource;
    Nome: TDBEdit;
    Endereco: TDBEdit;
    Bairro: TDBEdit;
    Cidade: TDBEdit;
    Fone: TDBEdit;
    Solicitante: TDBEdit;
    Estado: TDBEdit;
    Mensagem: TDBMemo;
    DataEntrega: TDBDateEdit;
    Hora1: TMaskEdit;
    Hora2: TMaskEdit;
    Cliente: TEdit;
    Label12: TLabel;
    DataEntregaReal: TDBDateEdit;
    HoraReal1: TMaskEdit;
    DSTblTicketPreVendaCab: TDataSource;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    PipeCab: TppBDEPipeline;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    DSTblTicketPreVendaItem: TDataSource;
    PipeItem: TppBDEPipeline;
    SQLFuncionario: TRxQuery;
    SQLFuncionarioFUNCA13ID: TStringField;
    SQLFuncionarioFUNCA60NOME: TStringField;
    ComboFuncionario: TRxDBLookupCombo;
    Label14: TLabel;
    DSSQLFuncionario: TDataSource;
    BtnReimprimir: TConerBtn;
    SQLCupom: TRxQuery;
    SQLCupomItem: TRxQuery;
    SQLVista: TRxQuery;
    SQLVistaCUPOA13ID: TStringField;
    SQLVistaNUMEICOD: TIntegerField;
    SQLVistaCONMCSTATUS: TStringField;
    SQLVistaCPNMN2VLR: TBCDField;
    SQLVistaCPNMCAUTENT: TStringField;
    SQLVistaCLIEA13ID: TStringField;
    SQLVistaPENDENTE: TStringField;
    SQLVistaREGISTRO: TDateTimeField;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLVistaNumerarioLookup: TStringField;
    SQLPrazo: TRxQuery;
    SQLPrazoCTRCA13ID: TStringField;
    SQLPrazoEMPRICOD: TIntegerField;
    SQLPrazoTERMICOD: TIntegerField;
    SQLPrazoCTRCICOD: TIntegerField;
    SQLPrazoCLIEA13ID: TStringField;
    SQLPrazoCTRCCSTATUS: TStringField;
    SQLPrazoCTRCINROPARC: TIntegerField;
    SQLPrazoCTRCDVENC: TDateTimeField;
    SQLPrazoCTRCN2VLR: TBCDField;
    SQLPrazoCTRCN2DESCFIN: TBCDField;
    SQLPrazoNUMEICOD: TIntegerField;
    SQLPrazoPORTICOD: TIntegerField;
    SQLPrazoCTRCN2TXJURO: TBCDField;
    SQLPrazoCTRCN2TXMULTA: TBCDField;
    SQLPrazoCTRCA5TIPOPADRAO: TStringField;
    SQLPrazoCTRCDULTREC: TDateTimeField;
    SQLPrazoCTRCN2TOTREC: TBCDField;
    SQLPrazoCTRCN2TOTJUROREC: TBCDField;
    SQLPrazoCTRCN2TOTMULTAREC: TBCDField;
    SQLPrazoCTRCN2TOTDESCREC: TBCDField;
    SQLPrazoCTRCN2TOTMULTACOBR: TBCDField;
    SQLPrazoEMPRICODULTREC: TIntegerField;
    SQLPrazoCUPOA13ID: TStringField;
    SQLPrazoTPDCICOD: TIntegerField;
    SQLPrazoPLCTA15COD: TStringField;
    SQLPrazoCTRCA30NRODUPLICBANCO: TStringField;
    SQLPrazoNOFIA13ID: TStringField;
    SQLPrazoCTRCDEMIS: TDateTimeField;
    SQLPrazoPENDENTE: TStringField;
    SQLPrazoREGISTRO: TDateTimeField;
    SQLPrazoCTRCDREABILSPC: TDateTimeField;
    SQLPrazoBANCA5CODCHQ: TStringField;
    SQLPrazoCTRCA10AGENCIACHQ: TStringField;
    SQLPrazoCTRCA15CONTACHQ: TStringField;
    SQLPrazoCTRCA15NROCHQ: TStringField;
    SQLPrazoCTRCA60TITULARCHQ: TStringField;
    SQLPrazoCTRCA20CGCCPFCHQ: TStringField;
    SQLPrazoCTRCDDEPOSCHQ: TDateTimeField;
    SQLPrazoALINICOD: TIntegerField;
    SQLPrazoPDVDA13ID: TStringField;
    SQLPrazoCTRCDESTORNO: TDateTimeField;
    SQLPrazoFRETA13ID: TStringField;
    SQLPrazoCTRCA254HIST: TStringField;
    SQLPrazoCTRCCTEMREGRECEBER: TStringField;
    SQLPrazoDUPLA13ID: TStringField;
    SQLPrazoCOBRA13ID: TStringField;
    SQLPrazoCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLPrazoHTPDICOD: TIntegerField;
    SQLPrazoPLCTA15CODDEBITO: TStringField;
    SQLPrazoNumerarioLookup: TStringField;
    TblTicketPreVendaCabDataEmissao: TDateField;
    ppReport1: TppReport;
    ppTitleBand4: TppTitleBand;
    ppLabel58: TppLabel;
    ppDetailBand1: TppDetailBand;
    ProtocoloEntrega: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel8: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppLabel11: TppLabel;
    ppDBText28: TppDBText;
    ppLabel34: TppLabel;
    ppDBText29: TppDBText;
    ppDBText48: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText23: TppDBText;
    ppLabel7: TppLabel;
    ppDBText24: TppDBText;
    ppLabel9: TppLabel;
    ppLabelLinhaAss: TppLabel;
    ppLabel10: TppLabel;
    ppDBText26: TppDBText;
    ppLabel17: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppDBText30: TppDBText;
    ppLabel36: TppLabel;
    ppDBText31: TppDBText;
    ppDBText12: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel49: TppLabel;
    ppDBText22: TppDBText;
    ppLabel50: TppLabel;
    ppDBText25: TppDBText;
    ppLabel51: TppLabel;
    ppDBText21: TppDBText;
    ppDBText52: TppDBText;
    ppDBText59: TppDBText;
    ProtocoloFabricacao: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel4: TppLabel;
    ppDBText15: TppDBText;
    ppLabel5: TppLabel;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel59: TppLabel;
    ppDBText49: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppLabel47: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel60: TppLabel;
    ppLabel65: TppLabel;
    ppDBText47: TppDBText;
    ppLabel53: TppLabel;
    ppDBMemo1: TppDBMemo;
    ProtocoloEncomenda: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel37: TppLabel;
    ppDBText32: TppDBText;
    ppLabel38: TppLabel;
    ppDBText33: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppLabel54: TppLabel;
    ppDBText50: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText40: TppDBText;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel52: TppLabel;
    ppDBText51: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel64: TppLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    LookupEditOcasiao: TRxLookupEdit;
    DSSQLTeleEntregaAux: TDataSource;
    SQLTeleEntregaAux: TRxQuery;
    SQLTeleEntregaAuxTELEA30OCASIAO: TStringField;
    LblNomeSistema: TRxLabel;
    RxLabel1: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DataEntregaExit(Sender: TObject);
    procedure BtnReimprimirClick(Sender: TObject);
    procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup , SQLCupomIt : TRxQuery ) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosTeleEntrega: TFormTelaDadosTeleEntrega;

implementation

uses DataModulo,
     UnitLibrary;

{$R *.DFM}

procedure TFormTelaDadosTeleEntrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaDadosTeleEntrega.BtnOKClick(Sender: TObject);
Var CdCli, CodCli : string ;
begin
  if ComboTipoVenda.Text <> '' then
    TipoVenda := ComboTipoVenda.KeyValue ;

  DataEntregaVenda   := DataEntrega.Text + '  ' + Hora1.Text + '  ' + Hora2.Text ;
  HoraEntrega1       := Hora1.Text ;
  HoraEntrega2       := Hora2.Text ;
  NomeClienteRec     := Nome.Text ;
  NomeSolicitante    := Solicitante.Text ;
  EnderecoClienteRec := Endereco.Text ;
  BairroCLienteRec   := Bairro.Text ;
  CidadeClienteRec   := Cidade.Text ;
  EstadoClienteRec   := Estado.Text ;
  FoneClienteRec     := Fone.Text ;
  MensagemVenda      := Mensagem.Text ;
  if DM.SQLTeleEntrega.State in DsEditModes then
    begin
      if DataEntrega.Date <> 0 then
        begin
          DM.SQLTeleEntregaTELEDENTRPREV1.AsString   := DataEntrega.Text + ' ' + HoraEntrega1 + ':00';
          DM.SQLTeleEntregaTELEDENTRPREV2.AsString   := DataEntrega.Text + ' ' + HoraEntrega2 + ':00';
        end
      else
        begin
          Informa('Digite a data de entrega!');
          DataEntrega.SetFocus;
          Exit;
        end;
      if DataEntregaReal.Date <> 0 then
        DM.SQLTeleEntregaTELEDENTRREAL.AsString    := DataEntregaReal.Text + ' ' + HoraReal1.Text + ':00';
      if LookupEditOcasiao.Text <> '' then
        begin
          DM.SQLTeleEntregaTELEA30OCASIAO.AsString := LookupEditOcasiao.Text;
        end;
    end;
  FormTelaDadosTeleEntrega.ModalResult := MrOk;
end;

procedure TFormTelaDadosTeleEntrega.BtnCancelarClick(Sender: TObject) ;
begin
  DM.SQLTeleEntrega.Cancel;
  DM.SQLTeleEntrega.CancelUpdates;
  DM.SQLTeleEntrega.Close;
  Close ;
end ;

procedure TFormTelaDadosTeleEntrega.FormActivate(Sender: TObject);
begin
  Hora1.Text := FormatDateTime('hh:mm', DM.SQLTeleEntregaTELEDENTRPREV1.Value) ;
  Hora2.Text := FormatDateTime('hh:mm', DM.SQLTeleEntregaTELEDENTRPREV2.Value) ;

  HoraReal1.Text := FormatDateTime('hh:mm', DM.SQLTeleEntregaTELEDENTRREAL.Value) ;
end ;

procedure TFormTelaDadosTeleEntrega.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) and (FormTelaDadosTeleEntrega.ActiveControl.ClassType <> TDBMemo) then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormTelaDadosTeleEntrega.FormCreate(Sender: TObject);
begin
  BtnReimprimir.Visible := Application.FindComponent('FormTelaFechamentoVenda') = nil;
  SQLTipoVenda.Open;
  DSSQLTeleEntrega.DataSet        :=   DM.SQLTeleEntrega;
  if not DM.SQLTeleEntrega.Active then DM.SQLTeleEntrega.Open;
  if not SQLTipoVenda.Active      then SQLTipoVenda.Open;
  if not SQLFuncionario.Active    then SQLFuncionario.Open;
  if not SQLNumerario.Active      then SQLNumerario.Open;
  if not SQLTeleEntregaAux.Active then SQLTeleEntregaAux.Open;
  if DSSQLTeleEntrega.DataSet.State in [DsInsert] then
    begin
      Hora1.Text := FormatDateTime('hh:nn',Now);
      Hora2.Text := FormatDateTime('hh:nn',IncHour(Now,1));
    end;
  if DM.SQLTeleEntregaTELEA30OCASIAO.AsString <> '' then
    LookupEditOcasiao.Text := DM.SQLTeleEntregaTELEA30OCASIAO.AsString;
end;

procedure TFormTelaDadosTeleEntrega.DataEntregaExit(Sender: TObject);
begin
  if DataEntrega.Date = 0 then
    begin
      Informa('Digite a data da entrega!');
      DataEntrega.SetFocus;
      Exit;
    end;
end;

procedure TFormTelaDadosTeleEntrega.BtnReimprimirClick(Sender: TObject);
begin
  GravarTabelaTempImpPreVendaDeCupom(DSSQLTeleEntrega.DataSet.FieldByName('CUPOA13ID').AsString,SQLVista,SQLPrazo,SQLCupom,SQLCupomItem);
  ppReport1.PrinterSetup.DocumentName := 'Cupom de Dados da Venda' ;

  if DM.SQLTerminalAtivoTERMA60IMPPEDIDO.Value <> '' then
    ppReport1.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPPEDIDO.asString
  else
    ppReport1.PrinterSetup.PrinterName  := 'Default';

  if DM.SQLTerminalAtivoTERMA60IMPPEDIDO.Value = '' then
    ppReport1.DeviceType := 'Screen' ;

  ppReport1.Print;
end;
procedure TFormTelaDadosTeleEntrega.GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup , SQLCupomIt : TRxQuery ) ;
var
  TargetPrinter, NumerarioPrazo : string ;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  DM.TblTicketPreVendaCab.Close ;
  try
    DM.TblTicketPreVendaCab.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaCab.CreateTable ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try
    DM.TblTicketPreVendaItem.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaItem.CreateTable ;
  DM.TblTicketPreVendaItem.Open ;

  SQLCup.Close ;
  SQLCup.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + IDCupom + '"' ;
  SQLCup.Open ;
  if SQLCup.IsEmpty then
    begin
      Informa('Problemas ao Imprimir Pr�-Venda!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLCup.FieldByName('CUPOA13ID').AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLCup.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLCup.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLCup.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLCup.FieldByName('CUPON2TOTITENS').AsString ;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLCup.FieldByName('CUPON2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLCup.FieldByName('CUPON2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLCup.FieldByName('CUPON2TOTITENS').Value +
                                                   SQLCup.FieldByName('CUPON2ACRESC').Value -
                                                   SQLCup.FieldByName('CUPON2DESC').Value -
                                                   SQLCup.FieldByName('CUPON3BONUSTROCA').Value ;

  if DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S' then
    begin
      DM.TblTicketPreVendaCabNomeEmpresa.Value   := EmpresaAtualNome ;
      DM.TblTicketPreVendaCabFoneEmpresa.Value   := '' ;
      DM.TblTicketPreVendaCabFoneCliente.Value   := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabNroCreditCard.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA20NROCARTCRED', '"' + SQLCup.FieldByName('CLIEA13ID').AsString + '"') ;
      DM.TblTicketPreVendaCabMensagem2.Value     := MensagemVenda;
      DM.TblTicketPreVendaCabDataEmissao.AsDateTime  := SQLCup.FieldByName('REGISTRO').AsDateTime;

      DM.TblTicketPreVendaCabNumerarioPagto.Value := '' ;
      if SQLParcelasVistaVendaTemp <> Nil then
        begin
          SQLParcelasVistaVendaTemp.Close;
          SQLParcelasVistaVendaTemp.Open;
          SQLParcelasVistaVendaTemp.First ;
          while not SQLParcelasVistaVendaTemp.EOF do
            begin
              if Pos(SQLParcelasVistaVendaTemp.FieldByName('NumerarioLookup').Value, DM.TblTicketPreVendaCabNumerarioPagto.Value) = 0 then
                DM.TblTicketPreVendaCabNumerarioPagto.Value := DM.TblTicketPreVendaCabNumerarioPagto.Value + ' ' +
                                                               SQLParcelasVistaVendaTemp.FieldByName('NumerarioLookup').Value ;

              SQLParcelasVistaVendaTemp.Next ;
            end ;
        end ;

      if SQLParcelasPrazoVendaTemp <> nil then
        begin
          SQLParcelasPrazoVendaTemp.Close;
          SQLParcelasPrazoVendaTemp.Open;
          SQLParcelasPrazoVendaTemp.First ;
          while not SQLParcelasPrazoVendaTemp.EOF do
            begin
              NumerarioPrazo := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLParcelasPrazoVendaTemp.FieldByName('NUMEICOD').AsString);
              if Pos(NumerarioPrazo, DM.TblTicketPreVendaCabNumerarioPagto.AsString) = 0 then
                DM.TblTicketPreVendaCabNumerarioPagto.Value := DM.TblTicketPreVendaCabNumerarioPagto.Value +  ' ' +
                                                               SQLParcelasPrazoVendaTemp.FieldByName('NumerarioLookup').AsString ;

              SQLParcelasPrazoVendaTemp.Next ;
            end;
        end;

      DM.TblTicketPreVendaCabTipoVenda.Value     := SQLLocate('TIPOVENDA', 'TPVDICOD', 'TPVDA60DESCR', IntToStr(DSSQLTeleEntrega.DataSet.FieldByName('TPVDICOD').AsInteger)) ;
      DM.TblTicketPreVendaCabDataEntrega.AsString := DataEntregaVenda ;

      DM.TblTicketPreVendaCabPessoaRecebeNome.AsString  := 'Nome.... : ' + NomeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeEnder.AsString := 'Endereco.: ' + EnderecoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeBai.AsString   := 'Bairro...: ' + BairroCLienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeCid.AsString   := 'Cidade...: ' + CidadeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeUF.AsString    := EstadoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeFone.AsString  := 'Fone: ' + FoneClienteRec ;
    end ;

  DM.TblTicketPreVendaCab.Post ;

  SQLCupomIt.Close ;
  SQLCupomIt.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + IDCupom + '"' ;
  SQLCupomIt.Open ;

  while not SQLCupomIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLCupomIt.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;
    if SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value > 0 then
      DM.TblTicketPreVendaItemDescricao.Value := DM.TblTicketPreVendaItemDescricao.Value + '(T)' ;

    DM.TblTicketPreVendaItemMarca.Value         := '' ;
    DM.TblTicketPreVendaItemReferencia.Value    := '' ;
    if SQLCupomIt.FieldbyName('CPITN3QTD').Value > 0 then
      DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTD').Value ;

    if SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value > 0 then
      DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value ;

    DM.TblTicketPreVendaItemValorUnitario.Value := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value + SQLCupomIt.FieldbyName('CPITN2DESC').Value) ;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value) *
                                                   SQLCupomIt.FieldbyName('CPITN3QTD').Value ;
    DM.TblTicketPreVendaItemDesconto.Value       := SQLCupomIt.FieldbyName('CPITN2DESC').Value ;
    DM.TblTicketPreVendaItem.Post ;

    SQLCupomIt.Next ;
  end;
end ;

end.
