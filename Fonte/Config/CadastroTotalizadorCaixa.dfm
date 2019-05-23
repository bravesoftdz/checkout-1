inherited FormCadastroTotalizadorCaixa: TFormCadastroTotalizadorCaixa
  Left = 148
  Top = 97
  Caption = 'Totalizadores de Caixa'
  ClientHeight = 525
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 525
    inherited PanelCentral: TPanel
      Height = 451
      inherited PanelBarra: TPanel
        Height = 451
        inherited Button3: TRxSpeedButton
          Height = 48
          Caption = '&3 Numer'#225'rios / Opera'#231#245'es de Caixa que Totalizam'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 451
        inherited Panel5: TPanel
          Height = 451
          inherited PagePrincipal: TPageControl
            Height = 369
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 296
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TOTAICOD'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAA60DESCR'
                    Width = 424
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTACDEBITOCREDITO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAIORDLIST'
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
              inherited MemoDetalhes: TMemo
                Left = 7
                Top = 151
                Height = 119
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 3
                Top = 76
                Width = 90
                Height = 13
                Caption = 'Transferir Saldo'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label4: TLabel
                Left = 3
                Top = 0
                Width = 24
                Height = 13
                Caption = 'Tipo'
                FocusControl = DBEditTipo
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 3
                Top = 38
                Width = 73
                Height = 13
                Caption = 'Ordem Listar'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TRxDBComboBox
                Left = 3
                Top = 92
                Width = 83
                Height = 21
                Style = csDropDownList
                DataField = 'TOTACTRANSFSALDO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 2
                Values.Strings = (
                  'S'
                  'N')
                Visible = False
              end
              object DBEditTipo: TRxDBComboBox
                Left = 3
                Top = 16
                Width = 83
                Height = 21
                Style = csDropDownList
                DataField = 'TOTACDEBITOCREDITO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'D'#233'bito'
                  'Cr'#233'dito')
                TabOrder = 0
                Values.Strings = (
                  'D'
                  'C')
              end
              object DBEdit5: TDBEdit
                Left = 3
                Top = 54
                Width = 83
                Height = 21
                DataField = 'TOTAIORDLIST'
                DataSource = DSTemplate
                TabOrder = 1
              end
            end
            object TabSheetNumeOperTot: TTabSheet
              Caption = 'Numer'#225'rios/Opera'#231#245'es de Caixa que Totalizam'
              ImageIndex = 2
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 749
                Height = 343
                Align = alClient
                BorderStyle = bsNone
                DataSource = DSSQLOperNumeTotalizam
                FixedColor = 16767449
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'SOMASUBTRAI'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 5
              Top = 5
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
              Left = 71
              Top = 5
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
              Left = 4
              Top = 18
              Width = 64
              Height = 21
              DataField = 'TOTAICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 70
              Top = 18
              Width = 364
              Height = 21
              DataField = 'TOTAA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From TOTALIZADORCAIXA Where (%MFiltro)')
    object SQLTemplateTOTAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TOTAICOD'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAICOD'
      Visible = False
    end
    object SQLTemplateTOTAA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TOTAA60DESCR'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTOTACTRANSFSALDO: TStringField
      DisplayLabel = 'Transf.Saldo'
      FieldName = 'TOTACTRANSFSALDO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACTRANSFSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTOTACDEBITOCREDITO: TStringField
      DisplayLabel = 'D'#233'bito/Cr'#233'dito'
      FieldName = 'TOTACDEBITOCREDITO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACDEBITOCREDITO'
      OnChange = SQLTemplateTOTACDEBITOCREDITOChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTOTAIORDLIST: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'TOTAIORDLIST'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAIORDLIST'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TOTALIZADORCAIXA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TOTALIZADORCAIXA.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update TOTALIZADORCAIXA'
      'set'
      '  TOTAICOD = :TOTAICOD,'
      '  TOTAA60DESCR = :TOTAA60DESCR,'
      '  TOTACTRANSFSALDO = :TOTACTRANSFSALDO,'
      '  TOTACDEBITOCREDITO = :TOTACDEBITOCREDITO,'
      '  TOTAIORDLIST = :TOTAIORDLIST,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  TOTAICOD = :OLD_TOTAICOD')
    InsertSQL.Strings = (
      'insert into TOTALIZADORCAIXA'
      
        '  (TOTAICOD, TOTAA60DESCR, TOTACTRANSFSALDO, TOTACDEBITOCREDITO,' +
        ' TOTAIORDLIST, '
      '   PENDENTE, REGISTRO)'
      'values'
      
        '  (:TOTAICOD, :TOTAA60DESCR, :TOTACTRANSFSALDO, :TOTACDEBITOCRED' +
        'ITO, :TOTAIORDLIST, '
      '   :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from TOTALIZADORCAIXA'
      'where'
      '  TOTAICOD = :OLD_TOTAICOD')
  end
  object SQLOperNumeTotalizam: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '  NMTO.NUMEICOD as Codigo,'
      '  NMTO.TOTAICOD as Totalizador,'
      '  cast(NUME.NUMEA30DESCR as char(60)) as Descricao,'
      '  NMTO.NUTOCSOMASUBTRAI as SomaSubtrai'
      'from'
      '  NUMERARIOTOTALIZADOR NMTO, NUMERARIO NUME'
      'where'
      '  NMTO.TOTAICOD = :TOTAICOD and'
      '  NMTO.NUMEICOD = NUME.NUMEICOD'
      ''
      'union all'
      ''
      'select'
      '  OPTO.OPCXICOD as Codigo,'
      '  OPTO.TOTAICOD as Totalizador,'
      '  cast(OPER.OPCXA60DESCR as char(60)) as Descricao,'
      '  OPTO.OPTOCSOMASUBTRAI as SomaSubtrai'
      'from'
      '  OPERACAOCAIXATOTALIZADOR OPTO, OPERACAOCAIXA OPER'
      'where'
      '  OPTO.TOTAICOD = :TOTAICOD and'
      '  OPTO.OPCXICOD = OPER.OPCXICOD')
    Macros = <>
    Left = 440
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOTAICOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'TOTAICOD'
        ParamType = ptUnknown
      end>
    object SQLOperNumeTotalizamCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object SQLOperNumeTotalizamTOTALIZADOR: TIntegerField
      DisplayLabel = 'Totalizador'
      FieldName = 'TOTALIZADOR'
    end
    object SQLOperNumeTotalizamDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object SQLOperNumeTotalizamSOMASUBTRAI: TStringField
      DisplayLabel = 'Soma/Subtrai'
      FieldName = 'SOMASUBTRAI'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLOperNumeTotalizam: TDataSource
    AutoEdit = False
    DataSet = SQLOperNumeTotalizam
    OnStateChange = DSTemplateStateChange
    OnDataChange = DSTemplateDataChange
    Left = 468
    Top = 1
  end
end
