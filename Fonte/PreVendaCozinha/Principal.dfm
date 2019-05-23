object FormPrincipal: TFormPrincipal
  Left = 439
  Top = 301
  Width = 475
  Height = 129
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
  object Memo: TMemo
    Left = 117
    Top = 16
    Width = 275
    Height = 29
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 17
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
    object TblPedidoFinanceiroNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
  end
  object TblPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 16
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
    object TblPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 200
    end
    object TblPreVendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblPreVendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
    object TblPreVendaItemPRODA30COZINHA: TStringField
      FieldName = 'PRODA30COZINHA'
      Size = 30
    end
  end
  object TblPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 16
    Top = 8
    object TblPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblPreVendaCabDataEmissao: TStringField
      FieldName = 'DataEmissao'
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
    object TblPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
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
    object TblPreVendaCabClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
    object TblPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblPreVendaCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TblPreVendaCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TblPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblPreVendaCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TblPreVendaCabBusca: TStringField
      FieldName = 'Busca'
      Size = 1
    end
    object TblPreVendaCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TblPreVendaCabMotoboy: TStringField
      FieldName = 'Motoboy'
      Size = 30
    end
    object TblPreVendaCabTaxaTele: TFloatField
      FieldName = 'TaxaTele'
    end
    object TblPreVendaCabSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object TblPreVendaCabSeq_Dia: TIntegerField
      FieldName = 'Seq_Dia'
    end
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    ControlePorta = True
    Left = 78
    Top = 13
  end
end
