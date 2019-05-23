unit Sigtron_FS345;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs ;

  function  AbrirPortaECF_Sigtron_FS345(Porta, LibName : string) : boolean ;
  function  FecharPortaECF_Sigtron_FS345 : boolean ;
  function  BuscaRetorno_Sigtron_FS345 : string ;

  procedure Leitura_X_Sigtron_FS345 ;
  procedure Leitura_X_DARUMA_FS345 ;

  procedure Reducao_Z_Sigtron_FS345 ;
  procedure Reducao_Z_DARUMA_FS345 ;

  function  AbrirGaveta_Sigtron_FS345 : Boolean;
  function  AbrirGaveta_Daruma_FS345 : Boolean;

  function  AbrirCupomFiscal_Sigtron_FS345(Var NroCupom : String) : boolean ;
  function  AbrirCupomFiscal_DARUMA_FS345(Var NroCupom : String) : boolean ;

  function  ImprimeItem_Sigtron_FS345(Codigo, Descricao, Tributo, Unid : String ; Qtde, Valor, PercDesc : Double; NumDec : integer) : boolean ;
  function  ImprimeItem_Daruma_FS345(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;

  function  CancelaItem_Sigtron_FS345(Posicao: String) : boolean ;
  function  CancelaItem_DARUMA_FS345(Posicao: String) : boolean ;

  function  ImprimeDadosCliente_Sigtron_FS345(Nome, Endereco, Documento: String) : boolean ;

  function  CancelarCupomFiscal_Sigtron_FS345 : boolean ;
  function  CancelarCupomFiscal_DARUMA_FS345 : boolean ;

  function  FecharCupomFiscal_Sigtron_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
  function  FecharCupomFiscal_DARUMA_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;

  function  EnviaFP_Sigtron_FS345(Identificador, MsgOpc : string; Valor : double) : boolean ;
  function  EnviaFP_DARUMA_FS345(Descricao_FormaPagamento : string; Valor : double) : boolean ;

  function  AbrirCNFV_Sigtron_FS345(Identificador, TipoDoc:char; Ecf_ID, NroCupom : string; Valor : double) : Boolean ;
  function  AbrirCNFV_DARUMA_FS345(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;
  function  LinhaTextoLivre_Sigtron_FS345(Texto : string) : boolean ;
  function  LinhaTextoLivre_DARUMA_FS345(Texto : string) : boolean ;
  function  FecharCNFV_Sigtron_FS345 : Boolean ;
  function  FecharCNFV_DARUMA_FS345 : Boolean ;

  function  EmiteCNFNV_Sigtron_FS345(Identificador, Msg : string; Valor:double) : boolean ;
  function  EmiteCNFNV_DARUMA_FS345(Identificador, Msg : string; Valor:double) : boolean ;
  function  Daruma_FI_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
  function  Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';

  function  Autenticacao_Sigtron_FS345(Msg : String) : boolean ;
  function  Autenticacao_Daruma_FS345(Msg : String) : boolean ;
  function  Sangria_Daruma_FS345(Valor : Double) : boolean ;
  function  Suprimento_Daruma_FS345(Valor : Double; Forma_de_Pagamento: String) : boolean ;

  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function  Zeros(Str:String; Tam:Integer; Orient:String) : String ;

  //RELATORIO GERENCIAL
  function  AbreRelatorioGerencial_DARUMA_FS345():Boolean;
  function  EmiteRelatorioGerencial_Sigtron_FS345(Texto:String):Boolean;
  function  EmiteRelatorioGerencial_DARUMA_FS345(Texto:String):Boolean;
  function  FechamentoRelatorioGerencial_Sigtron_FS345():Boolean;
  function  FechamentoRelatorioGerencial_DARUMA_FS345():Boolean;

  function  ImprimeRespostaCartao_Daruma_FS345(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : String) : boolean;
var
  ChrRet : array[0..999] of Char;
  IntRet : integer ;

implementation

uses TelaCompSigtron, Sigtron_FS345_FuncoesDLL, UnitCheckoutLibrary, DB ;

function  AbreRelatorioGerencial_DARUMA_FS345():Boolean;
begin
   if Daruma_FI_AbreRelatorioGerencial > 0 then
     AbreRelatorioGerencial_DARUMA_FS345 := True
   else
     AbreRelatorioGerencial_DARUMA_FS345 := False;
end;

function  EmiteRelatorioGerencial_Sigtron_FS345(Texto:String):Boolean;
begin
  IntRet := DAR_AbreX('1');
  Sleep(30000);
  if IntRet > 0 then
    EmiteRelatorioGerencial_Sigtron_FS345 := True
  else
    EmiteRelatorioGerencial_Sigtron_FS345 := False;
end;

function  EmiteRelatorioGerencial_DARUMA_FS345(Texto:String):Boolean;
begin
  if Daruma_FI_RelatorioGerencial(Texto) > 0 then
    EmiteRelatorioGerencial_DARUMA_FS345 := True
  else
    EmiteRelatorioGerencial_DARUMA_FS345 := False;
end;

function  FechamentoRelatorioGerencial_Sigtron_FS345():Boolean;
begin
   if DAR_FechaX('1') > 0 then
     FechamentoRelatorioGerencial_Sigtron_FS345 := True
   else
     FechamentoRelatorioGerencial_Sigtron_FS345 := False;
end;

function  FechamentoRelatorioGerencial_DARUMA_FS345():Boolean;
begin
   if Daruma_FI_FechaRelatorioGerencial > 0 then
     FechamentoRelatorioGerencial_DARUMA_FS345 := True
   else
     FechamentoRelatorioGerencial_DARUMA_FS345 := False;
end;

function  AbrirPortaECF_Sigtron_FS345(Porta, LibName : string) : boolean ;
begin
  IntRet := DAR_AbreSerial(Porta + ':9600,n,8,1');
  IntRet := DAR_Resposta(ChrRet, 100);
end ;

function  BuscaRetorno_Sigtron_FS345 : string ;
begin
end ;

function  FecharPortaECF_Sigtron_FS345 : boolean ;
begin
end ;

procedure Leitura_X_Sigtron_FS345 ;
begin
  IntRet := DAR_LeituraX('1') ;
  IntRet := DAR_Resposta(ChrRet, 100) ;
end ;

procedure Leitura_X_DARUMA_FS345 ;
begin
  IntRet := Daruma_FI_LeituraX() ;
end ;

procedure Reducao_Z_Sigtron_FS345 ;
begin
  IntRet := DAR_ReducaoZ(FormatDateTime('ddmmyyhhmmss', Now), '1') ;
  IntRet := DAR_Resposta(ChrRet, 100) ;
end ;

procedure Reducao_Z_DARUMA_FS345 ;
begin
  IntRet := Daruma_FI_ReducaoZ(' ', ' ') ;
end ;

function AbrirCupomFiscal_Sigtron_FS345(Var NroCupom : String) : boolean ;
begin
  try
    IntRet := DAR_AbreCupomFiscal('1');
    IntRet := DAR_Resposta(ChrRet, 100);
    NroCupom := ChrRet[2] + ChrRet[3] + ChrRet[4] + ChrRet[5] + ChrRet[6] + ChrRet[7] ;
    AbrirCupomFiscal_Sigtron_FS345 := True;
  except
    AbrirCupomFiscal_Sigtron_FS345 := False;
  end;
end ;

function AbrirCupomFiscal_DARUMA_FS345(Var NroCupom : String) : boolean ;
begin
  try
    NroCupom := '000000';
    IntRet := Daruma_FI_AbreCupom( pchar('') );
    Daruma_FI_NumeroCupom(NroCupom);
    AbrirCupomFiscal_Daruma_FS345 := True;
  except
    AbrirCupomFiscal_Daruma_FS345 := False;
  end;
end ;

function ImprimeItem_Sigtron_FS345(Codigo, Descricao, Tributo, Unid : String ; Qtde, Valor, PercDesc : Double; NumDec : integer) : boolean ;
Var
  StrAux,
  Quant,
  QuantFrac,
  Desco,
  VlUnit,
  TotalItemSigtron,
  Preco,
  Tipo : String;
begin
  //Rotina a ser implementada para resolver o problema das casas decimais
{  if Frac(Qtde) > 0 then
    begin}

      Quant  := FormatFloat('00000.000',Qtde);
      if Pos('.',Quant) > 0 then
        Delete(Quant,Pos('.',Quant),1);
      if Pos(',',Quant) > 0 then
        Delete(Quant,Pos(',',Quant),1);

      // Desco  := ConvFloatToStrECF(Percdesc, 4);
      Desco  := FormatFloat('##0.00', Percdesc);
      if Pos('.',Desco) > 0 then
        Delete(Desco,Pos('.',Desco),1);
      if Pos(',',Desco) > 0 then
        Delete(Desco,Pos(',',Desco),1);

      Preco  := FormatFloat('0000000.000', Valor);

      if Pos('.',Preco) > 0 then
        Delete(Preco,Pos('.',Preco),1);
      if Pos(',',Preco) > 0 then
        Delete(Preco,Pos(',',Preco),1);

      // Tenta formatar caso seja um Cd.Interno
      // Se for Cd.barras, entra na exceçao, sem formatacao
      try
//        Codigo := Format('%.13d',[StrToInt(Codigo)]);
        Codigo := FormatFloat('#############0000000000000',StrToFloat(Codigo));
      except
        Application.ProcessMessages;
      end;

      IntRet := DAR_DescPreUn3dF53(Tributo,//St
                                   Codigo,//Cod
                                   '0',//D_A
                                   FloatToSTr(Percdesc),//Porc
                                   Preco,//Preco
                                   Quant,//Quant
                                   Format('%2s',[Unid]),//Unid
                                   Format('%.30s',[Descricao]),//Desc
                                   '1'); //Wait
{    end
  else
    begin
      Quant  := FormatFloat('####0',Qtde);
      Desco  := FormatFloat('#0.00',PercDesc);
      Preco  := FormatFloat('#,##0.00', Valor);
      Preco  := ConvFloatToStrECF(StrToFloat(Preco),12);

      IntRet := DAR_Desc2Lin13Dig(Tributo,//St
                                  Format('%.13d',[StrToInt(Codigo)]),//Cod
                                  '0',//D_A
                                  Desco,//Desconto
                                  Preco,//Preco
                                  Quant,//Quant
                                  Format('%2s',[Unid]),//Unid
                                  Format('%.30s',[Descricao]),//Desc
                                  '1');//Wait
    end;}

  //Retorno
  if IntRet = 1 then
    ImprimeItem_Sigtron_FS345 := true;
  if IntRet = -1 then
    ImprimeItem_Sigtron_FS345 := false;

  IntRet := DAR_Resposta(ChrRet,100);

end ;

function ImprimeItem_Daruma_FS345(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf : string;
var ValorUnitarioMenosDesconto, TotalItemECF, TotalItemCalc : Double;
begin
  ValorUnitarioMenosDesconto := Valor_Unitario * (Valor_do_Desconto/100);
  ValorUnitarioMenosDesconto := Valor_Unitario - ValorUnitarioMenosDesconto;
  ValorUnitarioEcf           := FormatFloat('##0.00',ValorUnitarioMenosDesconto);
  ValorDescontoEcf           := '0,00';
  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      TipoDescECF        := 'D';
      case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
        2 : begin
              QuantEcf := FormatFloat('##0.00',Quantidade);
              IntRet   := Daruma_FI_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
        3 : begin
              if FileExists('C:\Unit\Gestao\Truncada.txt') then
                begin
                  TotalItemECF    := StrToFloat(FormatFloat('##0.00', StrToFloat(FormatFloat('##0.00',ValorUnitarioMenosDesconto))*
                                     StrToFloat(FormatFloat('##0.000',Quantidade))));
                  TotalItemCalc   := Quantidade*ValorUnitarioMenosDesconto;
                  while (TotalItemECF>TotalItemCalc) do
                    begin
                      Quantidade    := Quantidade + 0.001;
                      TotalItemCalc := Quantidade*ValorUnitarioMenosDesconto;
                    end;
                  ValorUnitarioEcf   := FormatFloat('##0.00',ValorUnitarioMenosDesconto);
                end;
              QuantEcf := FormatFloat('##0.000', Quantidade);
              IntRet   := Daruma_FI_VendeItemTresDecimais(pchar(Codigo), pchar(Descricao), pchar(Aliquota), pchar(QuantEcf), pchar(ValorUnitarioECF), pchar(TipoDescECF), pchar(ValorDescontoEcf));
            end;
      end;
    end
  else
    begin
      Tipo_de_Quantidade := 'I';
      QuantEcf := IntToStr(Round(Int(Quantidade)));
      // O Parametro abaixo "Casas Decimais" é somente para o Valor Unitario a ser passado
      IntRet := Daruma_FI_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
    end;
  if IntRet = 1 then
    ImprimeItem_DARUMA_FS345 := true
  else
    ImprimeItem_DARUMA_FS345 := false;
end;

function CancelaItem_Sigtron_FS345(Posicao: String) : boolean ;
begin
  try
    IntRet := DAR_CancelaItem(Posicao, '1') ;
    IntRet := DAR_Resposta(ChrRet, 100);
    CancelaItem_Sigtron_FS345 := True;
  except
    CancelaItem_Sigtron_FS345 := False;
  end;
end ;

function CancelaItem_DARUMA_FS345(Posicao: String) : boolean ;
begin
  try
    IntRet := Daruma_FI_CancelaItemGenerico(Posicao) ;

    CancelaItem_DARUMA_FS345 := True;
  except
    CancelaItem_DARUMA_FS345 := False;
  end;
end ;

function FecharCupomFiscal_Sigtron_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery; NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
var
  MsgFimCupom,
  AcrescDesc : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
  //TOTALIZAR CUPOM
  AcrescDesc := ConvFloatToStrECF(VlrAcrescDesc,12) ;
  if TipoAcrescDesc = 'A' then
    DAR_Totaliza('5', AcrescDesc, '1') ;
  if TipoAcrescDesc = 'D' then
    DAR_Totaliza('1', AcrescDesc, '1') ;
  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next;
  end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  i := SQLFPVista.RecordCount;
  while not SQLFPVista.EOF do
  begin
    if i = 1 then
      EnviaFP_Sigtron_FS345(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                            '',
                            SQLFPVista.Fieldbyname('VALORPARC').AsFloat + VlrTroco)
    else
      EnviaFP_Sigtron_FS345(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                            '',
                            SQLFPVista.Fieldbyname('VALORPARC').AsFloat);

    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
    SQLFPVista.Next ;
    dec(I);
  end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
  begin
    EnviaFP_Sigtron_FS345(RetornaTotalizadorNumerarioECF(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                          '',
                          TotalPrazo) ;
  end ;
  //IMPRIMIR DADOS DO CLIENTE
{  if DM.SQLTerminalAtivoTERMCINFDADOSCLICP.Value <> 'N' then
    ImprimeDadosCliente_Sigtron_FS345(Copy(NomeCli,1,42), Copy(EnderecoCli,1,42), Copy(DocumentoCli,1,42)) ;}

  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (ImprimeDadosClienteCupom = 'S') and (NomeCli <> SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+DM.SQLTerminalAtivoCLIEA13ID.AsString+'"')) then
    if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
      MsgFimCupom := 'VEND.: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10) + Chr(10) +
                     'PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17)    + Chr(10) +
                     'CLIENTE: ' + ConverteAcentos(NomeCli)                       + Chr(10) +
                     ConverteAcentos(DocumentoCli)                                + Chr(10) +
                     'END..: ' + ConverteAcentos(Copy(EnderecoCli, 01, 30))       + Chr(10) +
                     '       ' + ConverteAcentos(Copy(EnderecoCli, 31, 30))       + Chr(10) +
                     'CID..: ' + ConverteAcentos(Copy(CidadeCli,   01, 30))       + Chr(10) +
                     'Obs..: ' + ConverteAcentos(Copy(OBSImpressaoCupom, 01, 30)) + Chr(10) +
                     'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
    else
      MsgFimCupom := 'VEND.: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10) + Chr(10) +
                     'PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17)    + Chr(10) +
                     'CLIENTE: ' + ConverteAcentos(NomeCli)                     + Chr(10) +
                     ConverteAcentos(DocumentoCli)                              + Chr(10) +
                     'END..: ' + ConverteAcentos(Copy(EnderecoCli, 01, 30))     + Chr(10) +
                     '       ' + ConverteAcentos(Copy(EnderecoCli, 31, 30))     + Chr(10) +
                     'CID..: ' + ConverteAcentos(Copy(CidadeCli,   01, 30))     + Chr(10) +
                     'Obs..: ' + ConverteAcentos(Copy(OBSImpressaoCupom, 01, 30));

  IntRet := DAR_FechaCupom(MsgFimCupom, '1');
  IntRet := DAR_Resposta(ChrRet, 100);
  if IntRet > 0 then
    FecharCupomFiscal_Sigtron_FS345 := True
  else
    FecharCupomFiscal_Sigtron_FS345 := False;
end ;

function  FecharCupomFiscal_DARUMA_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom :string) : boolean ;
var
  MsgFimCupom, NumerarioDescricaoDaruma, VlrAcrescDescSTR : string ;
  TotalVista,  TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    Daruma_FI_IniciaFechamentoCupom( 'A', '$', VlrAcrescDescSTR )
  else
    Daruma_FI_IniciaFechamentoCupom( 'D', '$', VlrAcrescDescSTR ) ;

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatFloat('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  i := SQLFPVista.RecordCount;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);
      if i = 1 then
        EnviaFP_DARUMA_FS345(NumerarioDescricaoDaruma, StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat))+ VlrTroco)
      else
        EnviaFP_DARUMA_FS345(NumerarioDescricaoDaruma, StrToFloat(FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)));

      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
      dec(I);
    end ;

  SQLFPPrazo.First ;
  while not SQLFPPrazo.EOF do
    begin
      if (TotalVista + TotalPrazo) < Valor then
        TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;
      SQLFPPrazo.Next;
    end;

  if ((TotalVista + TotalPrazo) > Valor) then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
    begin
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_DARUMA_FS345(NumerarioDescricaoDaruma, TotalPrazo);
    end;

  //IMPRIMIR DADOS DO CLIENTE
  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (ImprimeDadosClienteCupom = 'S') and (NomeCli <> SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+DM.SQLTerminalAtivoCLIEA13ID.AsString+'"')) then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'VEND: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10) +
                       '  PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17) + Chr(10) +
                       'CLIENTE: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Obs: ' + OBSImpressaoCupom                          + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'VEND: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10) +
                       '  PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17) + Chr(10) +
                       'CLIENTE: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Obs: ' + OBSImpressaoCupom ;
    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Doc.emit p/empr.peq.Porte. Nao gera ICMS'  + Chr(10) +
                       '          Obrigado! Volte Sempre!'
      else
        MsgFimCupom := '          Obrigado! Volte Sempre!';
    end;
  IntRet := Daruma_FI_TerminaFechamentoCupom( MsgFimCupom );
  if IntRet > 0 then
    FecharCupomFiscal_DARUMA_FS345 := True
  else
    FecharCupomFiscal_DARUMA_FS345 := False;
end;

function CancelarCupomFiscal_Sigtron_FS345 : boolean ;
begin
  IntRet := DAR_CancelaDoc('1');
  IntRet := DAR_Resposta(ChrRet, 100);
  if IntRet > 0 then
    CancelarCupomFiscal_Sigtron_FS345 := True
  else
    CancelarCupomFiscal_Sigtron_FS345 := False;

end ;

function CancelarCupomFiscal_DARUMA_FS345 : boolean ;
begin
  IntRet := Daruma_FI_CancelaCupom();
  if IntRet > 0 then
    CancelarCupomFiscal_DARUMA_FS345 := True
  else
    CancelarCupomFiscal_DARUMA_FS345 := False;
end ;

function  EmiteCNFNV_Sigtron_FS345(Identificador, Msg : string; Valor:double) : boolean ;
begin
  IntRet := DAR_AbreCNFNV(Identificador[1],
                          '1',
                          '000000000000',
                          ConvFloatToStrECF(Valor, 12),
                          Msg, // até 40 char em 2 linhas encerrado por FF
                          '1') ;

  IntRet := DAR_Resposta(ChrRet, 100);
end ;

function  EmiteCNFNV_DARUMA_FS345(Identificador, Msg : string; Valor:double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatCurr('###,##0.00',Valor);
  IntRet := Daruma_FI_AbreRecebimentoNaoFiscal(Pchar(Trim(Identificador)),Pchar(Trim('D')), Pchar(Trim('$')),Pchar(Trim('0,00')), Pchar(Trim(Vlr)), Pchar(Trim(Msg)));
  if IntRet > 0 then
    EmiteCNFNV_DARUMA_FS345 := True
  else
    EmiteCNFNV_DARUMA_FS345 := False;
end ;

function  EnviaFP_Sigtron_FS345(Identificador, MsgOpc  : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  if MsgOpc = '' then
    MsgOpc := ' ' ;

  Vlr := ConvFloatToStrECF(Valor, 12) ;
  IntRet := DAR_DescFormPag(Identificador[1],
                            Vlr,
                            MsgOpc,
                            '1') ;
  IntRet := DAR_Resposta(ChrRet, 100);
end ;

function  EnviaFP_DARUMA_FS345(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  // Vlr := FormatCurr('##0.00',Valor);
  Vlr := FormatFloat('##0.00',Valor);
  IntRet := Daruma_FI_EfetuaFormaPagamento(Descricao_FormaPagamento, Vlr) ;
  if IntRet > 0 then
    EnviaFP_DARUMA_FS345 := True
  else
    EnviaFP_DARUMA_FS345 := False;
end ;

function  Autenticacao_Sigtron_FS345(Msg : String) : boolean ;
begin
  if Msg = '' then
    Msg := ' ' ;
  IntRet := DAR_Autentica(Msg, '1') ;
  IntRet := DAR_Resposta(ChrRet, 100);
end ;

function  Autenticacao_Daruma_FS345(Msg : String) : boolean ;
begin
  if Msg = '' then
    Msg := 'Advanced Control' ;
  IntRet := Daruma_FI_AutenticacaoStr(Msg) ;
  if IntRet > 0 then
    Autenticacao_Daruma_FS345 := True
  else
    Autenticacao_Daruma_FS345 := False;
end ;

function  AbrirCNFV_Sigtron_FS345(Identificador, TipoDoc:char; Ecf_ID, NroCupom : string; Valor : double) : Boolean ;
var
  Vlr : string;
begin
  Vlr    := ConvFloatToStrECF(Valor, 12) ;
  IntRet := DAR_AbreCNFV(TipoDoc,Identificador, NroCupom, Vlr, '1') ;
  if IntRet > 0 then
    AbrirCNFV_Sigtron_FS345 := True
  else
    AbrirCNFV_Sigtron_FS345 := False;
end ;

function  AbrirCNFV_DARUMA_FS345( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  Vlr, TotalizadorEcf : string;
begin
  IntRet := Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento, Vlr, Numero_do_Cupom );
  if IntRet > 0 then
    AbrirCNFV_DARUMA_FS345 := True
  else
    AbrirCNFV_DARUMA_FS345 := False;
end ;

function LinhaTextoLivre_Sigtron_FS345(Texto : string) : boolean ;
begin
  IntRet := DAR_LinhaX(Texto, '1') ;
  if IntRet > 0 then
    LinhaTextoLivre_Sigtron_FS345 := True
  else
    LinhaTextoLivre_Sigtron_FS345 := False;
end ;

function LinhaTextoLivre_DARUMA_FS345(Texto : string) : boolean ;
begin
  IntRet := Daruma_FI_UsaComprovanteNaoFiscalVinculado(Texto) ;
  if IntRet > 0 then
    LinhaTextoLivre_DARUMA_FS345 := True
  else
    LinhaTextoLivre_DARUMA_FS345 := False;
end ;

function FecharCNFV_Sigtron_FS345 : Boolean ;
begin
  IntRet := DAR_FechaX('1');
  IntRet := DAR_Resposta(ChrRet, 100);
  if IntRet > 0 then
    FecharCNFV_Sigtron_FS345 := True
  else
    FecharCNFV_Sigtron_FS345 := False;
end ;

function FecharCNFV_DARUMA_FS345 : Boolean ;
begin
  IntRet := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
  if IntRet > 0 then
    FecharCNFV_DARUMA_FS345 := True
  else
    FecharCNFV_DARUMA_FS345 := False;
end ;

function ImprimeDadosCliente_Sigtron_FS345(Nome, Endereco, Documento: String) : boolean ;
var
  Texto : string;
begin
  Texto := Format('%-84s',[Nome]) +
           Format('%-84s',[Endereco]) +
           Format('%-42s',[Documento]) ;
  IntRet := DAR_IdentConsum(Texto, '1') ;
  IntRet := DAR_Status;
  IntRet := DAR_Resposta(ChrRet, 100);
end ;

function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir') ;
end ;

function Zeros(Str:String; Tam:Integer; Orient:String) : String ;
Var Dif, i : integer ;
begin
  Dif := Tam - Length(Str) ;
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0' ;
    if Orient = 'Dir' then
      Str := '0' + Str ;
  End ;
  Zeros := Str ;
end ;

function AbrirGaveta_Sigtron_FS345 : Boolean;
begin
  IntRet := DAR_AbreGaveta ;
  if IntRet > 0 then
    AbrirGaveta_Sigtron_FS345 := True
  else
    AbrirGaveta_Sigtron_FS345 := False;
end ;

function AbrirGaveta_Daruma_FS345 : Boolean;
begin
  IntRet := Daruma_FI_AcionaGaveta ;
  if IntRet > 0 then
    AbrirGaveta_Daruma_FS345 := True
  else
    AbrirGaveta_Daruma_FS345 := False;
end ;

function ImprimeRespostaCartao_Daruma_FS345(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : String) : boolean;
begin
  IntRet := Daruma_TEF_ImprimirResposta(CaminhoRespostaCartao,CartaoDescricao,'1');

  // Reimprimir usando o Relatorio Gerencial
  if IntRet < 1 then
    IntRet := Daruma_TEF_ImprimirResposta(CaminhoRespostaCartao,'','1');

  if IntRet > 0 then
    ImprimeRespostaCartao_Daruma_FS345 := True
  else
    ImprimeRespostaCartao_Daruma_FS345 := False;
end;

function  Sangria_Daruma_FS345(Valor : Double) : boolean ;
var Vlr : String;
begin
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := Daruma_FI_Sangria(Vlr) ;
  if IntRet > 0 then
    Sangria_Daruma_FS345 := True
  else
    Sangria_Daruma_FS345 := False;
end ;

function  Suprimento_Daruma_FS345(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricaoDaruma : String;
begin
  NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := Daruma_FI_Suprimento(Vlr, NumerarioDescricaoDaruma) ;
  if IntRet > 0 then
    Suprimento_Daruma_FS345 := True
  else
    Suprimento_Daruma_FS345 := False;
end ;

end.
