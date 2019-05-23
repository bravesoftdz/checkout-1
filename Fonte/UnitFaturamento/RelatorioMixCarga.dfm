inherited FormRelatorioMixCarga: TFormRelatorioMixCarga
  Left = -4
  Top = 53
  Caption = 'Relat'#243'rio Mix de Carga'
  ClientHeight = 548
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 532
    Width = 804
  end
  inherited ScrollBox: TScrollBox
    Width = 804
    Height = 532
    inherited PanelCentro: TPanel
      Left = 212
      Top = 84
      Width = 429
      Height = 394
      Caption = #39
      inherited BtnVisualizar: TSpeedButton
        Left = 215
        Top = 332
        Width = 138
        Height = 26
      end
      inherited EmpresaGroup: TGroupBox
        Height = 53
        Caption = ' &Empresa '
        inherited ListaEmpresas: TListBox
          Height = 55
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 172
        Top = 58
        Width = 247
        Caption = ' Per'#237'o&do '
        inherited De: TDateEdit
          CheckOnExit = True
        end
        inherited Ate: TDateEdit
          CheckOnExit = True
        end
      end
      object RadioData: TRadioGroup
        Left = 12
        Top = 58
        Width = 158
        Height = 41
        Caption = ' Data '
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Emiss'#227'o'
          'Entrega')
        ParentFont = False
        TabOrder = 2
      end
      object RadioOrder: TRadioGroup
        Left = 13
        Top = 322
        Width = 172
        Height = 41
        Caption = ' Ordenar Por '
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o')
        ParentFont = False
        TabOrder = 3
      end
      object RadioStatus: TRadioGroup
        Left = 12
        Top = 102
        Width = 408
        Height = 40
        Caption = ' Status '
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Aberto'
          'Encerrado'
          'Cancelado'
          'Faturado')
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox3: TGroupBox
        Left = 13
        Top = 145
        Width = 407
        Height = 125
        Caption = ' Rotas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label5: TLabel
          Left = 46
          Top = 47
          Width = 74
          Height = 13
          Caption = '&Selecionadas'
          FocusControl = ListaEmpresas
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 47
          Top = 11
          Width = 80
          Height = 13
          Caption = 'Lista de Rotas'
          FocusControl = ComboEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object InlcuirRota: TSpeedButton
          Left = 8
          Top = 64
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF000000
            FFFFFFFFFFFFFFFFFF0000000000000000000000FFFF00FFFF00FFFF000000FF
            FFFFFFFFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFF
            FF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000
            0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFFFF00000000000000
            00000000FFFF00FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00}
          OnClick = InlcuirRotaClick
        end
        object ExcluirRota: TSpeedButton
          Left = 8
          Top = 91
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF
            000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF00FFFF00000000
            000000000000FFFFFF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
            000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF
            FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFFFFFFFF
            00000000FFFF00FFFF00FFFF00000000000000000000FFFFFFFFFFFFFFFFFF00
            000000FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
            FFFFFFFFFF00}
          OnClick = ExcluirRotaClick
        end
        object ComboRota: TRxDBLookupCombo
          Left = 45
          Top = 25
          Width = 355
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          FieldsDelimiter = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'ROTAICOD'
          LookupDisplay = 'ROTAICOD;ROTAA60NOME'
          LookupDisplayIndex = 1
          LookupSource = DSSQLRota
          ParentFont = False
          TabOrder = 0
        end
        object ListaRotas: TListBox
          Left = 44
          Top = 62
          Width = 357
          Height = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          Sorted = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 272
        Width = 407
        Height = 47
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboVendedor: TRxDBLookupCombo
          Left = 10
          Top = 17
          Width = 389
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todos'
          FieldsDelimiter = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDICOD;VENDA60NOME'
          LookupDisplayIndex = 1
          LookupSource = DSSQLVendedor
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 800
      inherited PanelCabecalho: TPanel
        Width = 800
        inherited PanelNavigator: TPanel
          Width = 800
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 800
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
    end
    object TblTemporariaQtde: TBCDField
      FieldName = 'Qtde'
      Size = 3
    end
  end
  object SQLPedidoVendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  PedidoVendaItem.PRODICOD,'
      '  Produto.PRODA60DESCR,'
      '  Sum(PedidoVendaItem.PVITN3QUANT) As Qtde,'
      
        '  Sum(PedidoVendaItem.PVITN3QUANT*PedidoVendaItem.PVITN2VLRUNIT)' +
        ' As ValorTotal'
      'From'
      '  PedidoVendaItem,'
      '  PedidoVenda,'
      '  Produto'
      'Where'
      '  %Empresa'
      'and'
      '  %CampoData Between %DataInicial and %DataFinal'
      'and'
      '  PedidoVendaItem.PDVDA13ID = PedidoVenda.PDVDA13ID'
      'and'
      '  PedidoVendaItem.PRODICOD = Produto.PRODICOD'
      'and'
      '  (%Rota)'
      'and'
      '  %Vendedor'
      'and'
      '  %Status'
      'Group BY'
      '  PedidoVendaItem.PRODICOD,'
      '  Produto.PRODA60DESCR'
      '%Ordem')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Rota'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Vendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Ordem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 419
    Top = 5
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoVendaItemPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaItemQtde: TBCDField
      FieldName = 'Qtde'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Rota'
      'Order By ROTAICOD')
    Macros = <>
    Left = 501
    Top = 6
    object SQLRotaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTA.ROTAICOD'
    end
    object SQLRotaROTAA60NOME: TStringField
      FieldName = 'ROTAA60NOME'
      Origin = 'DB.ROTA.ROTAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 529
    Top = 6
  end
  object ppReportMixCarga: TppReport
    AutoStop = False
    DataPipeline = PipePedidosItensTotal
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 13970
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 120
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportMixCargaPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 650
    Top = 6
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipePedidosItensTotal'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 93398
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carga de Produtos - Fechamento de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 6054
        mmLeft = 10054
        mmTop = 3440
        mmWidth = 111464
        BandType = 1
      end
      object ppPeriodo: TppLabel
        UserName = 'Periodo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Per'#237'odo de Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 10054
        mmTop = 13229
        mmWidth = 36195
        BandType = 1
      end
      object ppRota: TppLabel
        UserName = 'Rota'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rota(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 10054
        mmTop = 17992
        mmWidth = 190236
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4498
        mmTop = 26458
        mmWidth = 196321
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 30427
        mmTop = 28840
        mmWidth = 10160
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 21431
        mmTop = 33073
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Km Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 21167
        mmTop = 37306
        mmWidth = 19315
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Km Chegada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 15610
        mmTop = 41540
        mmWidth = 24871
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tot.Km Rodado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 10848
        mmTop = 45773
        mmWidth = 29633
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' Pedidos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 18785
        mmTop = 50006
        mmWidth = 21696
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' Expositores:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 11906
        mmTop = 54240
        mmWidth = 28575
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 42069
        mmTop = 28840
        mmWidth = 67522
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 37306
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 41540
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 45773
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 50006
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 54240
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 42069
        mmTop = 33073
        mmWidth = 67522
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Retorno R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 123561
        mmTop = 33073
        mmWidth = 20373
        BandType = 1
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dinheiro R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 122502
        mmTop = 37306
        mmWidth = 21431
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cheques R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 122238
        mmTop = 41540
        mmWidth = 21696
        BandType = 1
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Moeda R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 126207
        mmTop = 45773
        mmWidth = 17727
        BandType = 1
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bloquetos R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 50006
        mmWidth = 23548
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gas GNV R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 122202
        mmTop = 54240
        mmWidth = 21731
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 33073
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 41540
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 45773
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 50006
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 54240
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 37306
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Trocas R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 28840
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 28840
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Entregador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 19244
        mmTop = 58473
        mmWidth = 21237
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 58473
        mmWidth = 67469
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ass.: ______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 88371
        mmWidth = 96838
        BandType = 1
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ped'#225'gio R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 124037
        mmTop = 58738
        mmWidth = 19897
        BandType = 1
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 58738
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Refei'#231#227'o R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 122891
        mmTop = 63236
        mmWidth = 21096
        BandType = 1
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 63236
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 129240
        mmTop = 67998
        mmWidth = 14887
        BandType = 1
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '_____________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 145521
        mmTop = 67998
        mmWidth = 48948
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '- Declaro para os devidos fins que recebi as mercadorias conform' +
          'e listagem abaixo para serem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4304
        mmLeft = 10054
        mmTop = 73819
        mmWidth = 170392
        BandType = 1
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'entregues e cobradas em forma de dinheiro, cheques  e bloqueto b' +
          'ancario. Se ocorrer falta de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4304
        mmLeft = 12965
        mmTop = 78052
        mmWidth = 168981
        BandType = 1
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'valores no caixa ao final do dia. Reembolsarei a empresa em 24 h' +
          'oras.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4304
        mmLeft = 12965
        mmTop = 82286
        mmWidth = 127353
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4763
        mmTop = 6615
        mmWidth = 196321
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4763
        mmTop = 11377
        mmWidth = 196321
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 6085
        mmTop = 7144
        mmWidth = 8255
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 19050
        mmTop = 7144
        mmWidth = 17357
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 124354
        mmTop = 7144
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 155046
        mmTop = 7144
        mmWidth = 19473
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 181116
        mmTop = 7144
        mmWidth = 18274
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4318
        mmLeft = 117560
        mmTop = 7144
        mmWidth = 5207
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = PipePedidosItensTotal
        DisplayFormat = '####0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4586
        mmLeft = 5821
        mmTop = 265
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        DataPipeline = PipePedidosItensTotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4586
        mmLeft = 18785
        mmTop = 265
        mmWidth = 97896
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Qtde'
        DataPipeline = PipePedidosItensTotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4498
        mmLeft = 124619
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ValorTotal'
        DataPipeline = PipePedidosItensTotal
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4586
        mmLeft = 146315
        mmTop = 265
        mmWidth = 28575
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4498
        mmTop = 4763
        mmWidth = 196321
        BandType = 4
      end
      object LBUnidade: TppLabel
        UserName = 'LBUnidade'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 117475
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ValorTotal'
        DataPipeline = PipePedidosItensTotal
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4586
        mmLeft = 145521
        mmTop = 1588
        mmWidth = 28840
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Qtde'
        DataPipeline = PipePedidosItensTotal
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedidosItensTotal'
        mmHeight = 4498
        mmLeft = 116152
        mmTop = 1588
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Conferente: ____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 6085
        mmTop = 1588
        mmWidth = 50800
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supervisor: ______________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 59002
        mmTop = 1588
        mmWidth = 55033
        BandType = 7
      end
    end
  end
  object DSSQLPedidoVendaItem: TDataSource
    DataSet = SQLPedidoVendaItem
    Left = 448
    Top = 6
  end
  object PipePedidosItensTotal: TppBDEPipeline
    DataSource = DSSQLPedidoVendaItem
    OpenDataSource = False
    UserName = 'PipePedidosItensTotal'
    Left = 621
    Top = 6
    object PipePedidosItensTotalppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipePedidosItensTotalppField2: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipePedidosItensTotalppField3: TppField
      FieldAlias = 'Qtde'
      FieldName = 'Qtde'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipePedidosItensTotalppField4: TppField
      FieldAlias = 'ValorTotal'
      FieldName = 'ValorTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Vendedor'
      'Order by VENDA60NOME')
    Macros = <>
    Left = 560
    Top = 6
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 588
    Top = 6
  end
end
