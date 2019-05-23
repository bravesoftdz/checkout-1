unit ECFCheckout;

interface

uses Dialogs, SysUtils, RxQuery , ShellApi, Windows, Forms;
var
  StrAux        : string ;

  function  AbrirPortaECF(Impressora, Porta : String) : Boolean ;
  function  FecharPortaECF(Impressora, Porta : String) : Boolean ;
  function  Leitura_X(Impressora, Porta : String) : Boolean ;
  function  Reducao_Z(Impressora, Porta : String) : Boolean ;
  function  AbreRelatorioGerencial(Impressora, Porta : String) : boolean;
  function  RelatorioGerencial(Impressora, Porta, Texto : String) : Boolean;
  function  FechamentoRelatorioGerencial(Impressora, Porta : String) : boolean;
  function  AbrirGaveta(Impressora, Porta : String) : Boolean;

  function  AbrirCupomFiscal(Impressora, Porta : String; Var NroCupom : string) : Boolean ;
  function  ImprimeItemECF(Impressora, Porta, Numitem, Codigo, Descricao, Tributo, Unid:String ; Qtde, Valor, Percdesc, Vlrdesco : Double ; NumDecQuant : integer) : Boolean ;
  function  CancelarItemECF(Impressora, Porta, Posicao : string) : boolean ;
  function  FecharCupomFiscal(Impressora, Porta, Ecf_CNFV : String; Valor, VlrAcresc, VlrDesc, VlrTroco : Double; SQLFPVista, SQLFPPrazo : TRxQuery; NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : Boolean ;

  function  EmiteCNFNV(Impressora, Porta, Identificador, MSG, Cod_Numerario : String; Valor : double) : Boolean ;
  function  FecharCNFNV(Impressora, Porta : string) : Boolean ;

  function  AbrirCNFV(Impressora, Porta : string; Identificador,TipoDoc : char; Ecf_ID, NroCupom, DescriNumerario : string; Valor : double) : Boolean ;
  function  LinhaTextoLivre(Impressora, Porta, Texto : string) : Boolean ;
  function  FecharCNFV(Impressora, Porta : string) : Boolean ;
  function AbrirReciboNaoFiscal(Forma_de_Pagamento, Totalizador, Acrescimo_ou_Desconto, Tipo_Acrescimo_ou_Desconto, Valor_Acrescimo_ou_Desconto, Valor_do_Recebimento, Texto_Livre1, Texto_Livre2 : String) : Boolean ;

  function  EmiteCNFV_Corisco(Impressora,Porta,Titulo,Texto:String):Boolean;

  function  CancelarCupomFiscal(Impressora, Porta : String) : Boolean ;

  function  RetornaNroCupomFiscal(Impressora,Porta : String) : String ;

  function  Autenticacao(Impressora, Porta, Identificador, Ecf_ID, Documento, Parcela, Tipo : String; Valor : double; NumerarioCod : integer; Msg : String) : Boolean ;

  function  ImprimeRespostaCartao(Impressora, Porta, CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : string) : Boolean ; // Criada por Adilson e nao usada até o  momento
var
  Parametros,ParametrosItem: PChar;
  DadosItem, CupomFormatado : String;
  ArquivoCupom : TextFile;

implementation
uses Bematech_MP20_FI, Bematech_MP20_FI_II, BemaFi32, Sigtron_FS345, UnitLibrary, SWEDA7000_AFRAC, Elgin_FIT,
     SWEDA7000, DataModulo, Schalter_SCF_ECF, Corisco_CT7000_V3, TelaImportaItens, TelaItens, WaitWindow, Urano_1EFC ;

function AbrirPortaECF(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
    begin
      exit ;
    end ;
  try
    if Impressora = 'BEMATECH MP-20 FI' then
      AbrirPortaECF := AbrirPortaECF_Bematech_MP20_FI(Porta) ;

    if Impressora = 'BEMATECH MP-20 FI II' then
      AbrirPortaECF := AbrirPortaECF_Bematech_MP20_FI_II(Porta) ;

    if Impressora = 'BEMATECH MP-25 FI' then
      AbrirPortaECF := AbrirPortaECF_Bematech_MP25_FI ;

    if Impressora = 'ELGIN MFD FIT 1E' then
      AbrirPortaECF := AbrirPortaECF_Elgin_FIT ;

    if Impressora = 'SIGTRON FS345' then
      AbrirPortaECF := AbrirPortaECF_Sigtron_FS345(Porta, '') ;

    if Impressora = 'SWEDAS7000' then
      begin
        if Porta = 'COM1' then
          AbrePorta(1,5);
        if Porta = 'COM2' then
          AbrePorta(2,5);
        if Porta = 'COM3' then
          AbrePorta(3,5);
        if Porta = 'COM4' then
          AbrePorta(4,5);
      end;

    if Impressora = 'SWEDAS7000_AFRAC' then
      begin
        MakeWindowMessage('Comunicando com o ECF');
        AbrirPortaECF := AbrirPortaSWEDAS7000_AFRAC(Porta);
        DestroyWindow;
      end;

    if Impressora = 'SCHALTER SCF_ECF' then
      begin
        AbrirPortaECF := AbrirPorta_SCHALTER_SCR_ECF(Porta);
      end;

    if (Impressora = 'CORISCO CT7000 V3') then
      begin
        AbrirPortaECF := AbrirPortaECF_Corisco_CT3000_V3(Porta);
      end;

    if Impressora = 'URANO_1EFC' then
      begin
        AbrirPortaECF := AbrirPortaECF_Urano_1ECF(Porta);
      end;

  except
    ShowMessage('Problemas ao tentar abrir a Porta Serial para comunicar com o ECF.') ;
    Application.ProcessMessages;
  end ;
end ;

function FecharPortaECF(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
    begin
      exit ;
    end ;

  try
    if Impressora = 'BEMATECH MP-20 FI' then
      FecharPortaECF := FecharPortaECF_Bematech_MP20_FI(Porta) ;

    if Impressora = 'BEMATECH MP-20 FI II' then
      FecharPortaECF := FecharPortaECF_Bematech_MP20_FI_II(Porta) ;

    if Impressora = 'BEMATECH MP-25 FI' then
      FecharPortaECF := FecharPortaECF_Bematech_MP25_FI ;

    if Impressora = 'ELGIN MFD FIT 1E' then
      FecharPortaECF := FecharPortaECF_Elgin_FIT ;

    if Impressora = 'SIGTRON FS345' then
      FecharPortaECF := FecharPortaECF_Sigtron_FS345 ;

    if Impressora='SWEDAS7000' then
      begin
        if Porta = 'COM1' then
          FecharPortaECF := FechaPorta(1);
        if Porta = 'COM2' then
          FecharPortaECF := FechaPorta(2);
        if Porta = 'COM3' then
          FecharPortaECF := FechaPorta(3);
        if Porta = 'COM4' then
          FecharPortaECF := FechaPorta(4);
      end;

    if Impressora='SWEDAS7000_AFRAC' then
      begin
        FecharPortaECF := FecharPortaSWEDAS7000_AFRAC;
      end;

    if (Impressora = 'CORISCO CT7000 V3') then
      begin
        FecharPortaECF := FecharPortaECF_Corisco_CT3000_V3;
      end;

    if Impressora = 'URANO_1EFC' then
      begin
        FecharPortaECF := FecharPortaECF_Urano_1EFC();
      end;
  except
    ShowMessage('Problemas ao tentar fechar a Porta Serial para comunicar com o ECF.') ;
    Application.ProcessMessages;
  end;
end ;

function  Leitura_X(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
  begin
    ShowMessage('Leitura X') ;
    exit ;
  end ;
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
     LeituraX_Bematech_MP20_FI ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    Result := LeituraX_Bematech_MP20_FI_II;

  if Impressora = 'BEMATECH MP-25 FI' then
    Bematech_FI_LeituraX;

  if Impressora = 'ELGIN MFD FIT 1E' then
    Leitura_X_Elgin_FIT;

  if Impressora = 'SIGTRON FS345' then
    Leitura_X_Sigtron_FS345 ;

  if Impressora = 'DARUMA FS345' then
    Leitura_X_DARUMA_FS345 ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
        Parametros := 'LeituraX'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'LeituraX'+ ' '+ 'COM2' + ' ' + 'Fiscal';
      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
  begin
    Leitura_X := Leitura_X_SWEDAS7000;
  end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    Leitura_X := Leitura_X_SWEDAS7000_AFRAC;
  end ;
  if Impressora = 'SCHALTER SCF_ECF' then
    Leitura_X := LeituraX_Schalter;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      LeituraX_Corisco_CT3000_V3;
    end;

  if Impressora = 'URANO_1EFC' then
    begin
      Leitura_X := LeituraX_Urano_1EFC();
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function Reducao_Z(Impressora, Porta : String) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    Reducao_Z_Bematech_MP20_FI ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    Reducao_Z_Bematech_MP20_FI_II ;

  if Impressora = 'BEMATECH MP-25 FI' then
    Bematech_FI_ReducaoZ('','');

  if Impressora = 'SIGTRON FS345' then
    Reducao_Z_Sigtron_FS345 ;

  if Impressora = 'DARUMA FS345' then
    Reducao_Z_DARUMA_FS345 ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    Reducao_Z_Elgin_FIT;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
        Parametros := 'ReducaoZ'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'ReducaoZ'+ ' '+ 'COM2' + ' ' + 'Fiscal';
      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
    begin
      Reducao_Z := Reducao_Z_SWEDAS7000;
    end;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      Reducao_Z := Reducao_Z_SWEDAS7000_AFRAC;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    Reducao_Z_SCHALTER_SCF_ECF;

  if Impressora = 'CORISCO CT7000 V3' then
    Reducao_Z_Corisco_CT3000_V3 ;

  if Impressora = 'URANO_1EFC' then
    Reducao_Z :=  Reducao_Z_Urano_1EFC ;


  FecharPortaECF(Impressora, Porta) ;
end ;

function AbreRelatorioGerencial(Impressora, Porta : String) : boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'DARUMA FS345' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_DARUMA_FS345;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_Elgin_FIT ;

  FecharPortaECF(Impressora, Porta) ;
end;

function  RelatorioGerencial(Impressora, Porta, Texto : String) : Boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'BEMATECH MP-20 FI II' then
    RelatorioGerencial := RelatorioGerencial_Bematech_MP20_FI_II(Texto);

  if Impressora = 'BEMATECH MP-25 FI' then
    RelatorioGerencial := EmiteRelatorioGerencial_Bematech_MP25_FI(Texto);

  if Impressora = 'SIGTRON FS345' then
    RelatorioGerencial := EmiteRelatorioGerencial_Sigtron_FS345(Texto);

  if Impressora = 'DARUMA FS345' then
    RelatorioGerencial := EmiteRelatorioGerencial_DARUMA_FS345(Texto);

  if Impressora = 'ELGIN MFD FIT 1E' then
    RelatorioGerencial := EmiteRelatorioGerencial_Elgin_FIT(Texto) ;

  if Impressora = 'URANO_1EFC' then
    RelatorioGerencial := RelatorioGerencial_Urano_1EFC(Texto);

  FecharPortaECF(Impressora, Porta) ;
end;

function FechamentoRelatorioGerencial(Impressora, Porta : String) : boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'BEMATECH MP-20 FI II' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Bematech_MP20_FI_II(Impressora,Porta);

  if Impressora = 'BEMATECH MP-25 FI' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Bematech_MP25_FI;

  if Impressora = 'SIGTRON FS345' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Sigtron_FS345;

  if Impressora = 'DARUMA FS345' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_DARUMA_FS345;

  if Impressora = 'ELGIN MFD FIT 1E' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Elgin_FIT ;

  if Impressora = 'URANO_1EFC' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Urano_1EFC(Impressora,Porta);

  FecharPortaECF(Impressora, Porta) ;
end;

function AbrirCupomFiscal(Impressora, Porta : String; Var NroCupom : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    AbrirCupomFiscal := AbrirCupomFiscal_Bematech_MP20_FI(NroCupom) ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    AbrirCupomFiscal := AbrirCupomFiscal_Bematech_MP20_FI_II(NroCupom) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirCupomFiscal := AbrirCupomFiscal_Bematech_MP25_FI(NroCupom) ;

  if Impressora = 'SIGTRON FS345' then
    AbrirCupomFiscal := AbrirCupomFiscal_Sigtron_FS345(NroCupom) ;

  if Impressora = 'DARUMA FS345' then
    AbrirCupomFiscal := AbrirCupomFiscal_DARUMA_FS345(NroCupom) ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbrirCupomFiscal := AbrirCupomFiscal_Elgin_FIT(NroCupom) ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
        Parametros := 'AbrirCupomFiscal'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'AbrirCupomFiscal'+ ' '+ 'COM2' + ' ' + 'Fiscal';

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
  begin
    AbrirCupomFiscal := AbrirCupomSWEDAS7000(NroCupom);
  end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    MakeWindowMessage('Abrindo Cupom Fiscal');
    AbrirCupomFiscal := AbrirCupomSWEDAS7000_AFRAC(NroCupom);
    DestroyWindow;
  end ;

  if Impressora = 'SCHALTER SCF_ECF' then
    AbrirCupomFiscal := AbreCupom_SCHALTER_SCR_ECF;

  if Impressora = 'CORISCO CT7000 V3' then
    AbrirCupomFiscal := AbrirCupomFiscal_Corisco_CT3000_V3(NroCupom);

  if Impressora = 'URANO_1EFC' then
    AbrirCupomFiscal := AbrirCupomFiscal_Urano_1EFC(NroCupom);


  FecharPortaECF(Impressora, Porta) ;

end ;

function  ImprimeItemECF(Impressora, Porta, Numitem, Codigo, Descricao, Tributo, Unid : String ; Qtde, Valor, Percdesc, Vlrdesco : Double ; NumDecQuant : integer) : Boolean ;
var
 DESCO,
 Quant,
 VlUnit,
 Preco : String;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    ImprimeItemECF := ImprimeItem_Bematech_MP20_FI(Codigo,
                                                   Descricao,
                                                   Tributo,
                                                   Qtde,
                                                   Valor,
                                                   Vlrdesco) ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    ImprimeItemECF := ImprimeItem_Bematech_MP20_FI_II(Codigo,
                                                      Descricao,
                                                      Tributo,
                                                      Qtde,
                                                      Valor,
                                                      Vlrdesco) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    ImprimeItemECF := ImprimeItem_Bematech_MP25_FI(Codigo,
                                                Descricao,
                                                Tributo,
                                                '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                Qtde,
                                                NumDecQuant,
                                                Valor,
                                                '%',
                                                PercDesc) ;

  if Impressora = 'SIGTRON FS345' then
    ImprimeItemECF := ImprimeItem_Sigtron_FS345(Codigo,
                                                Descricao,
                                                Tributo,
                                                Unid,
                                                Qtde,
                                                Valor,
                                                PercDesc,
                                                NumDecQuant) ;

  if Impressora = 'DARUMA FS345' then
    ImprimeItemECF := ImprimeItem_DARUMA_FS345(Codigo,
                                               Descricao,
                                               Tributo,
                                               '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                               Qtde,
                                               2,
                                               Valor,
                                               '%',
                                               PercDesc) ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    ImprimeItemECF := ImprimeItem_Elgin_FIT(Codigo,
                                            Descricao,
                                            Tributo,
                                            '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                            Qtde,
                                            2,
                                            Valor,
                                            '%',
                                            PercDesc) ;

  if Impressora = 'SIGTRON FS300' then
    begin
      sleep(3000);
      if Porta = 'COM1' then
        begin
          DadosItem := 'ImprimeItemECF' + ' '               // 1
                       + 'COM1' + ' '                       // 2
                       + 'Fiscal' + ' '                     // 3
                       + '"' + Numitem + '" '               // 4
                       + '"' + Codigo + '" '                // 5
                       + '"' + Descricao + '" '             // 6
                       + '"' + Tributo + '" '               // 7
                       + '"' + Unid + '" '                  // 8
                       + '"' + FloatToStr(Qtde) + '" '      // 9
                       + '"' + FloatToStr(Valor)+ '" '      //10
                       + '"' + FloatToStr(PercDesc)+ '" '   //11
                       + '"' + FloatToStr(Vlrdesco)+ '" '   //12
                       + '"' +FloatToStr(NumDecQuant)+ '"'; //13
          ParametrosItem := Pchar(DadosItem);
        end;
      if Porta = 'COM2' then
        begin
          DadosItem := 'ImprimeItemECF' + ' '                // 1
                       + 'COM2' + ' '                        // 2
                       + 'Fiscal' + ' '                      // 3
                       + '"' + Numitem + '" '                // 4
                       + '"' + Codigo + '" '                 // 5
                       + '"' + Descricao + '" '              // 6
                       + '"' + Tributo + '" '                // 7
                       + '"' + Unid + '" '                   // 8
                       + '"' + FloatToStr(Qtde) + '" '       // 9
                       + '"' + FloatToStr(Valor)+ '" '       //10
                       + '"' + FloatToStr(PercDesc)+ '" '    //11
                       + '"' + FloatToStr(Vlrdesco)+ '" '    //12
                       + '"' + FloatToStr(NumDecQuant)+ '"'; //13
          ParametrosItem := Pchar(DadosItem);
        end;
      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametrositem,Pchar(DM.PathAplicacao),0);
      ImprimeItemECF := True;
    end;

  if Impressora = 'SWEDAS7000' then
  begin
    ImprimeItemECF := ImprimeItemSWEDAS7000(Codigo,Descricao,Tributo,Unid,Valor,Qtde,VlrDesco);
  end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    MakeWindowMessage('Imprindo Item');
    ImprimeItemECF := ImprimeItemSWEDAS7000_AFRAC(Codigo,Descricao,Tributo,Unid,Valor,Qtde,VlrDesco);
    DestroyWindow;
  end ;
  if Impressora = 'SCHALTER SCF_ECF' then
    ImprimeItemECF := ImprimeItem_SCHALTER_SCF_ECF(Numitem,Codigo,Descricao,Tributo,Unid,Qtde,Valor,Percdesc,Vlrdesco,NumDecQuant);

  if Impressora = 'CORISCO CT7000 V3' then
    ImprimeItem_Corisco_CT3000_V3(Codigo,
                                  Descricao,
                                  Tributo,
                                  Qtde,
                                  Valor,
                                  Vlrdesco) ;

  if Impressora = 'URANO_1EFC' then
    begin
      ImprimeItemECF := ImprimeItem_Urano_1EFC(Codigo,
                                               Descricao,
                                               Tributo,
                                               Unid,
                                               Qtde,
                                               Valor,
                                               Vlrdesco);
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function CancelarItemECF(Impressora, Porta, Posicao : string) : boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    CancelarItemECF := CancelaItem_Bematech_MP20_FI(Posicao) ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    CancelarItemECF := CancelaItem_Bematech_MP20_FI_II(Posicao) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    CancelarItemECF := CancelaItem_Bematech_MP25_FI(Posicao) ;

  if Impressora = 'SIGTRON FS345' then
    CancelarItemECF := CancelaItem_Sigtron_FS345(Posicao) ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    CancelarItemECF := CancelaItem_Elgin_FIT(Posicao) ;

  if Impressora = 'DARUMA FS345' then
    CancelarItemECF := CancelaItem_DARUMA_FS345(Posicao) ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
         DadosItem := 'CancelarItemECF'+ ' '+ 'COM1' + ' ' + 'Fiscal' + ' ' + ' ' + Posicao + ' ';
      if Porta = 'COM2' then
         DadosItem := 'CancelarItemECF'+ ' '+ 'COM2' + ' ' + 'Fiscal' + ' ' + ' ' + Posicao + ' ';

      ParametrosItem := PChar(DadosItem);

      try
        ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),ParametrosItem,Pchar(DM.PathAplicacao),0);
        CancelarItemECF := True;
      except
        CancelarItemECF := False;
      end;
    end;

  if Impressora = 'SWEDAS7000' then
    begin
      CancelarItemECF := CancelarItemSWEDAS7000;
    end;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Cancelando Item');
      CancelarItemECF := CancelarItemSWEDAS7000_AFRAC(Posicao);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    CancelarItemECF := CancelarItem_SCHALTER_SCF_ECF(StrToInt(Posicao),'');

{  if Impressora = 'CORISCO CT7000 V3' then
    CancelarItemECF := CancelaItem_Corisco_CT3000_V3(Posicao);}

  if Impressora = 'URANO_1EFC' then
    CancelarItemECF := CancelaItem_Urano_1EFC(Posicao);

  FecharPortaECF(Impressora, Porta) ;
end ;

function  FecharCupomFiscal(Impressora, Porta, Ecf_CNFV : String; Valor, VlrAcresc, VlrDesc, VlrTroco : Double; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : Boolean ;
var
 AcrescDesc : String;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI('A',
                                                                Valor,
                                                                VlrAcresc,
                                                                VlrTroco,
                                                                Ecf_CNFV,
                                                                '',
                                                                SQLFPVista,
                                                                SQLFPPrazo,
                                                                NomeCli,
                                                                EnderecoCli,
                                                                CidadeCli,
                                                                DocumentoCli,
                                                                IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI('D',
                                                                Valor,
                                                                VlrDesc,
                                                                VlrTroco,
                                                                Ecf_CNFV,
                                                                '',
                                                                SQLFPVista,
                                                                SQLFPPrazo,
                                                                NomeCli,
                                                                EnderecoCli,
                                                                CidadeCli,
                                                                DocumentoCli,
                                                                IDCupom) ;

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI('A',
                                                                Valor,
                                                                0,
                                                                VlrTroco,
                                                                Ecf_CNFV,
                                                                '',
                                                                SQLFPVista,
                                                                SQLFPPrazo,
                                                                NomeCli,
                                                                EnderecoCli,
                                                                CidadeCli,
                                                                DocumentoCli,
                                                                IDCupom) ;
    end ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    begin

      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI_II('A',
                                                                   Valor,
                                                                   VlrAcresc,
                                                                   VlrTroco,
                                                                   Ecf_CNFV,
                                                                   '',
                                                                   SQLFPVista,
                                                                   SQLFPPrazo,
                                                                   NomeCli,
                                                                   EnderecoCli,
                                                                   CidadeCli,
                                                                   DocumentoCli,
                                                                   IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI_II('D',
                                                                   Valor,
                                                                   VlrDesc,
                                                                   VlrTroco,
                                                                   Ecf_CNFV,
                                                                   '',
                                                                   SQLFPVista,
                                                                   SQLFPPrazo,
                                                                   NomeCli,
                                                                   EnderecoCli,
                                                                   CidadeCli,
                                                                   DocumentoCli,
                                                                   IDCupom) ;

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP20_FI_II('A',
                                                                   Valor,
                                                                   0,
                                                                   VlrTroco,
                                                                   Ecf_CNFV,
                                                                   '',
                                                                   SQLFPVista,
                                                                   SQLFPPrazo,
                                                                   NomeCli,
                                                                   EnderecoCli,
                                                                   CidadeCli,
                                                                   DocumentoCli,
                                                                   IDCupom) ;
    end ;

  if Impressora = 'BEMATECH MP-25 FI' then
    begin
      if VlrAcresc > 0 then
          FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('A',
                                                              Valor,
                                                              VlrAcresc,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('D',
                                                            Valor,
                                                            VlrDesc,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom) ;
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('D',
                                                            Valor,
                                                            0,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom) ;
    end;

  if Impressora = 'SIGTRON FS345' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Sigtron_FS345('A',
                                                             Valor,
                                                             VlrAcresc,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Sigtron_FS345('D',
                                                             Valor,
                                                             VlrDesc,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom) ;
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Sigtron_FS345('D',
                                                             Valor,
                                                             0,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom) ;
    end ;

  if Impressora = 'DARUMA FS345' then
    begin
      if VlrAcresc > 0 then
          FecharCupomFiscal := FecharCupomFiscal_DARUMA_FS345('A',
                                                              Valor,
                                                              VlrAcresc,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_DARUMA_FS345('D',
                                                            Valor,
                                                            VlrDesc,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom) ;
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_DARUMA_FS345('D',
                                                            Valor,
                                                            0,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom) ;
    end;

  if Impressora = 'ELGIN MFD FIT 1E' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('A',
                                                         Valor,
                                                         VlrAcresc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('D',
                                                         Valor,
                                                         VlrDesc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom) ;
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('D',
                                                         Valor,
                                                         0,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom) ;
    end;

  if Impressora = 'SIGTRON FS300' then
    begin
      if DocumentoCli = '' then
        DocumentoCli := 'XXXX';
      if VlrAcresc > 0 then
        begin
          Sleep(500);
          ImprimeItemECF(ECFAtual,PortaECFAtual,IntToStr(NroUltItem),'999','ACRESCIMO','I','UN',1,VlrAcresc,0,0,2);
          Valor := Valor + VlrAcresc;
          Sleep(500);
        end;
      if (IDCupom <> '') and (Length(IDCupom) = 13) then
        CupomFormatado :=  IntToStr(StrToInt(Copy(IDCupom,1,3))) + '.' +
                           IntToStr(StrToInt(Copy(IDCupom,4,3))) + '.' +
                           IntToStr(StrToInt(Copy(IDCupom,7,7)))
      else
        CupomFormatado := '';

      if CupomFormatado = '' then
        CupomFormatado := 'XXXX';
      if Porta = 'COM1' then
        begin
          DadosItem := 'FecharCupomFiscal' + ' '            //1
                       + 'COM1' + ' '                       //2
                       + 'Fiscal' + ' '                     //3
                       + '"' + FloatToStr(Valor)+ '" '      //4
                       + '"' + FloatToStr(VlrDesc)+ '" '    //5
                       + '"' + FloatToStr(VlrAcresc)+ '" '  //6
                       + '"' + Vendedor + '" '              //7
                       + '"' + Plano + '" '                 //8
                       + '"' + NomeCli + '" '               //9
                       + '"' + DocumentoCli + ' Cupom: ' + CupomFormatado + '"  ' //10
                       + '"' + EnderecoCli + '"  ';         //11

          ParametrosItem := Pchar(DadosItem);
        end;
      if Porta = 'COM2' then
        begin
          DadosItem := 'FecharCupomFiscal' + ' '            //1
                       + 'COM2' + ' '                       //2
                       + 'Fiscal' + ' '                     //3
                       + '"' + FloatToStr(Valor)+ '" '      //4
                       + '"' + FloatToStr(VlrDesc)+ '" '    //5
                       + '"' + FloatToStr(VlrAcresc)+ '" '  //6
                       + '"' + Vendedor + '" '              //7
                       + '"' + Plano + '" '                 //8
                       + '"' + NomeCli + '" '               //9
                       + '"' + DocumentoCli + ' Cupom: ' + CupomFormatado + '"  ' //10
                       + '"' + EnderecoCli + '"  ';         //11

          ParametrosItem := Pchar(DadosItem);
        end;
      Sleep(500);
      try
        ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametrositem,Pchar(DM.PathAplicacao),0);
        FecharCupomFiscal := True;
      except
        FecharCupomFiscal := False;
      end;
    end;

  if Impressora = 'SWEDAS7000' then
    begin
      if VlrAcresc > 0 then
        begin
          LancarAcrescimoSWEDAS7000(VlrAcresc);
        end;
      FecharCupomSWEDAS7000('D',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom);
    end;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Finalizando Cupom');
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('A',
                                                   Valor,
                                                   VlrAcresc,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('D',
                                                   Valor,
                                                   VlrDesc,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom) ;

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('A',
                                                   Valor,
                                                   0,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupom_SCHALTER_SCF_ECF('A',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom)
      else
        FecharCupomFiscal := FecharCupom_SCHALTER_SCF_ECF('D',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom);
    end;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('A',
                                                                 Valor,
                                                                 VlrAcresc,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('D',
                                                                 Valor,
                                                                 VlrDesc,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom) ;

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('A',
                                                                 Valor,
                                                                 0,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom) ;
    end ;

  if Impressora = 'URANO_1EFC' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('A',
                                                          Valor,
                                                          VlrAcresc,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom) ;
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('D',
                                                          Valor,
                                                          VlrDesc,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom) ;

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('A',
                                                          Valor,
                                                          0,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom) ;
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function  CancelarCupomFiscal(Impressora, Porta : String) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
  begin
    FormataTX(#27'|10|0000|' + Format('%.12d',[Round(Int(0))]) +
                             Copy(Format('%.2f',[Frac(0)]), 3, 2) +'|A|'+
                             Copy('', 1, 496) + #13#10+'|' + #27) ;

    CancelarCupomFiscal := CancelarCupomFiscal_Bematech_MP20_FI_II ;
  end ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    CancelarCupomFiscal := CancelarCupomFiscal_Bematech_MP20_FI_II ;

  if Impressora = 'BEMATECH MP-25 FI' then
    CancelarCupomFiscal := CancelarCupomFiscal_Bematech_MP25_FI ;

  if Impressora = 'SIGTRON FS345' then
    CancelarCupomFiscal := CancelarCupomFiscal_Sigtron_FS345 ;

  if Impressora = 'DARUMA FS345' then
    CancelarCupomFiscal := CancelarCupomFiscal_DARUMA_FS345 ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    CancelarCupomFiscal := CancelarCupomFiscal_Elgin_FIT ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
         Parametros := 'CancelarCupomFiscal'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
         Parametros := 'CancelarCupomFiscal'+ ' '+ 'COM2' + ' ' + 'Fiscal';

      ParametrosItem := PChar(DadosItem);

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
    begin
      CancelarCupomFiscal := CancelarCupomSWEDAS7000;
    end;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      CancelarCupomFiscal := CancelarCupomSWEDAS7000_AFRAC;
      Sleep(2000);
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    if Application.FindComponent('FormTelaMovimentoCaixa') <> nil then
      CancelarCupomFiscal := CancelarCupom_SCHALTER_SCF_ECF('F')
    else
      CancelarCupomFiscal := CancelarCupom_SCHALTER_SCF_ECF('A');

  if Impressora = 'CORISCO CT7000 V3' then
    Result := CancelarCupomFiscal_Corisco_CT3000_V3('0') ;

  if Impressora = 'URANO_1EFC' then
    begin
      Result := CancelarCupomFiscal_Urano_1EFC();
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function EmiteCNFNV(Impressora, Porta, Identificador, MSG, Cod_Numerario : String; Valor : double) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    EmiteCNFNV := EmiteCNFNV_Bematech_MP20_FI(Identificador,'A',Valor);

  if Impressora = 'BEMATECH MP-20 FI II' then
    EmiteCNFNV := EmiteCNFNV_Bematech_MP20_FI_II(Identificador,'A', Valor) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    EmiteCNFNV := EmiteCNFNV_Bematech_MP25_FI(Identificador,Cod_Numerario,Valor);

  if Impressora = 'SIGTRON FS345' then
    EmiteCNFNV := EmiteCNFNV_Sigtron_FS345(Identificador,MSG,Valor);

  if Impressora = 'DARUMA FS345' then
    begin
      EmiteCNFNV := EmiteCNFNV_Daruma_FS345(Identificador,MSG,Valor);
    end;

  if Impressora = 'URANO_1EFC' then
    begin
      EmiteCNFNV := EmiteCNFNV_Urano_1EFC(Identificador,MSG,Valor);
    end;

  FecharPortaECF(Impressora, Porta) ;
end;

function  FecharCNFNV(Impressora, Porta : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'URANO_1EFC' then
    begin
      FecharCNFNV := FecharCNFNV_Urano_1EFC(UsuarioAtualNome);
    end;

  FecharPortaECF(Impressora, Porta) ;
end;

function Autenticacao(Impressora, Porta, Identificador, Ecf_ID, Documento, Parcela, Tipo : String; Valor : double; NumerarioCod : integer; Msg : String) : Boolean ;
var
  Mensag, ClienteNomeAut : string ;
  IDNum,DescrNumerario  : string ;
begin
  if Tipo = 'Recebimento' then
    Mensag := '* * * DESEJA AUTENTICAR O DOCUMENTO ' + Documento + '/' + Parcela + ' ? * * *' ;
  if Tipo = 'Entrada' then
    Mensag := '* * * DESEJA AUTENTICAR A ENTRADA DO DOCUMENTO ' + Documento + ' ? * * *' ;
  if Tipo = 'Diversos' then
    Mensag := '* * * DESEJA AUTENTICAR ESTE DOCUMENTO ? * * *' ;

  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
      if IDNum = '' then
      begin
        Informa('A posição do Numerário não foi cadastrada') ;
        exit ;
      end ;

      EmiteCNFNV_Bematech_MP20_FI('A', 'A', Valor) ;
      EfetuaFPCupom_Bematech_MP20_FI(IDNum, Valor) ;
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Bematech_MP20_FI ;
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        Autenticacao_Bematech_MP20_FI ;
    end ;
  end ;

  if Impressora = 'BEMATECH MP-20 FI II' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
      if IDNum = '' then
      begin
        Informa('A posição do Numerário não foi cadastrada') ;
        exit ;
      end ;
      EmiteCNFNV_Bematech_MP20_FI_II(Identificador, Identificador , Valor) ;
      EfetuaFPCupom_Bematech_MP20_FI_II(IDNum, Valor) ;
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Bematech_MP20_FI_II ;
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        begin
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Bematech_MP20_FI_II ;
        end;
    end ;
  end ;

  if Impressora = 'BEMATECH MP-25 FI' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      EmiteCNFNV_Bematech_MP25_FI(Identificador, IntToStr(NumerarioCod), Valor);
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Bematech_MP25_FI;

      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
         begin
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Bematech_MP25_FI;
        end;
    end ;
  end ;

  if Impressora = 'SIGTRON FS345' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
    //  EmiteCNFNV_Sigtron_FS345(Identificador, Documento, Valor) ;
      EmiteCNFNV_Sigtron_FS345(Identificador, Msg, Valor) ;
      EnviaFP_Sigtron_FS345(RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)), '', Valor) ;
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Sigtron_FS345(Documento + '/' + Parcela) ;

      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
         begin
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Sigtron_FS345(Documento + '/' + Parcela);
        end;
    end ;
  end ;

  if Impressora = 'DARUMA FS345' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      EmiteCNFNV_DARUMA_FS345(Identificador, Documento + '/' + Parcela, Valor);
      EnviaFP_DARUMA_FS345(IntToStr(NumerarioCod), Valor);
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Daruma_FS345(Documento + '/' + Parcela);

      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
         begin
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Daruma_FS345(Documento + '/' + Parcela);
        end;
    end ;
  end ;

  if Impressora = 'SIGTRON FS300' then
  begin
    if Pergunta('SIM', Mensag) then
      begin
        Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;

        if Porta = 'COM1' then
           DadosItem := 'Autenticacao'+ ' '+ 'COM1' + ' ' + 'OperacaoEspecial' + ' ' + Documento + '/' + Parcela + ' ' + FloatToStr(Valor) ;
        if Porta = 'COM2' then
           DadosItem := 'Autenticacao'+ ' '+ 'COM2' + ' ' + 'OperacaoEspecial' + ' ' + Documento + '/' + Parcela + ' ' + FloatToStr(Valor) ;

        ParametrosItem := PChar(DadosItem);
        ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),ParametrosItem,Pchar(DM.PathAplicacao),0);

        Application.ProcessMessages;
        DadosItem := '';

        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
           begin
             Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.');
             if Porta = 'COM1' then
                DadosItem := 'Autenticacao'+ ' '+ 'COM1' + ' ' + 'OperacaoEspecial' + ' ' + Documento + '/' + Parcela + ' ' + FloatToStr(Valor) ;
             if Porta = 'COM2' then
                DadosItem := 'Autenticacao'+ ' '+ 'COM2' + ' ' + 'OperacaoEspecial' + ' ' + Documento + '/' + Parcela + ' ' + FloatToStr(Valor) ;

             ParametrosItem := PChar(DadosItem);
             ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),ParametrosItem,Pchar(DM.PathAplicacao),0);
            end;
      end;
  end;

  if Impressora = 'SWEDAS7000' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          AutenticacaoSWEDAS7000(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        begin
          Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          AutenticacaoSWEDAS7000(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
        end;
    end ;
  end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      MakeWindowMessage('Iniciando autenticação');
      IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod));
      DescrNumerario := RetornaNumerario(IntToStr(NumerarioCod));
      AbreCNFNV_SWEDAS7000_AFRAC;
      RegistraItemCNFNV_SWEDAS7000_AFRAC(IDNum,Documento + ' ' + Parcela,Valor);
      PagaCNFNV_SWEDAS7000_AFRAC(DescrNumerario,IDNum,Documento + ' ' + Parcela,Valor);
      Sleep(1000);
      DestroyWindow;
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          AutenticacaoSWEDAS7000_AFRAC('',Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        begin
          Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          RepeteAutenticacaoSWEDAS7000_AFRAC;
        end;
      FechaCNFNV_SWEDAS7000_AFRAC;
    end ;
  end ;

  if Impressora = 'SCHALTER SCF_ECF' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autencticacao_SCHALTER_SCF_ECF(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        begin
          Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autencticacao_SCHALTER_SCF_ECF(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
        end;
    end ;
  end ;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      if Pergunta('SIM', Mensag) then
        begin
          AbreCNFNV__Corisco_CT3000_V3;
          EmiteCNFNV_Corisco_CT3000_V3(Ecf_CNFNV,'',Documento + '/' + Parcela,Valor);
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Corisco_CT3000_V3(Valor, Documento + '/' + Parcela) ;
{          if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
            begin
              EmiteCNFNV_Corisco_CT3000_V3(Ecf_CNFNV,'','AUTENTICACAO DE DOCUMENTO',Valor);
              Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
              Autenticacao_Corisco_CT3000_V3(Valor, Documento + '/' + Parcela) ;
            end;}
          FechaCNFNV__Corisco_CT3000_V3;
        end ;
    end ;

  if Impressora = 'URANO_1EFC' then
  begin
    if Pergunta('SIM', Mensag) then
    begin
      IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
      if IDNum = '' then
      begin
        Informa('A posição do Numerário não foi cadastrada') ;
        exit ;
      end ;
      EmiteCNFNV_Urano_1EFC(Identificador, Documento + '/' + Parcela , Valor) ;
      IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
      EfetuaFPCupom_Urano_1EFC(IDNum,Valor, False);
      Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
      Autenticacao_Urano_1EFC();
      if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
        begin
          Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Urano_1EFC();
        end;
      FecharCNFNV_Urano_1EFC(UsuarioAtualNome);
    end ;
  end ;

  FecharPortaECF(Impressora, Porta) ;
end ;

function AbrirCNFV(Impressora, Porta : string; Identificador,TipoDoc : char; Ecf_ID, NroCupom, DescriNumerario : string; Valor : double) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta);

  if Impressora = 'BEMATECH MP-20 FI' then
    AberturaCNFV_Bematech_MP20_FI(DescriNumerario);

  if Impressora = 'BEMATECH MP-20 FI II' then
    AbrirCNFV := AberturaCNFV_Bematech_MP20_FI_II(DescriNumerario);

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirCNFV := AbrirCNFV_Bematech_MP25_FI(DescriNumerario, Valor, NroCupom);

  if Impressora = 'SIGTRON FS345' then
    AbrirCNFV := AbrirCNFV_Sigtron_FS345(Identificador, TipoDoc, Ecf_ID , NroCupom, Valor);

  if Impressora = 'DARUMA FS345' then
    AbrirCNFV := AbrirCNFV_DARUMA_FS345(DescriNumerario, Valor, NroCupom);

  if Impressora = 'SWEDAS7000' then
    AbrirCNFV := EmiteCupomNaoFiscalSWEDA;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Abrindo cupom não fiscal');
      AbrirCNFV := AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC(DescriNumerario,Valor);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    begin
      //AbreCupomNFV_SCHALTER_SCR_ECF(NroCupom,Identificador,Valor);
      exit;
    end;

  if Impressora = 'SIGTRON FS300' then
    begin
      Sleep(5000);
      if Porta = 'COM1' then
        Parametros := 'AbreCNFV'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'AbreCNFV'+ ' '+ 'COM2' + ' ' + 'Fiscal';

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'URANO_1EFC' then
    begin
      // a FP aqui é enviada como 01 pq na urano é a seguencia de pagamentos e n o totalizado do numerario
      AbrirCNFV := AberturaCNFV_Urano_1EFC('01', NroCupomFiscal);
      Sleep(3000);
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function LinhaTextoLivre(Impressora, Porta, Texto : string) : Boolean ;
begin
  LinhaTextoLivre := False;
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    LinhaTextoLivre_Bematech_MP20_FI(Texto) ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    LinhaTextoLivre := LinhaTextoLivre_Bematech_MP20_FI_II(Texto);

  if Impressora = 'BEMATECH MP-25 FI' then
    LinhaTextoLivre := LinhaTextoLivre_Bematech_MP25_FI(Texto);

  if Impressora = 'SIGTRON FS345' then
    LinhaTextoLivre := LinhaTextoLivre_Sigtron_FS345(Texto);

  if Impressora = 'DARUMA FS345' then
    LinhaTextoLivre := LinhaTextoLivre_DARUMA_FS345(Texto);

  if Impressora = 'SIGTRON FS300' then
    begin
      Sleep(1000);
      if Porta = 'COM1' then
        DadosItem := 'LinhaTexto'+ ' '+ 'COM1' + ' ' + 'Fiscal' + ' ' + Texto;
      if Porta = 'COM2' then
        DadosItem := 'LinhaTexto'+ ' '+ 'COM2' + ' ' + 'Fiscal' + ' ' + Texto;

      Parametros := Pchar(DadosItem);

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
    LinhaTextoLivre := ImprimeTextoNaoFical(Texto);

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Imprimindo texto não fiscal');
      LinhaTextoLivre := ImprimeTextoNaoFicalSWEDAS7000_AFRAC(Texto);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    LinhaTextoLivre := LinhaTexto_SCHALTER_SCF_ECF(Texto);

  if Impressora = 'URANO_1EFC' then
    LinhaTextoLivre := LinhaTextoLivre_Urano_1EFC(Texto);

  FecharPortaECF(Impressora, Porta) ;
end ;

function FecharCNFV(Impressora, Porta : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    Result := FechamentoRelatorioGerencial_Bematech_MP20_FI_II(Impressora,Porta);

  if Impressora = 'BEMATECH MP-25 FI' then
    FecharCNFV := FecharCNFV_Bematech_MP25_FI ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
        Parametros := 'FechaCNFV'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'FechaCNFV'+ ' '+ 'COM2' + ' ' + 'Fiscal';

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SIGTRON FS345' then
    FecharCNFV := FecharCNFV_Sigtron_FS345 ;

  if Impressora = 'DARUMA FS345' then
    FecharCNFV := FecharCNFV_DARUMA_FS345 ;

  if Impressora = 'SWEDAS7000' then
    FecharCNFV := FecharCupomSemFP_SEWDAS7000;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Fechando cupom não fiscal');
      FecharCNFV := FecharCupomSemFP_SEWDAS7000;
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    FecharCNFV := FechaCupomNFV_SCHALTER_SCF_ECF(NroCupomFiscal);

  if Impressora = 'URANO_1EFC' then
    FecharCNFV := FechamentoCNFV_Urano_1EFC(UsuarioAtualNome);

  FecharPortaECF(Impressora, Porta) ;
end ;

function RetornaNroCupomFiscal(Impressora,Porta : String) : String ;
var
  Str : String;
begin
  AssignFile(ArquivoCupom,Dm.PathAplicacao + 'NumeroCupom.Txt');
  Reset(ArquivoCupom);
  Readln(ArquivoCupom,Str);
  Result := Trim(Copy(Str,1,10));
  CloseFile(ArquivoCupom);
end;

function AbrirGaveta(Impressora, Porta : String) : Boolean;
begin
  AbrirGaveta := True;

  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-20 FI' then
    AbrirGaveta := AbrirGaveta_Bematech_MP20_FI ;

  if Impressora = 'BEMATECH MP-20 FI II' then
    AbrirGaveta := AbrirGaveta_Bematech_MP20_FI_II ;

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirGaveta := AbrirGaveta_Bematech_MP25_FI ;

  if (Impressora = 'SIGTRON FS345') then
    AbrirGaveta := AbrirGaveta_Sigtron_FS345 ;

  if (Impressora = 'DARUMA FS345') then
    AbrirGaveta := AbrirGaveta_Daruma_FS345 ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbrirGaveta := AbrirGaveta_Elgin_FIT ;

  if Impressora = 'SIGTRON FS300' then
    begin
      if Porta = 'COM1' then
        Parametros := 'AbrirGaveta'+ ' '+ 'COM1' + ' ' + 'Fiscal';
      if Porta = 'COM2' then
        Parametros := 'AbrirGaveta'+ ' '+ 'COM2' + ' ' + 'Fiscal';

      ShellExecute(0,'Open',Pchar(DM.PathAplicacao + 'Sigtron300manager.exe'),Parametros,Pchar(DM.PathAplicacao),0);
    end;

  if Impressora = 'SWEDAS7000' then
    AbrirGavetaSWEDAS7000;

  if Impressora = 'SWEDAS7000_AFRAC' then
    AbrirGavetaSWEDAS7000_AFRAC;

  if Impressora = 'CORISCO CT7000 V3' then
    AbrirGaveta_Corisco_CT3000_V3;

  if Impressora = 'URANO_1EFC' then
    AbrirGaveta_Urano_1EFC;

  FecharPortaECF(Impressora, Porta) ;
end ;

function  EmiteCNFV_Corisco(Impressora,Porta,Titulo,Texto:String):Boolean;
begin
  AbrirPortaECF(Impressora,Porta);
  EmiteCNFV_Corisco := EmiteCNFV_Corisco_CT3000_V3(Titulo,Texto);
  FecharPortaECF(Impressora,Porta);
end;

function  ImprimeRespostaCartao(Impressora, Porta,CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : string) : Boolean ;
begin
  if Impressora = 'DARUMA FS345' then
    ImprimeRespostaCartao := ImprimeRespostaCartao_Daruma_FS345(CaminhoRespostaCartao, CartaoDescricao, TravaTeclado);
end;

function AbrirReciboNaoFiscal(Forma_de_Pagamento, Totalizador, Acrescimo_ou_Desconto, Tipo_Acrescimo_ou_Desconto, Valor_Acrescimo_ou_Desconto, Valor_do_Recebimento, Texto_Livre1, Texto_Livre2 : String) : Boolean ;
begin
  if Daruma_FI_AbreRecebimentoNaoFiscal(pchar(Totalizador), pchar(Acrescimo_ou_Desconto), pchar(Tipo_Acrescimo_ou_Desconto), pchar(Valor_Acrescimo_ou_Desconto), pchar(Valor_do_Recebimento), pchar(Texto_Livre1)) > 0 then
    if Daruma_FI_EfetuaFormaPagamentoNaoFiscal(pchar(Forma_de_Pagamento), pchar(Valor_do_Recebimento), pchar(Texto_Livre2)) > 0 then
      AbrirReciboNaoFiscal := True
    else
      AbrirReciboNaoFiscal := False;
end ;


end.
