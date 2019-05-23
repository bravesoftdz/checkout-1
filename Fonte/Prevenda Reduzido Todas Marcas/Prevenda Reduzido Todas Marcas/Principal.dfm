object FormPrincipal: TFormPrincipal
  Left = 407
  Top = 253
  Width = 507
  Height = 87
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
    object TblPedidoFinanceiroTipopadrao: TStringField
      FieldName = 'Tipopadrao'
      Size = 5
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
      Size = 60
    end
    object TblPreVendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblPreVendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
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
    object TblPreVendaItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object TblPreVendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TblPreVendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblPreVendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
  end
  object TblPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 3
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
    object TblPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
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
    object TblPreVendaCabEmpresaEmit: TStringField
      FieldName = 'EmpresaEmit'
      Size = 60
    end
    object TblPreVendaCabEmpresaEmit_Ender: TStringField
      FieldName = 'EmpresaEmit_Ender'
      Size = 60
    end
    object TblPreVendaCabEmpresaEmit_Bairro: TStringField
      FieldName = 'EmpresaEmit_Bairro'
      Size = 60
    end
    object TblPreVendaCabEmpresaEmit_Cidade: TStringField
      FieldName = 'EmpresaEmit_Cidade'
      Size = 60
    end
    object TblPreVendaCabEmpresaEmit_Fone: TStringField
      FieldName = 'EmpresaEmit_Fone'
      Size = 15
    end
    object TblPreVendaCabClienteDependente: TStringField
      FieldName = 'ClienteDependente'
    end
    object TblPreVendaCabTerminal: TStringField
      FieldName = 'Terminal'
      Size = 30
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
    Left = 401
    Top = 13
  end
  object Connection: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=database.gdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 240
  end
end
