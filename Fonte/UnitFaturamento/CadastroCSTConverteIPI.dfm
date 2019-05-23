inherited CadastroCSTConverterIPI: TCadastroCSTConverterIPI
  Left = 358
  Top = 151
  Caption = 'Convers'#227'o Situa'#231#227'o Tributaria'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 154
        inherited Button1: TRxSpeedButton
          Width = 145
        end
        inherited Button2: TRxSpeedButton
          Width = 145
        end
        inherited Button3: TRxSpeedButton
          Width = 145
        end
        object Label1: TLabel
          Left = 17
          Top = 96
          Width = 77
          Height = 13
          Caption = 'Tipo de Empesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 7
          Top = 115
          Width = 96
          Height = 13
          Caption = '1 - Simples Nacional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 133
          Width = 102
          Height = 26
          Caption = '2 - Simples Nacional, '#13#10'     Exc. Rec. Bruta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 7
          Top = 164
          Width = 40
          Height = 13
          Caption = '3 - Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      inherited PanelFundoDados: TPanel
        Left = 154
        Width = 733
        inherited Panel5: TPanel
          Width = 733
          inherited PagePrincipal: TPageControl
            Width = 733
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 725
              end
              inherited PanelProcura: TPanel
                Width = 725
                inherited PanelBetween: TPanel
                  Width = 331
                  inherited AdvPanel1: TAdvPanel
                    Width = 331
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 331
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 331
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
              object Label68: TLabel
                Left = 10
                Top = 53
                Width = 453
                Height = 13
                Caption = 
                  'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do ICMS para opera'#231#245'es de SA'#205'DA de' +
                  ' mercadorias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 10
                Top = 97
                Width = 467
                Height = 13
                Caption = 
                  'C'#243'dito da Situa'#231#227'o Tribut'#225'ria do ICMS para opera'#231#245'es de ENTRADA ' +
                  'de mercadorias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RxDBComboBox8: TRxDBComboBox
                Left = 10
                Top = 68
                Width = 600
                Height = 21
                Style = csDropDownList
                DataField = 'CSTSAIDA'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '50-Sa'#237'da tributada'
                  '51-Sa'#237'da tributada com al'#237'quota zero'
                  '52-Sa'#237'da isenta'
                  '53-Sa'#237'da n'#227'o-tributada'
                  '54-Sa'#237'da imune'
                  '55-Sa'#237'da com suspens'#227'o'
                  '99-Outras sa'#237'das')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                Values.Strings = (
                  '50'
                  '51'
                  '52'
                  '53'
                  '54'
                  '55'
                  '99')
              end
              object RxDBComboBox12: TRxDBComboBox
                Left = 10
                Top = 112
                Width = 600
                Height = 21
                Style = csDropDownList
                DataField = 'CSTENTRADA'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '00-Entrada c/ recup. de cr'#233'dito'
                  '01-Entrada tributada com al'#237'quota zero'
                  '02-Entrada isenta'
                  '03-Entrada n'#227'o-tributada'
                  '04-Entrada imune'
                  '05-Entrada com suspens'#227'o'
                  '49-Outras entradas')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                Values.Strings = (
                  '00'
                  '01'
                  '02'
                  '03'
                  '04'
                  '05'
                  '49')
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 733
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 733
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CONVERTECSTIPI Where (%MFiltro)')
    object SQLTemplateCSTSAIDA: TStringField
      DisplayLabel = 'CST Sa'#237'da'
      FieldName = 'CSTSAIDA'
      Origin = 'DB.CONVERTECSTIPI.CSTSAIDA'
      Size = 3
    end
    object SQLTemplateCSTENTRADA: TStringField
      DisplayLabel = 'CST Entrada'
      FieldName = 'CSTENTRADA'
      Origin = 'DB.CONVERTECSTIPI.CSTENTRADA'
      Size = 3
    end
  end
end
