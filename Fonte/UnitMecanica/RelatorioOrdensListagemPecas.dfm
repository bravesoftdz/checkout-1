object FormListagemOrdemMec_Itens: TFormListagemOrdemMec_Itens
  Left = 224
  Top = 191
  Width = 802
  Height = 480
  HorzScrollBar.Position = 16
  Caption = 'Relatorios de Pe'#231'as'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -16
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = SQLOrdItens
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
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 52
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        137.583333333333
        1899.70833333333)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 2
        Top = 28
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          74.0833333333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No per'#237'odo de:'
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
        Left = 101
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          267.229166666667
          74.0833333333333
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 178
        Top = 28
        Width = 9
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          470.958333333333
          74.0833333333333
          23.8125)
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
      object QRLabel5: TQRLabel
        Left = 195
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          515.9375
          74.0833333333333
          153.458333333333)
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
      object QRSysData1: TQRSysData
        Left = 628
        Top = 12
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1661.58333333333
          31.75
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'g.:'
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 628
        Top = 32
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1661.58333333333
          84.6666666666667
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Text = 'Data:'
        Transparent = False
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 90
      Width = 718
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.4375
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 4
        Top = 3
        Width = 30
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          10.5833333333333
          7.9375
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'C'#243'd.'
        Color = clSilver
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
      object QRLabel7: TQRLabel
        Left = 80
        Top = 3
        Width = 137
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          211.666666666667
          7.9375
          362.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Descri'#231#227'o do Produto'
        Color = clSilver
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
        Left = 588
        Top = 2
        Width = 23
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1555.75
          5.29166666666667
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Qtd'
        Color = clSilver
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
        Left = 663
        Top = 2
        Width = 53
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1754.1875
          5.29166666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'R$ Total'
        Color = clSilver
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
    object QRBand3: TQRBand
      Left = 38
      Top = 146
      Width = 718
      Height = 40
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
        105.833333333333
        1899.70833333333)
      BandType = rbPageFooter
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 117
      Width = 718
      Height = 29
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
        76.7291666666667
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          21.1666666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'PRODICOD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 76
        Top = 8
        Width = 437
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          201.083333333333
          21.1666666666667
          1156.22916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'PRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 520
        Top = 8
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1375.83333333333
          21.1666666666667
          248.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'SUM'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 624
        Top = 8
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1651
          21.1666666666667
          235.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'TOTAL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRLabel1: TQRLabel
      Left = 40
      Top = 40
      Width = 354
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        105.833333333333
        105.833333333333
        936.625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Relatorio de Pe'#231'as Utilizadas Nas Ordens'
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
  end
  object SQLOrdItens: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select distinct(i.prodicod), sum(oritn3quant) , sum(i.oritn2vlru' +
        'nit * i.oritn3quant) as Total,'
      
        '(select p.proda60descr from produto p where p.prodicod = i.prodi' +
        'cod) as produto'
      'from ord_mec_itens i'
      
        'where i.ordid in (Select o.ordid from ord_mecanica o where (o.da' +
        'ta >= :xData) and (o.data <= :xDataFinal))'
      'group by i.prodicod')
    Left = 94
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xData'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataFinal'
        ParamType = ptUnknown
      end>
    object SQLOrdItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLOrdItensSUM: TBCDField
      FieldName = 'SUM'
      DisplayFormat = ',0.00;-,0.00'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQLOrdItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOrdItens: TDataSource
    DataSet = SQLOrdItens
    Left = 124
    Top = 8
  end
end
