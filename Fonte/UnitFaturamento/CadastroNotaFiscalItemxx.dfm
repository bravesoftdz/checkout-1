inherited FormCadastroNotaFiscalItem: TFormCadastroNotaFiscalItem
  Left = 188
  Top = 171
  Caption = 'Lan'#231'amento de Itens'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 181
            Height = 268
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 195
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NFITIITEM'
                    Title.Caption = 'Item'
                    Width = 36
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Width = 244
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRUNIT'
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN3QUANT'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItemCalc'
                    Title.Caption = 'Total Item'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCDESC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRDESC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2BASEICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCSUBS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2BASESUBS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRSUBS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCIPI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRIPI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCISSQN'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRISSQN'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCCOMIS'
                    Visible = True
                  end>
              end
              inherited MemoDetalhes: TMemo
                Left = 13
                Top = 111
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label10: TLabel
                Left = 1
                Top = 3
                Width = 27
                Height = 13
                Caption = 'Qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 187
                Top = 3
                Width = 77
                Height = 13
                Caption = 'Valor Unit'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 280
                Top = 3
                Width = 69
                Height = 13
                Caption = '% Desconto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 373
                Top = 3
                Width = 85
                Height = 13
                Caption = 'Valor Desconto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 94
                Top = 3
                Width = 68
                Height = 13
                Caption = 'Qtde Pedido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 466
                Top = 3
                Width = 70
                Height = 13
                Caption = '% Comiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 3
                Top = 152
                Width = 173
                Height = 13
                Caption = 'Observa'#231#245'es Complementares'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label27: TLabel
                Left = 559
                Top = 3
                Width = 60
                Height = 13
                Caption = 'Total Item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelLote: TLabel
                Left = 379
                Top = 151
                Width = 50
                Height = 13
                Caption = 'Nro. Lote'
                FocusControl = DBEditLote
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label50: TLabel
                Left = 5
                Top = 191
                Width = 313
                Height = 13
                Caption = 'CFOP Complementar para os casos de exig'#234'ncias fiscais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit9: TEvDBNumEdit
                Left = 1
                Top = 19
                Width = 90
                Height = 21
                DataField = 'NFITN3QUANTVEND'
                DataSource = DSTemplate
                Decimals = 3
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 0
              end
              object DBEdit10: TEvDBNumEdit
                Left = 187
                Top = 19
                Width = 90
                Height = 21
                DataField = 'NFITN2VLRUNIT'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 2
              end
              object DBEdit12: TEvDBNumEdit
                Left = 280
                Top = 19
                Width = 90
                Height = 21
                DataField = 'NFITN2PERCDESC'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 3
              end
              object DBEdit13: TEvDBNumEdit
                Left = 373
                Top = 19
                Width = 90
                Height = 21
                DataField = 'NFITN2VLRDESC'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 4
              end
              object DBEdit26: TEvDBNumEdit
                Left = 94
                Top = 19
                Width = 90
                Height = 21
                TabStop = False
                Color = 12572888
                DataField = 'NFITN3TOTVEND'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ReadOnly = True
                ShowButton = False
                ShowSeparator = True
                TabOrder = 1
              end
              object EvDBNumEdit4: TEvDBNumEdit
                Left = 466
                Top = 19
                Width = 90
                Height = 21
                DataField = 'NFITN2PERCCOMIS'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 5
              end
              object DBEdit3: TDBEdit
                Left = 1
                Top = 166
                Width = 376
                Height = 21
                DataField = 'NFITA254OBS'
                DataSource = DSTemplate
                TabOrder = 8
                OnExit = DBEditLoteExit
              end
              object GroupBox1: TGroupBox
                Left = 1
                Top = 44
                Width = 647
                Height = 103
                Caption = 'Impostos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object Label14: TLabel
                  Left = 10
                  Top = 16
                  Width = 45
                  Height = 13
                  Caption = '% ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 196
                  Top = 16
                  Width = 88
                  Height = 13
                  Caption = 'Base Calc. ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 289
                  Top = 16
                  Width = 61
                  Height = 13
                  Caption = 'Valor ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 4
                  Top = 58
                  Width = 86
                  Height = 13
                  Caption = '% Substitui'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 97
                  Top = 58
                  Width = 89
                  Height = 13
                  Caption = 'Base Calc. Subs.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 190
                  Top = 58
                  Width = 62
                  Height = 13
                  Caption = 'Valor Subs.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 382
                  Top = 16
                  Width = 33
                  Height = 13
                  Caption = '% IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 475
                  Top = 16
                  Width = 49
                  Height = 13
                  Caption = 'Valor IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 283
                  Top = 58
                  Width = 50
                  Height = 13
                  Caption = '% ISSQN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 376
                  Top = 58
                  Width = 66
                  Height = 13
                  Caption = 'Valor ISSQN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 103
                  Top = 16
                  Width = 65
                  Height = 13
                  Caption = '% Redu'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit14: TEvDBNumEdit
                  Left = 8
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2PERCICMS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 0
                end
                object DBEdit15: TEvDBNumEdit
                  Left = 194
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2BASEICMS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 2
                end
                object DBEdit16: TEvDBNumEdit
                  Left = 287
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2VLRICMS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 3
                end
                object DBEdit17: TEvDBNumEdit
                  Left = 4
                  Top = 74
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2PERCSUBS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 6
                end
                object DBEdit18: TEvDBNumEdit
                  Left = 97
                  Top = 74
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2BASESUBS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 7
                end
                object DBEdit19: TEvDBNumEdit
                  Left = 190
                  Top = 74
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2VLRSUBS'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 8
                end
                object DBEdit20: TEvDBNumEdit
                  Left = 380
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2PERCIPI'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 4
                end
                object DBEdit21: TEvDBNumEdit
                  Left = 473
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2VLRIPI'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 5
                end
                object DBEdit22: TEvDBNumEdit
                  Left = 283
                  Top = 74
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2PERCISSQN'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 9
                end
                object DBEdit23: TEvDBNumEdit
                  Left = 376
                  Top = 74
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2VLRISSQN'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 10
                end
                object EvDBNumEdit5: TEvDBNumEdit
                  Left = 101
                  Top = 30
                  Width = 90
                  Height = 21
                  DataField = 'NFITN2PERCREDUCAO'
                  DataSource = DSTemplate
                  Decimals = 2
                  EnabledBtn = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  ShowButton = False
                  ShowSeparator = True
                  TabOrder = 1
                end
              end
              object DBEdit27: TEvDBNumEdit
                Left = 559
                Top = 19
                Width = 90
                Height = 21
                TabStop = False
                Color = 12572888
                DataField = 'TotalItemCalc'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ReadOnly = True
                ShowButton = False
                ShowSeparator = True
                TabOrder = 6
              end
              object DBEditLote: TDBEdit
                Left = 379
                Top = 165
                Width = 267
                Height = 21
                DataField = 'LOTEA30NRO'
                DataSource = DSTemplate
                TabOrder = 9
                OnExit = DBEditLoteExit
              end
              object ComboCFOP: TRxDBLookupCombo
                Left = 3
                Top = 204
                Width = 642
                Height = 20
                DropDownCount = 8
                DisplayAllFields = True
                Ctl3D = False
                DataField = 'CFOPA5CODAUX'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                ParentCtl3D = False
                TabOrder = 10
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 64
            object Label7: TLabel
              Left = 9
              Top = 6
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 43
              Top = 6
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 104
              Top = 6
              Width = 76
              Height = 13
              Caption = 'Data Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 310
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Vlr Tot.Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 396
              Top = 6
              Width = 67
              Height = 13
              Caption = 'Vlr Tot.Desc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 569
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Vlr Tot.Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 207
              Top = 6
              Width = 37
              Height = 13
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label47: TLabel
              Left = 482
              Top = 6
              Width = 81
              Height = 13
              Caption = 'Vlr Desc. Prom'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 9
              Top = 19
              Width = 29
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'SERIA5COD'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 40
              Top = 19
              Width = 58
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'NOFIINUMERO'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 1
            end
            object DBDateEdit1: TDBDateEdit
              Left = 100
              Top = 19
              Width = 102
              Height = 21
              TabStop = False
              DataField = 'NOFIDEMIS'
              DataSource = DSMasterTemplate
              ReadOnly = True
              Color = 12572888
              Enabled = False
              NumGlyphs = 2
              TabOrder = 2
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 204
              Top = 19
              Width = 101
              Height = 21
              Style = csDropDownList
              Color = 12572888
              DataField = 'NOFICSTATUS'
              DataSource = DSMasterTemplate
              Enabled = False
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberta'
                'Encerrada'
                'Cancelada')
              ReadOnly = True
              TabOrder = 3
              TabStop = False
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 307
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'NOFIN2VLRPRODUTO'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 4
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 393
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'NOFIN2VLRDESC'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 5
            end
            object EvDBNumEdit3: TEvDBNumEdit
              Left = 565
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'NOFIN2VLRNOTA'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 6
            end
            object EvDBNumEdit7: TEvDBNumEdit
              Left = 479
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              Color = 12572888
              DataField = 'NOFIN2VLRDESCPROM'
              DataSource = DSMasterTemplate
              Decimals = 2
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ReadOnly = True
              ShowButton = False
              ShowSeparator = True
              TabOrder = 7
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 64
            Height = 117
            AutoSize = True
            object Label9: TLabel
              Left = 8
              Top = 0
              Width = 346
              Height = 16
              Caption = 'Digite o C'#243'digo ou a Descri'#231#227'o do Produto desejado...'
              FocusControl = EditProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 359
              Top = 15
              Width = 24
              Height = 22
              Hint = 'Acessa Produtos'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnProdutoClick
            end
            object Label28: TLabel
              Left = 8
              Top = 40
              Width = 116
              Height = 13
              Caption = 'Produto Selecionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 43
              Top = 83
              Width = 64
              Height = 13
              Caption = 'C'#243'd. Antigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 148
              Top = 83
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label34: TLabel
              Left = 7
              Top = 83
              Width = 15
              Height = 13
              Caption = 'UN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LSaldo: TLabel
              Left = 571
              Top = 83
              Width = 78
              Height = 13
              Caption = 'Estoque Atual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SaldoAtual: TLabel
              Left = 636
              Top = 96
              Width = 10
              Height = 19
              Alignment = taRightJustify
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit11: TDBEdit
              Left = 4
              Top = 53
              Width = 645
              Height = 29
              TabStop = False
              BevelOuter = bvRaised
              Color = 12572888
              Ctl3D = True
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditProduto: TEdit
              Left = 4
              Top = 16
              Width = 352
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnEnter = EditProdutoEnter
              OnExit = EditProdutoExit
              OnKeyDown = EditProdutoKeyDown
            end
            object RadioPesquisa: TRadioGroup
              Left = 388
              Top = 0
              Width = 261
              Height = 38
              Caption = ' &Pesquisar por '
              Columns = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                'Cd.Red'
                'Cd.Antigo'
                'Refer'#234'ncia')
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 40
              Top = 96
              Width = 101
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 12572888
              Ctl3D = True
              DataField = 'CodAntigoLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 145
              Top = 96
              Width = 115
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 12572888
              Ctl3D = True
              DataField = 'ReferenciaLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 4
              Top = 96
              Width = 32
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 12572888
              Ctl3D = True
              DataField = 'UnidadeLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnNFImportarProdutosdoColetor: TMenuItem
      Caption = 'Importar Produtos do Coletor'
      OnClick = MnNFImportarProdutosdoColetorClick
    end
    object btnNmerosdeSerie: TMenuItem
      Caption = 'N'#250'mero(s) de S'#233'rie'
      OnClick = btnNmerosdeSerieClick
    end
    object MnImportarProdutosdeOutraNotaFiscal: TMenuItem
      Caption = 'Importar Produtos de Outra Nota Fiscal'
      OnClick = MnImportarProdutosdeOutraNotaFiscalClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterDelete = SQLTemplateAfterDelete
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From NOTAFISCALITEM Where '
      'NOFIA13ID=:NOFIA13ID AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateNOFIA13ID: TStringField
      Tag = 1
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALITEM.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNFITIITEM: TIntegerField
      Tag = 1
      FieldName = 'NFITIITEM'
      Origin = 'DB.NOTAFISCALITEM.NFITIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTAFISCALITEM.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplateNFITN3QUANT: TBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'NFITN3QUANT'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANT'
      OnChange = SQLTemplateNFITN3QUANTChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRUNIT: TBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
      OnChange = SQLTemplateNFITN2VLRUNITChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2PERCDESC: TBCDField
      DisplayLabel = '% Desconto'
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
      OnChange = SQLTemplateNFITN2PERCDESCChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRDESC: TBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
      OnChange = SQLTemplateNFITN2VLRDESCChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRICMS: TBCDField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNFITN2PERCICMS: TBCDField
      DisplayLabel = '% ICMS'
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
      OnChange = SQLTemplateNFITN2PERCICMSChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2BASEICMS: TBCDField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2PERCSUBS: TBCDField
      DisplayLabel = '% Substitui'#231#227'o'
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
      OnChange = SQLTemplateNFITN2PERCSUBSChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2BASESUBS: TBCDField
      DisplayLabel = 'Base Calc. Subs.'
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRSUBS: TBCDField
      DisplayLabel = 'Valor Substitui'#231#227'o'
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2PERCIPI: TBCDField
      DisplayLabel = '% IPI'
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
      OnChange = SQLTemplateNFITN2PERCIPIChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRIPI: TBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
      OnChange = SQLTemplateNFITN2VLRIPIChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2PERCISSQN: TBCDField
      DisplayLabel = '% ISSQN'
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
      Precision = 15
      Size = 2
    end
    object SQLTemplateNFITN2VLRISSQN: TBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRFRETE: TBCDField
      DisplayLabel = 'Valor Frete'
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNFITN2VLRLUCRO: TBCDField
      DisplayLabel = 'Valor Lucro'
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCALITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCALITEM.REGISTRO'
    end
    object SQLTemplateAgrupGradeLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AgrupGradeLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateGradeCodLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradeCodLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateProdutoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTotalItemCalc: TBCDField
      FieldKind = fkCalculated
      FieldName = 'TotalItemCalc'
      Size = 3
      Calculated = True
    end
    object SQLTemplateReferenciaLookUp: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateNFITN3QUANTVEND: TBCDField
      DisplayLabel = 'Qtde Vendida'
      FieldName = 'NFITN3QUANTVEND'
      Size = 3
    end
    object SQLTemplateNFITN3TOTVEND: TBCDField
      DisplayLabel = 'Qtde Pedido'
      FieldName = 'NFITN3TOTVEND'
      Size = 3
    end
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object SQLTemplatePVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
    end
    object SQLTemplateNFITN2PERCREDUCAO: TBCDField
      FieldName = 'NFITN2PERCREDUCAO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCREDUCAO'
      OnChange = SQLTemplateNFITN2PERCREDUCAOChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateServicoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ServicoLookUp'
      Size = 1
      Calculated = True
    end
    object SQLTemplatePesoBrutoLookUp: TBCDField
      FieldKind = fkCalculated
      FieldName = 'PesoBrutoLookUp'
      Size = 3
      Calculated = True
    end
    object SQLTemplatePesoLiquidoLookUp: TBCDField
      FieldKind = fkCalculated
      FieldName = 'PesoLiquidoLookUp'
      Size = 3
      Calculated = True
    end
    object SQLTemplateNFITN2PERCCOMIS: TBCDField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateValorCompraLookUp: TBCDField
      FieldKind = fkCalculated
      FieldName = 'ValorCompraLookUp'
      Size = 3
      Calculated = True
    end
    object SQLTemplateCPITICPOS: TIntegerField
      FieldName = 'CPITICPOS'
      Origin = 'DB.NOTAFISCALITEM.CPITICPOS'
    end
    object SQLTemplateCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCALITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTAFISCALITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNFITA254OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es Complementares'
      FieldName = 'NFITA254OBS'
      Origin = 'DB.NOTAFISCALITEM.NFITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCodAntigoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodAntigoLookup'
      Visible = False
      Size = 15
      Calculated = True
    end
    object SQLTemplateControlaSerieLookup: TStringField
      DisplayLabel = 'Controla S'#233'rie'
      FieldKind = fkCalculated
      FieldName = 'ControlaSerieLookup'
      Size = 1
      Calculated = True
    end
    object SQLTemplateUnidadeLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnidadeLookup'
      Size = 5
      Calculated = True
    end
    object SQLTemplateCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTAFISCALITEM.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
  end
  object SQLAtualizaItemPedido: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Update '
      '  PEDIDOVENDAITEM'
      'set '
      '  PVITN3QUANTVEND = PVITN3QUANTVEND - :QtdePed + :NovaQtdePed'
      'Where'
      '  PDVDA13ID=:PDVDA13ID and'
      '  PVITIITEM=:PVITIITEM'
      ' '
      '')
    Macros = <>
    Left = 8
    Top = 226
    ParamData = <
      item
        DataType = ftBCD
        Name = 'QtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftBCD
        Name = 'NovaQtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftUnknown
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PVITIITEM'
        ParamType = ptUnknown
      end>
  end
  object SQLIcmsUF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMSUF'
      'Where '
      '  ICMUA2UF =:ICMUA2UF')
    Macros = <>
    Left = 8
    Top = 194
    ParamData = <
      item
        DataType = ftString
        Name = 'ICMUA2UF'
        ParamType = ptUnknown
      end>
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMS'
      'Where ICMSICOD= :ICMSICOD')
    Macros = <>
    Left = 8
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ICMSICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 8
    Top = 256
  end
  object SQLNumeroItens: TQuery
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'Select COUNT(*) from NOTAFISCALITEM '
      'Where NOFIA13ID = :NOFIA13ID ')
    Left = 438
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 65
    Top = 402
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From CFOP'
      'ORDER BY'
      'CFOPA5COD')
    Macros = <>
    Left = 37
    Top = 402
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      Origin = 'DB.CFOP.CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CFOP.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CFOP.REGISTRO'
    end
  end
end
