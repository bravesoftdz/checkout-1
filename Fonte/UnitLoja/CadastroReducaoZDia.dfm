inherited FormCadastroReducaoZ: TFormCadastroReducaoZ
  Left = 321
  Top = 69
  Caption = 'Cadastro de Redu'#231#245'es Z'
  ClientHeight = 608
  ClientWidth = 883
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 883
    Height = 608
    inherited PanelCabecalho: TPanel
      Width = 881
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 881
        inherited Panel1: TPanel
          Width = 879
          inherited PanelNavigator: TPanel
            Width = 879
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 879
            end
          end
          inherited PanelLeft: TPanel
            Left = 422
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 881
      Height = 534
      inherited PanelBarra: TPanel
        Height = 534
        object Label32: TLabel
          Left = 31
          Top = 154
          Width = 63
          Height = 13
          Caption = 'Nro.Cupons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EvDBNumEdit28: TEvDBNumEdit
          Left = 21
          Top = 168
          Width = 91
          Height = 21
          TabStop = False
          AutoHideCalculator = False
          Color = 12572888
          DataField = 'REDUITOTCUPOM'
          DataSource = DSTemplate
          Decimals = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            46040000424D460400000000000036000000280000001A0000000D0000000100
            1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
            FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
            C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
            C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
            4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
            808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
            FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
            C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
            8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
            C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
            808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
            FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
            C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
            8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
            C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
            808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
            FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
            C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
            8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
            C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
            FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
            C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
            8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
            0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
            808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
            FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
            C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
            8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
            C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
            FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
            C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
            C0C0FFC0C0FFC0C0FF7F}
          ParentFont = False
          TabOrder = 0
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 751
        Height = 534
        inherited Panel5: TPanel
          Width = 751
          Height = 534
          inherited PagePrincipal: TPageControl
            Top = 122
            Width = 751
            Height = 412
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 743
                Height = 339
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'REDUA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMICOD'
                    Width = 56
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUDEMIS'
                    Width = 72
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUN3GRANDETOTAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUN3VENDABRUTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUN3VLRCANC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUN3VLRDESC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REDUN3VENDALIQ'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 743
                inherited PanelBetween: TPanel
                  Width = 349
                  inherited AdvPanel1: TAdvPanel
                    Width = 349
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 349
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 349
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
                Lines.Strings = (
                  'REDUCAOZDIAFORMA')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label48: TLabel
                Left = 23
                Top = 28
                Width = 84
                Height = 13
                Caption = 'Aliquotas Icms'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 118
                Top = 28
                Width = 64
                Height = 13
                Caption = 'Bases Icms'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 213
                Top = 28
                Width = 72
                Height = 13
                Caption = 'Impostos R$'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 23
                Top = 220
                Width = 65
                Height = 13
                Caption = 'Aliq. Outras'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 118
                Top = 220
                Width = 68
                Height = 13
                Caption = 'Base Outras'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 213
                Top = 220
                Width = 85
                Height = 13
                Caption = 'Imp. Outras R$'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 321
                Top = 28
                Width = 59
                Height = 13
                Caption = 'Numer'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label27: TLabel
                Left = 564
                Top = 28
                Width = 35
                Height = 13
                Caption = 'Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label29: TLabel
                Left = 7
                Top = 364
                Width = 86
                Height = 13
                Caption = 'Totais Dig ==>'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 3
                Top = 45
                Width = 14
                Height = 13
                Caption = '01'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 3
                Top = 68
                Width = 14
                Height = 13
                Caption = '02'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 3
                Top = 90
                Width = 14
                Height = 13
                Caption = '03'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 3
                Top = 112
                Width = 14
                Height = 13
                Caption = '04'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 3
                Top = 134
                Width = 14
                Height = 13
                Caption = '05'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 3
                Top = 157
                Width = 14
                Height = 13
                Caption = '06'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 3
                Top = 180
                Width = 14
                Height = 13
                Caption = '07'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 3
                Top = 201
                Width = 14
                Height = 13
                Caption = '08'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 5
                Top = 237
                Width = 10
                Height = 13
                Caption = 'II'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 4
                Top = 260
                Width = 12
                Height = 13
                Caption = 'FF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 3
                Top = 283
                Width = 14
                Height = 13
                Caption = 'NN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 3
                Top = 305
                Width = 14
                Height = 13
                Caption = 'SS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 4
                Top = 329
                Width = 316
                Height = 13
                Caption = '* II=Isento, FF= Subst.Tribut, NN=Nao Incide, SS=ISSQN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 18
                Top = 41
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ1'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 0
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Left = 113
                Top = 41
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE1'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 1
                OnExit = EvDBNumEdit2Exit
              end
              object EvDBNumEdit3: TEvDBNumEdit
                Left = 208
                Top = 41
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO1'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 2
              end
              object EvDBNumEdit4: TEvDBNumEdit
                Left = 18
                Top = 63
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ2'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 3
              end
              object EvDBNumEdit5: TEvDBNumEdit
                Left = 113
                Top = 63
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE2'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 4
                OnExit = EvDBNumEdit5Exit
              end
              object EvDBNumEdit6: TEvDBNumEdit
                Left = 208
                Top = 63
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO2'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 5
              end
              object EvDBNumEdit7: TEvDBNumEdit
                Left = 18
                Top = 85
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ3'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 6
              end
              object EvDBNumEdit8: TEvDBNumEdit
                Left = 113
                Top = 85
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE3'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 7
                OnExit = EvDBNumEdit8Exit
              end
              object EvDBNumEdit9: TEvDBNumEdit
                Left = 208
                Top = 85
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO3'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 8
              end
              object EvDBNumEdit10: TEvDBNumEdit
                Left = 208
                Top = 107
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO4'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 11
              end
              object EvDBNumEdit11: TEvDBNumEdit
                Left = 113
                Top = 107
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE4'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 10
                OnExit = EvDBNumEdit11Exit
              end
              object EvDBNumEdit12: TEvDBNumEdit
                Left = 18
                Top = 107
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ4'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 9
              end
              object EvDBNumEdit13: TEvDBNumEdit
                Left = 208
                Top = 233
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPOI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 26
              end
              object EvDBNumEdit14: TEvDBNumEdit
                Left = 113
                Top = 233
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASEI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 25
                OnExit = EvDBNumEdit14Exit
              end
              object EvDBNumEdit15: TEvDBNumEdit
                Left = 18
                Top = 233
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 24
              end
              object EvDBNumEdit16: TEvDBNumEdit
                Left = 18
                Top = 256
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQF'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 27
              end
              object EvDBNumEdit17: TEvDBNumEdit
                Left = 113
                Top = 256
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASEF'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 28
                OnExit = EvDBNumEdit17Exit
              end
              object EvDBNumEdit18: TEvDBNumEdit
                Left = 208
                Top = 256
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPOF'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 29
              end
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 649
                Height = 24
                Alignment = taLeftJustify
                Caption = 
                  ' Digita'#231#227'o de Aliquotas                            Digita'#231#227'o das' +
                  ' Formas de Pagamento'
                Color = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 43
              end
              object Panel6: TPanel
                Left = 305
                Top = 26
                Width = 7
                Height = 297
                TabOrder = 44
              end
              object DBGrid2: TDBGrid
                Left = 317
                Top = 89
                Width = 329
                Height = 234
                TabStop = False
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLRedNumerario
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines]
                ParentFont = False
                TabOrder = 37
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGridListaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Numerario'
                    Title.Caption = 'Numer'#225'rio'
                    Width = 195
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REFON3VLR'
                    Title.Caption = 'Valor'
                    Width = 98
                    Visible = True
                  end>
              end
              object BTParcNovo: TBitBtn
                Left = 317
                Top = 65
                Width = 50
                Height = 22
                Caption = 'Novo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 36
                OnClick = BTParcNovoClick
              end
              object BtParcGravar: TBitBtn
                Left = 367
                Top = 65
                Width = 50
                Height = 22
                Caption = 'Gravar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 41
                OnClick = BtParcGravarClick
              end
              object BtParcExcluir: TBitBtn
                Left = 417
                Top = 65
                Width = 50
                Height = 22
                Caption = 'Excluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 42
                OnClick = BtParcExcluirClick
              end
              object DBEdit9: TDBEdit
                Left = 317
                Top = 41
                Width = 23
                Height = 21
                DataField = 'NUMEICOD'
                DataSource = DSSQLRedNumerario
                TabOrder = 38
              end
              object EvDBNumEdit21: TEvDBNumEdit
                Left = 560
                Top = 41
                Width = 89
                Height = 21
                AutoHideCalculator = False
                DataField = 'REFON3VLR'
                DataSource = DSSQLRedNumerario
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
                TabOrder = 40
              end
              object ComboNumerario: TRxDBLookupCombo
                Left = 343
                Top = 41
                Width = 214
                Height = 21
                DropDownCount = 8
                DataField = 'Numerario'
                DataSource = DSSQLRedNumerario
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 39
              end
              object Panel7: TPanel
                Left = 2
                Top = 352
                Width = 648
                Height = 6
                Color = 10053171
                TabOrder = 45
              end
              object EvDBNumEdit23: TEvDBNumEdit
                Left = 194
                Top = 361
                Width = 91
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 15461355
                DataField = 'VLRTOTIMPDIG'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 46
              end
              object EvDBNumEdit24: TEvDBNumEdit
                Left = 99
                Top = 361
                Width = 91
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 15461355
                DataField = 'VLRTOTBASEDIG'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 47
              end
              object EvDBNumEdit27: TEvDBNumEdit
                Left = 496
                Top = 361
                Width = 132
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 15461355
                DataField = 'TOTAL'
                DataSource = DSSQLTotal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 48
              end
              object EvDBNumEdit29: TEvDBNumEdit
                Left = 18
                Top = 279
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQN'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 30
              end
              object EvDBNumEdit30: TEvDBNumEdit
                Left = 113
                Top = 279
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASEN'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 31
                OnExit = EvDBNumEdit17Exit
              end
              object EvDBNumEdit31: TEvDBNumEdit
                Left = 208
                Top = 279
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPON'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 32
              end
              object EvDBNumEdit32: TEvDBNumEdit
                Left = 18
                Top = 130
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ5'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 12
              end
              object EvDBNumEdit33: TEvDBNumEdit
                Left = 18
                Top = 152
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ6'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 15
              end
              object EvDBNumEdit34: TEvDBNumEdit
                Left = 113
                Top = 152
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE6'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 16
                OnExit = EvDBNumEdit34Exit
              end
              object EvDBNumEdit35: TEvDBNumEdit
                Left = 113
                Top = 130
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE5'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 13
                OnExit = EvDBNumEdit35Exit
              end
              object EvDBNumEdit36: TEvDBNumEdit
                Left = 208
                Top = 130
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO5'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 14
              end
              object EvDBNumEdit37: TEvDBNumEdit
                Left = 208
                Top = 152
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO6'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 17
              end
              object EvDBNumEdit38: TEvDBNumEdit
                Left = 18
                Top = 175
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ7'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 18
              end
              object EvDBNumEdit39: TEvDBNumEdit
                Left = 18
                Top = 197
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQ8'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 21
              end
              object EvDBNumEdit40: TEvDBNumEdit
                Left = 113
                Top = 175
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE7'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 19
                OnExit = EvDBNumEdit40Exit
              end
              object EvDBNumEdit41: TEvDBNumEdit
                Left = 113
                Top = 197
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASE8'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 22
                OnExit = EvDBNumEdit41Exit
              end
              object EvDBNumEdit42: TEvDBNumEdit
                Left = 208
                Top = 197
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO8'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 23
              end
              object EvDBNumEdit43: TEvDBNumEdit
                Left = 208
                Top = 175
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPO7'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 20
              end
              object EvDBNumEdit44: TEvDBNumEdit
                Left = 18
                Top = 301
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3ALIQS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 33
              end
              object EvDBNumEdit45: TEvDBNumEdit
                Left = 113
                Top = 301
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3BASES'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 34
                OnExit = EvDBNumEdit17Exit
              end
              object EvDBNumEdit46: TEvDBNumEdit
                Left = 208
                Top = 301
                Width = 91
                Height = 21
                AutoHideCalculator = False
                DataField = 'REDUN3IMPOS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  46040000424D460400000000000036000000280000001A0000000D0000000100
                  1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                  4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                  808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                  C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                  0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                  808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                  FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                  C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                  8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                  C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                  FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                  C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                  C0C0FFC0C0FFC0C0FF7F}
                ParentFont = False
                TabOrder = 35
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 116
            Width = 751
            Height = 6
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 751
            Height = 116
            object Label1: TLabel
              Left = 8
              Top = 3
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label77: TLabel
              Left = 98
              Top = 3
              Width = 131
              Height = 13
              Caption = 'Data da Movimenta'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 242
              Top = 3
              Width = 101
              Height = 13
              Caption = 'Terminal de Caixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 40
              Width = 63
              Height = 13
              Caption = 'Cont.Inicial'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 7
              Top = 77
              Width = 55
              Height = 13
              Caption = 'Cont.Final'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 87
              Top = 40
              Width = 84
              Height = 13
              Caption = 'Cont.Redu'#231#245'es'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 86
              Top = 77
              Width = 73
              Height = 13
              Caption = 'Cont.Reinicio'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 183
              Top = 77
              Width = 69
              Height = 13
              Caption = 'Venda Bruta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 184
              Top = 40
              Width = 59
              Height = 13
              Caption = 'GT- TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 404
              Top = 40
              Width = 109
              Height = 13
              Caption = 'Tot.Cancelamentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 403
              Top = 77
              Width = 75
              Height = 13
              Caption = 'Tot.Desconto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 529
              Top = 40
              Width = 96
              Height = 13
              Caption = 'Tot.Venda Liquid.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 308
              Top = 40
              Width = 62
              Height = 13
              Caption = 'Canc. ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 307
              Top = 77
              Width = 67
              Height = 13
              Caption = 'Canc. ISSQN'
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
              Width = 76
              Height = 21
              DataField = 'REDUA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBDateEdit8: TDBDateEdit
              Left = 95
              Top = 17
              Width = 137
              Height = 21
              DataField = 'REDUDEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 4
              Top = 54
              Width = 76
              Height = 21
              DataField = 'REDUICONTINICIAL'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 4
              Top = 91
              Width = 76
              Height = 21
              DataField = 'REDUICONTFINAL'
              DataSource = DSTemplate
              TabOrder = 4
              OnExit = DBEdit3Exit
            end
            object DBEdit4: TDBEdit
              Left = 84
              Top = 54
              Width = 91
              Height = 21
              DataField = 'REDUICONTREDUZ'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object DBEdit5: TDBEdit
              Left = 84
              Top = 91
              Width = 91
              Height = 21
              DataField = 'REDUICONTREINICIO'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object EvDBNumEdit19: TEvDBNumEdit
              Left = 179
              Top = 91
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3VENDABRUTA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 8
              OnExit = EvDBNumEdit19Exit
            end
            object EvDBNumEdit20: TEvDBNumEdit
              Left = 179
              Top = 54
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3GRANDETOTAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 7
            end
            object ComboTerminal: TRxDBLookupCombo
              Left = 238
              Top = 17
              Width = 245
              Height = 21
              DropDownCount = 8
              DataField = 'TERMICOD'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'TERMICOD'
              LookupDisplay = 'TERMA60DESCR'
              LookupSource = DSSQLTerminal
              ParentFont = False
              TabOrder = 2
            end
            object EvDBNumEdit22: TEvDBNumEdit
              Left = 399
              Top = 54
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3VLRCANC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 11
              OnEnter = EvDBNumEdit22Enter
              OnExit = EvDBNumEdit19Exit
            end
            object EvDBNumEdit25: TEvDBNumEdit
              Left = 399
              Top = 91
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3VLRDESC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 12
              OnExit = EvDBNumEdit19Exit
            end
            object EvDBNumEdit26: TEvDBNumEdit
              Left = 524
              Top = 54
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3VENDALIQ'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 13
            end
            object DBCheckBox1: TDBCheckBox
              Left = 525
              Top = 93
              Width = 162
              Height = 17
              Caption = 'Enviado para Tesouraria'
              DataField = 'REDUCENVIADOTES'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object EvDBNumEdit47: TEvDBNumEdit
              Left = 303
              Top = 54
              Width = 91
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3CANCELICMS'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 9
            end
            object EvDBNumEdit48: TEvDBNumEdit
              Left = 303
              Top = 91
              Width = 91
              Height = 21
              AutoHideCalculator = False
              DataField = 'REDUN3CANCELISS'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C0FF7F}
              ParentFont = False
              TabOrder = 10
              OnExit = EvDBNumEdit19Exit
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnEnviaMovtoAtualpTesouraria: TMenuItem
      Caption = 'Envia Movimento Atual para Tesouraria'
      OnClick = MnEnviaMovtoAtualpTesourariaClick
    end
    object RecalculaSpedC420Impostos1: TMenuItem
      Caption = 'Recalcula Sped C420 Impostos'
      OnClick = RecalculaSpedC420Impostos1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From ReducaoZDia Where (%MFiltro)')
    object SQLTemplateREDUA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Movimento'
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIA.REDUA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.REDUCAOZDIA.EMPRICOD'
    end
    object SQLTemplateREDUICOD: TIntegerField
      Tag = 1
      FieldName = 'REDUICOD'
      Origin = 'DB.REDUCAOZDIA.REDUICOD'
    end
    object SQLTemplateECFA13ID: TStringField
      DisplayLabel = 'ID.ECF'
      FieldName = 'ECFA13ID'
      Origin = 'DB.REDUCAOZDIA.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
      OnChange = SQLTemplateTERMICODChange
    end
    object SQLTemplateREDUDEMIS: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateREDUN3VENDABRUTA: TBCDField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3GRANDETOTAL: TBCDField
      DisplayLabel = 'Grande Total'
      FieldName = 'REDUN3GRANDETOTAL'
      Origin = 'DB.REDUCAOZDIA.REDUN3GRANDETOTAL'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3VLRCANC: TBCDField
      DisplayLabel = 'Tot.Canc.'
      FieldName = 'REDUN3VLRCANC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRCANC'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUICONTINICIAL: TIntegerField
      FieldName = 'REDUICONTINICIAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTINICIAL'
    end
    object SQLTemplateREDUICONTFINAL: TIntegerField
      FieldName = 'REDUICONTFINAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTFINAL'
    end
    object SQLTemplateREDUICONTREDUZ: TIntegerField
      FieldName = 'REDUICONTREDUZ'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREDUZ'
    end
    object SQLTemplateREDUICONTREINICIO: TIntegerField
      FieldName = 'REDUICONTREINICIO'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREINICIO'
    end
    object SQLTemplateREDUN3ALIQ1: TBCDField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE1: TBCDField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO1: TBCDField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ2: TBCDField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE2: TBCDField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO2: TBCDField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ3: TBCDField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE3: TBCDField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO3: TBCDField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ4: TBCDField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE4: TBCDField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO4: TBCDField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ5: TBCDField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE5: TBCDField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO5: TBCDField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ6: TBCDField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE6: TBCDField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO6: TBCDField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVLRTOTBASEDIG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLRTOTBASEDIG'
      Calculated = True
    end
    object SQLTemplateVLRTOTIMPDIG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLRTOTIMPDIG'
      Calculated = True
    end
    object SQLTemplateREDUN3VLRDESC: TBCDField
      DisplayLabel = 'Tot.Desc'
      FieldName = 'REDUN3VLRDESC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3VENDALIQ: TBCDField
      DisplayLabel = 'Venda Liq.'
      FieldName = 'REDUN3VENDALIQ'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDALIQ'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUITOTCUPOM: TIntegerField
      FieldName = 'REDUITOTCUPOM'
      Origin = 'DB.REDUCAOZDIA.REDUITOTCUPOM'
    end
    object SQLTemplateREDUCENVIADOTES: TStringField
      FieldName = 'REDUCENVIADOTES'
      Origin = 'DB.REDUCAOZDIA.REDUCENVIADOTES'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREDUN3ALIQ7: TBCDField
      FieldName = 'REDUN3ALIQ7'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ7'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE7: TBCDField
      FieldName = 'REDUN3BASE7'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE7'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO7: TBCDField
      FieldName = 'REDUN3IMPO7'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO7'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQ8: TBCDField
      FieldName = 'REDUN3ALIQ8'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ8'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASE8: TBCDField
      FieldName = 'REDUN3BASE8'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE8'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPO8: TBCDField
      FieldName = 'REDUN3IMPO8'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO8'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQF: TBCDField
      FieldName = 'REDUN3ALIQF'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQF'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASEF: TBCDField
      FieldName = 'REDUN3BASEF'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEF'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPOF: TBCDField
      FieldName = 'REDUN3IMPOF'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOF'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQI: TBCDField
      FieldName = 'REDUN3ALIQI'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQI'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASEI: TBCDField
      FieldName = 'REDUN3BASEI'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEI'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPOI: TBCDField
      FieldName = 'REDUN3IMPOI'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOI'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQN: TBCDField
      FieldName = 'REDUN3ALIQN'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQN'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASEN: TBCDField
      FieldName = 'REDUN3BASEN'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEN'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPON: TBCDField
      FieldName = 'REDUN3IMPON'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPON'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3ALIQS: TBCDField
      FieldName = 'REDUN3ALIQS'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3BASES: TBCDField
      FieldName = 'REDUN3BASES'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASES'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3IMPOS: TBCDField
      FieldName = 'REDUN3IMPOS'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3CANCELICMS: TBCDField
      FieldName = 'REDUN3CANCELICMS'
      Origin = 'DB.REDUCAOZDIA.REDUN3CANCELICMS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateREDUN3CANCELISS: TBCDField
      FieldName = 'REDUN3CANCELISS'
      Origin = 'DB.REDUCAOZDIA.REDUN3CANCELISS'
      Precision = 15
      Size = 3
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM NUMERARIO'
      'ORDER BY NUMEA30DESCR')
    Macros = <>
    Left = 48
    Top = 426
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLNumerario: TDataSource
    AutoEdit = False
    DataSet = SQLNumerario
    Left = 20
    Top = 426
  end
  object SQLRedNumerario: TRxQuery
    Tag = 3
    AfterOpen = SQLRedNumerarioAfterOpen
    OnNewRecord = SQLRedNumerarioNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'REDUCAOZDIAFORMA'
      'Where'
      'REDUA13ID = :REDUA13ID'
      'order by'
      'NUMEICOD')
    Macros = <>
    Left = 48
    Top = 397
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'REDUA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRedNumerarioREDUA13ID: TStringField
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIAFORMA.REDUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRedNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.REDUCAOZDIAFORMA.NUMEICOD'
    end
    object SQLRedNumerarioREFON3VLR: TBCDField
      FieldName = 'REFON3VLR'
      Origin = 'DB.REDUCAOZDIAFORMA.REFON3VLR'
      Precision = 15
      Size = 3
    end
    object SQLRedNumerarioNumerario: TStringField
      FieldKind = fkLookup
      FieldName = 'Numerario'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
  end
  object DSSQLRedNumerario: TDataSource
    DataSet = SQLRedNumerario
    Left = 20
    Top = 397
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'order by TERMA60DESCR')
    Macros = <>
    Left = 486
    Top = 1
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 514
    Top = 1
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  SUM(REFON3VLR) AS TOTAL'
      'FROM'
      '  REDUCAOZDIAFORMA'
      'WHERE'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 465
    object SQLTotalTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'DB.REDUCAOZDIAFORMA.REFON3VLR'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLTotal: TDataSource
    DataSet = SQLTotal
    Left = 19
    Top = 465
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED - MOVIMENTOCAIXA.MVCXN2VLRDEB' +
        ') as Saldo'
      'from'
      '  MOVIMENTOCAIXA, NUMERARIO'
      'where'
      '  MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICOD and'
      '  (%MEmpresa)'
      '  and'
      '  (%MData)'
      '  and'
      '  (%MTerminal)'
      'group by'
      '  MOVIMENTOCAIXA.NUMEICOD, NUMERARIO.NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 367
    object SQLTotaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLTotaNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTotaNumerarioSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object zPesquisa: TZQuery
    Connection = DM.zdb
    CachedUpdates = False
    RequestLive = False
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 24
    Top = 289
  end
  object zPesquisa1: TZQuery
    Connection = DM.zdb
    CachedUpdates = False
    RequestLive = False
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 55
    Top = 289
  end
end
