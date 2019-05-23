unit Sigtron_FS345_FuncoesDLL;

interface
  function MessageBox(HWnd: Integer; Text, Caption: PChar;
                      Flags: Integer): Integer; stdcall;external 'user32.dll' name 'MessageBoxA';  function DAR_LeVersaoDLL: Integer;
  function DAR_Resposta(dest: PChar; maxlen: Integer ): Integer; stdcall; external 'fs345_32.dll';  function DAR_Status: Integer;  function DAR_AbreSerial(conf:string): Integer;stdcall;external 'fs345_32.dll';  function DAR_FechaSerial (wait:char): Integer;stdcall;external 'fs345_32.dll';  function DAR_Erro : Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeituraX(wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_ReducaoZ(DatHor:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_AbreCupomFiscal(wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_Desc2Lin13Dig(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;Wait:Char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_DescPreUn3dF53(St:string;Cod:string;D_a:char;Porc:string;Preco:string;Quant:string;Unid:string;Desc:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_CancelaItem(NumItem:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_DescFormPag(Tipo:char;Val:string;Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_Totaliza(D_a:char;Val:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_FechaCupom(Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_IdentConsum(Text:string;wait:char): Integer;stdcall;external 'fs345_32.dll';
  function DAR_CancelaDoc(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeMF(opt:char;Inic:string;Fim:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_AbreCNFV(Id:char;Tipo:char;Coo:string;Val:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_AbreX(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LinhaX(Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_FechaX(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeEstadoDoc(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_PersonaMens(Opcao:char;Cnt:char;Id:char;Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeMensPer(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_AbreCNFNV(Id:char;D_a:char;Desc:string;Val:string;Text:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeStatus(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_LeConfig(wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_ConfigIF(Bloco:string;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_Autentica(Ident:String;wait:char):Integer;stdcall;external 'fs345_32.dll';
  function DAR_AbreGaveta :Integer;stdcall;external 'fs345_32.dll';
  function DAR_CriaCNF(Tipo:char;Nome:string;wait:char):Integer;stdcall;external 'fs345_32.dll';

  function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: String; Casas_Decimais: Integer; Valor_Unitario: String; Tipo_de_Desconto: String; Valor_do_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VendeItemTresDecimais( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String;  Valor_Unitario: String; Acrescimo_ou_Desconto: String; Percentual_Acrescimo_ou_Desconto : String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EfetuaFormaPagamentoDescricaoForma( Descricao_da_Forma_Pagamento: string; Valor_da_Forma_Pagamento: string; Texto_Livre: string ): integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_FechaCupom( Forma_de_Pagamento: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_Pago: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_CancelaItemAnterior: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_AumentaDescricaoItem( Descricao_Extendida: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_UsaUnidadeMedida( Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EmitirCupomAdicional: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EstornoFormasPagamento( Forma_de_Origem: String; Nova_Forma: String; Valor_Total_Pago: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll';

  // Abre Gaveta na Matricial Daruma
  Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
  Function Daruma_DUAL_AcionaGaveta() : Integer; StdCall; External 'Daruma32.dll'
  Function Daruma_Registry_DUAL_Porta(Porta : String)  : Integer; StdCall; External 'Daruma32.dll'

  // Métodos para Recebimentos e Relatórios
  function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
  function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_AbreRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EnviarTextoCNF( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
  // Funcoes pra autenticar Carnes de Pagto
  function Daruma_FI_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';

  function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_FundoCaixa( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
  function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_AutenticacaoStr( Autenticacao_Str :string ): Integer; StdCall; External 'Daruma32.dll'

  // Métodos para TEF
  function Daruma_TEF_EsperarArquivo( Path_Resp_TEF: String; Tempo_Espera: String; Travar: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_TEF_ImprimirResposta( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string ): Integer; StdCall; External 'Daruma32.dll'
  function Daruma_TEF_ImprimirRespostaCartao( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll'
  function Daruma_TEF_FechaRelatorio: Integer; StdCall; External 'Daruma32.dll'
  function Daruma_TEF_SetFocus( TituloJanela: String ): Integer; StdCall; External 'Daruma32.dll'
  function Daruma_TEF_TravarTeclado( Travar: String ): Integer; StdCall; External 'Daruma32.dll'

  // Métodos de Informações e Status
  function Daruma_FI_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_StatusRelatorioGerencial( StatusRelGerencial: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_StatusComprovanteNaoFiscalVinculado( StatusCNFV: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
  function Daruma_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaTotalizadoresNaoFiscaisEx( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaTruncamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaStatusCheque( StatusCheque: Integer ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaModeloECF: Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaDescricaoFormasPagamento( Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaXPendente( XPendente: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaZPendente( ZPendente: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaDiaAberto( DiaAberto: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
  function Daruma_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';

implementation
  function DAR_LeVersaoDLL; external 'fs345_32.dll';
  function DAR_Status; external 'fs345_32.dll';

end.
