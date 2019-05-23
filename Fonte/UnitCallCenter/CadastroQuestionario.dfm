inherited FormCadastroQuestionario: TFormCadastroQuestionario
  Left = 5
  Top = 11
  Caption = 'Cadastro de Question'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Perguntas'
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'QUESICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUESA60DESCR'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 1
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 78
              Top = 1
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 67
              Height = 21
              DataField = 'QUESICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 429
              Height = 21
              DataField = 'QUESA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object Questionrio1: TMenuItem
      Caption = 'Question'#225'rio'
      OnClick = Questionrio1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Questionario Where (%MFiltro)')
    object SQLTemplateQUESICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIO.QUESICOD'
      Visible = False
    end
    object SQLTemplateQUESA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'QUESA60DESCR'
      Origin = 'DB.QUESTIONARIO.QUESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.QUESTIONARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.QUESTIONARIO.REGISTRO'
    end
  end
  object ReportQuestionario: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
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
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Preview = pwPageWidth
    WindowZoom.Magnification = -1
    WindowStyle.BorderStyle = bsSingle
    WindowState = wsMaximized
    WindowButtonBar.CancelBtn = True
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
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
    GraphOptions.Max = -1
    GraphOptions.Min = -1
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
    Left = 448
    Top = 2
  end
  object SQLQuestionarioPergunta: TRxQuery
    Tag = 1
    BeforeOpen = SQLTemplateBeforeOpen
    AfterOpen = SQLTemplateAfterOpen
    BeforeInsert = SQLTemplateBeforeInsert
    BeforeEdit = SQLTemplateBeforeEdit
    BeforePost = SQLTemplateBeforePost
    AfterPost = SQLTemplateAfterPost
    BeforeDelete = SQLTemplateBeforeDelete
    AfterScroll = SQLTemplateAfterScroll
    OnNewRecord = SQLTemplateNewRecord
    OnPostError = SQLTemplatePostError
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      
        'Select * From QUESTIONARIOQUESTAO Where QUESICOD=:QUESICOD and (' +
        '%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 49
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUESICOD'
        ParamType = ptUnknown
      end>
    object SQLQuestionarioPerguntaQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUESICOD'
      Visible = False
    end
    object SQLQuestionarioPerguntaQUEQICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQICOD'
      Visible = False
    end
    object SQLQuestionarioPerguntaQUEQA60DESCR: TStringField
      DisplayLabel = 'Pergunta'
      FieldName = 'QUEQA60DESCR'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLQuestionarioPerguntaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.QUESTIONARIOQUESTAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLQuestionarioPerguntaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.QUESTIONARIOQUESTAO.REGISTRO'
    end
    object SQLQuestionarioPerguntaQUEQCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'QUEQCTIPO'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQCTIPO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLQuestionarioPerguntaResposta: TRxQuery
    Tag = 1
    BeforeOpen = SQLTemplateBeforeOpen
    AfterOpen = SQLTemplateAfterOpen
    BeforeInsert = SQLTemplateBeforeInsert
    BeforeEdit = SQLTemplateBeforeEdit
    BeforePost = SQLTemplateBeforePost
    AfterPost = SQLTemplateAfterPost
    BeforeDelete = SQLTemplateBeforeDelete
    AfterScroll = SQLTemplateAfterScroll
    OnNewRecord = SQLTemplateNewRecord
    OnPostError = SQLTemplatePostError
    DatabaseName = 'DB'
    DataSource = DSQuetionarioPergunta
    RequestLive = True
    SQL.Strings = (
      
        'Select * From QUESTIONARIOOPCOES Where QUESICOD=:QUESICOD and QU' +
        'EQICOD=:QUEQICOD and (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 49
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUESICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'QUEQICOD'
        ParamType = ptUnknown
      end>
    object SQLQuestionarioPerguntaRespostaQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUESICOD'
      Visible = False
    end
    object SQLQuestionarioPerguntaRespostaQUEQICOD: TIntegerField
      Tag = 1
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUEQICOD'
      Visible = False
    end
    object SQLQuestionarioPerguntaRespostaQUQOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUQOICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOICOD'
      Visible = False
    end
    object SQLQuestionarioPerguntaRespostaQUQOA30DESCR: TStringField
      DisplayLabel = 'Op'#231#227'o de Resposta'
      FieldName = 'QUQOA30DESCR'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLQuestionarioPerguntaRespostaQUQOIPONTOS: TIntegerField
      DisplayLabel = 'Pontos'
      FieldName = 'QUQOIPONTOS'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPONTOS'
    end
    object SQLQuestionarioPerguntaRespostaQUQOIPESO: TIntegerField
      DisplayLabel = 'Peso'
      FieldName = 'QUQOIPESO'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPESO'
    end
    object SQLQuestionarioPerguntaRespostaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.QUESTIONARIOOPCOES.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLQuestionarioPerguntaRespostaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.QUESTIONARIOOPCOES.REGISTRO'
    end
  end
  object DSQuetionarioPergunta: TDataSource
    DataSet = SQLQuestionarioPergunta
    Left = 80
    Top = 168
  end
  object TblQuestionario: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'Questionario.DB'
    Left = 48
    Top = 240
    object TblQuestionarioQUESICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIO.QUESICOD'
      Visible = False
    end
    object TblQuestionarioQUESA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'QUESA60DESCR'
      Origin = 'DB.QUESTIONARIO.QUESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object TblQuestionarioPergunta: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'QuestionarioPergunta.DB'
    Left = 48
    Top = 272
    object TblQuestionarioPerguntaQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUESICOD'
      Visible = False
    end
    object TblQuestionarioPerguntaQUEQICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQICOD'
      Visible = False
    end
    object TblQuestionarioPerguntaQUEQA60DESCR: TStringField
      DisplayLabel = 'Pergunta'
      FieldName = 'QUEQA60DESCR'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblQuestionarioPerguntaQUEQCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'QUEQCTIPO'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQCTIPO'
      FixedChar = True
      Size = 1
    end
  end
  object TblQuestionarioPerguntaResposta: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'QuestionarioPerguntaResposta.DB'
    Left = 48
    Top = 307
    object TblQuestionarioPerguntaRespostaQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUESICOD'
      Visible = False
    end
    object TblQuestionarioPerguntaRespostaQUEQICOD: TIntegerField
      Tag = 1
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUEQICOD'
      Visible = False
    end
    object TblQuestionarioPerguntaRespostaQUQOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUQOICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOICOD'
      Visible = False
    end
    object TblQuestionarioPerguntaRespostaQUQOA30DESCR: TStringField
      DisplayLabel = 'Op'#231#227'o de Resposta'
      FieldName = 'QUQOA30DESCR'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblQuestionarioPerguntaRespostaQUQOIPONTOS: TIntegerField
      DisplayLabel = 'Pontos'
      FieldName = 'QUQOIPONTOS'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPONTOS'
    end
    object TblQuestionarioPerguntaRespostaQUQOIPESO: TIntegerField
      DisplayLabel = 'Peso'
      FieldName = 'QUQOIPESO'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPESO'
    end
  end
  object DSQuestionario: TDataSource
    DataSet = TblQuestionario
    Left = 80
    Top = 240
  end
  object DSQuestionarioPergunta: TDataSource
    DataSet = TblQuestionarioPergunta
    Left = 80
    Top = 273
  end
end
