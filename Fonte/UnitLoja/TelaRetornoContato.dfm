inherited FormTelaRetornoContato: TFormTelaRetornoContato
  Left = 13
  Top = 58
  Height = 486
  ActiveControl = DBEdit5
  Caption = 'Retorno do Contato'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 459
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object LabelGravar: TSpeedButton
          Tag = 3
          Left = 4
          Top = 3
          Width = 71
          Height = 25
          Cursor = crHandPoint
          Caption = '&Gravar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            C2040000424DC204000000000000420000002800000018000000180000000100
            1000030000008004000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
            7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
            9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
            BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
            184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
            FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
            742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
            BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
            0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
            7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
            EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
            DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
            742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          Margin = 0
          ParentFont = False
          Spacing = 1
          OnClick = LabelGravarClick
        end
      end
    end
    inherited PanelCentral: TPanel
      Height = 375
      inherited PanelBarra: TPanel
        Top = 241
        Width = 0
        Height = 134
        TabOrder = 3
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 43
        Align = alTop
        ParentColor = True
        TabOrder = 0
        object Label2: TLabel
          Left = 5
          Top = 1
          Width = 58
          Height = 13
          Caption = 'ID. Cliente'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 124
          Top = 1
          Width = 71
          Height = 13
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 428
          Top = 1
          Width = 38
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 646
          Top = 1
          Width = 38
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 4
          Top = 16
          Width = 117
          Height = 21
          Color = 14737632
          DataField = 'CLIEA13ID'
          DataSource = FormTelaAgendaContatos.DSContato
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 123
          Top = 16
          Width = 301
          Height = 21
          Color = 14737632
          DataField = 'CLIEA60RAZAOSOC'
          DataSource = FormTelaAgendaContatos.DSContato
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 427
          Top = 16
          Width = 216
          Height = 21
          Color = 14737632
          DataField = 'CLIEA60CIDRES'
          DataSource = FormTelaAgendaContatos.DSContato
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 645
          Top = 16
          Width = 41
          Height = 21
          Color = 14737632
          DataField = 'CLIEA2UFRES'
          DataSource = FormTelaAgendaContatos.DSContato
          ReadOnly = True
          TabOrder = 3
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 241
        Width = 757
        Height = 134
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLContatoDetalhe
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CNTDA254DETALHE'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 43
        Width = 757
        Height = 198
        Align = alTop
        Color = 12572888
        TabOrder = 1
        object Label5: TLabel
          Left = 5
          Top = 45
          Width = 67
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Retorno'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 239
          Top = 84
          Width = 66
          Height = 13
          Caption = 'Data / Hora'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 5
          Top = 9
          Width = 97
          Height = 13
          Caption = 'Pessoa / Contato'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEditObs: TDBEdit
          Left = 5
          Top = 60
          Width = 684
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTA255OBS'
          DataSource = DSContato
          TabOrder = 1
        end
        object ComboRetorno: TRxDBLookupCombo
          Left = 5
          Top = 99
          Width = 231
          Height = 21
          DropDownCount = 8
          DataField = 'TipoRetornoLookUp'
          DataSource = DSContato
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 238
          Top = 99
          Width = 155
          Height = 21
          TabStop = False
          Color = 14737632
          DataField = 'CONTDREAL'
          DataSource = DSContato
          ReadOnly = True
          TabOrder = 3
        end
        object ProximoContato: TGroupBox
          Left = 5
          Top = 123
          Width = 388
          Height = 67
          Caption = ' Este retorno exige um novo contato '
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
          object Label8: TLabel
            Left = 233
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 7
            Top = 17
            Width = 45
            Height = 13
            Caption = 'Contato'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit7: TDBEdit
            Left = 7
            Top = 32
            Width = 221
            Height = 21
            Color = 14737632
            DataField = 'TipoContatoLookUp'
            DataSource = DSContato
            ReadOnly = True
            TabOrder = 0
          end
          object DBDateEditProx: TDBDateEdit
            Left = 231
            Top = 32
            Width = 151
            Height = 21
            DataField = 'CONTDPROXCONT'
            DataSource = DSContato
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object DBEdit5: TDBEdit
          Left = 5
          Top = 23
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTA60CONTATO'
          DataSource = DSContato
          TabOrder = 0
        end
      end
    end
  end
  object SQLContato: TRxQuery
    AfterEdit = SQLContatoAfterEdit
    BeforePost = SQLContatoBeforePost
    DatabaseName = 'DB'
    DataSource = FormTelaAgendaContatos.DSContato
    RequestLive = True
    SQL.Strings = (
      'Select * From Contato '
      'Where'
      '   CONTDCONTATO=:CONTDCONTATO and'
      '   CONTICOD=:CONTICOD')
    Macros = <>
    Left = 157
    Top = 5
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftInteger
        Name = 'CONTICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLContatoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContatoCONTDCONTATO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object SQLContatoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object SQLContatoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object SQLContatoCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTATO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContatoTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CONTATO.TPCLICOD'
    end
    object SQLContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.CONTATO.TPCTICOD'
    end
    object SQLContatoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.CONTATO.TPRTICOD'
      OnChange = SQLContatoTPRTICODChange
    end
    object SQLContatoTPCTICODPROX: TIntegerField
      FieldName = 'TPCTICODPROX'
      Origin = 'DB.CONTATO.TPCTICODPROX'
    end
    object SQLContatoCONTDPROXCONT: TDateTimeField
      FieldName = 'CONTDPROXCONT'
      Origin = 'DB.CONTATO.CONTDPROXCONT'
    end
    object SQLContatoCONTDREAL: TDateTimeField
      FieldName = 'CONTDREAL'
      Origin = 'DB.CONTATO.CONTDREAL'
    end
    object SQLContatoCONTA255OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLContatoTipoContatoLookUp: TStringField
      DisplayLabel = 'Tipo Contato'
      FieldKind = fkLookup
      FieldName = 'TipoContatoLookUp'
      LookupDataSet = SQLTipoContato
      LookupKeyFields = 'TPCTICOD'
      LookupResultField = 'TPCTA60DESCR'
      KeyFields = 'TPCTICODPROX'
      Size = 60
      Lookup = True
    end
    object SQLContatoTipoRetornoLookUp: TStringField
      DisplayLabel = 'Tipo Retorno'
      FieldKind = fkLookup
      FieldName = 'TipoRetornoLookUp'
      LookupDataSet = SQLTipoRetorno
      LookupKeyFields = 'TPRTICOD'
      LookupResultField = 'TPRTA60DESCR'
      KeyFields = 'TPRTICOD'
      Size = 60
      Lookup = True
    end
    object SQLContatoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContatoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATO.REGISTRO'
    end
    object SQLContatoTipoContatoQuestionarioLookUp: TIntegerField
      FieldKind = fkLookup
      FieldName = 'TipoContatoQuestionarioLookUp'
      LookupDataSet = SQLTipoContato
      LookupKeyFields = 'TPCTICOD'
      LookupResultField = 'QUESICOD'
      KeyFields = 'TPCTICOD'
      Lookup = True
    end
    object SQLContatoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONTATO.USUAICOD'
    end
    object SQLContatoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      Origin = 'DB.CONTATO.CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLContatoRetornoAutomaticoLookUp: TIntegerField
      FieldKind = fkLookup
      FieldName = 'RetornoAutomaticoLookUp'
      LookupDataSet = SQLTipoContato
      LookupKeyFields = 'TPCTICOD'
      LookupResultField = 'TPRTICOD'
      KeyFields = 'TPCTICOD'
      Lookup = True
    end
  end
  object DSContato: TDataSource
    DataSet = SQLContato
    OnStateChange = DSContatoStateChange
    Left = 187
    Top = 5
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoContato order by TPCTA60DESCR ')
    Macros = <>
    Left = 234
    Top = 5
    object SQLTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
    end
    object SQLTipoContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTipoContatoQUESICOD: TIntegerField
      FieldName = 'QUESICOD'
      Origin = 'DB.TIPOCONTATO.QUESICOD'
    end
    object SQLTipoContatoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.TIPOCONTATO.TPRTICOD'
    end
  end
  object SQLTipoRetorno: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoRetorno order by TPRTA60DESCR ')
    Macros = <>
    Left = 298
    Top = 5
    object SQLTipoRetornoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.TIPORETORNO.TPRTICOD'
    end
    object SQLTipoRetornoTPRTA60DESCR: TStringField
      FieldName = 'TPRTA60DESCR'
      Origin = 'DB.TIPORETORNO.TPRTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTipoRetornoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPORETORNO.TPCTICOD'
    end
  end
  object SQLTipoClienteTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TIPOCLIENTETIPOCONTATO'
      'Where'
      '    TPCLICOD=:TPCLICOD and'
      '    TPCTICOD=:TPCTICOD')
    Macros = <>
    Left = 338
    Top = 6
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPCLICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TPCTICOD'
        ParamType = ptUnknown
      end>
    object SQLTipoClienteTipoContatoTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTETIPOCONTATO.TPCLICOD'
    end
    object SQLTipoClienteTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCLIENTETIPOCONTATO.TPCTICOD'
    end
    object SQLTipoClienteTipoContatoTCTCIINTERVALO: TIntegerField
      FieldName = 'TCTCIINTERVALO'
      Origin = 'DB.TIPOCLIENTETIPOCONTATO.TCTCIINTERVALO'
    end
    object SQLTipoClienteTipoContatoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TIPOCLIENTETIPOCONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTipoClienteTipoContatoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TIPOCLIENTETIPOCONTATO.REGISTRO'
    end
  end
  object SQLContatoDetalhe: TRxQuery
    Tag = 1
    BeforePost = SQLContatoDetalheBeforePost
    AfterPost = SQLContatoDetalheAfterPost
    OnNewRecord = SQLContatoDetalheNewRecord
    OnPostError = SQLContatoDetalhePostError
    DatabaseName = 'DB'
    DataSource = DSContato
    RequestLive = True
    SQL.Strings = (
      'Select * From CONTATODETALHE '
      'Where'
      'EMPRICOD=:EMPRICOD AND'
      'CONTDCONTATO=:CONTDCONTATO AND'
      'CONTICOD=:CONTICOD'
      'order by CNTDICOD')
    Macros = <>
    Left = 234
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONTICOD'
        ParamType = ptUnknown
      end>
    object SQLContatoDetalheEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTATODETALHE.EMPRICOD'
    end
    object SQLContatoDetalheCONTDCONTATO: TDateTimeField
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATODETALHE.CONTDCONTATO'
    end
    object SQLContatoDetalheCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATODETALHE.CONTICOD'
    end
    object SQLContatoDetalheCNTDICOD: TIntegerField
      FieldName = 'CNTDICOD'
      Origin = 'DB.CONTATODETALHE.CNTDICOD'
    end
    object SQLContatoDetalheCNTDA254DETALHE: TStringField
      DisplayLabel = 'Detalhamento'
      FieldName = 'CNTDA254DETALHE'
      Origin = 'DB.CONTATODETALHE.CNTDA254DETALHE'
      FixedChar = True
      Size = 254
    end
    object SQLContatoDetalhePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATODETALHE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContatoDetalheREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATODETALHE.REGISTRO'
    end
  end
  object DSSQLContatoDetalhe: TDataSource
    DataSet = SQLContatoDetalhe
    Left = 262
    Top = 44
  end
end
