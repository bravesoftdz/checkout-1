object FormPrincipal: TFormPrincipal
  Left = 145
  Top = 138
  Width = 193
  Height = 228
  Caption = 'PreVenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
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
    object TblPedidoDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object TblPedidoUsuarioVendaStr: TStringField
      FieldName = 'UsuarioVendaStr'
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
    object TblPedidoItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblPedidoItemMarca: TStringField
      FieldName = 'Marca'
      Size = 10
    end
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoFinan.DB'
    Left = 8
    Top = 64
    object TblPedidoFinanceiroPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanceiroParcela: TStringField
      FieldName = 'Parcela'
      Size = 3
    end
    object TblPedidoFinanceiroVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanceiroValor: TFloatField
      FieldName = 'Valor'
    end
    object TblPedidoFinanceiroNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
  end
  object TblPreVendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaItem.DB'
    Left = 56
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
    object TblPreVendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
  end
  object TblPreVendaCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 56
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
    object TblPreVendaCabDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object TblPreVendaCabUsuarioVendaStr: TStringField
      FieldName = 'UsuarioVendaStr'
    end
  end
  object SQLPrevendaContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDACONTASRECEBER'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 56
    Top = 96
    object SQLPrevendaContasReceberPVCRICOD: TIntegerField
      FieldName = 'PVCRICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRICOD'
    end
    object SQLPrevendaContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.TERMICOD'
    end
    object SQLPrevendaContasReceberPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PRVDICOD'
    end
    object SQLPrevendaContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDACONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPrevendaContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.NUMEICOD'
    end
    object SQLPrevendaContasReceberPVCRN2VLR: TBCDField
      FieldName = 'PVCRN2VLR'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaContasReceberPVCRINROPARC: TIntegerField
      FieldName = 'PVCRINROPARC'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRINROPARC'
    end
    object SQLPrevendaContasReceberPVCRDVENC: TDateTimeField
      FieldName = 'PVCRDVENC'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRDVENC'
    end
  end
  object SQLPrevendaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDANUMERARIO'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 8
    Top = 96
    object SQLPrevendaNumerarioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDANUMERARIO.TERMICOD'
    end
    object SQLPrevendaNumerarioPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDANUMERARIO.PRVDICOD'
    end
    object SQLPrevendaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDANUMERARIO.NUMEICOD'
    end
    object SQLPrevendaNumerarioPVNUN2VLR: TBCDField
      FieldName = 'PVNUN2VLR'
      Origin = 'DB.PREVENDANUMERARIO.PVNUN2VLR'
      Precision = 15
      Size = 3
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = PipeItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Venda'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Printer'
    ShowCancelDialog = False
    ShowPrintDialog = False
    Left = 9
    Top = 132
    Version = '6.02'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 66411
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label1'
        Caption = 'MADAME MIX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 8290
        mmLeft = 55033
        mmTop = 7673
        mmWidth = 47202
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label2'
        Caption = 'Data de Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 27781
        mmWidth = 26988
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'DtEmissao'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3881
        mmLeft = 83873
        mmTop = 27781
        mmWidth = 14605
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label13'
        Caption = 'Plano de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 31750
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText15'
        DataField = 'Plano'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3969
        mmLeft = 83873
        mmTop = 31750
        mmWidth = 71702
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label14'
        Caption = 'Dados do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 46038
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label28'
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 35719
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText7'
        DataField = 'Vendedor'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3969
        mmLeft = 83873
        mmTop = 35719
        mmWidth = 71702
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 54504
        mmTop = 60854
        mmWidth = 101865
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 54504
        mmTop = 66146
        mmWidth = 101865
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label102'
        Caption = 'Cod    Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 55298
        mmTop = 61648
        mmWidth = 24977
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 130175
        mmTop = 61648
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Vlr.Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 142875
        mmTop = 61648
        mmWidth = 12012
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Rela'#231#227'o de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 55033
        mmTop = 55563
        mmWidth = 37084
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        Caption = 'Controle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 55563
        mmTop = 23813
        mmWidth = 13631
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'PedICod'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3881
        mmLeft = 83873
        mmTop = 23813
        mmWidth = 22013
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Destinatario_Nome'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 50271
        mmWidth = 100277
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 55563
        mmTop = 39688
        mmWidth = 16087
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UsuarioVendaSTR'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3969
        mmLeft = 83873
        mmTop = 39688
        mmWidth = 71702
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Descricao'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3351
        mmLeft = 65352
        mmTop = 0
        mmWidth = 62706
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Codigo'
        DataPipeline = PipeItens
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3351
        mmLeft = 54769
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Qtd1'
        DataPipeline = PipeItens
        DisplayFormat = '###000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3440
        mmLeft = 129646
        mmTop = 0
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'VlrUnitario'
        DataPipeline = PipeItens
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3440
        mmLeft = 139965
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label4'
        Caption = 'Total Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 108215
        mmTop = 1058
        mmWidth = 17463
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 108215
        mmTop = 5027
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label6'
        Caption = 'Bonus Troca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 108215
        mmTop = 8996
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 108215
        mmTop = 13494
        mmWidth = 17568
        BandType = 7
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Total'
        DataPipeline = PipeCab
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 13494
        mmWidth = 15081
        BandType = 7
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TotalDesconto'
        DataPipeline = PipeCab
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 5027
        mmWidth = 15081
        BandType = 7
      end
      object ppLbTotalItens: TppLabel
        UserName = 'Label8'
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 148961
        mmTop = 1058
        mmWidth = 5546
        BandType = 7
      end
      object ppLbBonusTroca: TppLabel
        UserName = 'LbBonusTroca'
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 149225
        mmTop = 8996
        mmWidth = 5556
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Qtde Pecas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 55033
        mmTop = 1058
        mmWidth = 17780
        BandType = 7
      end
      object ppQtdePecas: TppLabel
        UserName = 'QtdePecas'
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 1588
        mmWidth = 5556
        BandType = 7
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object daDataModule2: TdaDataModule
    end
  end
  object PipeCab: TppBDEPipeline
    DataSource = DSCab
    OpenDataSource = False
    UserName = 'PipeCab'
    Left = 46
    Top = 133
    object PipeCabppField1: TppField
      FieldAlias = 'PedICod'
      FieldName = 'PedICod'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeCabppField2: TppField
      FieldAlias = 'Emitente_Nome'
      FieldName = 'Emitente_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipeCabppField3: TppField
      FieldAlias = 'Emitente_Ender'
      FieldName = 'Emitente_Ender'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipeCabppField4: TppField
      FieldAlias = 'Emitente_Bairro'
      FieldName = 'Emitente_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object PipeCabppField5: TppField
      FieldAlias = 'Emitente_Cidade'
      FieldName = 'Emitente_Cidade'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object PipeCabppField6: TppField
      FieldAlias = 'Emitente_UF'
      FieldName = 'Emitente_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object PipeCabppField7: TppField
      FieldAlias = 'Emitente_CGC'
      FieldName = 'Emitente_CGC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object PipeCabppField8: TppField
      FieldAlias = 'Emitente_IE'
      FieldName = 'Emitente_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object PipeCabppField9: TppField
      FieldAlias = 'Emitente_Fone'
      FieldName = 'Emitente_Fone'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object PipeCabppField10: TppField
      FieldAlias = 'DtEmissao'
      FieldName = 'DtEmissao'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object PipeCabppField11: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object PipeCabppField12: TppField
      FieldAlias = 'Destinatario_Endereco'
      FieldName = 'Destinatario_Endereco'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object PipeCabppField13: TppField
      FieldAlias = 'Destinatario_Bairro'
      FieldName = 'Destinatario_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object PipeCabppField14: TppField
      FieldAlias = 'Destinatario_Cep'
      FieldName = 'Destinatario_Cep'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object PipeCabppField15: TppField
      FieldAlias = 'Destinatario_Cidade'
      FieldName = 'Destinatario_Cidade'
      FieldLength = 60
      DisplayWidth = 60
      Position = 14
    end
    object PipeCabppField16: TppField
      FieldAlias = 'Destinatario_UF'
      FieldName = 'Destinatario_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object PipeCabppField17: TppField
      FieldAlias = 'Destinatario_CpfCgc'
      FieldName = 'Destinatario_CpfCgc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object PipeCabppField18: TppField
      FieldAlias = 'Destinatario_IE'
      FieldName = 'Destinatario_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object PipeCabppField19: TppField
      FieldAlias = 'Destinatario_Fone'
      FieldName = 'Destinatario_Fone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object PipeCabppField20: TppField
      FieldAlias = 'Destinatario_Fax'
      FieldName = 'Destinatario_Fax'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object PipeCabppField21: TppField
      FieldAlias = 'Transp'
      FieldName = 'Transp'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object PipeCabppField22: TppField
      FieldAlias = 'DtaEntrega'
      FieldName = 'DtaEntrega'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object PipeCabppField23: TppField
      FieldAlias = 'Emitente_Fax'
      FieldName = 'Emitente_Fax'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object PipeCabppField24: TppField
      FieldAlias = 'Comprador'
      FieldName = 'Comprador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object PipeCabppField25: TppField
      FieldAlias = 'OrdemCompra'
      FieldName = 'OrdemCompra'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object PipeCabppField26: TppField
      FieldAlias = 'Plano'
      FieldName = 'Plano'
      FieldLength = 60
      DisplayWidth = 60
      Position = 25
    end
    object PipeCabppField27: TppField
      FieldAlias = 'TipoFrete'
      FieldName = 'TipoFrete'
      FieldLength = 15
      DisplayWidth = 15
      Position = 26
    end
    object PipeCabppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorFrete'
      FieldName = 'ValorFrete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object PipeCabppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalDesconto'
      FieldName = 'TotalDesconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object PipeCabppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object PipeCabppField31: TppField
      FieldAlias = 'Observacoes'
      FieldName = 'Observacoes'
      FieldLength = 10
      DataType = dtMemo
      DisplayWidth = 10
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeCabppField32: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 31
    end
    object PipeCabppField33: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 32
    end
    object PipeCabppField34: TppField
      FieldAlias = 'PEDIDOORCAMENTO'
      FieldName = 'PEDIDOORCAMENTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object PipeCabppField35: TppField
      FieldAlias = 'Emitente_Email'
      FieldName = 'Emitente_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 34
    end
    object UsuarioVendaSTR: TppField
      FieldAlias = 'UsuarioVendaSTR'
      FieldName = 'UsuarioVendaSTR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 35
    end
  end
  object PipeItens: TppBDEPipeline
    DataSource = DSItens
    OpenDataSource = False
    UserName = 'PipeItens'
    Left = 47
    Top = 161
    object PipeItensppField1: TppField
      FieldAlias = 'PedICod'
      FieldName = 'PedICod'
      FieldLength = 13
      DisplayWidth = 13
      Position = 0
    end
    object PipeItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PipeItensppField3: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipeItensppField4: TppField
      FieldAlias = 'Un'
      FieldName = 'Un'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object PipeItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd1'
      FieldName = 'Qtd1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipeItensppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VlrUnitario'
      FieldName = 'VlrUnitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object PipeItensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VlrTotal'
      FieldName = 'VlrTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object PipeItensppField8: TppField
      FieldAlias = 'Cor'
      FieldName = 'Cor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object PipeItensppField9: TppField
      FieldAlias = 'Tecido'
      FieldName = 'Tecido'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object PipeItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Legenda'
      FieldName = 'Legenda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object PipeItensppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd2'
      FieldName = 'Qtd2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object PipeItensppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd3'
      FieldName = 'Qtd3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object PipeItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd4'
      FieldName = 'Qtd4'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object PipeItensppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd5'
      FieldName = 'Qtd5'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object PipeItensppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd6'
      FieldName = 'Qtd6'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object PipeItensppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd7'
      FieldName = 'Qtd7'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object PipeItensppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd8'
      FieldName = 'Qtd8'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object PipeItensppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd9'
      FieldName = 'Qtd9'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object PipeItensppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd10'
      FieldName = 'Qtd10'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object PipeItensppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd11'
      FieldName = 'Qtd11'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object PipeItensppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd12'
      FieldName = 'Qtd12'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object PipeItensppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd13'
      FieldName = 'Qtd13'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object PipeItensppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd14'
      FieldName = 'Qtd14'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object PipeItensppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtd15'
      FieldName = 'Qtd15'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
  end
  object DSCab: TDataSource
    DataSet = TblPedido
    Left = 79
    Top = 132
  end
  object DSItens: TDataSource
    DataSet = TblPedidoItem
    Left = 79
    Top = 161
  end
end
