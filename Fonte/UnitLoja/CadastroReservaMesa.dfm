inherited FormCadastroReservaMesa: TFormCadastroReservaMesa
  Left = 326
  Top = 126
  Caption = 'Cadastro de Reserva de Mesas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RESEDDATAHORA'
                    Title.Caption = 'Data e Hora'
                    Width = 98
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESEINROPESSOAS'
                    Width = 44
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESECFUMANTE'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESECCADEIRACRIA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESECCADEIRADEFI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESEA60NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESEA15FONE'
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
              object Label7: TLabel
                Left = 9
                Top = 11
                Width = 50
                Height = 13
                Caption = 'Fumante'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 9
                Top = 35
                Width = 117
                Height = 13
                Caption = 'Cadeira para Crian'#231'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 9
                Top = 59
                Width = 91
                Height = 13
                Caption = 'Deficiente F'#237'sico'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 9
                Top = 86
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboFumante: TRxDBComboBox
                Left = 152
                Top = 7
                Width = 65
                Height = 21
                Style = csDropDownList
                DataField = 'RESECFUMANTE'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'N')
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 152
                Top = 31
                Width = 65
                Height = 21
                Style = csDropDownList
                DataField = 'RESECCADEIRACRIA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 152
                Top = 55
                Width = 65
                Height = 21
                Style = csDropDownList
                DataField = 'RESECCADEIRADEFI'
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
              end
              object MemoOBS: TDBMemo
                Left = 6
                Top = 99
                Width = 595
                Height = 45
                DataField = 'RESETOBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 3
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 4
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
              Left = 178
              Top = 4
              Width = 91
              Height = 13
              Caption = 'Nome do Cliente'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 55
              Top = 4
              Width = 67
              Height = 13
              Caption = 'Data e Hora'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 459
              Top = 4
              Width = 75
              Height = 13
              Caption = 'Fone Contato'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 140
              Top = 4
              Width = 30
              Height = 13
              Caption = 'N.Pes'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 17
              Width = 45
              Height = 21
              Color = 12572888
              DataField = 'RESEICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditNome: TDBEdit
              Left = 175
              Top = 17
              Width = 279
              Height = 21
              DataField = 'RESEA60NOME'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 52
              Top = 17
              Width = 81
              Height = 21
              DataField = 'RESEDDATAHORA'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 457
              Top = 17
              Width = 165
              Height = 21
              DataField = 'RESEA15FONE'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object DBEdit4: TDBEdit
              Left = 137
              Top = 17
              Width = 35
              Height = 21
              DataField = 'RESEINROPESSOAS'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Reserva Where (%MFiltro)')
    object SQLTemplateRESEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RESEICOD'
      Origin = 'DB.RESERVA.RESEICOD'
      Visible = False
    end
    object SQLTemplateRESEDDATAHORA: TDateTimeField
      DisplayLabel = 'Data/Hora'
      FieldName = 'RESEDDATAHORA'
      Origin = 'DB.RESERVA.RESEDDATAHORA'
      DisplayFormat = 'dd/mm/yy hh:mm'
      EditMask = '!99/99/00 99:99;1;_'
    end
    object SQLTemplateRESEA60NOME: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'RESEA60NOME'
      Origin = 'DB.RESERVA.RESEA60NOME'
      Size = 60
    end
    object SQLTemplateRESEA15FONE: TStringField
      DisplayLabel = 'Fone Contato'
      FieldName = 'RESEA15FONE'
      Origin = 'DB.RESERVA.RESEA15FONE'
      Size = 60
    end
    object SQLTemplateRESEINROPESSOAS: TIntegerField
      DisplayLabel = 'Nro.Pes'
      FieldName = 'RESEINROPESSOAS'
      Origin = 'DB.RESERVA.RESEINROPESSOAS'
    end
    object SQLTemplateRESECFUMANTE: TStringField
      DisplayLabel = 'Fumante'
      FieldName = 'RESECFUMANTE'
      Origin = 'DB.RESERVA.RESECFUMANTE'
      Size = 1
    end
    object SQLTemplateRESECCADEIRACRIA: TStringField
      DisplayLabel = 'Cadeira Crian'#231'a'
      FieldName = 'RESECCADEIRACRIA'
      Origin = 'DB.RESERVA.RESECCADEIRACRIA'
      Size = 1
    end
    object SQLTemplateRESECCADEIRADEFI: TStringField
      DisplayLabel = 'Def.F'#237'sico'
      FieldName = 'RESECCADEIRADEFI'
      Origin = 'DB.RESERVA.RESECCADEIRADEFI'
      Size = 1
    end
    object SQLTemplateRESETOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'RESETOBS'
      Origin = 'DB.RESERVA.RESETOBS'
      Size = 255
    end
  end
end
