object FormPrincipal: TFormPrincipal
  Left = 713
  Top = 415
  Width = 250
  Height = 137
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
    Left = 82
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
  end
  object TblPedidoItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoItens.DB'
    Left = 82
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
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoFinan.DB'
    Left = 82
    Top = 64
    object TblPedidoFinanceiroPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanceiroVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanceiroValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object TblPreVendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaItem.DB'
    Left = 20
    Top = 36
    object TblPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblPreVendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TblPreVendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblPreVendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TblPreVendaItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblPreVendaItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TblPreVendaItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
  end
  object TblPreVendaCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 20
    Top = 8
    object TblPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblPreVendaCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblPreVendaCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblPreVendaCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TblPreVendaCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblPreVendaCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblPreVendaCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblPreVendaCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TblPreVendaCabNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblPreVendaCabFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblPreVendaCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblPreVendaCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblPreVendaCabMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TblPreVendaCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblPreVendaCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TblPreVendaCabPessoaRecebeNome: TStringField
      FieldName = 'PessoaRecebeNome'
      Size = 60
    end
    object TblPreVendaCabPessoaRecebeEnder: TStringField
      FieldName = 'PessoaRecebeEnder'
      Size = 60
    end
    object TblPreVendaCabPessoaRecebeBai: TStringField
      FieldName = 'PessoaRecebeBai'
      Size = 60
    end
    object TblPreVendaCabPessoaRecebeCid: TStringField
      FieldName = 'PessoaRecebeCid'
      Size = 60
    end
    object TblPreVendaCabPessoaRecebeUF: TStringField
      FieldName = 'PessoaRecebeUF'
      Size = 2
    end
    object TblPreVendaCabPessoaRecebeFone: TStringField
      FieldName = 'PessoaRecebeFone'
      Size = 15
    end
    object TblPreVendaCabMensagem2: TMemoField
      FieldName = 'Mensagem2'
      BlobType = ftMemo
      Size = 240
    end
    object TblPreVendaCabDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblPreVendaCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object TblPreVendaCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TblPreVendaCabDocumentoClienteVenda: TStringField
      FieldName = 'DocumentoClienteVenda'
    end
    object TblPreVendaCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TblPreVendaCabCidadeClienteVenda: TStringField
      FieldName = 'CidadeClienteVenda'
      Size = 30
    end
    object TblPreVendaCabOBSImpressaoCupom: TStringField
      FieldName = 'OBSImpressaoCupom'
      Size = 60
    end
    object TblPreVendaCabTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblPreVendaCabPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
    object TblPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TblPreVendaCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TblPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblPreVendaCabPEDIDOORCAMENTO: TStringField
      FieldName = 'PEDIDOORCAMENTO'
    end
    object TblPreVendaCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TblPreVendaCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TblPreVendaCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TblPreVendaCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TblPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TblPreVendaCabKM: TStringField
      FieldName = 'KM'
      Size = 10
    end
    object TblPreVendaCabClienteDependente: TStringField
      FieldName = 'ClienteDependente'
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 120000
    PrinterSetup.mmPaperWidth = 130000
    PrinterSetup.PaperSize = 144
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 171
    Top = 8
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 46567
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Vendedor'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 29898
        mmTop = 29633
        mmWidth = 12912
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 29369
        mmWidth = 22860
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 6879
        mmTop = 33073
        mmWidth = 60325
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cod.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 35719
        mmWidth = 6703
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 35719
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 39423
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Preco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 31192
        mmTop = 39423
        mmWidth = 8326
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 6085
        mmWidth = 28046
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 59002
        mmTop = 39423
        mmWidth = 7197
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 6879
        mmTop = 43127
        mmWidth = 60325
        BandType = 1
      end
      object ppLBEmpresa: TppLabel
        UserName = 'LBEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mercado Ponto da Praia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 7144
        mmTop = 529
        mmWidth = 48345
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PedICod'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 32544
        mmTop = 10848
        mmWidth = 23114
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Controle'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 10583
        mmWidth = 11887
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Destinatario_Nome'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 18521
        mmWidth = 29041
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 14552
        mmWidth = 10837
        BandType = 1
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Destinatario_Fone'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 7408
        mmTop = 25400
        mmWidth = 26120
        BandType = 1
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Destinatario_Endereco'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 7144
        mmTop = 22490
        mmWidth = 32512
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descricao'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 0
        mmWidth = 46302
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Codigo'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#####00000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3629
        mmLeft = 7144
        mmTop = 0
        mmWidth = 8759
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Qtd1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3629
        mmLeft = 7144
        mmTop = 3704
        mmWidth = 1752
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VlrUnitario'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3629
        mmLeft = 31857
        mmTop = 3704
        mmWidth = 7883
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VlrTotal'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3629
        mmLeft = 57150
        mmTop = 3704
        mmWidth = 7883
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 4498
        mmWidth = 27940
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6615
        mmTop = 0
        mmWidth = 60325
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 8731
        mmWidth = 20320
        BandType = 7
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalDesconto'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 58600
        mmTop = 8731
        mmWidth = 6223
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Geral'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 12965
        mmWidth = 27940
        BandType = 7
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Total'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3598
        mmLeft = 56928
        mmTop = 12965
        mmWidth = 8001
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6350
        mmTop = 23813
        mmWidth = 60325
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6085
        mmTop = 30692
        mmWidth = 60325
        BandType = 7
      end
      object ppTotalBruto: TppLabel
        UserName = 'TotalBruto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 58600
        mmTop = 4763
        mmWidth = 6223
        BandType = 7
      end
    end
  end
  object DSCab: TDataSource
    DataSet = TblPedido
    Left = 113
    Top = 8
  end
  object dsItens: TDataSource
    DataSet = TblPedidoItem
    Left = 113
    Top = 36
  end
  object BDEPipe: TppBDEPipeline
    DataSource = DSCab
    CloseDataSource = True
    UserName = 'BDEPipe'
    Left = 143
    Top = 8
    object BDEPipeppField1: TppField
      FieldAlias = 'PedICod'
      FieldName = 'PedICod'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object BDEPipeppField2: TppField
      FieldAlias = 'Emitente_Nome'
      FieldName = 'Emitente_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object BDEPipeppField3: TppField
      FieldAlias = 'Emitente_Ender'
      FieldName = 'Emitente_Ender'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object BDEPipeppField4: TppField
      FieldAlias = 'Emitente_Bairro'
      FieldName = 'Emitente_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object BDEPipeppField5: TppField
      FieldAlias = 'Emitente_Cidade'
      FieldName = 'Emitente_Cidade'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object BDEPipeppField6: TppField
      FieldAlias = 'Emitente_UF'
      FieldName = 'Emitente_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object BDEPipeppField7: TppField
      FieldAlias = 'Emitente_CGC'
      FieldName = 'Emitente_CGC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object BDEPipeppField8: TppField
      FieldAlias = 'Emitente_IE'
      FieldName = 'Emitente_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object BDEPipeppField9: TppField
      FieldAlias = 'Emitente_Fone'
      FieldName = 'Emitente_Fone'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object BDEPipeppField10: TppField
      FieldAlias = 'DtEmissao'
      FieldName = 'DtEmissao'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object BDEPipeppField11: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object BDEPipeppField12: TppField
      FieldAlias = 'Destinatario_Endereco'
      FieldName = 'Destinatario_Endereco'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object BDEPipeppField13: TppField
      FieldAlias = 'Destinatario_Bairro'
      FieldName = 'Destinatario_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object BDEPipeppField14: TppField
      FieldAlias = 'Destinatario_Cep'
      FieldName = 'Destinatario_Cep'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object BDEPipeppField15: TppField
      FieldAlias = 'Destinatario_Cidade'
      FieldName = 'Destinatario_Cidade'
      FieldLength = 60
      DisplayWidth = 60
      Position = 14
    end
    object BDEPipeppField16: TppField
      FieldAlias = 'Destinatario_UF'
      FieldName = 'Destinatario_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object BDEPipeppField17: TppField
      FieldAlias = 'Destinatario_CpfCgc'
      FieldName = 'Destinatario_CpfCgc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object BDEPipeppField18: TppField
      FieldAlias = 'Destinatario_IE'
      FieldName = 'Destinatario_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object BDEPipeppField19: TppField
      FieldAlias = 'Destinatario_Fone'
      FieldName = 'Destinatario_Fone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object BDEPipeppField20: TppField
      FieldAlias = 'Destinatario_Fax'
      FieldName = 'Destinatario_Fax'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object BDEPipeppField21: TppField
      FieldAlias = 'Transp'
      FieldName = 'Transp'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object BDEPipeppField22: TppField
      FieldAlias = 'DtaEntrega'
      FieldName = 'DtaEntrega'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object BDEPipeppField23: TppField
      FieldAlias = 'Emitente_Fax'
      FieldName = 'Emitente_Fax'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object BDEPipeppField24: TppField
      FieldAlias = 'Comprador'
      FieldName = 'Comprador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object BDEPipeppField25: TppField
      FieldAlias = 'OrdemCompra'
      FieldName = 'OrdemCompra'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object BDEPipeppField26: TppField
      FieldAlias = 'Plano'
      FieldName = 'Plano'
      FieldLength = 60
      DisplayWidth = 60
      Position = 25
    end
    object BDEPipeppField27: TppField
      FieldAlias = 'TipoFrete'
      FieldName = 'TipoFrete'
      FieldLength = 15
      DisplayWidth = 15
      Position = 26
    end
    object BDEPipeppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorFrete'
      FieldName = 'ValorFrete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object BDEPipeppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalDesconto'
      FieldName = 'TotalDesconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object BDEPipeppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object BDEPipeppField31: TppField
      FieldAlias = 'Observacoes'
      FieldName = 'Observacoes'
      FieldLength = 10
      DataType = dtMemo
      DisplayWidth = 10
      Position = 30
      Searchable = False
      Sortable = False
    end
    object BDEPipeppField32: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 31
    end
    object BDEPipeppField33: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 32
    end
    object BDEPipeppField34: TppField
      FieldAlias = 'PEDIDOORCAMENTO'
      FieldName = 'PEDIDOORCAMENTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object BDEPipeppField35: TppField
      FieldAlias = 'Emitente_Email'
      FieldName = 'Emitente_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 34
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsItens
    CloseDataSource = True
    UserName = 'BDEPipeline1'
    Left = 143
    Top = 36
  end
end
