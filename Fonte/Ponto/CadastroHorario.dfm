inherited FormCadastroHorario: TFormCadastroHorario
  Left = 232
  Top = 113
  Caption = 'Cadastro de Hor'#225'rios para o ponto de funcion'#225'rios'
  ClientWidth = 819
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 819
    inherited PanelCabecalho: TPanel
      Width = 817
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 817
        inherited Panel1: TPanel
          Width = 815
          inherited PanelNavigator: TPanel
            Width = 815
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 815
            end
          end
          inherited PanelLeft: TPanel
            Left = 358
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 817
      inherited PanelFundoDados: TPanel
        Width = 687
        inherited Panel5: TPanel
          Width = 687
          inherited PagePrincipal: TPageControl
            Top = 85
            Width = 687
            Height = 364
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 679
                Height = 291
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'HORAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HORAA60DESCR'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 679
                inherited PanelBetween: TPanel
                  Width = 285
                  inherited AdvPanel1: TAdvPanel
                    Width = 285
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 285
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 285
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
              object Label5: TLabel
                Left = 17
                Top = 17
                Width = 58
                Height = 16
                Caption = 'SEGUNDA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 17
                Top = 58
                Width = 41
                Height = 16
                Caption = 'TER'#199'A'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 17
                Top = 101
                Width = 53
                Height = 16
                Caption = 'QUARTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 17
                Top = 143
                Width = 47
                Height = 16
                Caption = 'QUINTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label33: TLabel
                Left = 17
                Top = 185
                Width = 41
                Height = 16
                Caption = 'SEXTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 17
                Top = 228
                Width = 54
                Height = 16
                Caption = 'SABADO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label47: TLabel
                Left = 17
                Top = 273
                Width = 59
                Height = 16
                Caption = 'DOMINGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupBox2: TGroupBox
                Left = 81
                Top = 1
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object DBEdit3: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit4: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox3: TGroupBox
                Left = 247
                Top = 1
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object DBEdit5: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGTARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit6: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGTARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox4: TGroupBox
                Left = 413
                Top = 1
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object DBEdit7: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGNOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit8: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEGNOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox5: TGroupBox
                Left = 81
                Top = 43
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object DBEdit9: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit10: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox6: TGroupBox
                Left = 247
                Top = 43
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object DBEdit11: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERTARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit12: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERTARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox7: TGroupBox
                Left = 413
                Top = 43
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object DBEdit13: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERNOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit14: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADTERNOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox10: TGroupBox
                Left = 413
                Top = 85
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
                object DBEdit19: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUANOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit20: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUANOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox9: TGroupBox
                Left = 247
                Top = 85
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object DBEdit17: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUATARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit18: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUATARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox8: TGroupBox
                Left = 81
                Top = 85
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                object DBEdit15: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUAMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit16: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUAMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox11: TGroupBox
                Left = 81
                Top = 127
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
                object DBEdit21: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUIMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit22: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUIMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox12: TGroupBox
                Left = 247
                Top = 127
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
                object DBEdit23: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUITARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit24: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUITARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox13: TGroupBox
                Left = 413
                Top = 127
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                object DBEdit25: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUINOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit26: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADQUINOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox14: TGroupBox
                Left = 81
                Top = 169
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
                object DBEdit27: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit28: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox15: TGroupBox
                Left = 247
                Top = 169
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                object DBEdit29: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXTARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit30: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXTARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox16: TGroupBox
                Left = 413
                Top = 169
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
                object DBEdit31: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXNOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit32: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSEXNOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox17: TGroupBox
                Left = 81
                Top = 211
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 15
                object DBEdit33: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit34: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox18: TGroupBox
                Left = 247
                Top = 211
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 16
                object DBEdit35: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABTARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit36: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABTARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox19: TGroupBox
                Left = 413
                Top = 211
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 17
                object DBEdit37: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABNOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit38: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADSABNOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox20: TGroupBox
                Left = 81
                Top = 253
                Width = 156
                Height = 41
                Caption = ' Turno 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 18
                object DBEdit39: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMMANENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit40: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMMANSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox21: TGroupBox
                Left = 247
                Top = 253
                Width = 156
                Height = 41
                Caption = ' Turno 2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 19
                object DBEdit41: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMTARSAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit42: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMTARENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox22: TGroupBox
                Left = 413
                Top = 253
                Width = 156
                Height = 41
                Caption = ' Turno 3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 20
                object DBEdit43: TDBEdit
                  Left = 80
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMNOISAI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit44: TDBEdit
                  Left = 7
                  Top = 14
                  Width = 68
                  Height = 21
                  DataField = 'HORADDOMNOIENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 44
            Width = 687
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 687
            Height = 44
            object Label1: TLabel
              Left = 9
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
              Left = 55
              Top = 4
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
              Top = 17
              Width = 41
              Height = 21
              DataField = 'HORAICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 51
              Top = 17
              Width = 370
              Height = 21
              DataField = 'HORAA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object GroupBox23: TGroupBox
              Left = 427
              Top = 1
              Width = 248
              Height = 39
              Caption = 'Toler'#226'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object Label52: TLabel
                Left = 7
                Top = 16
                Width = 52
                Height = 13
                Caption = 'Hora Extra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label53: TLabel
                Left = 137
                Top = 17
                Width = 32
                Height = 13
                Caption = 'Atrazo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit45: TDBEdit
                Left = 173
                Top = 13
                Width = 68
                Height = 21
                DataField = 'HORADTOLATRAZO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit46: TDBEdit
                Left = 64
                Top = 13
                Width = 68
                Height = 21
                DataField = 'HORADTOLEXTRA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Horario Where (%MFiltro)')
    object SQLTemplateHORAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'HORAICOD'
      Origin = 'DB.HORARIO.HORAICOD'
      Visible = False
    end
    object SQLTemplateHORAA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'HORAA60DESCR'
      Origin = 'DB.HORARIO.HORAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateHORADSEGMANENT: TDateTimeField
      FieldName = 'HORADSEGMANENT'
      Origin = 'DB.HORARIO.HORADSEGMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEGMANSAI: TDateTimeField
      FieldName = 'HORADSEGMANSAI'
      Origin = 'DB.HORARIO.HORADSEGMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEGTARENT: TDateTimeField
      FieldName = 'HORADSEGTARENT'
      Origin = 'DB.HORARIO.HORADSEGTARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEGTARSAI: TDateTimeField
      FieldName = 'HORADSEGTARSAI'
      Origin = 'DB.HORARIO.HORADSEGTARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEGNOIENT: TDateTimeField
      FieldName = 'HORADSEGNOIENT'
      Origin = 'DB.HORARIO.HORADSEGNOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEGNOISAI: TDateTimeField
      FieldName = 'HORADSEGNOISAI'
      Origin = 'DB.HORARIO.HORADSEGNOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERMANENT: TDateTimeField
      FieldName = 'HORADTERMANENT'
      Origin = 'DB.HORARIO.HORADTERMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERMANSAI: TDateTimeField
      FieldName = 'HORADTERMANSAI'
      Origin = 'DB.HORARIO.HORADTERMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERTARENT: TDateTimeField
      FieldName = 'HORADTERTARENT'
      Origin = 'DB.HORARIO.HORADTERTARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERTARSAI: TDateTimeField
      FieldName = 'HORADTERTARSAI'
      Origin = 'DB.HORARIO.HORADTERTARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERNOIENT: TDateTimeField
      FieldName = 'HORADTERNOIENT'
      Origin = 'DB.HORARIO.HORADTERNOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTERNOISAI: TDateTimeField
      FieldName = 'HORADTERNOISAI'
      Origin = 'DB.HORARIO.HORADTERNOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUAMANENT: TDateTimeField
      FieldName = 'HORADQUAMANENT'
      Origin = 'DB.HORARIO.HORADQUAMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUAMANSAI: TDateTimeField
      FieldName = 'HORADQUAMANSAI'
      Origin = 'DB.HORARIO.HORADQUAMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUATARENT: TDateTimeField
      FieldName = 'HORADQUATARENT'
      Origin = 'DB.HORARIO.HORADQUATARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUATARSAI: TDateTimeField
      FieldName = 'HORADQUATARSAI'
      Origin = 'DB.HORARIO.HORADQUATARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUANOIENT: TDateTimeField
      FieldName = 'HORADQUANOIENT'
      Origin = 'DB.HORARIO.HORADQUANOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUANOISAI: TDateTimeField
      FieldName = 'HORADQUANOISAI'
      Origin = 'DB.HORARIO.HORADQUANOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUIMANENT: TDateTimeField
      FieldName = 'HORADQUIMANENT'
      Origin = 'DB.HORARIO.HORADQUIMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUIMANSAI: TDateTimeField
      FieldName = 'HORADQUIMANSAI'
      Origin = 'DB.HORARIO.HORADQUIMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUITARENT: TDateTimeField
      FieldName = 'HORADQUITARENT'
      Origin = 'DB.HORARIO.HORADQUITARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUITARSAI: TDateTimeField
      FieldName = 'HORADQUITARSAI'
      Origin = 'DB.HORARIO.HORADQUITARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUINOIENT: TDateTimeField
      FieldName = 'HORADQUINOIENT'
      Origin = 'DB.HORARIO.HORADQUINOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADQUINOISAI: TDateTimeField
      FieldName = 'HORADQUINOISAI'
      Origin = 'DB.HORARIO.HORADQUINOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXMANENT: TDateTimeField
      FieldName = 'HORADSEXMANENT'
      Origin = 'DB.HORARIO.HORADSEXMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXMANSAI: TDateTimeField
      FieldName = 'HORADSEXMANSAI'
      Origin = 'DB.HORARIO.HORADSEXMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXTARENT: TDateTimeField
      FieldName = 'HORADSEXTARENT'
      Origin = 'DB.HORARIO.HORADSEXTARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXTARSAI: TDateTimeField
      FieldName = 'HORADSEXTARSAI'
      Origin = 'DB.HORARIO.HORADSEXTARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXNOIENT: TDateTimeField
      FieldName = 'HORADSEXNOIENT'
      Origin = 'DB.HORARIO.HORADSEXNOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSEXNOISAI: TDateTimeField
      FieldName = 'HORADSEXNOISAI'
      Origin = 'DB.HORARIO.HORADSEXNOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABMANENT: TDateTimeField
      FieldName = 'HORADSABMANENT'
      Origin = 'DB.HORARIO.HORADSABMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABMANSAI: TDateTimeField
      FieldName = 'HORADSABMANSAI'
      Origin = 'DB.HORARIO.HORADSABMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABTARENT: TDateTimeField
      FieldName = 'HORADSABTARENT'
      Origin = 'DB.HORARIO.HORADSABTARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABTARSAI: TDateTimeField
      FieldName = 'HORADSABTARSAI'
      Origin = 'DB.HORARIO.HORADSABTARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABNOIENT: TDateTimeField
      FieldName = 'HORADSABNOIENT'
      Origin = 'DB.HORARIO.HORADSABNOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADSABNOISAI: TDateTimeField
      FieldName = 'HORADSABNOISAI'
      Origin = 'DB.HORARIO.HORADSABNOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMMANENT: TDateTimeField
      FieldName = 'HORADDOMMANENT'
      Origin = 'DB.HORARIO.HORADDOMMANENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMMANSAI: TDateTimeField
      FieldName = 'HORADDOMMANSAI'
      Origin = 'DB.HORARIO.HORADDOMMANSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMTARENT: TDateTimeField
      FieldName = 'HORADDOMTARENT'
      Origin = 'DB.HORARIO.HORADDOMTARENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMTARSAI: TDateTimeField
      FieldName = 'HORADDOMTARSAI'
      Origin = 'DB.HORARIO.HORADDOMTARSAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMNOIENT: TDateTimeField
      FieldName = 'HORADDOMNOIENT'
      Origin = 'DB.HORARIO.HORADDOMNOIENT'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADDOMNOISAI: TDateTimeField
      FieldName = 'HORADDOMNOISAI'
      Origin = 'DB.HORARIO.HORADDOMNOISAI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTOLEXTRA: TDateTimeField
      FieldName = 'HORADTOLEXTRA'
      Origin = 'DB.HORARIO.HORADTOLEXTRA'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateHORADTOLATRAZO: TDateTimeField
      FieldName = 'HORADTOLATRAZO'
      Origin = 'DB.HORARIO.HORADTOLATRAZO'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
  end
end
