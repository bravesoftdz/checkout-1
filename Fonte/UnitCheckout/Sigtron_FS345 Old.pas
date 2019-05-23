unit Sigtron_FS345;

interface

uses DataModulo,
     RXCtrls,  Forms,
     RxQuery,  UnitLibrary,
     SysUtils, Dialogs,
     TelaCompSigtron ;

  function  AbrirPortaECF_Sigtron_FS345(Porta, LibName : string) : boolean ;
  function  FecharPortaECF_Sigtron_FS345 : boolean ;
  function  BuscaRetorno_Sigtron_FS345 : string ;
  procedure Leitura_X_Sigtron_FS345 ;

  function  AbrirCupomFiscal_Sigtron_FS345(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Sigtron_FS345(Codigo, Descricao, Tributo, Unid : String ; Qtde, Valor, PercDesc : Double; NumDec : integer) : boolean ;
  function  CancelaItem_Sigtron_FS345(Posicao: String) : boolean ;

  function  ImprimeDadosCliente_Sigtron_FS345(Nome, Endereco, Documento: String) : boolean ;

  function  CancelarCupomFiscal_Sigtron_FS345 : boolean ;

  function  AbrirCNFV_Sigtron_FS345(TipoDoc, Identificador, Ecf_ID, NroCupom : string; Valor : double) : Boolean ;
  function  LinhaTextoLivre_Sigtron_FS345(Texto : string) : boolean ;
  function  FecharCNFV_Sigtron_FS345 : Boolean ;

  function  FecharCupomFiscal_Sigtron_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc  : Double; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery) : boolean ;

  function  EmiteCNFNV_Sigtron_FS345(Identificador, Msg : string; Valor:double) : boolean ;
  function  EnviaFP_Sigtron_FS345(Ecf_ID, NumerarioCod, MsgOpc : string; Valor : double) : boolean ;
  function  Autenticacao_Sigtron_FS345(Msg : String) : boolean ;
  function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function Zeros(Str:String; Tam:Integer; Orient:String) : String ;

implementation

function  AbrirPortaECF_Sigtron_FS345(Porta, LibName : string) : boolean ;
begin
  if LibName = '' then
    CompSigtron.SigDrCm.LibName := 'Fiscal'
  else
    CompSigtron.SigDrCm.LibName := LibName ;

  CompSigtron.SigDrCm.CommConfig := Porta + ': baud=9600 parity=N data=8 stop=1' ;
  if not CompSigtron.SigDrCm.Open then
    AbrirPortaECF_Sigtron_FS345 := false
  else
    AbrirPortaECF_Sigtron_FS345 := true ;
end ;

function  FecharPortaECF_Sigtron_FS345 : boolean ;
begin
  CompSigtron.SigDrCm.Close ;
end ;

function  BuscaRetorno_Sigtron_FS345 : string ;
begin
end ;

procedure Leitura_X_Sigtron_FS345 ;
begin
  CompSigtron.SigDrCm.CmdName := 'LeituraX' ;
  CompSigtron.SigDrCm.Send ;
end ;

function  AbrirCupomFiscal_Sigtron_FS345(Var NroCupom : String) : boolean ;
begin
  CompSigtron.SigDrCm.CmdName := 'AberturaCupomFiscal' ;
  CompSigtron.SigDrCm.Send ;
  NroCupom := CompSigtron.SigDrCm.Ret['NumeroCupom'] ;
end ;

function  ImprimeItem_Sigtron_FS345(Codigo, Descricao, Tributo, Unid : String ; Qtde, Valor, PercDesc : Double; NumDec : integer) : boolean ;
Var
  StrAux,
  Quant,
  QuantFrac,
  Desco,
  VlUnit,
  TotalItemSigtron,
  Preco,
  Tipo : String;  //para sigtron
begin
  Desco := ConvFloatToStrECF(Percdesc, 4) ;

  Preco := FormatFloat('#,##0.00', Valor);
  if NumDec = 0 then
    Quant := Format('%.5d', [Round(Int(Qtde))])
  else
    if NumDec = 3 then
    begin
      If Qtde <=9.999 then
        Quant := FormatFloat('0.000', Qtde)
      else
        if Qtde <=99.99 then
          Quant := FormatFloat('00.00', Qtde)
        else
          if Qtde <=999.9 then
            Quant := FormatFloat('000.0', Qtde)
          else
            Quant := Format('%.5d', [Round(Int(Qtde))]);
    end
    else
      begin
        if Qtde <= 99.99 then
          Quant := FormatFloat('00.00', Qtde)
        else
          If Qtde <= 999.9 then
            Quant := FormatFloat('000.0', Qtde)
          Else
            Quant := Format('%.5d', [Round(Int(Qtde))]);
      end ;

  if Pos(',',Preco) > 0 then
    Delete(Preco, Pos(',',Preco), 1);
  if Pos('.',Preco) > 0 then
    Delete(Preco, Pos('.',Preco), 1);

  Preco := Zeros(Preco{Str}, 9{Tam}, 'Dir'{Orient}) ;

  CompSigtron.SigDrCm.CmdName                       := 'DescricaoProduto2Linhas13Digitos' ;
  CompSigtron.SigDrCm.Param['SituacaoTributaria']   := Tributo ;

  StrAux := Format('%.13d',[StrToInt(Codigo)]) ;
  CompSigtron.SigDrCm.Param['Codigo']               := StrAux ;
  CompSigtron.SigDrCm.Param['PrecoUnitario']        := Preco;
  CompSigtron.SigDrCm.Param['Quantidade']           := Quant;

  StrAux := Format('%2s' ,[Unid]) ;
  CompSigtron.SigDrCm.Param['Unidade']              := StrAux ;

  StrAux := Format('%30s',[Descricao]) ;
  CompSigtron.SigDrCm.Param['Descricao']            := StrAux ;
  CompSigtron.SigDrCm.Param['DescontoAcrescimo']    := '0' ;
  CompSigtron.SigDrCm.Param['PorcentagemDescAcres'] := Desco;
  CompSigtron.SigDrCm.Send ;
end ;

function CancelaItem_Sigtron_FS345(Posicao: String) : boolean ;
begin
  CompSigtron.SigDrCm.CmdName := 'CancelamentoItem' ;
  CompSigtron.SigDrCm.Param['Item'] := Zeros(Posicao{Str}, 3{Tam}, 'Dir'{Orient});
  CompSigtron.SigDrCm.Send ;
end ;

function FecharCupomFiscal_Sigtron_FS345(TipoAcrescDesc : String; Valor, VlrAcrescDesc  : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery) : boolean ;
var
  MsgFimCupom,
  AcrescDesc : string ;
  TotalPrazo : double ;
begin
  //TOTALIZAR CUPOM
  AcrescDesc := ConvFloatToStrECF(VlrAcrescDesc, 12) ;

  CompSigtron.SigDrCm.CmdName := 'TotalizacaoCupomFiscal' ;

  if TipoAcrescDesc = 'A' then
    CompSigtron.SigDrCm.Param['TipoDescAcres'] := '5' ;
  if TipoAcrescDesc = 'D' then
    CompSigtron.SigDrCm.Param['TipoDescAcres'] := '1';

  CompSigtron.SigDrCm.Param['ValorDescAcres'] := AcrescDesc;
  CompSigtron.SigDrCm.Send ;
  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next
  end ;

  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First ;
  while not SQLFPVista.EOF do
  begin
    EnviaFP_Sigtron_FS345(Ecf_ID,
                          SQLFPVista.Fieldbyname('NUMEICOD').AsString,
                          '',
                          SQLFPVista.Fieldbyname('VALORPARC').AsFloat) ;

    SQLFPVista.Next
  end ;

  //ENVIAR VALORES POR NUMERARIO AVISTA
  if TotalPrazo > 0 then
  begin
    EnviaFP_Sigtron_FS345(Ecf_ID,
                          SQLFPPrazo.Fieldbyname('NUMEICOD').AsString,
                          '',
                          TotalPrazo) ;
  end ;

  //ImprimeDadosCliente_Sigtron_FS345('Nome', 'Endereco', 'Documento') ;

  if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
    MsgFimCupom := '' + Chr(10) +
                   'VENDEDOR.: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption) + Chr(10) +
                   'PLANO....: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption) ;

  if DM.SQLTerminalAtivoTERMCINFDADOSCLICP.Value = 'S' then
  begin
    MsgFimCupom := MsgFimCupom + Chr(10) +
                   '' + Chr(10) +
                   'CLIENTE..: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeCliente') as TRxLabel).Caption) ;
  end ;

  //FINALIZAR FECHAMENTO DO CUPOM
  CompSigtron.SigDrCm.CmdName           := 'FechamentoCupomComMensagem';
  CompSigtron.SigDrCm.Param['Mensagem'] := MsgFimCupom + Chr(10);
  CompSigtron.SigDrCm.Send ;

  FecharCupomFiscal_Sigtron_FS345 := true ;
end ;

function CancelarCupomFiscal_Sigtron_FS345 : boolean ;
begin
  CompSigtron.SigDrCm.CmdName := 'CancelaDocumento' ;
  CompSigtron.SigDrCm.Send ;
end ;

function  EmiteCNFNV_Sigtron_FS345(Identificador, Msg : string; Valor:double) : boolean ;
Var
  Bruto : string ;
begin
  CompSigtron.SigDrCm.CmdName                     := 'EmissaoCNFNV' ;
  CompSigtron.SigDrCm.Param['IdentificacaoCNFNV'] := Identificador ;
  CompSigtron.SigDrCm.Param['DescontoAcrescimo']  := '1'; // Desc Valor

  Bruto := ConvFloatToStrECF(Valor, 12) ;

  CompSigtron.SigDrCm.Param['Valor']    := '000000000000';
  CompSigtron.SigDrCm.Param['Mensagem'] := Bruto + Msg  + Chr(10) ;
  CompSigtron.SigDrCm.Send ;
end ;

function  EnviaFP_Sigtron_FS345(Ecf_ID, NumerarioCod, MsgOpc  : string; Valor : double) : boolean ;
var
  ValorNumerario : string ;
begin
  ValorNumerario := ConvFloatToStrECF(Valor, 12) ;

  if MsgOpc = '' then
    MsgOpc := Chr(255) ;
    
  CompSigtron.SigDrCm.CmdName                 := 'DescricaoPagamento' ;
  CompSigtron.SigDrCm.Param['FormaPagamento'] := RetornaTotalizadorNumerarioECF(Ecf_ID, NumerarioCod) ;
  CompSigtron.SigDrCm.Param['ValorPagamento'] := ValorNumerario ;
  CompSigtron.SigDrCm.Param['LinhaAdicional'] := MsgOpc ;
  CompSigtron.SigDrCm.Send ;
end ;

function  Autenticacao_Sigtron_FS345(Msg : String) : boolean ;
var Porta : string ;
begin
  Porta := Copy(CompSigtron.SigDrCm.CommConfig, 1, 4) ;
  FecharPortaECF_Sigtron_FS345 ;
  AbrirPortaECF_Sigtron_FS345(Porta, 'OperacaoEspecial') ;

  CompSigtron.SigDrCm.CmdName           := 'Autenticacao' ;
  CompSigtron.SigDrCm.Param['Mensagem'] := Copy(Msg, 1, 13);
  CompSigtron.SigDrCm.Send ;

  FecharPortaECF_Sigtron_FS345 ;
  AbrirPortaECF_Sigtron_FS345(Porta, '') ;
end ;

function  AbrirCNFV_Sigtron_FS345(TipoDoc, Identificador, Ecf_ID, NroCupom : string; Valor : double) : Boolean ;
var
  Vlr : string;
begin
  Vlr := ConvFloatToStrECF(Valor, 12) ;

  CompSigtron.SigDrCm.CmdName := 'AberturaCNFV' ;
  CompSigtron.SigDrCm.Param['IdentificacaoCNFV'] := Identificador ;
  CompSigtron.SigDrCm.Param['TipoCNFV']          := TipoDoc ;
  CompSigtron.SigDrCm.Param['COOorigem']         := NroCupom ;
  CompSigtron.SigDrCm.Param['ValorVinculado']    := Vlr ;
  CompSigtron.SigDrCm.Send ;
end ;

function LinhaTextoLivre_Sigtron_FS345(Texto : string) : boolean ;
begin
  CompSigtron.SigDrCm.CmdName             := 'LinhaTexto' ;
  CompSigtron.SigDrCm.Param['TextoLivre'] := Texto;
  CompSigtron.SigDrCm.Send ;
end ;

function FecharCNFV_Sigtron_FS345 : Boolean ;
begin
  CompSigtron.SigDrCm.CmdName := 'FechamentoComprovante' ;
  CompSigtron.SigDrCm.Send ;
end ;

function ImprimeDadosCliente_Sigtron_FS345(Nome, Endereco, Documento: String) : boolean ;
begin
  CompSigtron.SigDrCm.CmdName            := 'IdentificacaoConsumidor' ;
  CompSigtron.SigDrCm.Param['Nome']      := Nome ;
  CompSigtron.SigDrCm.Param['Endereco']  := Endereco ;
  CompSigtron.SigDrCm.Param['Documento'] := Documento;
  CompSigtron.SigDrCm.Send ;
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


end.
