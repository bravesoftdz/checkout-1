object FormRelatoriOrdensPorExecucao: TFormRelatoriOrdensPorExecucao
  Left = 8
  Top = 137
  Width = 1013
  Height = 605
  Caption = 'Relatorio de Ordens x Execu'#231#227'o'
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
    Left = 10
    Top = 2
    Width = 898
    Height = 635
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      100
      2970
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
    Zoom = 80
    object QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 838
      Height = 44
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
        145.520833333333
        2771.51041666667)
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 2
        Top = 22
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          6.61458333333333
          72.7604166666667
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
        Left = 81
        Top = 22
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          267.890625
          72.7604166666667
          152.135416666667)
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
        Left = 142
        Top = 22
        Width = 7
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          469.635416666667
          72.7604166666667
          23.1510416666667)
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
        Left = 156
        Top = 22
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          515.9375
          72.7604166666667
          152.135416666667)
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
        Left = 502
        Top = 10
        Width = 62
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1660.26041666667
          33.0729166666667
          205.052083333333)
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
        Left = 502
        Top = 26
        Width = 54
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1660.26041666667
          85.9895833333333
          178.59375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Text = 'Data:'
        Transparent = False
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 0
        Top = 4
        Width = 217
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          0
          13.2291666666667
          717.682291666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Ordens por Tipo de Execu'#231#227'o'
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
    object QRBand3: TQRBand
      Left = 30
      Top = 148
      Width = 838
      Height = 32
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
        2771.51041666667)
      BandType = rbPageFooter
      object QRExpr3: TQRExpr
        Left = 682
        Top = 2
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2255.57291666667
          6.61458333333333
          211.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = QRExpr3Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(ORITN2VLRPRODUTO)'
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 772
        Top = 2
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2553.22916666667
          6.61458333333333
          211.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = QRExpr3Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(ORITN2VLRSERVICO)'
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 30
      Top = 74
      Width = 838
      Height = 51
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        168.671875
        2771.51041666667)
      Expression = 'SQLOrdItens.TIPO'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel6: TQRLabel
        Left = 4
        Top = 8
        Width = 86
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          13.2291666666667
          26.4583333333333
          284.427083333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Executado Em ->'
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
      object QRDBText1: TQRDBText
        Left = 100
        Top = 8
        Width = 105
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          330.729166666667
          26.4583333333333
          347.265625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = SQLOrdItens
        DataField = 'ORDA25EXECUTAEM'
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
        Left = 2
        Top = 31
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          6.61458333333333
          102.526041666667
          112.447916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ord N'#186
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
        Left = 65
        Top = 31
        Width = 24
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          214.973958333333
          102.526041666667
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
      object QRLabel9: TQRLabel
        Left = 138
        Top = 31
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          456.40625
          102.526041666667
          46.3020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ST'
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
      object QRLabel10: TQRLabel
        Left = 165
        Top = 31
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          545.703125
          102.526041666667
          122.369791666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
      object QRLabel11: TQRLabel
        Left = 698
        Top = 31
        Width = 47
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2308.48958333333
          102.526041666667
          155.442708333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ Pe'#231'as'
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
        Left = 776
        Top = 33
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2566.45833333333
          109.140625
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ Servi'#231'os'
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
    object QRBand2: TQRBand
      Left = 30
      Top = 125
      Width = 838
      Height = 23
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
        76.0677083333333
        2771.51041666667)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 0
        Top = 2
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          5.29166666666667
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'ORDID'
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
        Left = 67
        Top = 2
        Width = 48
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          221.588541666667
          6.61458333333333
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'DATA'
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
      object QRDBText8: TQRDBText
        Left = 139
        Top = 2
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          459.713541666667
          6.61458333333333
          42.9947916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'STATUS'
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
        Left = 167
        Top = 2
        Width = 478
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          552.317708333333
          6.61458333333333
          1580.88541666667)
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
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 676
        Top = 2
        Width = 70
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2235.72916666667
          6.61458333333333
          231.510416666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'ORITN2VLRPRODUTO'
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
      object QRDBText7: TQRDBText
        Left = 767
        Top = 2
        Width = 70
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          2536.69270833333
          6.61458333333333
          231.510416666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SQLOrdItens
        DataField = 'ORITN2VLRSERVICO'
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
    end
  end
  object DSSQLOrdItens: TDataSource
    Left = 85
  end
  object SQLOrdItens: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select O.*, c.cliea60razaosoc, e.ORDA25EXECUTAEM from ord_mecani' +
        'ca o'
      'left join ord_executarem e on e.ordexeid = o.tipo'
      'left join cliente c on c.cliea13id = o.cliea13id '
      'order by tipo, data')
    Left = 56
    Top = 1
    object IntegerField1: TIntegerField
      FieldName = 'ORDID'
      Origin = 'DB.ORD_MECANICA.ORDID'
    end
    object SQLOrdItensORDREINCIDENTE: TIntegerField
      FieldName = 'ORDREINCIDENTE'
      Origin = 'DB.ORD_MECANICA.ORDREINCIDENTE'
    end
    object SQLOrdItensCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ORD_MECANICA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA'
      Origin = 'DB.ORD_MECANICA.DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLOrdItensTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'DB.ORD_MECANICA.TIPO'
    end
    object SQLOrdItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      Origin = 'DB.ORD_MECANICA.ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLOrdItensPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      Origin = 'DB.ORD_MECANICA.PROBLEMA'
      BlobType = ftMemo
      Size = 1
    end
    object SQLOrdItensVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'DB.ORD_MECANICA.VALOR'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLOrdItensFINALIZADO: TDateTimeField
      FieldName = 'FINALIZADO'
      Origin = 'DB.ORD_MECANICA.FINALIZADO'
    end
    object SQLOrdItensKM_ENTRADA: TIntegerField
      FieldName = 'KM_ENTRADA'
      Origin = 'DB.ORD_MECANICA.KM_ENTRADA'
    end
    object SQLOrdItensCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'DB.ORD_MECANICA.COMBUSTIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLOrdItensLITROS: TSmallintField
      FieldName = 'LITROS'
      Origin = 'DB.ORD_MECANICA.LITROS'
    end
    object SQLOrdItensANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'DB.ORD_MECANICA.ANO_MODELO'
      Size = 10
    end
    object SQLOrdItensORDA10COR: TStringField
      FieldName = 'ORDA10COR'
      Origin = 'DB.ORD_MECANICA.ORDA10COR'
      Size = 10
    end
    object SQLOrdItensDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DB.ORD_MECANICA.DATA_ENTREGA'
    end
    object SQLOrdItensOBS_ENTREGA: TMemoField
      FieldName = 'OBS_ENTREGA'
      Origin = 'DB.ORD_MECANICA.OBS_ENTREGA'
      BlobType = ftMemo
      Size = 1
    end
    object SQLOrdItensSOLUCAO: TMemoField
      FieldName = 'SOLUCAO'
      Origin = 'DB.ORD_MECANICA.SOLUCAO'
      BlobType = ftMemo
      Size = 1
    end
    object SmallintField1: TSmallintField
      FieldName = 'GARANTIA'
      Origin = 'DB.ORD_MECANICA.GARANTIA'
    end
    object SQLOrdItensCDUSU: TSmallintField
      FieldName = 'CDUSU'
      Origin = 'DB.ORD_MECANICA.CDUSU'
    end
    object SQLOrdItensMARCAA30: TStringField
      FieldName = 'MARCAA30'
      Origin = 'DB.ORD_MECANICA.MARCAA30'
      Size = 30
    end
    object SQLOrdItensORDA50VEICULO: TStringField
      FieldName = 'ORDA50VEICULO'
      Origin = 'DB.ORD_MECANICA.ORDA50VEICULO'
      Size = 50
    end
    object SQLOrdItensSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'DB.ORD_MECANICA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLOrdItensEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.ORD_MECANICA.EMPRICOD'
    end
    object SQLOrdItensORITN2VLRPRODUTO: TBCDField
      FieldName = 'ORITN2VLRPRODUTO'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRPRODUTO'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLOrdItensORITN2VLRSERVICO: TBCDField
      FieldName = 'ORITN2VLRSERVICO'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRSERVICO'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object BCDField1: TBCDField
      FieldName = 'ORITN2VLRDESC'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRDESC'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLOrdItensPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'DB.ORD_MECANICA.PLACA'
      Size = 15
    end
    object SQLOrdItensPARCELAS: TStringField
      FieldName = 'PARCELAS'
      Origin = 'DB.ORD_MECANICA.PARCELAS'
      Size = 18
    end
    object SQLOrdItensPARCELASVARIAVEIS: TStringField
      FieldName = 'PARCELASVARIAVEIS'
      Origin = 'DB.ORD_MECANICA.PARCELASVARIAVEIS'
    end
    object SQLOrdItensORDA25EXECUTAEM: TStringField
      FieldName = 'ORDA25EXECUTAEM'
      Origin = 'DB.ORD_EXECUTAREM.ORDA25EXECUTAEM'
      Size = 25
    end
    object SQLOrdItensCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
end
