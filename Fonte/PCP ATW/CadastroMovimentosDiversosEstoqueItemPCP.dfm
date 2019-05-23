inherited FormCadastroMovimentosDiversosEstoqueItemPCP: TFormCadastroMovimentosDiversosEstoqueItemPCP
  Left = 24
  Top = 97
  Caption = 'Itens Movimentos Diversos Estoque'
  ClientWidth = 778
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 778
    inherited PanelCabecalho: TPanel
      Width = 776
      inherited Panel2: TPanel
        Width = 776
        inherited Panel3: TPanel
          Left = 455
        end
        inherited Panel1: TPanel
          Width = 776
        end
      end
      inherited PanelNavigator: TPanel
        Width = 776
        inherited Image1: TImage
          Width = 776
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 776
      inherited PanelFundoDados: TPanel
        Width = 646
        inherited Panel5: TPanel
          Width = 646
          inherited PagePrincipal: TPageControl
            Top = 170
            Width = 646
            Height = 278
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 638
                Height = 142
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookup'
                    Width = 461
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3QTD'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 638
                inherited PanelBetween: TPanel
                  Width = 244
                end
                inherited PanelEditProcura: TPanel
                  Width = 244
                end
              end
              object PanelBottom: TPanel
                Left = 0
                Top = 189
                Width = 638
                Height = 63
                Align = alBottom
                TabOrder = 3
                object GroupBox2: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 636
                  Height = 61
                  Align = alClient
                  Caption = 'Detalhes do Produto'
                  TabOrder = 0
                  object Label5: TLabel
                    Left = 5
                    Top = 19
                    Width = 19
                    Height = 13
                    Caption = 'Cor'
                    FocusControl = DBEdit2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label6: TLabel
                    Left = 337
                    Top = 19
                    Width = 53
                    Height = 13
                    Caption = 'Tamanho'
                    FocusControl = DBEdit2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 421
                    Top = 19
                    Width = 61
                    Height = 13
                    Caption = 'Refer'#234'ncia'
                    FocusControl = DBEdit2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBLookupComboBox3: TDBLookupComboBox
                    Left = 4
                    Top = 34
                    Width = 325
                    Height = 21
                    BevelEdges = []
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    Color = 14737632
                    DataField = 'CORA30DESCR'
                    DataSource = DSSQLProduto
                    Enabled = False
                    ReadOnly = True
                    TabOrder = 0
                    TabStop = False
                  end
                  object DBLookupComboBox4: TDBLookupComboBox
                    Left = 336
                    Top = 34
                    Width = 79
                    Height = 21
                    BevelEdges = []
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    Color = 14737632
                    DataField = 'GRTMA5DESCR'
                    DataSource = DSSQLProduto
                    Enabled = False
                    ReadOnly = True
                    TabOrder = 1
                    TabStop = False
                  end
                  object DBEdit3: TDBEdit
                    Left = 420
                    Top = 34
                    Width = 221
                    Height = 21
                    Color = 14737632
                    DataField = 'PRODA60REFER'
                    DataSource = DSSQLProduto
                    Enabled = False
                    TabOrder = 2
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 129
            Width = 646
            object Label9: TLabel
              Left = 6
              Top = 1
              Width = 119
              Height = 13
              Caption = 'Opera'#231#227'o de Estoque'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 532
              Top = 1
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 407
              Top = 1
              Width = 74
              Height = 13
              Caption = 'Data do Mov.'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 5
              Top = 17
              Width = 396
              Height = 21
              DataField = 'OperacaoEstoqueCalcField'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 531
              Top = 17
              Width = 121
              Height = 21
              DataField = 'USUAA60LOGIN'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 406
              Top = 17
              Width = 121
              Height = 21
              DataField = 'MOVDDMOVIMENTO'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 646
            Height = 129
            object Label2: TLabel
              Left = 6
              Top = 86
              Width = 65
              Height = 13
              Caption = 'Quantidade'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelLote: TLabel
              Left = 97
              Top = 86
              Width = 50
              Height = 13
              Caption = 'Nro. Lote'
              FocusControl = DBEditLote
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 6
              Top = 102
              Width = 86
              Height = 21
              DataField = 'MVDIN3QTD'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEditLote: TDBEdit
              Left = 97
              Top = 102
              Width = 236
              Height = 21
              DataField = 'LOTEA30NRO'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object GroupBox1: TGroupBox
              Left = 6
              Top = 0
              Width = 647
              Height = 86
              TabOrder = 0
              object Label1: TLabel
                Left = 5
                Top = 7
                Width = 45
                Height = 13
                Caption = 'Produto'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaProduto: TSpeedButton
                Left = 516
                Top = 21
                Width = 24
                Height = 22
                Hint = 'Acessa Cadastro de Produtos'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                OnClick = AcessaProdutoClick
              end
              object Label3: TLabel
                Left = 5
                Top = 46
                Width = 19
                Height = 13
                Caption = 'Cor'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 334
                Top = 46
                Width = 53
                Height = 13
                Caption = 'Tamanho'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 421
                Top = 46
                Width = 61
                Height = 13
                Caption = 'Refer'#234'ncia'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 4
                Top = 61
                Width = 325
                Height = 21
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                Color = 14737632
                DataField = 'CORA30DESCR'
                DataSource = DSSQLProduto
                DropDownRows = 0
                Enabled = False
                ReadOnly = True
                TabOrder = 0
                TabStop = False
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 335
                Top = 61
                Width = 79
                Height = 21
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                Color = 14737632
                DataField = 'GRTMA5DESCR'
                DataSource = DSSQLProduto
                DropDownRows = 0
                Enabled = False
                ReadOnly = True
                TabOrder = 1
                TabStop = False
              end
              object DBEdit4: TDBEdit
                Left = 420
                Top = 61
                Width = 221
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'PRODA60REFER'
                DataSource = DSSQLProduto
                Enabled = False
                TabOrder = 2
              end
              object RxDBLookupCombo1: TRxDBLookupCombo
                Left = 5
                Top = 21
                Width = 512
                Height = 21
                DropDownCount = 8
                DataField = 'PRODICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'PRODICOD'
                LookupDisplay = 'PRODICOD;PRODA60DESCR'
                LookupDisplayIndex = 1
                LookupSource = DSSQLProduto
                TabOrder = 3
                OnKeyDown = RxDBLookupCombo1KeyDown
              end
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnImportaritensdocoletor: TMenuItem
      Caption = 'Importar produtos do coletor'
      OnClick = MnImportaritensdocoletorClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnImprimirItens: TMenuItem
      Caption = 'Imprimir Itens'
      OnClick = MnImprimirItensClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  MOVIMENTODIVERSOITEM '
      'Where '
      '  MOVDA13ID = :MOVDA13ID and '
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'MOVDA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateMOVDA13ID: TStringField
      Tag = 1
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateMVDIIITEM: TIntegerField
      Tag = 1
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
    end
    object SQLTemplateProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 60
      Calculated = True
    end
    object SQLTemplateMVDIN3QTD: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Quantidade'
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.REGISTRO'
    end
    object SQLTemplateLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      OnChange = SQLTemplateLOTEA30NROChange
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePRODIAGRUPGRADE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PRODIAGRUPGRADE'
      Calculated = True
    end
  end
  object ReportItens: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Left = 437
    Top = 1
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Listagem de Itens de Movimento Divervo de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5115
        mmLeft = 529
        mmTop = 529
        mmWidth = 112395
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 13494
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 13494
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 13229
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 149490
        mmTop = 13229
        mmWidth = 7832
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 169334
        mmTop = 529
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'MOVDA13ID'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 6350
        mmWidth = 47890
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Movimento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 6350
        mmWidth = 22225
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 5556
        mmWidth = 38629
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PRODICOD'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ProdutoLookup'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 529
        mmWidth = 95779
        BandType = 4
      end
      object Qtde: TppDBText
        UserName = 'Qtde'
        DataField = 'MVDIN3QTD'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'LOTEA30NRO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 149490
        mmTop = 529
        mmWidth = 43921
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MVDIN3QTD'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 126736
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'PRODICOD'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 265
        mmWidth = 20902
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Produtos :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 265
        mmWidth = 18203
        BandType = 8
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = DSTemplate
    UserName = 'DBPipeline'
    Left = 465
    Top = 1
    object ppDBPipelineppField1: TppField
      FieldAlias = 'MOVDA13ID'
      FieldName = 'MOVDA13ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipelineppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVDIIITEM'
      FieldName = 'MVDIIITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipelineppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipelineppField4: TppField
      FieldAlias = 'ProdutoLookup'
      FieldName = 'ProdutoLookup'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object ppDBPipelineppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVDIN3QTD'
      FieldName = 'MVDIN3QTD'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBPipelineppField6: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object ppDBPipelineppField7: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object ppDBPipelineppField8: TppField
      FieldAlias = 'LOTEA30NRO'
      FieldName = 'LOTEA30NRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppDBPipelineppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODIAGRUPGRADE'
      FieldName = 'PRODIAGRUPGRADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CORICOD, CORA30DESCR FROM COR'
      'ORDER BY CORA30DESCR')
    Macros = <>
    Left = 12
    Top = 230
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLCor: TDataSource
    DataSet = SQLCor
    Left = 40
    Top = 230
  end
  object SQLTamanho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrade
    SQL.Strings = (
      'SELECT GRADICOD,GRTMICOD, GRTMA5DESCR'
      'FROM GRADETAMANHO'
      'WHERE '
      'GRADICOD = :GRADICOD')
    Macros = <>
    Left = 12
    Top = 202
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLTamanho: TDataSource
    DataSet = SQLTamanho
    Left = 40
    Top = 202
  end
  object SQLGrade: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'SELECT '
      'GRADICOD, '
      'GRADA30DESCR'
      'FROM GRADE'
      'WHERE GRADICOD = :GRADICOD'
      'ORDER BY GRADA30DESCR')
    Macros = <>
    Left = 12
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADE.GRADICOD'
    end
    object SQLGradeGRADA30DESCR: TStringField
      FieldName = 'GRADA30DESCR'
      Origin = 'DB.GRADE.GRADA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLGrade: TDataSource
    DataSet = SQLGrade
    Left = 40
    Top = 174
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'PRODICOD,'
      'PRODIAGRUPGRADE,'
      'PRODA60REFER,'
      'PRODA60DESCR, '
      'GRADICOD, '
      'GRTMICOD, '
      'CORICOD '
      'from'
      'PRODUTO '
      'order by PRODA60DESCR')
    Macros = <>
    Left = 68
    Top = 174
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoGRADA30DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'GRADA30DESCR'
      LookupDataSet = SQLGrade
      LookupKeyFields = 'GRADICOD'
      LookupResultField = 'GRADA30DESCR'
      KeyFields = 'GRADICOD'
      Size = 30
      Lookup = True
    end
    object SQLProdutoCORA30DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CORA30DESCR'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
    object SQLProdutoGRTMA5DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'GRTMA5DESCR'
      LookupDataSet = SQLTamanho
      LookupKeyFields = 'GRTMICOD'
      LookupResultField = 'GRTMA5DESCR'
      KeyFields = 'GRTMICOD'
      Size = 5
      Lookup = True
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 96
    Top = 174
  end
end
