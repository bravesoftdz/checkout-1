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
    object TicketCabSequencial: TIntegerField
      FieldName = 'Sequencial'
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
    object TicketItemPRODA30COZINHA: TStringField
      FieldName = 'PRODA30COZINHA'
      Size = 30
    end
  end
end
