object FormRelEstoque: TFormRelEstoque
  Left = 191
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Estoque x Valor Venda / Custo'
  ClientHeight = 346
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 2
    Width = 49
    Height = 13
    Caption = 'Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 103
    Height = 13
    Caption = 'Retorativo ao dia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 228
    Top = 48
    Width = 69
    Height = 13
    Caption = 'Grupo ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 18
    Width = 433
    Height = 21
    KeyField = 'EMPRICOD'
    ListField = 'EMPRA60RAZAOSOC'
    ListSource = dtsEmpresa
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 369
    Top = 72
    Width = 72
    Height = 40
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Kind = bkClose
  end
  object BitBtn1: TBitBtn
    Left = 228
    Top = 72
    Width = 130
    Height = 40
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object QuickRepEstoque: TQuickRep
    Left = 20
    Top = 176
    Width = 635
    Height = 898
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ibEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio de Estoque x Valor de Venda'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    object QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 43
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        142.213541666667
        1901.69270833333)
      BandType = rbTitle
      object QRSysData1: TQRSysData
        Left = 245
        Top = 4
        Width = 84
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.53125
          810.286458333333
          13.2291666666667
          277.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 14
      end
      object QRSysData2: TQRSysData
        Left = 448
        Top = 28
        Width = 82
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1481.66666666667
          92.6041666666667
          271.197916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Data: '
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 508
        Top = 12
        Width = 62
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1680.10416666667
          39.6875
          205.052083333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'g: '
        Transparent = False
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 0
        Top = 28
        Width = 23
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          0
          92.6041666666667
          76.0677083333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-------'
        Color = clWhite
        OnPrint = QRLabel5Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 30
      Top = 93
      Width = 575
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        56.2239583333333
        1901.69270833333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
        Top = 1
        Width = 321
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          13.2291666666667
          3.30729166666667
          1061.640625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ibEstoque
        DataField = 'PRODA60DESCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 400
        Top = 1
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1322.91666666667
          3.30729166666667
          291.041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ibEstoque
        DataField = 'PRODN3VLRVENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 492
        Top = 1
        Width = 84
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1627.1875
          3.30729166666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ibEstoque
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 328
        Top = 1
        Width = 81
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1084.79166666667
          3.30729166666667
          267.890625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ibEstoque
        DataField = 'PSLDN3QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText5Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 30
      Top = 110
      Width = 575
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        62.8385416666667
        1901.69270833333)
      BandType = rbPageFooter
      object QRExpr1: TQRLabel
        Left = 552
        Top = 3
        Width = 21
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1825.625
          9.921875
          69.453125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
        Color = clWhite
        OnPrint = QRExpr1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 30
      Top = 73
      Width = 575
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.1458333333333
        1901.69270833333)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 4
        Top = 4
        Width = 41
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          13.2291666666667
          13.2291666666667
          135.598958333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 376
        Top = 4
        Width = 18
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1243.54166666667
          13.2291666666667
          59.53125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtd'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 436
        Top = 4
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1441.97916666667
          13.2291666666667
          165.364583333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ Venda'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 533
        Top = 4
        Width = 42
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1762.78645833333
          13.2291666666667
          138.90625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 332
        Top = 20
        Width = 56
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          1098.02083333333
          66.1458333333333
          185.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'QRDBText2'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 70
    Width = 217
    Height = 17
    Caption = 'Listar Somente Itens com Saldo +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DateEdit: TDateEdit
    Left = 120
    Top = 44
    Width = 101
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object CheckCusto: TCheckBox
    Left = 8
    Top = 94
    Width = 181
    Height = 17
    Caption = 'Listar Com Valores de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 300
    Top = 44
    Width = 142
    Height = 21
    KeyField = 'ICMSICOD'
    ListField = 'ICMSA60DESCR'
    ListSource = dtsICMS
    TabOrder = 2
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 308
    Top = 6
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 348
    Top = 6
  end
  object ibEstoque: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select p.prodicod, p.PRODA60DESCR, p.PRODN3VLRVENDA, p.prodn3vlr' +
        'custo, PS.PSLDN3QTDE, i.ICMSA60DESCR,P.ICMSICOD,  PS.PSLDN3QTDE*' +
        'P.PRODN3VLRVENDA AS TOTAL FROM PRODUTO P LEFT JOIN PRODUTOSALDO ' +
        'PS ON PS.PRODICOD = P.PRODICOD'
      'left join icms i on i.icmsicod = p.icmsicod')
    Left = 200
    Top = 10
    object ibEstoquePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'PRODUTO.PRODICOD'
      Required = True
    end
    object ibEstoquePRODA60DESCR: TIBStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object ibEstoquePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'PRODUTO.PRODN3VLRVENDA'
    end
    object ibEstoquePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'PRODUTO.PRODN3VLRCUSTO'
    end
    object ibEstoquePSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
      Origin = 'PRODUTOSALDO.PSLDN3QTDE'
    end
    object ibEstoqueICMSA60DESCR: TIBStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object ibEstoqueICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'PRODUTO.ICMSICOD'
    end
    object ibEstoqueTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object dtsEstoque: TDataSource
    DataSet = ibEstoque
    Left = 228
    Top = 10
  end
  object IBMovEstoque: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    SQL.Strings = (
      
        'Select Sum(MVESN3QTDENTRADA-MVESN3QTDSAIDA) as QtdMovimento from' +
        ' movimentoestoque where MVESDMOV >= :xDataMovimento')
    Transaction = DM.ibTrans
    Left = 140
    Top = 12
  end
  object ibicms: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from icms')
    Left = 460
    Top = 14
  end
  object dtsICMS: TDataSource
    DataSet = ibicms
    Left = 500
    Top = 14
  end
end
