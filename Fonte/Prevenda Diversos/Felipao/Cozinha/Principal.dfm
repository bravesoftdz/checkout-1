object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 224
  Height = 158
  Caption = 'CozinhaTablet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TicketCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 106
    Top = 8
    object TicketCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TicketCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TicketCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TicketCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TicketCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TicketCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TicketCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TicketCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TicketCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TicketCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TicketCabNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TicketCabFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TicketCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TicketCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TicketCabMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TicketCabDataEmissao: TStringField
      FieldName = 'DataEmissao'
    end
    object TicketCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TicketCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TicketCabPessoaRecebeNome: TStringField
      FieldName = 'PessoaRecebeNome'
      Size = 60
    end
    object TicketCabPessoaRecebeEnder: TStringField
      FieldName = 'PessoaRecebeEnder'
      Size = 60
    end
    object TicketCabPessoaRecebeBai: TStringField
      FieldName = 'PessoaRecebeBai'
      Size = 60
    end
    object TicketCabPessoaRecebeCid: TStringField
      FieldName = 'PessoaRecebeCid'
      Size = 60
    end
    object TicketCabPessoaRecebeUF: TStringField
      FieldName = 'PessoaRecebeUF'
      Size = 2
    end
    object TicketCabPessoaRecebeFone: TStringField
      FieldName = 'PessoaRecebeFone'
      Size = 15
    end
    object TicketCabMensagem2: TMemoField
      FieldName = 'Mensagem2'
      BlobType = ftMemo
      Size = 240
    end
    object TicketCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object TicketCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TicketCabDocumentoClienteVenda: TStringField
      FieldName = 'DocumentoClienteVenda'
    end
    object TicketCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TicketCabCidadeClienteVenda: TStringField
      FieldName = 'CidadeClienteVenda'
      Size = 30
    end
    object TicketCabOBSImpressaoCupom: TStringField
      FieldName = 'OBSImpressaoCupom'
      Size = 60
    end
    object TicketCabTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TicketCabPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
    object TicketCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TicketCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TicketCabClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
    object TicketCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TicketCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TicketCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TicketCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TicketCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TicketCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TicketCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TicketCabMotoboy: TStringField
      FieldName = 'Motoboy'
      Size = 30
    end
    object TicketCabSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
  end
  object TicketItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 106
    Top = 36
    object TicketItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TicketItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TicketItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TicketItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TicketItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TicketItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TicketItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TicketItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TicketItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object TicketItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TicketItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TicketItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
    object TicketItemPRODA30COZINHA: TStringField
      FieldName = 'PRODA30COZINHA'
      Size = 30
    end
  end
  object rdp: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Cozinha'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Cozinha'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 10
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 64
    Top = 26
  end
end
