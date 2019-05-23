object FormCalcularComissaoSobreOrdens: TFormCalcularComissaoSobreOrdens
  Left = 310
  Top = 230
  Width = 567
  Height = 270
  Caption = 'C'#225'lculo de Comissionamento sobre Ordens de Servi'#231'os de Gr'#225'ficas'
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabelTitulo: TLabel
      Left = 0
      Top = 0
      Width = 530
      Height = 40
      Align = alLeft
      Caption = ' C'#225'lculo de Comissionamento sobre Ordens de Servi'#231'os - Gr'#225'ficas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 551
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 448
      Top = 8
      Width = 90
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 81
    Width = 551
    Height = 151
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 407
      Top = 17
      Width = 129
      Height = 50
      Caption = 'Calcular'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 12
      Width = 369
      Height = 56
      Caption = ' Per'#237'odo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 26
        Width = 21
        Height = 13
        Caption = 'De:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 188
        Top = 26
        Width = 24
        Height = 13
        Caption = 'At'#233':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DataInicial: TDateEdit
        Left = 40
        Top = 20
        Width = 119
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DataFinal: TDateEdit
        Left = 228
        Top = 20
        Width = 118
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object QuickRep1: TQuickRep
      Left = -40
      Top = 172
      Width = 1111
      Height = 1572
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = SQLNotas
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
      SnapToGrid = True
      Units = Native
      Zoom = 140
      object QRBand3: TQRBand
        Left = 53
        Top = 223
        Width = 1005
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = QRBand1
        Size.Values = (
          139.85119047619
          1899.33035714286)
        BandType = rbDetail
        object QRDBText2: TQRDBText
          Left = 526
          Top = 14
          Width = 97
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            994.077380952381
            26.4583333333333
            183.318452380952)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'ORDNUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 645
          Top = 14
          Width = 106
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1218.97321428571
            26.4583333333333
            200.327380952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'FINALIZADAEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText6: TQRDBText
          Left = 965
          Top = 14
          Width = 32
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1823.73511904762
            26.4583333333333
            60.4761904761905)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'VAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText9: TQRDBText
          Left = 10
          Top = 14
          Width = 148
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            18.8988095238095
            26.4583333333333
            279.702380952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'CLIEA60RAZAOSOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText13: TQRDBText
          Left = 20
          Top = 41
          Width = 74
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            37.797619047619
            77.485119047619
            139.85119047619)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'PRODICOD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText14: TQRDBText
          Left = 99
          Top = 40
          Width = 337
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            187.098214285714
            75.5952380952381
            636.889880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'PRODA60DESCR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText15: TQRDBText
          Left = 444
          Top = 41
          Width = 79
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            839.107142857143
            77.485119047619
            149.300595238095)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'QUANTTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText17: TQRDBText
          Left = 635
          Top = 40
          Width = 116
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1200.0744047619
            75.5952380952381
            219.22619047619)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'VAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText18: TQRDBText
          Left = 771
          Top = 14
          Width = 64
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1457.09821428571
            26.4583333333333
            120.952380952381)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'COMISSIONAPOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          OnPrint = QRDBText18Print
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 771
          Top = 40
          Width = 64
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1457.09821428571
            75.5952380952381
            120.952380952381)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'COMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRExpr1: TQRExpr
          Left = 854
          Top = 48
          Width = 144
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1613.95833333333
            90.7142857142857
            272.142857142857)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Color = clWhite
          OnPrint = QRExpr1Print
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 
            'IF(SQLNotas.COMISSIONAPOR = '#39'P'#39',SQLNotas.VAL * (SQLNotas.COMISSA' +
            'O/100),SQLNotas.COMISSAO)'
          FontSize = 10
        end
        object QRExpr2: TQRExpr
          Left = 527
          Top = 42
          Width = 96
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            995.967261904762
            79.375
            181.428571428571)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          OnPrint = QRExpr2Print
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SQLNotas.VAL / SQLNotas.QUANTTOTAL'
          FontSize = 8
        end
        object QRShape14: TQRShape
          Left = 0
          Top = 65
          Width = 1005
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            24.5684523809524
            0
            122.842261904762
            1899.33035714286)
          Shape = qrsHorLine
        end
        object QRShape3: TQRShape
          Left = 436
          Top = -2
          Width = 3
          Height = 74
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            139.85119047619
            823.988095238095
            -3.7797619047619
            5.66964285714286)
          Shape = qrsVertLine
        end
        object QRShape10: TQRShape
          Left = 522
          Top = -2
          Width = 3
          Height = 74
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            139.85119047619
            986.517857142857
            -3.7797619047619
            5.66964285714286)
          Shape = qrsVertLine
        end
        object QRShape11: TQRShape
          Left = 625
          Top = -2
          Width = 3
          Height = 74
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            139.85119047619
            1181.1755952381
            -3.7797619047619
            5.66964285714286)
          Shape = qrsVertLine
        end
        object QRShape12: TQRShape
          Left = 762
          Top = -2
          Width = 3
          Height = 74
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            139.85119047619
            1440.08928571429
            -3.7797619047619
            5.66964285714286)
          Shape = qrsVertLine
        end
        object QRShape13: TQRShape
          Left = 836
          Top = -2
          Width = 3
          Height = 74
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            139.85119047619
            1579.94047619048
            -3.7797619047619
            5.66964285714286)
          Shape = qrsVertLine
        end
      end
      object QRBand1: TQRBand
        Left = 53
        Top = 297
        Width = 1005
        Height = 47
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
          88.8244047619048
          1899.33035714286)
        BandType = rbPageFooter
        object QRLabel3: TQRLabel
          Left = 442
          Top = 16
          Width = 300
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            835.327380952381
            30.2380952380952
            566.964285714286)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total de Comiss'#245'es do Vendedor:'
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
        object QRLabel19: TQRLabel
          Left = 901
          Top = 14
          Width = 98
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1702.78273809524
            26.4583333333333
            185.208333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRLabel19'
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
      end
      object QRBand2: TQRBand
        Left = 53
        Top = 53
        Width = 1005
        Height = 170
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          321.279761904762
          1899.33035714286)
        BandType = rbTitle
        object QRLabel4: TQRLabel
          Left = 2
          Top = 40
          Width = 168
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            3.7797619047619
            75.5952380952381
            317.5)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Per'#237'odo Apura'#231#227'o:'
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
        object QRLabel5: TQRLabel
          Left = 182
          Top = 40
          Width = 81
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            343.958333333333
            75.5952380952381
            153.080357142857)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRLabel5'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel6: TQRLabel
          Left = 322
          Top = 40
          Width = 81
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            608.541666666667
            75.5952380952381
            153.080357142857)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRLabel6'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRSysData3: TQRSysData
          Left = 826
          Top = 34
          Width = 94
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1561.04166666667
            64.2559523809524
            177.64880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDate
          Text = 'Data:'
          Transparent = False
          FontSize = 10
        end
        object QRSysData4: TQRSysData
          Left = 826
          Top = 12
          Width = 108
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1561.04166666667
            22.6785714285714
            204.107142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Text = 'P'#225'g.:'
          Transparent = False
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 2
          Top = 7
          Width = 707
          Height = 33
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            62.3660714285714
            3.7797619047619
            13.2291666666667
            1336.14583333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Relat'#243'rio de Apura'#231#227'o de Comiss'#245'es - Ordens Servi'#231'o'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRDBText1: TQRDBText
          Left = 198
          Top = 82
          Width = 139
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            374.196428571429
            154.970238095238
            262.693452380952)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'VENDA60NOME'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 2
          Top = 82
          Width = 94
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            3.7797619047619
            154.970238095238
            177.64880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Vendedor:'
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
        object QRDBText4: TQRDBText
          Left = 106
          Top = 82
          Width = 95
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            200.327380952381
            154.970238095238
            179.53869047619)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = SQLNotas
          DataField = 'VENDICOD'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRShape1: TQRShape
          Left = 4
          Top = 66
          Width = 1005
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            24.5684523809524
            7.55952380952381
            124.732142857143
            1899.33035714286)
          Shape = qrsHorLine
        end
        object QRLabel7: TQRLabel
          Left = 1
          Top = 117
          Width = 64
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1.88988095238095
            221.116071428571
            120.952380952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cliente'
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
        object QRLabel8: TQRLabel
          Left = 648
          Top = 117
          Width = 105
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1224.64285714286
            221.116071428571
            198.4375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Finaliza'#231#227'o'
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
        object QRLabel9: TQRLabel
          Left = 532
          Top = 117
          Width = 87
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1005.41666666667
            221.116071428571
            164.419642857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#186' Ordem'
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
        object QRLabel10: TQRLabel
          Left = 856
          Top = 117
          Width = 140
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1617.7380952381
            221.116071428571
            264.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'R$ Total Ordem'
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
        object QRLabel11: TQRLabel
          Left = 19
          Top = 136
          Width = 218
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            35.9077380952381
            257.02380952381
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#243'd. / Descri'#231#227'o do Item'
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
        object QRLabel12: TQRLabel
          Left = 475
          Top = 136
          Width = 43
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            897.693452380952
            257.02380952381
            81.264880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Qtde'
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
        object QRLabel13: TQRLabel
          Left = 551
          Top = 136
          Width = 70
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1041.3244047619
            257.02380952381
            132.291666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'R$ Unit.'
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
        object QRLabel14: TQRLabel
          Left = 674
          Top = 136
          Width = 74
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1273.77976190476
            257.02380952381
            139.85119047619)
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
        object QRLabel15: TQRLabel
          Left = 775
          Top = 140
          Width = 55
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1464.65773809524
            264.583333333333
            103.943452380952)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '% / R$'
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
        object QRLabel16: TQRLabel
          Left = 868
          Top = 136
          Width = 115
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1640.41666666667
            257.02380952381
            217.33630952381)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'R$ Comiss'#227'o'
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
        object QRShape2: TQRShape
          Left = 4
          Top = 105
          Width = 1005
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            24.5684523809524
            7.55952380952381
            198.4375
            1899.33035714286)
          Shape = qrsHorLine
        end
        object QRLabel17: TQRLabel
          Left = 300
          Top = 40
          Width = 13
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            566.964285714286
            75.5952380952381
            24.5684523809524)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'a'
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
        object QRShape4: TQRShape
          Left = 433
          Top = 112
          Width = 8
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            105.833333333333
            818.318452380952
            211.666666666667
            15.1190476190476)
          Shape = qrsVertLine
        end
        object QRShape6: TQRShape
          Left = 519
          Top = 112
          Width = 8
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            105.833333333333
            980.848214285714
            211.666666666667
            15.1190476190476)
          Shape = qrsVertLine
        end
        object QRShape7: TQRShape
          Left = 622
          Top = 112
          Width = 8
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            105.833333333333
            1175.50595238095
            211.666666666667
            15.1190476190476)
          Shape = qrsVertLine
        end
        object QRShape8: TQRShape
          Left = 759
          Top = 112
          Width = 8
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            105.833333333333
            1434.41964285714
            211.666666666667
            15.1190476190476)
          Shape = qrsVertLine
        end
        object QRShape9: TQRShape
          Left = 833
          Top = 112
          Width = 8
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            105.833333333333
            1574.27083333333
            211.666666666667
            15.1190476190476)
          Shape = qrsVertLine
        end
        object QRLabel18: TQRLabel
          Left = 789
          Top = 116
          Width = 41
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            1491.11607142857
            219.22619047619
            77.485119047619)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo'
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
        object QRShape5: TQRShape
          Left = 4
          Top = 165
          Width = 1005
          Height = 7
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.2291666666667
            7.55952380952381
            311.830357142857
            1899.33035714286)
          Shape = qrsHorLine
        end
      end
    end
    object Panel3: TPanel
      Left = 12
      Top = 76
      Width = 525
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 3
      object Label3: TLabel
        Left = 12
        Top = 6
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 100
      Width = 497
      Height = 21
      KeyField = 'VENDICOD'
      ListField = 'VENDA60NOME'
      ListSource = DSSQLVendedor
      TabOrder = 1
    end
  end
  object dsSQLNotas: TDataSource
    DataSet = SQLNotas
    Left = 116
    Top = 71
  end
  object SQLNotas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select (select max(F.DATA) from ord_finaliza F where F.ordnum = ' +
        'GR.ordnum) as finalizadaem,'
      'C.CLIEA60RAZAOSOC,'
      'V.VENDA60NOME,'
      'p.proda60descr,'
      'GR.*'
      'from ORDENSGRAFICA GR'
      'left join vendedor v on V.vendicod = GR.vendicod'
      'left join cliente C on C.CLIEA13ID = GR.cliea13id'
      'left join produto p on p.prodicod = gr.prodicod'
      'where'
      
        '  (select max(F.DATA) from ord_finaliza F where F.ordnum = GR.or' +
        'dnum) >= :xDataInicial and'
      
        '  (select max(F.DATA) from ord_finaliza F where F.ordnum = GR.or' +
        'dnum) <= :xDataFinal and'
      '  GR.STATUS = :xStatus and'
      '  v.VENDICOD = :xVENDEDOR'
      'order by 1')
    Left = 116
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'xDataInicial'
        ParamType = ptUnknown
        Value = '01/01/2012'
      end
      item
        DataType = ftString
        Name = 'xDataFinal'
        ParamType = ptUnknown
        Value = '05/05/2012'
      end
      item
        DataType = ftString
        Name = 'xStatus'
        ParamType = ptUnknown
        Value = 'F'
      end
      item
        DataType = ftString
        Name = 'xVENDEDOR'
        ParamType = ptUnknown
        Value = '1'
      end>
    object SQLNotasFINALIZADAEM: TDateTimeField
      FieldName = 'FINALIZADAEM'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLNotasCLIEA60RAZAOSOC: TIBStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotasVENDA60NOME: TIBStringField
      FieldName = 'VENDA60NOME'
      Origin = 'VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLNotasPRODA60DESCR: TIBStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotasORDNUM: TIntegerField
      FieldName = 'ORDNUM'
      Origin = 'ORDENSGRAFICA.ORDNUM'
      Required = True
    end
    object SQLNotasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'ORDENSGRAFICA.DATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLNotasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'ORDENSGRAFICA.VENDICOD'
    end
    object SQLNotasPRAZOENTR: TDateTimeField
      FieldName = 'PRAZOENTR'
      Origin = 'ORDENSGRAFICA.PRAZOENTR'
    end
    object SQLNotasCLIEA13ID: TIBStringField
      FieldName = 'CLIEA13ID'
      Origin = 'ORDENSGRAFICA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'ORDENSGRAFICA.PRODICOD'
    end
    object SQLNotasSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = 'ORDENSGRAFICA.SERVICO'
      Size = 100
    end
    object SQLNotasNUMDE: TIntegerField
      FieldName = 'NUMDE'
      Origin = 'ORDENSGRAFICA.NUMDE'
    end
    object SQLNotasNUMA: TIntegerField
      FieldName = 'NUMA'
      Origin = 'ORDENSGRAFICA.NUMA'
    end
    object SQLNotasCOREIMP: TIBStringField
      FieldName = 'COREIMP'
      Origin = 'ORDENSGRAFICA.COREIMP'
      Size = 40
    end
    object SQLNotasNVIAS: TIntegerField
      FieldName = 'NVIAS'
      Origin = 'ORDENSGRAFICA.NVIAS'
    end
    object SQLNotasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'ORDENSGRAFICA.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object SQLNotasLARGURA: TIBBCDField
      FieldName = 'LARGURA'
      Origin = 'ORDENSGRAFICA.LARGURA'
      Precision = 9
      Size = 2
    end
    object SQLNotasALTURA: TIBBCDField
      FieldName = 'ALTURA'
      Origin = 'ORDENSGRAFICA.ALTURA'
      Precision = 9
      Size = 2
    end
    object SQLNotasQUANTTOTAL: TIntegerField
      FieldName = 'QUANTTOTAL'
      Origin = 'ORDENSGRAFICA.QUANTTOTAL'
    end
    object SQLNotasPAPEL: TIBStringField
      FieldName = 'PAPEL'
      Origin = 'ORDENSGRAFICA.PAPEL'
      Size = 15
    end
    object SQLNotasQUANTTALOES: TIntegerField
      FieldName = 'QUANTTALOES'
      Origin = 'ORDENSGRAFICA.QUANTTALOES'
    end
    object SQLNotasLOCALENTR: TIBStringField
      FieldName = 'LOCALENTR'
      Origin = 'ORDENSGRAFICA.LOCALENTR'
      Size = 60
    end
    object SQLNotasTIPOSERVIMP: TIBStringField
      FieldName = 'TIPOSERVIMP'
      Origin = 'ORDENSGRAFICA.TIPOSERVIMP'
      FixedChar = True
      Size = 1
    end
    object SQLNotasPICOTE: TIBStringField
      FieldName = 'PICOTE'
      Origin = 'ORDENSGRAFICA.PICOTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotasGRAMPO: TIBStringField
      FieldName = 'GRAMPO'
      Origin = 'ORDENSGRAFICA.GRAMPO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasCOLA: TIBStringField
      FieldName = 'COLA'
      Origin = 'ORDENSGRAFICA.COLA'
      FixedChar = True
      Size = 1
    end
    object SQLNotasNUMERADO: TIBStringField
      FieldName = 'NUMERADO'
      Origin = 'ORDENSGRAFICA.NUMERADO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasSOLTO: TIBStringField
      FieldName = 'SOLTO'
      Origin = 'ORDENSGRAFICA.SOLTO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasFURADO: TIBStringField
      FieldName = 'FURADO'
      Origin = 'ORDENSGRAFICA.FURADO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasPALTIFICADO: TIBStringField
      FieldName = 'PALTIFICADO'
      Origin = 'ORDENSGRAFICA.PALTIFICADO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasCARBONO: TIBStringField
      FieldName = 'CARBONO'
      Origin = 'ORDENSGRAFICA.CARBONO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasFORMATO: TIBStringField
      FieldName = 'FORMATO'
      Origin = 'ORDENSGRAFICA.FORMATO'
      Size = 15
    end
    object SQLNotasENTREGADO: TDateTimeField
      FieldName = 'ENTREGADO'
      Origin = 'ORDENSGRAFICA.ENTREGADO'
    end
    object SQLNotasCOMISSAO: TSmallintField
      FieldName = 'COMISSAO'
      Origin = 'ORDENSGRAFICA.COMISSAO'
      DisplayFormat = ',0.00'
    end
    object SQLNotasIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'ORDENSGRAFICA.IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SQLNotasVAL: TFloatField
      FieldName = 'VAL'
      Origin = 'ORDENSGRAFICA.VAL'
      DisplayFormat = '0.000'
    end
    object SQLNotasPARCELAS: TIBStringField
      FieldName = 'PARCELAS'
      Origin = 'ORDENSGRAFICA.PARCELAS'
      Size = 18
    end
    object SQLNotasCORDOPAPEL: TIBStringField
      FieldName = 'CORDOPAPEL'
      Origin = 'ORDENSGRAFICA.CORDOPAPEL'
      Size = 40
    end
    object SQLNotasRESPONSAVEL: TIntegerField
      FieldName = 'RESPONSAVEL'
      Origin = 'ORDENSGRAFICA.RESPONSAVEL'
    end
    object SQLNotasVIAS: TIBStringField
      FieldName = 'VIAS'
      Origin = 'ORDENSGRAFICA.VIAS'
      Size = 15
    end
    object SQLNotasSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'ORDENSGRAFICA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotasACABAMENTO: TIBStringField
      FieldName = 'ACABAMENTO'
      Origin = 'ORDENSGRAFICA.ACABAMENTO'
      Size = 254
    end
    object SQLNotasCAPA: TIBStringField
      FieldName = 'CAPA'
      Origin = 'ORDENSGRAFICA.CAPA'
      Size = 254
    end
    object SQLNotasMIOLO: TIBStringField
      FieldName = 'MIOLO'
      Origin = 'ORDENSGRAFICA.MIOLO'
      Size = 254
    end
    object SQLNotasPARCELASVARIAVEIS: TIBStringField
      FieldName = 'PARCELASVARIAVEIS'
      Origin = 'ORDENSGRAFICA.PARCELASVARIAVEIS'
    end
    object SQLNotasCOMISSIONAPOR: TIBStringField
      FieldName = 'COMISSIONAPOR'
      Origin = 'ORDENSGRAFICA.COMISSIONAPOR'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object SQLVendedor: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From Vendedor Order By VENDA60NOME')
    Left = 188
    Top = 36
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'VENDEDOR.VENDICOD'
      Required = True
    end
    object SQLVendedorVENDA60NOME: TIBStringField
      FieldName = 'VENDA60NOME'
      Origin = 'VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
      Origin = 'VENDEDOR.VENDN2COMISV'
    end
    object SQLVendedorVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
      Origin = 'VENDEDOR.VENDN2COMISP'
    end
    object SQLVendedorVENDCTIPCOMIS: TIBStringField
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorVENDCCOMISACRESC: TIBStringField
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'VENDEDOR.REGISTRO'
    end
    object SQLVendedorVENDA60EMAIL: TIBStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA5FISJURID: TIBStringField
      FieldName = 'VENDA5FISJURID'
      Origin = 'VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA14CGC: TIBStringField
      FieldName = 'VENDA14CGC'
      Origin = 'VENDEDOR.VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLVendedorVENDA20IE: TIBStringField
      FieldName = 'VENDA20IE'
      Origin = 'VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLVendedorVENDA11CPF: TIBStringField
      FieldName = 'VENDA11CPF'
      Origin = 'VENDEDOR.VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLVendedorVENDA10RG: TIBStringField
      FieldName = 'VENDA10RG'
      Origin = 'VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60CONTATO: TIBStringField
      FieldName = 'VENDA60CONTATO'
      Origin = 'VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA15FONE1: TIBStringField
      FieldName = 'VENDA15FONE1'
      Origin = 'VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FONE2: TIBStringField
      FieldName = 'VENDA15FONE2'
      Origin = 'VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FAX: TIBStringField
      FieldName = 'VENDA15FAX'
      Origin = 'VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA60END: TIBStringField
      FieldName = 'VENDA60END'
      Origin = 'VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60BAI: TIBStringField
      FieldName = 'VENDA60BAI'
      Origin = 'VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60CID: TIBStringField
      FieldName = 'VENDA60CID'
      Origin = 'VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA2UF: TIBStringField
      FieldName = 'VENDA2UF'
      Origin = 'VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLVendedorVENDA8CEP: TIBStringField
      FieldName = 'VENDA8CEP'
      Origin = 'VENDEDOR.VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLVendedorBANCA5COD: TIBStringField
      FieldName = 'BANCA5COD'
      Origin = 'VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA5AGENCIA: TIBStringField
      FieldName = 'VENDA5AGENCIA'
      Origin = 'VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA10CONTA: TIBStringField
      FieldName = 'VENDA10CONTA'
      Origin = 'VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60TITULAR: TIBStringField
      FieldName = 'VENDA60TITULAR'
      Origin = 'VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
      Origin = 'VENDEDOR.VENDDABERTCONTA'
    end
    object SQLVendedorVENDA254OBS: TIBStringField
      FieldName = 'VENDA254OBS'
      Origin = 'VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLVendedorVENDA30CORE: TIBStringField
      FieldName = 'VENDA30CORE'
      Origin = 'VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLVendedorVENDA60RAZAOSOCIAL: TIBStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLVendedorVENDN2PERCFIDEL: TFloatField
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'VENDEDOR.VENDN2PERCFIDEL'
    end
    object SQLVendedorVENDN2PERCIRRF: TFloatField
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'VENDEDOR.VENDN2PERCIRRF'
    end
    object SQLVendedorVENDA30SENHA: TIBStringField
      FieldName = 'VENDA30SENHA'
      Origin = 'VENDEDOR.VENDA30SENHA'
      Size = 30
    end
    object SQLVendedorVENDCATIVO: TIBStringField
      FieldName = 'VENDCATIVO'
      Origin = 'VENDEDOR.VENDCATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 188
    Top = 68
  end
end
