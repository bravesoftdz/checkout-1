object fDlgTransferencia: TfDlgTransferencia
  Left = 218
  Top = 73
  Width = 1080
  Height = 488
  Caption = 'Produtos Pedido Compra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1064
    Height = 400
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsmTransfPedidoCompra
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn
        Caption = 'C'#243'digo Produto'
        DataBinding.FieldName = 'Codigo_Produto'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 101
      end
      object cxGrid1DBTableView1Nome_Produto: TcxGridDBColumn
        Caption = 'Nome Produto'
        DataBinding.FieldName = 'Nome_Produto'
        HeaderAlignmentHorz = taCenter
        Width = 338
      end
      object cxGrid1DBTableView1Codigo_Barra: TcxGridDBColumn
        Caption = 'C'#243'digo Barra'
        DataBinding.FieldName = 'Codigo_Barra'
        HeaderAlignmentHorz = taCenter
        Width = 163
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'Referencia'
        HeaderAlignmentHorz = taCenter
        Width = 180
      end
      object cxGrid1DBTableView1Quantidade: TcxGridDBColumn
        Caption = 'Qtde'
        DataBinding.FieldName = 'Quantidade'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object cxGrid1DBTableView1Quantidade_Informada: TcxGridDBColumn
        Caption = 'Qtde Informada'
        DataBinding.FieldName = 'Quantidade_Informada'
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 1064
    Height = 50
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 384
      Top = 4
      Width = 113
      Height = 41
      Caption = 'Confirmar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666886666
        666666666666666666666666000066666CC8866666666666666888F666666666
        00006666C22C886666666666668F668F666666660000666A2222C88666666666
        68F66668F6666666000066A222222C88666666668F6666668F666666000066A2
        22A222C8866666668F668F6668F66666000066A22C2A222C866666688F68F8F6
        668F666600006AA22C22A22C8866668F8F68F68F668F666600006A2A2C222A22
        C886668F68F8F668F668F66600006A22AAA222A22C88668F688FF6668F668F66
        00006A22C86A22CA22C8868F68F68F6688F668F6000066A2C666A22CA22C8668
        F8F668F6668F668F0000666AA6666A22CA2C86668F66668F6668F68F00006666
        666666A22CAC666666666668F6688F86000066666666666A22C8666666666666
        8F6688660000666666666666A2C866666666666668F68F660000666666666666
        6AC6666666666666668F86660000666666666666666666666666666666686666
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 552
      Top = 4
      Width = 113
      Height = 41
      Caption = 'Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666668666666666666666666666666666666
        0000666608866666666666666686666666666666000066691086666688666666
        6888666666666666000066691088666008866666688866666886666600006669
        1108869110866666688886668888666600006666911089111066666666888868
        8888666600006666911191110666666666888888888666660000666669111110
        6666666666688888886666660000666666911108866666666666888886666666
        0000666666911110866666666666888888666666000066666911011088666666
        6668888888666666000066666910691108866666666888688886666600006666
        9106669110886666668886668888666600006666910666691108666666888666
        6888866600006666696666669106666666686666668886660000666666666666
        6966666666666666666866660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
  end
  object mTransfPedido: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 192
    Data = {
      C20000009619E0BD010000001800000006000000000003000000C2000E436F64
      69676F5F50726F6475746F04000100000000000C4E6F6D655F50726F6475746F
      0100490000000100055749445448020002003C000C436F6469676F5F42617272
      610100490000000100055749445448020002003C000A5265666572656E636961
      0100490000000100055749445448020002003C000A5175616E74696461646508
      00040000000000145175616E7469646164655F496E666F726D61646108000400
      000000000000}
    object mTransfPedidoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object mTransfPedidoNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mTransfPedidoCodigo_Barra: TStringField
      FieldName = 'Codigo_Barra'
      Size = 60
    end
    object mTransfPedidoReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object mTransfPedidoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object mTransfPedidoQuantidade_Informada: TFloatField
      FieldName = 'Quantidade_Informada'
    end
  end
  object dsmTransfPedidoCompra: TDataSource
    DataSet = mTransfPedido
    Left = 464
    Top = 192
  end
end
