object FormRelatorioServicosPorMecanico: TFormRelatorioServicosPorMecanico
  Left = 195
  Top = 137
  Width = 829
  Height = 504
  Caption = 'Relatorio de Servi'#231'os Prestados Pelo Mecanico'
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
    Left = 26
    Top = 42
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
      Height = 87
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
        230.1875
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
      object QRLabel10: TQRLabel
        Left = 2
        Top = 52
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          137.583333333333
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pelo Mec'#226'nico:'
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
      object Mecanico: TQRLabel
        Left = 105
        Top = 52
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          277.8125
          137.583333333333
          34.3958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '---'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 225
      Width = 718
      Height = 40
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
        105.833333333333
        1899.70833333333)
      BandType = rbPageFooter
      object QRExpr1: TQRExpr
        Left = 540
        Top = 4
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1428.75
          10.5833333333333
          235.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        OnPrint = QRExpr1Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(valoritem)'
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 632
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1672.16666666667
          10.5833333333333
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = QRExpr1Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Comissao)'
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 173
      Width = 718
      Height = 52
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
        137.583333333333
        1899.70833333333)
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 84
        Top = 4
        Width = 36
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          222.25
          10.5833333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'DATA'
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
      object QRDBText1: TQRDBText
        Left = 4
        Top = 4
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          10.5833333333333
          10.5833333333333
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'ORDID'
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
      object QRDBText5: TQRDBText
        Left = 152
        Top = 4
        Width = 465
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          402.166666666667
          10.5833333333333
          1230.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'CLIEA60RAZAOSOC'
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
        Left = 16
        Top = 26
        Width = 533
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          68.7916666666667
          1410.22916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'ORITA254OBS'
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
      object QRDBText3: TQRDBText
        Left = 568
        Top = 26
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          68.7916666666667
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'VALORITEM'
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
      object QRDBText4: TQRDBText
        Left = 659
        Top = 26
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1743.60416666667
          68.7916666666667
          148.166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
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
    end
    object QRLabel1: TQRLabel
      Left = 40
      Top = 40
      Width = 275
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
        727.604166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Relatorio de Servi'#231'os Prestados'
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
    object QRBand2: TQRBand
      Left = 38
      Top = 125
      Width = 718
      Height = 48
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
        127
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 4
        Top = 2
        Width = 57
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          10.5833333333333
          5.29166666666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'N Ordem'
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
        Left = 4
        Top = 22
        Width = 109
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          10.5833333333333
          58.2083333333333
          288.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Servi'#231'o Prestado'
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
        Left = 568
        Top = 22
        Width = 53
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1502.83333333333
          58.2083333333333
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
      object QRLabel8: TQRLabel
        Left = 634
        Top = 22
        Width = 82
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1677.45833333333
          58.2083333333333
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'R$ Comiss'#227'o'
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
      object QRLabel11: TQRLabel
        Left = 153
        Top = 2
        Width = 46
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          404.8125
          5.29166666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Cliente'
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
      object QRLabel12: TQRLabel
        Left = 84
        Top = 2
        Width = 30
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          222.25
          5.29166666666667
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Data'
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
  end
  object DSSQLOrdItens: TDataSource
    Left = 77
    Top = 8
  end
  object SQLOrdItens: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select c.cliea60razaosoc, o.Data, i.*, (i.oritn2vlrunit * i.orit' +
        'n3quant) as valorItem,'
      
        '(i.oritn2vlrunit * i.oritn3quant) * (i.oritn2perccomis/100) as c' +
        'omissao '
      'from ord_mec_itens i '
      'left join ord_mecanica o on o.ordid = i.ordid  '
      'left join cliente c on c.cliea13id = o.cliea13id')
    Left = 44
    Top = 9
    object SQLOrdItensCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLOrdItensDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object SQLOrdItensORDITENSID: TIntegerField
      FieldName = 'ORDITENSID'
    end
    object SQLOrdItensORDID: TIntegerField
      FieldName = 'ORDID'
    end
    object SQLOrdItensGRUPO_SERVICO: TIntegerField
      FieldName = 'GRUPO_SERVICO'
    end
    object SQLOrdItensGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 3
    end
    object SQLOrdItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLOrdItensORITN3QUANT: TBCDField
      FieldName = 'ORITN3QUANT'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensORITN2VLRUNIT: TBCDField
      FieldName = 'ORITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensORITN2PERCDESC: TBCDField
      FieldName = 'ORITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensORITN2VLRDESC: TBCDField
      FieldName = 'ORITN2VLRDESC'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLOrdItensORITN3TOTVEND: TBCDField
      FieldName = 'ORITN3TOTVEND'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensORITA254OBS: TStringField
      FieldName = 'ORITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLOrdItensORMCTIPOSERVICOID: TIntegerField
      FieldName = 'ORMCTIPOSERVICOID'
    end
    object SQLOrdItensIDMECANICO: TIntegerField
      FieldName = 'IDMECANICO'
    end
    object SQLOrdItensORITN2PERCCOMIS: TBCDField
      FieldName = 'ORITN2PERCCOMIS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensORITN3TEMPO: TBCDField
      FieldName = 'ORITN3TEMPO'
      Precision = 15
      Size = 3
    end
    object SQLOrdItensVALORITEM: TFloatField
      FieldName = 'VALORITEM'
      DisplayFormat = ',0.00'
    end
    object SQLOrdItensCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = ',0.00'
    end
  end
end
