inherited FormCadastroNumerarioTotalizadorECF: TFormCadastroNumerarioTotalizadorECF
  Left = 223
  Top = 146
  Caption = 'Cadastro Numer'#225'rio Totalizador ECF'
  ClientHeight = 477
  ClientWidth = 800
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 800
    Height = 477
    inherited PanelCabecalho: TPanel
      Width = 798
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 798
        inherited Panel1: TPanel
          Width = 796
          inherited PanelNavigator: TPanel
            Width = 796
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 796
            end
          end
          inherited PanelLeft: TPanel
            Left = 339
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 798
      Height = 403
      inherited PanelBarra: TPanel
        Height = 403
      end
      inherited PanelFundoDados: TPanel
        Width = 668
        Height = 403
        inherited Panel5: TPanel
          Width = 668
          Height = 403
          inherited PagePrincipal: TPageControl
            Top = 124
            Width = 668
            Height = 279
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 660
                Height = 206
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ECFCalcField'
                    Width = 336
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUTCA5IDENTIFICADOR'
                    Title.Caption = 'Indentificador Cod'
                    Width = 111
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUTCA15NUMERARIO'
                    Title.Caption = 'Identificador Descri'#231#227'o'
                    Width = 164
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 660
                inherited PanelBetween: TPanel
                  Width = 266
                  inherited AdvPanel1: TAdvPanel
                    Width = 266
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 266
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 266
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
          end
          inherited PanelMaster: TPanel
            Top = 83
            Width = 668
            object Label3: TLabel
              Left = 8
              Top = 3
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 78
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              Color = 16249066
              DataField = 'NUMEICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 76
              Top = 16
              Width = 216
              Height = 21
              Color = 16249066
              DataField = 'NUMEA30DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 668
            Height = 83
            object Label1: TLabel
              Left = 5
              Top = 7
              Width = 32
              Height = 13
              Caption = 'Ecf ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 5
              Top = 44
              Width = 73
              Height = 13
              Caption = 'Identificador'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnListaECF: TSpeedButton
              Left = 104
              Top = 21
              Width = 21
              Height = 21
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
              OnClick = BtnListaECFClick
            end
            object Label5: TLabel
              Left = 130
              Top = 44
              Width = 285
              Height = 13
              Caption = 'Identificador Daruma Fs345 ou Bematech MP 25 FI'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 21
              Width = 100
              Height = 21
              DataField = 'ECFA13ID'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 3
              Top = 57
              Width = 100
              Height = 21
              DataField = 'NUTCA5IDENTIFICADOR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 127
              Top = 21
              Width = 364
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              Color = 16249066
              DataField = 'ECFCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 126
              Top = 57
              Width = 365
              Height = 21
              DataField = 'NUTCA15NUMERARIO'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  NUMERARIOTOTALIZADORECF '
      'Where '
      '  NUMEICOD = :NUMEICOD and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMEICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.NUMEICOD'
    end
    object SQLTemplateECFA13ID: TStringField
      DisplayLabel = 'Ecf ID'
      FieldName = 'ECFA13ID'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateECFCalcField: TStringField
      DisplayLabel = 'ECF'
      FieldKind = fkLookup
      FieldName = 'ECFCalcField'
      LookupDataSet = SQLECF
      LookupKeyFields = 'ECFA13ID'
      LookupResultField = 'ECFA30DESCR'
      KeyFields = 'ECFA13ID'
      Visible = False
      Size = 50
      Lookup = True
    end
    object SQLTemplateNUTCA5IDENTIFICADOR: TStringField
      DisplayLabel = 'Indentificador'
      FieldName = 'NUTCA5IDENTIFICADOR'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.NUTCA5IDENTIFICADOR'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.REGISTRO'
    end
    object SQLTemplateNUTCA15NUMERARIO: TStringField
      FieldName = 'NUTCA15NUMERARIO'
      Origin = 'DB.NUMERARIOTOTALIZADORECF.NUTCA15NUMERARIO'
      FixedChar = True
      Size = 15
    end
  end
  inherited SQLCount: TRxQuery
    Tag = 1
  end
  object SQLECF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ECF')
    Macros = <>
    Left = 18
    Top = 186
  end
end
