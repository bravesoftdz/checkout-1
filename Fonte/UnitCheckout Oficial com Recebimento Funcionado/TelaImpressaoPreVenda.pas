unit TelaImpressaoPreVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppBands, StdCtrls, Buttons, Db, DBTables,
  ppBarCod, ppVar, MemTable, ppStrtch, ppMemo;

type
  TFormTelaImpressaoPreVenda = class(TForm)
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    Imprime: TBitBtn;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppLabel15: TppLabel;
    ppDBTextAss: TppDBText;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    DSTblTicketPreVendaCab: TDataSource;
    ppLabel16: TppLabel;
    ppDBText17: TppDBText;
    ppLabel17: TppLabel;
    ppDBText18: TppDBText;
    TblTicketPreVendaCab: TTable;
    BDEPipe: TppBDEPipeline;
    ppTitleBand1: TppTitleBand;
    TblTicketPreVendaItem: TTable;
    DSTblTicketPreVendaItem: TDataSource;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    ppBDEPipeline1: TppBDEPipeline;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLBEmpresa: TppLabel;
    ppLabel21: TppLabel;
    ppDBMemo1: TppDBMemo;
    TblTicketPreVendaCabMensagem: TStringField;
    ppLabel13: TppLabel;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaCabDataEmissao: TDateField;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    procedure ImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    TotalProdutos, TotalGeral : double ;
    NomeEmpresa,FoneEmpresa : String;
  public
    { Public declarations }
  end;

var
  FormTelaImpressaoPreVenda: TFormTelaImpressaoPreVenda;

implementation

uses DataModulo, UnitLibrary, IMPNAOFISCAL ;

{$R *.DFM}
procedure TFormTelaImpressaoPreVenda.ImprimeClick(Sender: TObject);
var Arquivo : TextFile ;
var vLin1Itens, vLin2Itens : String ;
begin
 // Verifica se existe impressora Nao Fiscal
 if FileExists('C:\UNIT\GESTAO\IMPRESSAOPREVENDA.EXE') then
   begin
     if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value = 'S' then
       if Pergunta('SIM','Deseja imprimir a Prevenda Atual?') then
         WinExec(Pchar('C:\UNIT\GESTAO\IMPRESSAOPREVENDA.EXE'),sw_Show);
     if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value <> 'S' then
       if Pergunta('NAO','Deseja imprimir a Prevenda Atual?') then
         WinExec(Pchar('C:\UNIT\GESTAO\IMPRESSAOPREVENDA.EXE'),sw_Show);
   end
 else
   begin
     // Verifica se existe impressora Nao Fiscal
     if (ImpNaoFiscalAtual = 'BEMATECH MP-20 CI') or (ImpNaoFiscalAtual = 'DARUMA DUAL') then
       begin
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value = 'S' then
           if not FileExists('C:\Unit\Gestao\ImprimeSemPerguntar.txt') then
             begin
               if Pergunta('SIM','Deseja imprimir a Venda Atual?') then
                 begin
                   // Pegar o Nome da Empresa Padrao
                   DM.SQLTemplate.Close ;
                   DM.SQLTemplate.SQL.Clear ;
                   DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
                   DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
                   DM.SQLTemplate.Open ;
                   if not DM.SQLTemplate.IsEmpty then
                     begin
                       NomeEmpresa := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value ;
                       FoneEmpresa := DM.SQLTemplate.FieldByName('EMPRA20FONE').Value ;
                     end;
                   DM.SQLTemplate.Close ;
                   // Imprime o Cabe�alho do pedido
                   AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'CUPOM NAO FISCAL',3,0,0,1,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   // Dados da Empresa
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,NomeEmpresa,3,0,0,0,1);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Fone.....:'+FoneEmpresa,2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   // Cabe�alho dos Produtos
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Documento: '+TblTicketPreVendaCabTicketNumero.AsString,2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Data.....: '+FormatDateTime('dd/mm/yyyy hh:mm:ss',now),2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Cliente..: '+copy(TblTicketPreVendaCabCliente.AsString,1,25),2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Codigo  Descricao',2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Qtde.        Preco        Desc         Total',2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
                   // Loop dos Produtos
                   TblTicketPreVendaItem.First;
                   While not TblTicketPreVendaItem.Eof Do
                     begin
                       vLin1Itens := '';
                       vLin2Itens := '';
                       vLin1Itens := FormatFloat('######000000',TblTicketPreVendaItemCodigo.AsFloat) + '  ' +
                                     TblTicketPreVendaItemDescricao.AsString;
                       vLin2Itens := FormatFloat('#,##0.00',TblTicketPreVendaItemQuantidade.AsFloat)   + '        ' +
                                     FormatFloat('#,##0.00',TblTicketPreVendaItemValorUnitario.AsFloat)+ '        ' +
                                     FormatFloat('#,##0.00',TblTicketPreVendaItemDesconto.AsFloat)     + '          ' +
                                     FormatFloat('#,##0.00',TblTicketPreVendaItemValorTotal.AsFloat);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,vLin1Itens,2,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,vLin2Itens,2,0,0,0,0);
                       TblTicketPreVendaItem.Next;
                     end;
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Produtos..: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTotalNominal.AsFloat),3,0,0,0,0);
                   if TblTicketPreVendaCabTaxaCrediario.AsFloat > 0 then
                     ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Taxa Cred.: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTaxaCrediario.AsFloat),3,0,0,0,0);
                   if TblTicketPreVendaCabAcrescimo.AsFloat > 0 then
                     ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Acresc....: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabAcrescimo.AsFloat),3,0,0,0,0);
                   if TblTicketPreVendaCabDesconto.AsFloat > 0 then
                     ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Desconto..: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabDesconto.AsFloat),3,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Total.....: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTotalGeral.AsFloat),3,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Recebido..: R$ '+ FormatFloat('#,##0.00',VarValorRecebido),3,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Troco.....: R$ '+ FormatFloat('#,##0.00',VarValorTroco),3,0,0,0,0);
                   // Assinatura Cliente
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Ass. Cliente: ____________________ ',1,0,0,0,0);
                   // Mensagem Final
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   if DM.SQLTerminalAtivoTERMA255MSGCARNE.AsString <> '' then
                     ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DM.SQLTerminalAtivoTERMA255MSGCARNE.AsString,3,0,0,0,1);

                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   // Se for Bematech saltar mais algumas linhas pra destacar melhor o ticket
                   if (ImpNaoFiscalAtual = 'BEMATECH MP-20 CI') then
                     begin
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                       AcionaGuilhotina_NAOFISCAL(ImpNaoFiscalAtual,1);
                     end;
                 end;
             end
           else
             begin
               // Pegar o Nome da Empresa Padrao
               DM.SQLTemplate.Close ;
               DM.SQLTemplate.SQL.Clear ;
               DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
               DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
               DM.SQLTemplate.Open ;
               if not DM.SQLTemplate.IsEmpty then
                 begin
                   NomeEmpresa := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value ;
                   FoneEmpresa := DM.SQLTemplate.FieldByName('EMPRA20FONE').Value ;
                 end;
               DM.SQLTemplate.Close ;
               // Imprime o Cabe�alho do pedido
               AbrirPortaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'CUPOM NAO FISCAL',3,0,0,1,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               // Dados da Empresa
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,NomeEmpresa,3,0,0,0,1);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Fone.....:'+FoneEmpresa,2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               // Cabe�alho dos Produtos
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Documento: '+TblTicketPreVendaCabTicketNumero.AsString,2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Data.....: '+FormatDateTime('dd/mm/yyyy hh:mm:ss',now),2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Cliente..: '+copy(TblTicketPreVendaCabCliente.AsString,1,25),2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Codigo  Descricao',2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Qtde.        Preco        Desc         Total',2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
               // Loop dos Produtos
               TblTicketPreVendaItem.First;
               While not TblTicketPreVendaItem.Eof Do
                 begin
                   vLin1Itens := '';
                   vLin2Itens := '';
                   vLin1Itens := FormatFloat('######000000',TblTicketPreVendaItemCodigo.AsFloat) + '  ' +
                                 TblTicketPreVendaItemDescricao.AsString;
                   vLin2Itens := FormatFloat('#,##0.00',TblTicketPreVendaItemQuantidade.AsFloat)   + '        ' +
                                 FormatFloat('#,##0.00',TblTicketPreVendaItemValorUnitario.AsFloat)+ '        ' +
                                 FormatFloat('#,##0.00',TblTicketPreVendaItemDesconto.AsFloat)     + '          ' +
                                 FormatFloat('#,##0.00',TblTicketPreVendaItemValorTotal.AsFloat);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,vLin1Itens,2,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,vLin2Itens,2,0,0,0,0);
                   TblTicketPreVendaItem.Next;
                 end;
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Produtos..: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTotalNominal.AsFloat),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Taxa Cred.: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTaxaCrediario.AsFloat),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Acresc....: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabAcrescimo.AsFloat),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Desconto..: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabDesconto.AsFloat),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Total.....: R$ '+ FormatFloat('#,##0.00',TblTicketPreVendaCabTotalGeral.AsFloat),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Recebido..: R$ '+ FormatFloat('#,##0.00',VarValorRecebido),3,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Valor Troco.....: R$ '+ FormatFloat('#,##0.00',VarValorTroco),3,0,0,0,0);
               // Assinatura Cliente
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'-----------------------------------------------',2,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,'Ass. Cliente: ____________________ ',1,0,0,0,0);
               // Mensagem Final
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               if DM.SQLTerminalAtivoTERMA255MSGCARNE.AsString <> '' then
                 ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,DM.SQLTerminalAtivoTERMA255MSGCARNE.AsString,3,0,0,0,1);

               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
               // Se for Bematech saltar mais algumas linhas pra destacar melhor o ticket
               if (ImpNaoFiscalAtual = 'BEMATECH MP-20 CI') then
                 begin
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   ImprimeTextoFormatado_NAOFISCAL(ImpNaoFiscalAtual,Chr(10),1,0,0,0,0);
                   AcionaGuilhotina_NAOFISCAL(ImpNaoFiscalAtual,1);
                 end;
             end;
       end
     else
       begin
         if DM.SQLTerminalAtivoTERMA60IMPPEDIDO.Value = '' then
           exit ;

         if DM.SQLTerminalAtivoTERMA60IMPPEDIDO.Value = 'LPT1' Then
         Begin
           try
             AssignFile(Arquivo,'LPT1');
             Rewrite(Arquivo);
           except
             ShowMessage('Problemas a tentar abrir a porta de comunica��o !') ;
             CloseFile(Arquivo) ;
             exit ;
           end ;
           //Reposiciona
           Writeln(Arquivo, CHR(27)) ;
           // Abre Gaveta
           // Writeln(Arquivo, CHR(27)+'P') ;
           //Compactar Letras
           Writeln(Arquivo, CHR(15)) ;
           CloseFile(Arquivo) ;
         end;

         if FileExists('ToScreen.arq') then
           ppReport1.DeviceType := 'Screen' ;

{         if DM.SQLTerminalAtivoTERMCIMPBARRASPED.Value <> 'S'then
           ppDBBarCode1.Visible := false ;}

         // Pegar o Nome da Empresa Padrao
         DM.SQLTemplate.Close ;
         DM.SQLTemplate.SQL.Clear ;
         DM.SQLTemplate.SQL.Add('select * from EMPRESA') ;
         DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
         DM.SQLTemplate.Open ;
         if not DM.SQLTemplate.EOF then
           begin
             NomeEmpresa := DM.SQLTemplate.FieldByName('EMPRA60NOMEFANT').Value ;
             FoneEmpresa := DM.SQLTemplate.FieldByName('EMPRA20FONE').Value ;
           end;
         DM.SQLTemplate.Close ;
         // Fim desta Rotina

         ppReport1.PrinterSetup.DocumentName := 'Cupom de Pr�-Venda' ;
         ppReport1.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPPEDIDO.asString ;
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value = 'S' then
           if Pergunta('SIM','Deseja imprimir a Prevenda Atual?') then
             ppReport1.print ;
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value <> 'S' then
           if Pergunta('NAO','Deseja imprimir a Prevenda Atual?') then
             ppReport1.print ;
         // Segunda Via
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value = 'S' then
           if Pergunta('SIM','Deseja imprimir a Segunda Via?') then
             ppReport1.print ;
         if dm.SQLTerminalAtivoTERMCIMPPREVENDASIM.Value <> 'S' then
           if Pergunta('NAO','Deseja imprimir a Segunda Via?') then
             ppReport1.print ;

       end;
   end;
 Close;
end;

procedure TFormTelaImpressaoPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TblTicketPreVendaCab.Close ;
  TblTicketPreVendaItem.Close ;
  TblTicketPreVendaFin.Close ;
  Action := CAfree ;
end;

procedure TFormTelaImpressaoPreVenda.FormCreate(Sender: TObject);
begin
  Caption := '' ;
  try
    TblTicketPreVendaCab.Open ;
    TblTicketPreVendaItem.Open ;
    TblTicketPreVendaFin.Open ;
  except
    Application.ProcessMessages;
  end;
end;

Procedure TFormTelaImpressaoPreVenda.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  ppLBEmpresa.Caption := NomeEmpresa;
end;

end.
