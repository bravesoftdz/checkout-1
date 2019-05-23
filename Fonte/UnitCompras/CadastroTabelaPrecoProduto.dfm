inherited FormCadastroTabelaPrecoProduto: TFormCadastroTabelaPrecoProduto
  Left = 444
  Top = 153
  Caption = 'Produtos'
  ClientHeight = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 542
    inherited PanelCentral: TPanel
      Height = 468
      inherited PanelBarra: TPanel
        Height = 468
      end
      inherited PanelFundoDados: TPanel
        Height = 468
        inherited Panel5: TPanel
          Height = 468
          inherited PagePrincipal: TPageControl
            Height = 386
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 313
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60REFER'
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Width = 225
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3VLRVENDA'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3MARGLUCR'
                    Width = 87
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3VLRVENDAPROM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPDINIPROMO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPDFIMPROMO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 7
                Top = 10
                Width = 67
                Height = 13
                Caption = 'Valor Venda'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 130
                Top = 10
                Width = 81
                Height = 13
                Caption = 'Margem Lucro'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 254
                Top = 10
                Width = 103
                Height = 13
                Caption = 'Valor Venda Prom.'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 377
                Top = 10
                Width = 108
                Height = 13
                Caption = 'In'#237'cio da Promo'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 498
                Top = 10
                Width = 97
                Height = 13
                Caption = 'Fim da Promo'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 4
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3VLRVENDA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 127
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3MARGLUCR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 251
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3VLRVENDAPROM'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBDateEdit
                Left = 374
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPDINIPROMO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 3
              end
              object DBEdit5: TDBDateEdit
                Left = 495
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPDFIMPROMO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 4
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label7: TLabel
              Left = 6
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 105
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 17
              Width = 95
              Height = 21
              DataField = 'TPRCICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 103
              Top = 17
              Width = 549
              Height = 21
              DataField = 'TPRCA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label6: TLabel
              Left = 8
              Top = 2
              Width = 45
              Height = 13
              Caption = 'Produto'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 68
              Top = 14
              Width = 24
              Height = 24
              Hint = 'Acessa Tipo Cliente'
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
              OnClick = SpeedButton1Click
            end
            object Label9: TLabel
              Left = 509
              Top = 2
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit6: TDBEdit
              Left = 4
              Top = 15
              Width = 64
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 94
              Top = 16
              Width = 411
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 509
              Top = 15
              Width = 142
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              DataField = 'PRODA60REFER'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnAssistente: TMenuItem
      Caption = '&Assistente p/ Manuten'#231#227'o da Tabela de Pre'#231'o'
      OnClick = MnAssistenteClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RetransmitirtodosprodutosparaosPDVs1: TMenuItem
      Caption = 'Retransmitir todos produtos para os PDVs'
      OnClick = RetransmitirtodosprodutosparaosPDVs1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnListagemdePrecos: TMenuItem
      Caption = 'Listagem de Precos'
      OnClick = MnListagemdePrecosClick
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From TABELAPRECOPRODUTO Where '
      'TPRCICOD=:TPRCICOD AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.TPRCICOD'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplatePRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODA60REFER'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object SQLTemplateProdutoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTPCPN3VLRVENDA: TBCDField
      DisplayLabel = 'Valor Venda'
      FieldName = 'TPCPN3VLRVENDA'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDA'
      OnChange = SQLTemplateTPCPN3VLRVENDAChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateTPCPN3MARGLUCR: TBCDField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'TPCPN3MARGLUCR'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3MARGLUCR'
      OnChange = SQLTemplateTPCPN3MARGLUCRChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateTPCPN3VLRVENDAPROM: TBCDField
      DisplayLabel = 'Valor Venda Prom.'
      FieldName = 'TPCPN3VLRVENDAPROM'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLTemplateTPCPDINIPROMO: TDateTimeField
      DisplayLabel = 'In'#237'cio da Promo'#231#227'o'
      FieldName = 'TPCPDINIPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDINIPROMO'
    end
    object SQLTemplateTPCPDFIMPROMO: TDateTimeField
      DisplayLabel = 'Fim da Promo'#231#227'o'
      FieldName = 'TPCPDFIMPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDFIMPROMO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TABELAPRECOPRODUTO.REGISTRO'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\DESENV\GestaoOficial\Relatorios\Listagem de Produtos.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    Formulas.Formula.Strings = (
      '"Periodo Emissao"')
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    ConnectMethod = useLogOnInfo
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowButtonBar.ToolbarTips = False
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 513
    Top = 1
  end
  object TblTemporaria: TTable
    AutoCalcFields = False
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'RelListagemProduto.DB'
    Left = 542
    Top = 1
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaCodProduto: TStringField
      FieldName = 'CodProduto'
      Size = 60
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Size = 30
    end
    object TblTemporariaPRODA255DESCRTEC: TStringField
      FieldName = 'PRODA255DESCRTEC'
      Size = 255
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
    end
    object TblTemporariaPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 32
      Size = 3
    end
    object TblTemporariaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Size = 30
    end
    object TblTemporariaGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Size = 5
    end
    object TblTemporariaPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateField
      FieldName = 'REGISTRO'
    end
    object TblTemporariaUnidadeDesc5: TStringField
      FieldName = 'UnidadeDesc5'
      Size = 5
    end
    object TblTemporariaMarcaDescr: TStringField
      FieldName = 'MarcaDescr'
      Size = 30
    end
    object TblTemporariaVLRMargem: TFloatField
      FieldName = 'VLRMargem'
    end
    object TblTemporariaGrupoDescr: TStringField
      FieldName = 'GrupoDescr'
      Size = 60
    end
    object TblTemporariaICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object TblTemporariaPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Size = 3
    end
  end
  object SQLProdutoPdvs: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from TABELAPRECOPRODUTOPDVs'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 696
    Top = 1
  end
end
