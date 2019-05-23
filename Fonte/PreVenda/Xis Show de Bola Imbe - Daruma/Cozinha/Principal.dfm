object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 224
  Height = 158
  Caption = 'PreVenda'
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
  object TblPedido: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoCab.DB'
    Left = 8
    Top = 8
    object TblPedidoPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoEmitente_Nome: TStringField
      FieldName = 'Emitente_Nome'
      Size = 60
    end
    object TblPedidoEmitente_Ender: TStringField
      FieldName = 'Emitente_Ender'
      Size = 60
    end
    object TblPedidoEmitente_Bairro: TStringField
      FieldName = 'Emitente_Bairro'
      Size = 60
    end
    object TblPedidoEmitente_Cidade: TStringField
      FieldName = 'Emitente_Cidade'
      Size = 60
    end
    object TblPedidoEmitente_UF: TStringField
      FieldName = 'Emitente_UF'
      Size = 2
    end
    object TblPedidoEmitente_CGC: TStringField
      FieldName = 'Emitente_CGC'
    end
    object TblPedidoEmitente_IE: TStringField
      FieldName = 'Emitente_IE'
    end
    object TblPedidoEmitente_Fone: TStringField
      FieldName = 'Emitente_Fone'
      Size = 15
    end
    object TblPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object TblPedidoDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object TblPedidoDestinatario_Endereco: TStringField
      FieldName = 'Destinatario_Endereco'
      Size = 60
    end
    object TblPedidoDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Size = 60
    end
    object TblPedidoDestinatario_Cep: TStringField
      FieldName = 'Destinatario_Cep'
      Size = 15
    end
    object TblPedidoDestinatario_Cidade: TStringField
      FieldName = 'Destinatario_Cidade'
      Size = 60
    end
    object TblPedidoDestinatario_UF: TStringField
      FieldName = 'Destinatario_UF'
      Size = 2
    end
    object TblPedidoDestinatario_CpfCgc: TStringField
      FieldName = 'Destinatario_CpfCgc'
    end
    object TblPedidoDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
    end
    object TblPedidoDestinatario_Fone: TStringField
      FieldName = 'Destinatario_Fone'
    end
    object TblPedidoDestinatario_Fax: TStringField
      FieldName = 'Destinatario_Fax'
    end
    object TblPedidoTransp: TStringField
      FieldName = 'Transp'
      Size = 60
    end
    object TblPedidoDtaEntrega: TDateField
      FieldName = 'DtaEntrega'
    end
    object TblPedidoEmitente_Fax: TStringField
      FieldName = 'Emitente_Fax'
    end
    object TblPedidoComprador: TStringField
      FieldName = 'Comprador'
      Size = 60
    end
    object TblPedidoOrdemCompra: TStringField
      FieldName = 'OrdemCompra'
      Size = 60
    end
    object TblPedidoPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblPedidoTipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 15
    end
    object TblPedidoValorFrete: TFloatField
      FieldName = 'ValorFrete'
    end
    object TblPedidoTotalDesconto: TFloatField
      FieldName = 'TotalDesconto'
    end
    object TblPedidoTotal: TFloatField
      FieldName = 'Total'
    end
    object TblPedidoObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
      Size = 10
    end
    object TblPedidoVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblPedidoEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object TblPedidoPEDIDOORCAMENTO: TStringField
      FieldName = 'PEDIDOORCAMENTO'
    end
    object TblPedidoEmitente_Email: TStringField
      FieldName = 'Emitente_Email'
      Size = 60
    end
    object TblPedidoDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TblPedidoTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblPedidoLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TblPedidoMotoboy: TStringField
      FieldName = 'Motoboy'
      Size = 30
    end
  end
  object TblPedidoItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoItens.DB'
    Left = 8
    Top = 36
    object TblPedidoItemPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPedidoItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblPedidoItemUn: TStringField
      FieldName = 'Un'
      Size = 2
    end
    object TblPedidoItemQtd1: TFloatField
      FieldName = 'Qtd1'
    end
    object TblPedidoItemVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object TblPedidoItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object TblPedidoItemCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblPedidoItemTecido: TStringField
      FieldName = 'Tecido'
      Size = 60
    end
    object TblPedidoItemLegenda: TIntegerField
      FieldName = 'Legenda'
    end
    object TblPedidoItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblPedidoItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblPedidoItemQtd2: TFloatField
      FieldName = 'Qtd2'
    end
    object TblPedidoItemQtd3: TFloatField
      FieldName = 'Qtd3'
    end
    object TblPedidoItemQtd4: TFloatField
      FieldName = 'Qtd4'
    end
    object TblPedidoItemQtd5: TFloatField
      FieldName = 'Qtd5'
    end
    object TblPedidoItemQtd6: TFloatField
      FieldName = 'Qtd6'
    end
    object TblPedidoItemQtd7: TFloatField
      FieldName = 'Qtd7'
    end
    object TblPedidoItemQtd8: TFloatField
      FieldName = 'Qtd8'
    end
    object TblPedidoItemQtd9: TFloatField
      FieldName = 'Qtd9'
    end
    object TblPedidoItemQtd10: TFloatField
      FieldName = 'Qtd10'
    end
    object TblPedidoItemQtd11: TFloatField
      FieldName = 'Qtd11'
    end
    object TblPedidoItemQtd12: TFloatField
      FieldName = 'Qtd12'
    end
    object TblPedidoItemQtd13: TFloatField
      FieldName = 'Qtd13'
    end
    object TblPedidoItemQtd14: TFloatField
      FieldName = 'Qtd14'
    end
    object TblPedidoItemQtd15: TFloatField
      FieldName = 'Qtd15'
    end
    object TblPedidoItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TblPedidoItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblPedidoItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
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
    OpcoesPreview.CaptionPreview = 'Impressao Prevenda'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Impressao Prevenda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 10
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 64
    Top = 26
  end
  object TicketCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
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
    object TicketCabDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
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
  end
  object TicketItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
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
  end
end
