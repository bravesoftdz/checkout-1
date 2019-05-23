unit RelatorioResumoOperacaoDiaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, ComCtrls, DBTables, Placemnt, DB,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  Grids, DBGrids;

type
  TFormRelatorioResumoOperacaoDiaria = class(TFormRelatorioTEMPLATE)
    Dia: TDateTimePicker;
    SQLResumo: TRxQuery;
    TblTemporariaOperacao: TStringField;
    TblTemporariaQuantidade: TIntegerField;
    TblTemporariaTipoOperacao: TStringField;
    TblTemporariaStatusOperacao: TStringField;
    TblTemporariaValor: TFloatField;
    SQLNotaFiscal: TRxQuery;
    SQLPedidoVenda: TRxQuery;
    TblPedidosNotas: TTable;
    Report: TCrpe;
    SQLNotaFiscalTIPOOPERACAO: TStringField;
    SQLNotaFiscalSTATUSOPERACAO: TStringField;
    SQLNotaFiscalID: TStringField;
    SQLNotaFiscalNUMERO: TIntegerField;
    SQLNotaFiscalVLRICMS: TBCDField;
    SQLNotaFiscalVLRIPI: TBCDField;
    SQLNotaFiscalVLRDESC: TBCDField;
    SQLNotaFiscalVLRFRETE: TBCDField;
    SQLNotaFiscalVLRSERVICO: TBCDField;
    SQLNotaFiscalVLRISSQN: TBCDField;
    SQLNotaFiscalVLRPRODUTO: TBCDField;
    SQLNotaFiscalVLRNOTA: TBCDField;
    SQLNotaFiscalCLIENTE: TStringField;
    SQLNotaFiscalFORNECEDOR: TStringField;
    SQLNotaFiscalEMPRESADESTINO: TStringField;
    SQLNotaFiscalUSUARIO: TStringField;
    SQLNotaFiscalOPERACAOESTOQUE: TStringField;
    SQLNotaFiscalPLANO: TStringField;
    SQLPedidoVendaTIPOOPERACAO: TStringField;
    SQLPedidoVendaSTATUSOPERACAO: TStringField;
    SQLPedidoVendaID: TStringField;
    SQLPedidoVendaNUMERO: TStringField;
    SQLPedidoVendaVLRICMS: TFloatField;
    SQLPedidoVendaVLRIPI: TFloatField;
    SQLPedidoVendaVLRDESC: TBCDField;
    SQLPedidoVendaVLRFRETE: TBCDField;
    SQLPedidoVendaVLRSERVICO: TFloatField;
    SQLPedidoVendaVLRISSQN: TFloatField;
    SQLPedidoVendaVLRPRODUTO: TBCDField;
    SQLPedidoVendaVLRNOTA: TBCDField;
    SQLPedidoVendaCLIENTE: TStringField;
    SQLPedidoVendaFORNECEDOR: TStringField;
    SQLPedidoVendaEMPRESADESTINO: TStringField;
    SQLPedidoVendaUSUARIO: TStringField;
    SQLPedidoVendaOPERACAOESTOQUE: TStringField;
    SQLPedidoVendaPLANO: TStringField;
    TblPedidosNotasTIPOOPERACAO: TStringField;
    TblPedidosNotasSTATUSOPERACAO: TStringField;
    TblPedidosNotasID: TStringField;
    TblPedidosNotasNUMERO: TStringField;
    TblPedidosNotasVLRICMS: TFloatField;
    TblPedidosNotasVLRIPI: TFloatField;
    TblPedidosNotasVLRDESC: TBCDField;
    TblPedidosNotasVLRFRETE: TBCDField;
    TblPedidosNotasVLRSERVICO: TFloatField;
    TblPedidosNotasVLRISSQN: TFloatField;
    TblPedidosNotasVLRPRODUTO: TBCDField;
    TblPedidosNotasVLRNOTA: TBCDField;
    TblPedidosNotasCLIENTE: TStringField;
    TblPedidosNotasFORNECEDOR: TStringField;
    TblPedidosNotasEMPRESADESTINO: TStringField;
    TblPedidosNotasUSUARIO: TStringField;
    TblPedidosNotasOPERACAOESTOQUE: TStringField;
    TblPedidosNotasPLANO: TStringField;
    SQLNotaFiscalitens: TRxQuery;
    TblResumoItens: TTable;
    SQLPedidoVendaItens: TRxQuery;
    SQLProdutoReajuste: TRxQuery;
    TblResumoItensULTVLRVENDA: TFloatField;
    TblResumoItensULTVLRCOMPRA: TFloatField;
    TblResumoItensULTVLRCOMPRAMED: TFloatField;
    TblResumoItensULTVLRCUSTO: TFloatField;
    TblResumoItensULTVLRCUSTOMED: TFloatField;
    TblResumoItensULTMARGEM: TFloatField;
    SQLNotaFiscalitensTIPOOPERACAO: TStringField;
    SQLNotaFiscalitensSTATUSOPERACAO: TStringField;
    SQLNotaFiscalitensID: TStringField;
    SQLNotaFiscalitensEMPRESA: TIntegerField;
    SQLNotaFiscalitensCODPRODUTO: TIntegerField;
    SQLNotaFiscalitensQTDE: TBCDField;
    SQLNotaFiscalitensVLRUNITARIO: TBCDField;
    SQLNotaFiscalitensVLRDESC: TBCDField;
    SQLNotaFiscalitensVLRICMS: TBCDField;
    SQLNotaFiscalitensVLRIPI: TBCDField;
    SQLNotaFiscalitensLOTE: TStringField;
    SQLNotaFiscalitensDESCRPRODUTO: TStringField;
    SQLNotaFiscalitensVLRCOMPRA: TBCDField;
    SQLNotaFiscalitensVLRCOMPRAMEDIO: TBCDField;
    SQLNotaFiscalitensVLRCUSTO: TBCDField;
    SQLNotaFiscalitensVLRCUSTOMEDIO: TBCDField;
    SQLNotaFiscalitensREFPRODUTO: TStringField;
    SQLNotaFiscalitensTAMPRODUTO: TStringField;
    SQLNotaFiscalitensCORPRODUTO: TStringField;
    SQLNotaFiscalitensCODMOV: TIntegerField;
    SQLNotaFiscalitensDATAMOV: TDateTimeField;
    SQLNotaFiscalitensSALDOATUAL: TBCDField;
    SQLNotaFiscalitensSALDOANTERIOR: TFloatField;
    TblResumoItensTIPOOPERACAO: TStringField;
    TblResumoItensSTATUSOPERACAO: TStringField;
    TblResumoItensID: TStringField;
    TblResumoItensEMPRESA: TIntegerField;
    TblResumoItensCODPRODUTO: TIntegerField;
    TblResumoItensQTDE: TBCDField;
    TblResumoItensVLRUNITARIO: TBCDField;
    TblResumoItensVLRDESC: TBCDField;
    TblResumoItensVLRICMS: TBCDField;
    TblResumoItensVLRIPI: TBCDField;
    TblResumoItensLOTE: TStringField;
    TblResumoItensDESCRPRODUTO: TStringField;
    TblResumoItensVLRCOMPRA: TBCDField;
    TblResumoItensVLRCOMPRAMEDIO: TBCDField;
    TblResumoItensVLRCUSTO: TBCDField;
    TblResumoItensVLRCUSTOMEDIO: TBCDField;
    TblResumoItensREFPRODUTO: TStringField;
    TblResumoItensTAMPRODUTO: TStringField;
    TblResumoItensCORPRODUTO: TStringField;
    TblResumoItensCODMOV: TIntegerField;
    TblResumoItensDATAMOV: TDateTimeField;
    TblResumoItensSALDOATUAL: TBCDField;
    TblResumoItensSALDOANTERIOR: TFloatField;
    SQLPedidoVendaItensTIPOOPERACAO: TStringField;
    SQLPedidoVendaItensSTATUSOPERACAO: TStringField;
    SQLPedidoVendaItensID: TStringField;
    SQLPedidoVendaItensEMPRESA: TIntegerField;
    SQLPedidoVendaItensCODPRODUTO: TIntegerField;
    SQLPedidoVendaItensQTDE: TBCDField;
    SQLPedidoVendaItensVLRUNITARIO: TBCDField;
    SQLPedidoVendaItensVLRDESC: TBCDField;
    SQLPedidoVendaItensVLRICMS: TFloatField;
    SQLPedidoVendaItensVLRIPI: TFloatField;
    SQLPedidoVendaItensLOTE: TStringField;
    SQLPedidoVendaItensDESCRPRODUTO: TStringField;
    SQLPedidoVendaItensVLRCOMPRA: TBCDField;
    SQLPedidoVendaItensVLRCOMPRAMEDIO: TBCDField;
    SQLPedidoVendaItensVLRCUSTO: TBCDField;
    SQLPedidoVendaItensVLRCUSTOMEDIO: TBCDField;
    SQLPedidoVendaItensREFPRODUTO: TStringField;
    SQLPedidoVendaItensTAMPRODUTO: TStringField;
    SQLPedidoVendaItensCORPRODUTO: TStringField;
    SQLPedidoVendaItensCODMOV: TIntegerField;
    SQLPedidoVendaItensDATAMOV: TDateTimeField;
    SQLPedidoVendaItensSALDOATUAL: TBCDField;
    SQLPedidoVendaItensSALDOANTERIOR: TFloatField;
    SQLNotaCompra: TRxQuery;
    SQLNotaCompraTIPOOPERACAO: TStringField;
    SQLNotaCompraSTATUSOPERACAO: TStringField;
    SQLNotaCompraID: TStringField;
    SQLNotaCompraNUMERO: TStringField;
    SQLNotaCompraVLRICMS: TBCDField;
    SQLNotaCompraVLRIPI: TBCDField;
    SQLNotaCompraVLRDESC: TBCDField;
    SQLNotaCompraVLRFRETE: TBCDField;
    SQLNotaCompraVLRSERVICO: TFloatField;
    SQLNotaCompraVLRISSQN: TFloatField;
    SQLNotaCompraVLRPRODUTO: TBCDField;
    SQLNotaCompraVLRNOTA: TBCDField;
    SQLNotaCompraCLIENTE: TStringField;
    SQLNotaCompraFORNECEDOR: TStringField;
    SQLNotaCompraEMPRESADESTINO: TStringField;
    SQLNotaCompraUSUARIO: TStringField;
    SQLNotaCompraOPERACAOESTOQUE: TStringField;
    SQLNotaCompraPLANO: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure GeraLegendaOperacaoes();
    procedure GravaQuantidadeNaLegenda(TipoOperacao,StatusOperacao: String; Quantidade : Integer; Valor : Double);
    procedure AtualizaTabelasTemporarias;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioResumoOperacaoDiaria: TFormRelatorioResumoOperacaoDiaria;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioResumoOperacaoDiaria.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  // Gera legenda das operações;
  GeraLegendaOperacaoes;
  //////////////////////////////

  // GRAVA QUANTIDADE E VALOR DOS PEDIDOS DO DIA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDEPEDIDO, SUM(PDVDN2TOTPED) AS TOTALPEDIDO FROM PEDIDOVENDA WHERE PDVDCSTATUS = %Status ' +
                    'AND PDVDDEMISSAO = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"');
  SQLResumo.MacroByName('Status').AsString := '"A"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','A',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '"E"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','E',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '"C"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','C',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  /////////////////////////////////////


  // GRAVA QUANTIDADE E VALOR DAS NOTAS FISCAIS DO DIA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDENF, SUM(NOFIN2VLRNOTA) AS TOTALNF FROM NOTAFISCAL WHERE NOFICSTATUS = %Status ' +
                    'AND NOFIDEMIS = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"');
  SQLResumo.MacroByName('Status').AsString := '"A"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','A',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '"E"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','E',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '"C"';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','C',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  /////////////////////////////////////

  // GERA TABELAS TEMPORARIAS

  AtualizaTabelasTemporarias;

  SQLPedidoVenda.Close;
  SQLPedidoVenda.MacroByName('DataEmissao').AsString      := 'PDVDDEMISSAO = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"';
  SQLPedidoVenda.Open;
  if not SQLPedidoVenda.IsEmpty then
    BatchExec(SQLPedidoVenda,TblPedidosNotas);
  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacroByName('DataEmissao').AsString       := 'NOFIDEMIS = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"';
  SQLNotaFiscal.Open;
  TblPedidosNotas.Close;
  if not SQLNotaFiscal.IsEmpty then
    BatchExec(SQLNotaFiscal,TblPedidosNotas);
  SQLNotaFiscalitens.Close;
  SQLNotaFiscalitens.MacroByName('DataEmissao').AsString  := 'NOTAFISCAL.NOFIDEMIS = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"';
  SQLNotaFiscalitens.Open;
  if not SQLNotaFiscalitens.IsEmpty then
    begin
      BatchExec(SQLNotaFiscalitens,TblResumoItens);
      SQLNotaFiscalitens.First;
      while not SQLNotaFiscalitens.Eof do
        begin
          if SQLNotaFiscalitens.FieldByName('CodMov').AsString <> '' then
            begin
              SQLMovimentoEstoqueNF.Close;
              SQLMovimentoEstoqueNF.MacroByName('Empresa').AsString  := 'MOVIMENTOESTOQUE.EMPRICOD = '   + SQLNotaFiscalitens.FieldByName('Empresa').AsString;
              SQLMovimentoEstoqueNF.MacroByName('DataMov').AsString  := 'MOVIMENTOESTOQUE.MVESDMOV = "' + FormatDateTime('mm/dd/yyyy',SQLNotaFiscalitens.FieldByName('DataMov').AsDateTime)+ '"';
              SQLMovimentoEstoqueNF.MacroByName('CodMov').AsString   := 'MOVIMENTOESTOQUE.MVESICOD > '  + SQLNotaFiscalitens.FieldByName('CodMov').AsString;
              SQLMovimentoEstoqueNF.MacroByName('Produto').AsString  := 'MOVIMENTOESTOQUE.PRODICOD = '   + SQLNotaFiscalitens.FieldByName('CODPRODUTO').AsString;
              ShowMessage(SQLMovimentoEstoqueNF.RealSQL.Text);
              SQLMovimentoEstoqueNF.Open;
              BatchExec(SQLMovimentoEstoqueNF,TblMovimentoEstoqueNF);
              SQLMovimentoEstoqueNF.Close;
              SQLMovimentoEstoqueNF.MacroByName('Empresa').AsString  := 'MOVIMENTOESTOQUE.EMPRICOD = '   + SQLNotaFiscalitens.FieldByName('Empresa').AsString;
              SQLMovimentoEstoqueNF.MacroByName('DataMov').AsString  := 'MOVIMENTOESTOQUE.MVESDMOV > "' + FormatDateTime('mm/dd/yyyy',SQLNotaFiscalitens.FieldByName('DataMov').AsDateTime)+ '"';
              SQLMovimentoEstoqueNF.MacroByName('CodMov').AsString   := '0=0';
              SQLMovimentoEstoqueNF.MacroByName('Produto').AsString  := 'MOVIMENTOESTOQUE.PRODICOD = '   + SQLNotaFiscalitens.FieldByName('CODPRODUTO').AsString;
              SQLMovimentoEstoqueNF.Open;
              BatchExec(SQLMovimentoEstoqueNF,TblMovimentoEstoqueNF);
            end;
          SQLNotaFiscalitens.Next;
        end;
    end;
  SQLPedidoVendaItens.Close;
  SQLPedidoVendaItens.MacroByName('DataEmissao').AsString := 'PEDIDOVENDA.PDVDDEMISSAO = "' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '"';
  SQLPedidoVendaItens.Open;
  if not SQLPedidoVendaItens.IsEmpty then
    BatchExec(SQLPedidoVendaItens,TblResumoItens);
  /////////////////////////

  //GRAVA ULT REAJUSTE DE PRECO DO PRODUTO
  SQLResumoItens.Close;
  SQLResumoItens.Open;
  TblResumoItens.Close;
  while not SQLResumoItens.Eof do
    begin
      SQLProdutoReajuste.Close;
      SQLProdutoReajuste.ParamByName('Produto').AsInteger := SQLResumoItens.FieldByName('CodProduto').AsInteger;
      SQLProdutoReajuste.Open;
      if not SQLProdutoReajuste.IsEmpty then
        begin
          SQLGeral.Close;
          SQLGeral.MacroByName('PRODUTO').AsString         := SQLProdutoReajuste.FieldByName('PRODICOD').AsString;
          SQLGeral.MacroByName('VLRVENDA').AsString        := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJVLRVENDA').AsFloat) + '"';
          SQLGeral.MacroByName('MARGEM').AsString          := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN2MARGEM').AsFloat) + '"';
          SQLGeral.MacroByName('VLRCOMPRA').AsString       := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN2VLRCOMPRA').AsFloat) + '"';
          SQLGeral.MacroByName('VLRCOMPRAMED').AsString    := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3ULTCOMPRAMED').AsFloat) + '"';
          SQLGeral.MacroByName('VLRCUSTO').AsString        := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3VLRCUSTO').AsFloat)+ '"';
          SQLGeral.MacroByName('VLRCUSTOMED').AsString     := '"' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3ULTCUSTOMED').AsFloat)+ '"';
          try
            SQLGeral.ExecSQL;
          except
            on E:Exception do
              begin
                ShowMessage('Problemas ao atualizar tabela temp dos itens, ANOTE O ERRO:' + #13 + E.Message);
                Exit;
              end
          end;
        end;
      SQLResumoItens.Next
    end;
    
  //////////////////////////////////////////////////
  exit;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Resumo de Operacoes Diarias.rpt';
  Report.ReportTitle       := 'Relatório Resumo de Operações Diárias';
  Report.WindowStyle.Title := 'Relatório Resumo de Operações Diárias';
  Report.Execute;

end;
procedure TFormRelatorioResumoOperacaoDiaria.GeraLegendaOperacaoes();
begin
  // PEDIDO DE VENDA
  TblTemporaria.Close;
  TblTemporaria.AddIndex('TipoStatusOp_Key','TipoOperacao;StatusOperacao',[IxPrimary]);
  TblTemporaria.Open;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // NOTA FISCAL DE VENDA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) Encerrada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) Cancelada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // CUPOM FISCAL
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) Fiscal(is) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) de Venda(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) de Venda(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // PEDIDO DE COMPRA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // NOTA DE COMPRA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Encerrada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Cancelada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

end;
procedure TFormRelatorioResumoOperacaoDiaria.GravaQuantidadeNaLegenda(TipoOperacao,StatusOperacao: String; Quantidade : Integer; Valor : Double);
begin
  if not TblTemporaria.Active then TblTemporaria.Open;
  TblTemporaria.Locate('TipoOperacao;StatusOperacao',VarArrayOf([TipoOperacao,StatusOperacao]),[]);
  TblTemporaria.Edit;
  TblTemporariaQuantidade.AsFloat := Quantidade;
  TblTemporariaValor.AsFloat      := Valor;
  TblTemporaria.Post;
end;
procedure TFormRelatorioResumoOperacaoDiaria.AtualizaTabelasTemporarias;
begin
  try
    TblPedidosNotas.Close;
    TblPedidosNotas.DeleteTable;
    TblPedidosNotas.CreateTable;
  except
    TblPedidosNotas.CreateTable;
  end;
  TblPedidosNotas.AddIndex('TipoStatus_Key','TipoOperacao;StatusOperacao;ID',[IxPrimary]);
  try
    TblResumoItens.Close;
    TblResumoItens.DeleteTable;
    TblResumoItens.CreateTable;
  except
    TblResumoItens.CreateTable;
  end;

  try
    TblMovimentoEstoqueNF.Close;
    TblMovimentoEstoqueNF.DeleteTable;
    TblMovimentoEstoqueNF.CreateTable;
  except
    TblMovimentoEstoqueNF.CreateTable;
  end;
  TblMovimentoEstoqueNF.AddIndex('OPProdEmpCodDataMov_Key','TIPOOPERACAO;CODPRODUTO;CODEMPRESA;CODMOV;DATAMOV',[IxPrimary]);
end;
end.
