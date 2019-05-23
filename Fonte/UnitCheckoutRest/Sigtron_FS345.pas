unit Sigtron_FS345;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs, StdCtrls ;

  function  AbrirPortaECF_Sigtron_FS345(Porta, LibName : string) : boolean ;
  function  FecharPortaECF_Sigtron_FS345 : boolean ;
  function  BuscaRetorno_Sigtron_FS345 : string ;

  function  VerificaECFLigada_DARUMA_FRAMEWORK : Boolean;
  function  VerificaZPendente_DARUMA_FRAMEWORK : Boolean;

  function  Leitura_X_DARUMA_FRAMEWORK : boolean ;

  function  Reducao_Z_DARUMA_FRAMEWORK : boolean ;

  function  AbrirGaveta_Daruma_FRAMEWORK : Boolean;

  function  Guilhotina_Daruma_FRAMEWORK : Boolean;

  function  AbrirCupomFiscal_DARUMA_FRAMEWORK(Var NroCupom : String) : boolean ;

  function  ImprimeItem_Daruma_FRAMEWORK(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double; Unidade: String): boolean ;

  function  CancelaItem_DARUMA_FRAMEWORK(Posicao: String) : boolean ;

  function  ImprimeDadosCliente_Sigtron_FS345(Nome, Endereco, Documento: String) : boolean ;

  function  CancelarCupomFiscal_DARUMA_FRAMEWORK : boolean ;

  function  FecharCupomFiscal_DARUMA_FRAMEWORK(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano : String; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;

  function  EnviaFP_DARUMA_FRAMEWORK(Descricao_FormaPagamento : string; Valor : double) : boolean ;

  function  AbrirCNFV_DARUMA_FRAMEWORK(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;

  function  LinhaTextoLivre_DARUMA_FRAMEWORK(Texto : string) : boolean ;

  function  FecharCNFV_DARUMA_FRAMEWORK :Boolean;

  function  EmiteCNFNV_Sigtron_FS345(Identificador, Msg : string; Valor:double) : boolean ;
  function  EmiteCNFNV_DARUMA_FS345(Identificador, Msg : string; Valor:double) : boolean ;
  function  Daruma_FI_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
  function  Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';

  function  Autenticacao_Sigtron_FS345(Msg : String) : boolean ;
  function  Autenticacao_Daruma_FS345(Msg : String) : boolean ;

  function  Sangria_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
  function  Suprimento_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;

  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function  Zeros(Str:String; Tam:Integer; Orient:String) : String ;

  //RELATORIO GERENCIAL
  function  AbreRelatorioGerencial_DARUMA_FrameWork():Boolean;
  function  EmiteRelatorioGerencial_DARUMA_FrameWork(Texto:String):Boolean;
  function  FechamentoRelatorioGerencial_DARUMA_FrameWork():Boolean;

  function  ImprimeRespostaCartao_Daruma_FS345(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : String) : boolean;
var
  ChrRet : array[0..999] of Char;
  IntRet : integer ;
  Arquivo : TMemo;

implementation

uses TelaCompSigtron, Sigtron_FS345_FuncoesDLL, UnitCheckoutLibrary, DB, Daruma_Framework_FISCAL ;

function VerificaECFLigada_DARUMA_FRAMEWORK : Boolean;
begin
  intret := rVerificarImpressoraLigada_ECF_Daruma();
  if intret = 1 then
    VerificaECFLigada_DARUMA_FRAMEWORK := True
  else
    VerificaECFLigada_DARUMA_FRAMEWORK := False;
end;

function VerificaZPendente_DARUMA_FRAMEWORK : Boolean;
Var Str_VerificarRZ: String;
begin
  SetLength (Str_VerificarRZ,1);
  intret := rVerificarReducaoZ_ECF_Daruma(Str_VerificarRZ);
  if intret = 1 then
    VerificaZPendente_DARUMA_FRAMEWORK := True
  else
    VerificaZPendente_DARUMA_FRAMEWORK := False;
end;

function  AbreRelatorioGerencial_DARUMA_FS345():Boolean;
begin
  intret := Daruma_FI_AbreRelatorioGerencial;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbreRelatorioGerencial_DARUMA_FS345 := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FS345 := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FS345 := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbreRelatorioGerencial_DARUMA_FS345 := False;
              end;
      end;
    end;
end;

function  AbreRelatorioGerencial_DARUMA_FrameWork():Boolean;
begin
  intret := iRGAbrirPadrao_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbreRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbreRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
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

function  EmiteRelatorioGerencial_DARUMA_FrameWork(Texto:String):Boolean;
begin
  intret := iRGImprimirTexto_ECF_Daruma(Texto);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    EmiteRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                EmiteRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
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
   {Daruma_FI_FechaRelatorioGerencial}
   if iRGFechar_ECF_Daruma > 0 then
     FechamentoRelatorioGerencial_DARUMA_FS345 := True
   else
     FechamentoRelatorioGerencial_DARUMA_FS345 := False;
end;

function  FechamentoRelatorioGerencial_DARUMA_FrameWork():Boolean;
begin
   intret := iRGFechar_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FechamentoRelatorioGerencial_DARUMA_FrameWork := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FechamentoRelatorioGerencial_DARUMA_FrameWork := False;
              end;
      end;
    end;
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

function Leitura_X_DARUMA_FRAMEWORK : boolean;
begin
  IntRet := iLeituraX_ECF_Daruma ;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Leitura_X_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Leitura_X_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function Reducao_Z_DARUMA_FRAMEWORK : boolean;
var Str_DadosUltimaRZ : string;
begin
  IntRet := iReducaoZ_ECF_Daruma(' ', ' ') ;
  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Reducao_Z_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Reducao_Z_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function AbrirCupomFiscal_DARUMA_FRAMEWORK(Var NroCupom : String) : boolean ;
Var Str_InfoEstendida1:String;
    Str_Informacao: String;
begin
  NroCupom := '000000';

  IntRet := iCFAbrirPadrao_ECF_Daruma;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    begin
      Str_Informacao:= StringOFChar(#0,6);
      NroCupom := IntToStr(rRetornarInformacao_ECF_Daruma('26',Str_Informacao));
      if NroCupom <> '1' Then
        NroCupom:= InputBox('Checkout','Falha ao Recuperar Nro Cupom Fiscal. Informe o Numero do Cupom Fiscal:','')
      else
        NroCupom:= Str_Informacao;
      AbrirCupomFiscal_DARUMA_FRAMEWORK := True;
    end
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
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

function ImprimeItem_Daruma_FS345(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf, FormatSTRValor : string;
var ValorUnitarioMenosDesconto, TotalItemECF : Double;
var TotalItemCalc: Extended;
begin
  if DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger = 2 then FormatSTRValor := '##0.00';
  if DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger = 3 then FormatSTRValor := '##0.000';

  ValorUnitarioEcf           := FormatFloat(FormatSTRValor,Valor_Unitario);
  if Valor_do_Desconto > 0 then
    ValorDescontoEcf           := FormatFloat('##0.00',Valor_do_Desconto)
  else
    ValorDescontoEcf           := '0,00';

  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
        2 : begin
              QuantEcf := FormatFloat('##0.00',Quantidade);
              IntRet   := Daruma_FI_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
        3 : begin
              TotalItemECF    := StrToFloat(FormatFloat('##0.00', StrToFloat(FormatFloat(FormatSTRValor,Valor_Unitario))*
                                 StrToFloat(FormatFloat('##0.000',Quantidade))));
              TotalItemCalc   := StrToFloat(FormatFloat('##0.000',Quantidade))*StrToFloat(FormatFloat('##0.000',Valor_Unitario));

              while (TotalItemECF>TotalItemCalc) do
                begin
                 //    Valor_Unitario := Valor_Unitario + 0.001;
                  Quantidade     := Quantidade + 0.001;
                  TotalItemCalc  := Quantidade*Valor_Unitario;
                end;

              ValorUnitarioEcf   := FormatFloat(FormatSTRValor,Valor_Unitario);

              QuantEcf := FormatFloat('##0.000', Quantidade);
              IntRet   := Daruma_FI_VendeItemTresDecimais(pchar(Codigo), pchar(Descricao), pchar(Aliquota), pchar(QuantEcf), pchar(ValorUnitarioECF), pchar(Tipo_de_Desconto), pchar(ValorDescontoEcf));
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

function ImprimeItem_Daruma_FRAMEWORK(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double; Unidade:String): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf, FormatSTRValor, FormatSTRQTde : String;
var ValorUnitarioMenosDesconto, TotalItemECF : Double;
var TotalItemCalc: Double;
begin
  Case DM.SQLTerminalAtivoTERMINRODECVALORUNIT.AsInteger of
    2: FormatSTRValor := '0.00';
    3: FormatSTRValor := '0.000';
  End;
  Case DM.SQLTerminalAtivoTERMINRODECQUANT.AsInteger of
    2: FormatSTRQTde := '0.00';
    3: FormatSTRQTde := '0.000';
  End;

  ValorUnitarioEcf := FormatFloat(FormatSTRValor,Valor_Unitario);

  TipoDescEcf := Tipo_de_Desconto;

  if Valor_do_Desconto > 0 then
    ValorDescontoEcf := FormatFloat('0.00',Valor_do_Desconto)
  else
    ValorDescontoEcf := '0,00';

  case DM.SQLTerminalAtivoTERMINRODECQUANT.Value of
  2 : QuantEcf := FormatFloat('0.00',Quantidade);
  3 : begin
        TotalItemECF    := StrToFloat(FormatFloat('0.00', StrToFloat(FormatFloat(FormatSTRValor,Valor_Unitario)) * StrToFloat(FormatFloat('0.000',Quantidade))));
        TotalItemCalc   := StrToFloat(FormatFloat('0.000',Quantidade))*StrToFloat(FormatFloat('0.000',Valor_Unitario));

        while (TotalItemECF>TotalItemCalc) do
          begin
            Valor_Unitario:= Valor_Unitario + 0.001;
            // Quantidade    := Quantidade + 0.001;
            TotalItemCalc := Quantidade * Valor_Unitario;
          end;

        ValorUnitarioEcf   := FormatFloat(FormatSTRValor,Valor_Unitario);
        QuantEcf := FormatFloat('0.000', Quantidade);
      end;
  end;

  IntRet := iCFVender_ECF_Daruma(Aliquota, QuantEcf, ValorUnitarioECF, TipoDescEcf, ValorDescontoEcf,  Codigo, Unidade, Descricao);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    ImprimeItem_Daruma_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                ImprimeItem_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
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

function CancelaItem_DARUMA_FRAMEWORK(Posicao: String) : boolean ;
begin
  intret := iCFCancelarItem_ECF_Daruma(Posicao);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    CancelaItem_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                CancelaItem_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function FecharCupomFiscal_DARUMA_FRAMEWORK(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano : String; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, NumerarioDescricaoDaruma, VlrAcrescDescSTR : string ;
  TotalVista,  TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    iCFTotalizarCupom_ECF_Daruma( 'A$', VlrAcrescDescSTR )
  else
    iCFTotalizarCupom_ECF_Daruma( 'D$', VlrAcrescDescSTR ) ;

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
  {    if (i = 1) and (VlrTroco > 0) then
        iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat+VlrTroco))
      else}
        iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat));

      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

  SQLFPPrazo.First ;
  while not SQLFPPrazo.EOF do
    begin
      if (TotalVista + TotalPrazo) < Valor then
        TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

      {Adilson - Foi colocado para imprimir na forma prazo em mais de um numerario}
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));

      SQLFPPrazo.Next;
    end;

  if ((TotalVista + TotalPrazo) > Valor) then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

 { if TotalPrazo > 0 then
    begin
      NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      iCFEfetuarPagamentoFormatado_ECF_Daruma(NumerarioDescricaoDaruma, FormatCurr('##0.00',TotalPrazo));
    end;}

  // Identifica o Consumidor
  if DocumentoCli <> '' then
    iCFIdentificarConsumidor_ECF_Daruma(copy(ConverteAcentos(NomeCli),1,35),
                                        ConverteAcentos(Copy(EnderecoCli, 01, 35)),
                                        DocumentoCli);

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT' + Chr(10) +
                       'Usuario: ' + UsuarioAtualNome + Chr(10) +
                       'Vend: ' + copy(Vendedor,1,10) +
                       '  Plano: ' + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       'DOC: ' + DocumentoCli                               + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT' + Chr(10) +
                       'Usuario: ' + UsuarioAtualNome + Chr(10) +
                       'Vend: ' + copy(Vendedor,1,10) +
                       '  Plano: ' + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       'DOC: ' + DocumentoCli                               + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) ;

    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'       + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT'

      else
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';
    end;

  IntRet := iCFEncerrarConfigMsg_ECF_Daruma( MsgFimCupom );

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FecharCupomFiscal_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FecharCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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
  IntRet := Daruma_FI_CancelaCupom;
  if IntRet > 0 then
    CancelarCupomFiscal_DARUMA_FS345 := True
  else
    CancelarCupomFiscal_DARUMA_FS345 := False;
end ;

function CancelarCupomFiscal_DARUMA_FRAMEWORK : boolean ;
begin
  intret := iCFCancelar_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    CancelarCupomFiscal_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                CancelarCupomFiscal_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function  EnviaFP_DARUMA_FRAMEWORK(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatFloat('##0.00',Valor);
  intret := iCFEfetuarPagamentoFormatado_ECF_Daruma(Descricao_FormaPagamento, Vlr);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    EnviaFP_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                EnviaFP_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function  AbrirCNFV_DARUMA_FRAMEWORK( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  Vlr, TotalizadorEcf : string;
begin
  Vlr := FormatFloat('##0.00',Valor_Pago);
  intret := iCCDAbrirPadrao_ECF_Daruma();

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbrirCNFV_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirCNFV_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function LinhaTextoLivre_DARUMA_FRAMEWORK(Texto : string) : boolean ;
begin
  intret := iCCDImprimirTexto_ECF_Daruma(Texto);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    LinhaTextoLivre_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                LinhaTextoLivre_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function FecharCNFV_DARUMA_FRAMEWORK : Boolean ;
begin
  intret := iCCDFechar_ECF_Daruma;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    FecharCNFV_DARUMA_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                FecharCNFV_DARUMA_FRAMEWORK := False;
              end;
      end;
    end;
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

function AbrirGaveta_Daruma_FRAMEWORK : Boolean;
begin
  intret := eAbrirGaveta_ECF_Daruma;

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    AbrirGaveta_Daruma_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                AbrirGaveta_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
end ;

function Guilhotina_Daruma_FS345 : Boolean;
begin
  if eAbrirGaveta_ECF_Daruma = 1 then
    Guilhotina_Daruma_FS345 := True
  else
    Guilhotina_Daruma_FS345 := False;
end;

function Guilhotina_Daruma_FRAMEWORK : Boolean;
begin
  intret := eAcionarGuilhotina_ECF_Daruma('1');

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Guilhotina_Daruma_FRAMEWORK := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Guilhotina_Daruma_FRAMEWORK := False;
              end;
      end;
    end;
end;

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

function  Sangria_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricaoDaruma : String;
begin
  NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := iSangria_ECF_Daruma(Vlr, NumerarioDescricaoDaruma);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Sangria_Daruma_Framework := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Sangria_Daruma_Framework := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Sangria_Daruma_Framework := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Sangria_Daruma_Framework := False;
              end;
      end;
    end;
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

function  Suprimento_Daruma_Framework(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricaoDaruma : String;
begin
  NumerarioDescricaoDaruma := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := iSuprimento_ECF_Daruma(Vlr, NumerarioDescricaoDaruma);

  if (IntRet = 1) or (intret = -12) or (IntRet = -6) then
    Suprimento_Daruma_Framework := True
  else
    begin
      case IntRet of
        -1  : begin
                InformaG('Erro (-1) : Falha de Comunicação !');
                Suprimento_Daruma_Framework := False;
              end;
        -5  : begin
                InformaG('Erro (-5) : Erro ao abrir a porta de Comunicação !');
                Suprimento_Daruma_Framework := False;
              end;
        -28  : begin
                InformaG('Erro (-28) : Tempo Limite Esgotado para comunicação!');
                Suprimento_Daruma_Framework := False;
              end;
      end;
    end;
end ;

end.
