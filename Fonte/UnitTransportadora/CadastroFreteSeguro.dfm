inherited FormCadastroFreteSeguro: TFormCadastroFreteSeguro
  Left = 125
  Top = 134
  Caption = 'Cadastro de Itens do Frete'
  ClientHeight = 540
  ClientWidth = 823
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 823
    Height = 540
    inherited PanelCabecalho: TPanel
      Width = 821
      inherited PanelNavigator: TPanel
        Width = 821
      end
      inherited Panel2: TPanel
        Width = 821
        inherited Panel3: TPanel
          Left = 469
        end
        inherited Panel1: TPanel
          Width = 821
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 821
      Height = 466
      inherited PanelBarra: TPanel
        Height = 466
      end
      inherited PanelFundoDados: TPanel
        Width = 691
        Height = 466
        inherited Panel5: TPanel
          Width = 691
          Height = 466
          inherited PagePrincipal: TPageControl
            Top = 123
            Width = 691
            Height = 343
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 683
                Height = 270
              end
              inherited PanelProcura: TPanel
                Width = 683
                inherited PanelBetween: TPanel
                  Width = 289
                end
                inherited PanelEditProcura: TPanel
                  Width = 289
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 199
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 106
            Width = 691
            Height = 17
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 691
            Height = 106
            object Label1: TLabel
              Left = 224
              Top = 5
              Width = 66
              Height = 13
              Caption = 'Seguradora'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 12
              Top = 56
              Width = 74
              Height = 13
              Caption = 'N'#186' da Ap'#243'lice'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 280
              Top = 56
              Width = 77
              Height = 13
              Caption = 'N'#186' Averba'#231#227'o'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 552
              Top = 56
              Width = 82
              Height = 13
              Caption = 'R$ Mercadoria'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 9
              Top = 5
              Width = 142
              Height = 13
              Caption = 'Respons'#225'vel Pelo Seguro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 224
              Top = 21
              Width = 457
              Height = 21
              DataField = 'FRSGA60SEGURADORA'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 12
              Top = 72
              Width = 264
              Height = 21
              DataField = 'FRSGA20APOLICE'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 280
              Top = 72
              Width = 264
              Height = 21
              DataField = 'FRSGA20AVERBACAO'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 552
              Top = 72
              Width = 130
              Height = 21
              DataField = 'FRSGN2VALORAVERBA'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object RxDBComboBox3: TRxDBComboBox
              Left = 9
              Top = 21
              Width = 212
              Height = 21
              Style = csDropDownList
              DataField = 'FRSGA1RESPONSAVEL'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '0 - Remetente'
                '1 - Expedidor'
                '2 - Recebedor'
                '3 - Destinatario'
                '4 - Emitente do CT-e'
                '5 - Tomador do Servi'#231'o')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From FreteSeguro Where'
      'FRETA13ID = :FRETA13ID AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'FRETA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateFRETA13ID: TStringField
      DisplayLabel = 'Frete ID'
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETESEGURO.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFRETICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'ID'
      FieldName = 'FRETICOD'
      Origin = 'DB.FRETESEGURO.FRETICOD'
    end
    object SQLTemplateFRSGA1RESPONSAVEL: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'FRSGA1RESPONSAVEL'
      Origin = 'DB.FRETESEGURO.FRSGA1RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRSGA60SEGURADORA: TStringField
      DisplayLabel = 'Seguradora'
      FieldName = 'FRSGA60SEGURADORA'
      Origin = 'DB.FRETESEGURO.FRSGA60SEGURADORA'
      Size = 60
    end
    object SQLTemplateFRSGA20APOLICE: TStringField
      DisplayLabel = 'Ap'#243'lice'
      FieldName = 'FRSGA20APOLICE'
      Origin = 'DB.FRETESEGURO.FRSGA20APOLICE'
    end
    object SQLTemplateFRSGA20AVERBACAO: TStringField
      DisplayLabel = 'Averba'#231#227'o'
      FieldName = 'FRSGA20AVERBACAO'
      Origin = 'DB.FRETESEGURO.FRSGA20AVERBACAO'
    end
    object SQLTemplateFRSGN2VALORAVERBA: TBCDField
      DisplayLabel = 'Valor Merc.'
      FieldName = 'FRSGN2VALORAVERBA'
      Origin = 'DB.FRETESEGURO.FRSGN2VALORAVERBA'
      Precision = 15
      Size = 2
    end
  end
end
