inherited FormCadastroConfigColetor: TFormCadastroConfigColetor
  Left = 182
  Top = 112
  Caption = 'Cadastro de Coletores'
  ClientWidth = 797
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 797
    inherited PanelCabecalho: TPanel
      Width = 795
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 795
        inherited Panel1: TPanel
          Width = 793
          inherited PanelNavigator: TPanel
            Width = 793
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 793
            end
          end
          inherited PanelLeft: TPanel
            Left = 336
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 795
      inherited PanelFundoDados: TPanel
        Width = 665
        inherited Panel5: TPanel
          Width = 665
          inherited PagePrincipal: TPageControl
            Top = 163
            Width = 665
            Height = 286
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 657
                Height = 213
              end
              inherited PanelProcura: TPanel
                Width = 657
                inherited PanelBetween: TPanel
                  Width = 263
                  inherited AdvPanel1: TAdvPanel
                    Width = 263
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 263
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 263
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
            Top = 122
            Width = 665
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 665
            Height = 122
            object Label1: TLabel
              Left = 6
              Top = 5
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 318
              Top = 5
              Width = 113
              Height = 13
              Caption = 'Caminho do Arquivo'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ButtonPathFile: TSpeedButton
              Left = 638
              Top = 18
              Width = 21
              Height = 21
              Hint = 'Procura Arquivo Texto'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = ButtonPathFileClick
            end
            object Label3: TLabel
              Left = 275
              Top = 44
              Width = 118
              Height = 13
              Caption = 'Posi'#231#227'o C'#243'd. Produto'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 410
              Top = 44
              Width = 128
              Height = 13
              Caption = 'Tamanho C'#243'd. Produto'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 5
              Top = 84
              Width = 111
              Height = 13
              Caption = 'Posi'#231#227'o Quantidade'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 140
              Top = 84
              Width = 121
              Height = 13
              Caption = 'Tamanho Quantidade'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 4
              Top = 44
              Width = 122
              Height = 13
              Caption = 'Posi'#231#227'o C'#243'd. Empresa'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 138
              Top = 44
              Width = 132
              Height = 13
              Caption = 'Tamanho C'#243'd. Empresa'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 18
              Width = 308
              Height = 21
              DataField = 'CFCOA60DESCR'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 317
              Top = 18
              Width = 319
              Height = 21
              DataField = 'CFCOTPATHFILE'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 275
              Top = 58
              Width = 130
              Height = 21
              DataField = 'CFCOIPOSPRODICOD'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 410
              Top = 58
              Width = 130
              Height = 21
              DataField = 'CFCOITAMPRODICOD'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 4
              Top = 97
              Width = 130
              Height = 21
              DataField = 'CFCOIPOSPRODN3QTDE'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 139
              Top = 97
              Width = 130
              Height = 21
              DataField = 'CFCOITAMPRODN3QTDE'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 58
              Width = 130
              Height = 21
              DataField = 'CFCOIPOSEMPRICOD'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object DBEdit8: TDBEdit
              Left = 139
              Top = 58
              Width = 130
              Height = 21
              DataField = 'CFCOITAMEMPRICOD'
              DataSource = DSTemplate
              TabOrder = 7
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    SQL.Strings = (
      'Select * From CONFIGCOLETOR Where (%MFiltro)')
    object SQLTemplateCFCOA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CFCOA13ID'
      Origin = 'DB.CONFIGCOLETOR.CFCOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCFCOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFCOICOD'
      Origin = 'DB.CONFIGCOLETOR.CFCOICOD'
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONFIGCOLETOR.EMPRICOD'
      Visible = False
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONFIGCOLETOR.TERMICOD'
      Visible = False
    end
    object SQLTemplateCFCOA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFCOA60DESCR'
      Origin = 'DB.CONFIGCOLETOR.CFCOA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFCOTPATHFILE: TStringField
      DisplayLabel = 'Caminho do Arquivo'
      FieldName = 'CFCOTPATHFILE'
      Origin = 'DB.CONFIGCOLETOR.CFCOTPATHFILE'
      Size = 255
    end
    object SQLTemplateCFCOIPOSPRODICOD: TIntegerField
      DisplayLabel = 'Posi'#231#227'o C'#243'digo'
      FieldName = 'CFCOIPOSPRODICOD'
      Origin = 'DB.CONFIGCOLETOR.CFCOIPOSPRODICOD'
    end
    object SQLTemplateCFCOITAMPRODICOD: TIntegerField
      DisplayLabel = 'Tamanho C'#243'digo'
      FieldName = 'CFCOITAMPRODICOD'
      Origin = 'DB.CONFIGCOLETOR.CFCOITAMPRODICOD'
    end
    object SQLTemplateCFCOIPOSPRODN3QTDE: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Quantidade'
      FieldName = 'CFCOIPOSPRODN3QTDE'
      Origin = 'DB.CONFIGCOLETOR.CFCOIPOSPRODN3QTDE'
    end
    object SQLTemplateCFCOITAMPRODN3QTDE: TIntegerField
      DisplayLabel = 'Tamanho Quantidade'
      FieldName = 'CFCOITAMPRODN3QTDE'
      Origin = 'DB.CONFIGCOLETOR.CFCOITAMPRODN3QTDE'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONFIGCOLETOR.REGISTRO'
      Visible = False
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONFIGCOLETOR.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFCOIPOSEMPRICOD: TIntegerField
      DisplayLabel = 'Posi'#231#227'o C'#243'd. Empresa'
      FieldName = 'CFCOIPOSEMPRICOD'
      Origin = 'DB.CONFIGCOLETOR.CFCOIPOSEMPRICOD'
    end
    object SQLTemplateCFCOITAMEMPRICOD: TIntegerField
      DisplayLabel = 'Tamanho C'#243'd. Empresa'
      FieldName = 'CFCOITAMEMPRICOD'
      Origin = 'DB.CONFIGCOLETOR.CFCOITAMEMPRICOD'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo Texto|*.txt'
    Left = 185
    Top = 1
  end
end
