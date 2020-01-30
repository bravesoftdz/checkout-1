object FormPrincipal: TFormPrincipal
  Left = 351
  Top = 108
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
    object TblPreVendaCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TblPreVendaCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TblPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
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
    PrinterSetup.PaperSize = 131
    Units = utMillimeters
    DeviceType = 'Printer'
    ShowCancelDialog = False
    ShowPrintDialog = False
    Left = 171
    Top = 8
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 57679
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 17992
        mmWidth = 27940
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 17727
        mmWidth = 22860
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = '---------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 42598
        mmWidth = 114300
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cod.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 46302
        mmWidth = 6703
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 46302
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Qtde.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 50006
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Preco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 48419
        mmTop = 50006
        mmWidth = 8326
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70908
        mmTop = 13758
        mmWidth = 28046
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 87313
        mmTop = 50006
        mmWidth = 7144
        BandType = 1
      end
      object ppLBEmpresa: TppLabel
        UserName = 'LBEmpresa'
        Caption = 'CRIACOES DARVAMI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 529
        mmWidth = 99748
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 13758
        mmWidth = 33020
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Controle:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 13494
        mmWidth = 22860
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'Destinatario_Nome'
        DataPipeline = BDEPipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 29898
        mmWidth = 35560
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 25665
        mmWidth = 20320
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 38365
        mmWidth = 45720
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 34131
        mmWidth = 22860
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = '---------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 53446
        mmWidth = 114300
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = '---------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 21960
        mmWidth = 114300
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = '---------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 9525
        mmWidth = 114300
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = '51 3473.2538 / 51 3473.2078'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 5292
        mmWidth = 100542
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 3704
        mmWidth = 2540
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 3704
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText101'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 3704
        mmWidth = 12700
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Total Itens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 4498
        mmWidth = 30480
        BandType = 7
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 4498
        mmWidth = 12700
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = '---------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 265
        mmWidth = 114036
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 8731
        mmWidth = 22860
        BandType = 7
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 84296
        mmTop = 8731
        mmWidth = 10160
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Total Geral:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 12965
        mmWidth = 30480
        BandType = 7
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
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
        mmHeight = 4233
        mmLeft = 81862
        mmTop = 12965
        mmWidth = 12700
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
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsItens
    CloseDataSource = True
    UserName = 'BDEPipeline1'
    Left = 143
    Top = 36
  end
end
