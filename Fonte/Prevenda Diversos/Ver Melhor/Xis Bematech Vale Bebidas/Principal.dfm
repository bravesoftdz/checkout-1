object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 132
  Height = 158
  Caption = 'Vale Bebida'
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
  object TicketPrevendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaItem.DB'
    Left = 9
    Top = 40
    object TicketPrevendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TicketPrevendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TicketPrevendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TicketPrevendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TicketPrevendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TicketPrevendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TicketPrevendaItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TicketPrevendaItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TicketPrevendaItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object TicketPrevendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TicketPrevendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TicketPrevendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
  end
  object TicketPreVendaCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 9
    Top = 10
    object TicketPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TicketPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TicketPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TicketPreVendaCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TicketPreVendaCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TicketPreVendaCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TicketPreVendaCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TicketPreVendaCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TicketPreVendaCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TicketPreVendaCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TicketPreVendaCabNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TicketPreVendaCabFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TicketPreVendaCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TicketPreVendaCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TicketPreVendaCabMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TicketPreVendaCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TicketPreVendaCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TicketPreVendaCabPessoaRecebeNome: TStringField
      FieldName = 'PessoaRecebeNome'
      Size = 60
    end
    object TicketPreVendaCabPessoaRecebeEnder: TStringField
      FieldName = 'PessoaRecebeEnder'
      Size = 60
    end
    object TicketPreVendaCabPessoaRecebeBai: TStringField
      FieldName = 'PessoaRecebeBai'
      Size = 60
    end
    object TicketPreVendaCabPessoaRecebeCid: TStringField
      FieldName = 'PessoaRecebeCid'
      Size = 60
    end
    object TicketPreVendaCabPessoaRecebeUF: TStringField
      FieldName = 'PessoaRecebeUF'
      Size = 2
    end
    object TicketPreVendaCabPessoaRecebeFone: TStringField
      FieldName = 'PessoaRecebeFone'
      Size = 15
    end
    object TicketPreVendaCabMensagem2: TMemoField
      FieldName = 'Mensagem2'
      BlobType = ftMemo
      Size = 240
    end
    object TicketPreVendaCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object TicketPreVendaCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TicketPreVendaCabDocumentoClienteVenda: TStringField
      FieldName = 'DocumentoClienteVenda'
    end
    object TicketPreVendaCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TicketPreVendaCabCidadeClienteVenda: TStringField
      FieldName = 'CidadeClienteVenda'
      Size = 30
    end
    object TicketPreVendaCabOBSImpressaoCupom: TStringField
      FieldName = 'OBSImpressaoCupom'
      Size = 60
    end
    object TicketPreVendaCabTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TicketPreVendaCabPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
    object TicketPreVendaCabDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object TicketPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TicketPreVendaCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TicketPreVendaCabClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
    object TicketPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TicketPreVendaCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TicketPreVendaCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TicketPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TicketPreVendaCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TicketPreVendaCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TicketPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TicketPreVendaCabMotoboy: TStringField
      FieldName = 'Motoboy'
      Size = 30
    end
    object TicketPreVendaCabTaxaTele: TFloatField
      FieldName = 'TaxaTele'
    end
    object TicketPreVendaCabSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
  end
end
