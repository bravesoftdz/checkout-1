inherited FormGeraTarefa: TFormGeraTarefa
  Left = 194
  Top = 112
  Caption = 'FormGeraTarefa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 145
            Height = 303
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 230
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object PanelSolucao: TPanel
                Left = 0
                Top = 108
                Width = 650
                Height = 108
                Color = 15461355
                TabOrder = 0
                object Label4: TLabel
                  Left = 3
                  Top = 1
                  Width = 40
                  Height = 13
                  Caption = 'Tarefa:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object MemoSolucao: TDBMemo
                  Left = 3
                  Top = 14
                  Width = 643
                  Height = 90
                  DataField = 'HELPTSOLUCAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
              object PanelSolicitacao: TPanel
                Left = 0
                Top = 0
                Width = 650
                Height = 108
                Color = 15461355
                TabOrder = 1
                object Label3: TLabel
                  Left = 3
                  Top = 1
                  Width = 57
                  Height = 13
                  Caption = 'Problema:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object MemoProblema: TDBMemo
                  Left = 3
                  Top = 14
                  Width = 643
                  Height = 90
                  DataField = 'HELPTSOLICITACAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 89
            Height = 56
            object Label5: TLabel
              Left = 8
              Top = 5
              Width = 60
              Height = 13
              Caption = 'Atendente'
              FocusControl = EditContato
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboProduto: TRxDBLookupCombo
              Left = 7
              Top = 21
              Width = 284
              Height = 22
              DropDownCount = 8
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              LookupField = 'PRODICOD'
              LookupDisplay = 'PRODA60DESCR'
              TabOrder = 0
            end
            object CheckBox1: TCheckBox
              Left = 336
              Top = 24
              Width = 97
              Height = 17
              Caption = 'Enviar E-mail'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 89
            object Label1: TLabel
              Left = 6
              Top = 3
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 7
              Top = 45
              Width = 55
              Height = 13
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 142
              Top = 45
              Width = 41
              Height = 13
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 286
              Top = 45
              Width = 18
              Height = 13
              Caption = 'RS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 411
              Top = 45
              Width = 38
              Height = 13
              Caption = 'E-mail:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 412
              Top = 2
              Width = 45
              Height = 13
              Caption = 'Contato'
              FocusControl = EditContato
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 18
              Width = 403
              Height = 21
              DataField = 'CLIEA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 64
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 142
              Top = 64
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 280
              Top = 64
              Width = 57
              Height = 21
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 408
              Top = 64
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object EditContato: TDBEdit
              Left = 412
              Top = 18
              Width = 243
              Height = 21
              DataField = 'HELPCCONTATO'
              DataSource = DSTemplate
              TabOrder = 5
            end
          end
        end
      end
    end
  end
end
