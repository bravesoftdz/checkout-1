object FormPrincipal: TFormPrincipal
  Left = 342
  Top = 152
  Width = 507
  Height = 118
  Caption = 'Impressao PreVenda'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbEmpresa: TRxLabel
    Left = 4
    Top = 4
    Width = 483
    Height = 39
    Alignment = taCenter
    AutoSize = False
    Caption = 'Imprimindo ... aguarde!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ShadowColor = 15195349
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Memo: TMemo
    Left = 440
    Top = 9
    Width = 39
    Height = 29
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 68
    Top = 9
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
    object TblPedidoFinanceiroPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
    object TblPedidoFinanceiroNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
  end
  object TblPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 35
    Top = 9
    object TblPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 200
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
    object TblPreVendaItemBORDA01: TStringField
      FieldName = 'BORDA01'
      Size = 60
    end
    object TblPreVendaItemBORDA02: TStringField
      FieldName = 'BORDA02'
      Size = 60
    end
    object TblPreVendaItemBORDA03: TStringField
      FieldName = 'BORDA03'
      Size = 60
    end
    object TblPreVendaItemSABOR01: TStringField
      FieldName = 'SABOR01'
      Size = 60
    end
    object TblPreVendaItemSABOR02: TStringField
      FieldName = 'SABOR02'
      Size = 60
    end
    object TblPreVendaItemSABOR03: TStringField
      FieldName = 'SABOR03'
      Size = 60
    end
    object TblPreVendaItemSABOR04: TStringField
      FieldName = 'SABOR04'
      Size = 60
    end
    object TblPreVendaItemSABOR05: TStringField
      FieldName = 'SABOR05'
      Size = 60
    end
    object TblPreVendaItemSABOR06: TStringField
      FieldName = 'SABOR06'
      Size = 60
    end
  end
  object TblPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    FieldDefs = <
      item
        Name = 'TicketNumero'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DataEmissao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Vendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Plano'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FoneCliente'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TotalNominal'
        DataType = ftFloat
      end
      item
        Name = 'TaxaCrediario'
        DataType = ftFloat
      end
      item
        Name = 'Acrescimo'
        DataType = ftFloat
      end
      item
        Name = 'Desconto'
        DataType = ftFloat
      end
      item
        Name = 'TotalGeral'
        DataType = ftFloat
      end
      item
        Name = 'NomeEmpresa'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FoneEmpresa'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NroCreditCard'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NumerarioPagto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Mensagem'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'DataEntrega'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TipoVenda'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PessoaRecebeNome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PessoaRecebeEnder'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PessoaRecebeBai'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PessoaRecebeCid'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PessoaRecebeUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PessoaRecebeFone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Mensagem2'
        DataType = ftMemo
        Size = 240
      end
      item
        Name = 'VlrEntrada'
        DataType = ftFloat
      end
      item
        Name = 'NomeClienteVenda'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DocumentoClienteVenda'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EnderecoClienteVenda'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CidadeClienteVenda'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OBSImpressaoCupom'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TERMICOD'
        DataType = ftInteger
      end
      item
        Name = 'PRVDICOD'
        DataType = ftInteger
      end
      item
        Name = 'FoneClienteVenda'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UsuarioVendaSTR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ClienteDependente'
        DataType = ftInteger
      end
      item
        Name = 'PlacaVeiculo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MesaCodigo'
        DataType = ftInteger
      end
      item
        Name = 'ContaCodigo'
        DataType = ftInteger
      end
      item
        Name = 'Troco'
        DataType = ftFloat
      end
      item
        Name = 'DisplayNumero'
        DataType = ftInteger
      end
      item
        Name = 'Busca'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LevarCasa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BairroClienteVenda'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Motoboy'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TaxaTele'
        DataType = ftFloat
      end
      item
        Name = 'Sequencial'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'TicketPreVendaCab.DB'
    Left = 5
    Top = 9
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
    object TblPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
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
    Left = 401
    Top = 13
  end
end
