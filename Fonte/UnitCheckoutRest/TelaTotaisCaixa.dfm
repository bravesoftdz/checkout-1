object FormTelaTotaisCaixa: TFormTelaTotaisCaixa
  Left = -14
  Top = 29
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 585
  ClientWidth = 804
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 804
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Totais Caixa Ativo'
    Color = 6079486
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
  end
  object dxfLabel13: TRxLabel
    Left = 159
    Top = 437
    Width = 410
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel14: TRxLabel
    Left = 159
    Top = 467
    Width = 481
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel15: TRxLabel
    Left = 159
    Top = 498
    Width = 314
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RxLabel6: TRxLabel
    Left = 0
    Top = 567
    Width = 804
    Height = 18
    Align = alBottom
    Alignment = taCenter
    Caption = 'Pressione [ ESC ] para sair'
    Color = 6079486
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
  end
  object Edit1: TEdit
    Left = 154
    Top = 384
    Width = 94
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Panel1: TPanel
    Left = 151
    Top = 44
    Width = 502
    Height = 510
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object dxfLabel1: TRxLabel
      Left = 0
      Top = 182
      Width = 502
      Height = 23
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total Opera'#231#245'es de Caixa'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object dxfLabel2: TRxLabel
      Left = 0
      Top = 0
      Width = 502
      Height = 23
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total Numer'#225'rios'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object Panel3: TPanel
      Left = 0
      Top = 205
      Width = 502
      Height = 305
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 498
        Height = 305
        TabStop = False
        Align = alLeft
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        DataSource = DSSQLTotalOperacao
        FixedColor = 16380658
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'OPCXA60DESCR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDITOS'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBITOS'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 23
      Width = 502
      Height = 159
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 518
        Height = 159
        TabStop = False
        Align = alLeft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLTotaNumrario
        FixedColor = 16380658
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMEA30DESCR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 291
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taRightJustify
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 187
            Visible = True
          end>
      end
    end
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED)'
      'from'
      '  MOVIMENTOCAIXA, NUMERARIO'
      'where'
      '  MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICOD and'
      '  %MFiltro'
      'group by'
      '  MOVIMENTOCAIXA.NUMEICOD, NUMERARIO.NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 24
    Top = 256
    object SQLTotaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.MOVIMENTOCAIXA.NUMEICOD'
    end
    object SQLTotaNumerarioNUMEA30DESCR: TStringField
      DisplayLabel = 'NUMER'#193'RIO'
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTotaNumerarioSUM: TBCDField
      DisplayLabel = 'TOTAL'
      FieldName = 'SUM'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
  end
  object SQLTotalOperacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.OPCXICOD,'
      '  OPERACAOCAIXA.OPCXA60DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as CREDITOS,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB) as DEBITOS'
      'from'
      '  MOVIMENTOCAIXA, OPERACAOCAIXA'
      'where'
      '  MOVIMENTOCAIXA.OPCXICOD = OPERACAOCAIXA.OPCXICOD and'
      '  %MFiltro'
      'group by'
      '  MOVIMENTOCAIXA.OPCXICOD, OPERACAOCAIXA.OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 24
    Top = 288
    object SQLTotalOperacaoOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.OPCXICOD'
    end
    object SQLTotalOperacaoOPCXA60DESCR: TStringField
      DisplayLabel = 'OPERA'#199#195'O'
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalOperacaoCREDITOS: TBCDField
      FieldName = 'CREDITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTotalOperacaoDEBITOS: TBCDField
      FieldName = 'DEBITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLTotaNumrario: TDataSource
    DataSet = SQLTotaNumerario
    Left = 52
    Top = 256
  end
  object DSSQLTotalOperacao: TDataSource
    DataSet = SQLTotalOperacao
    Left = 52
    Top = 288
  end
end
