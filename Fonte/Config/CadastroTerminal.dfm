inherited FormCadastroTerminais: TFormCadastroTerminais
  Left = 348
  Top = 2
  Caption = 'Cadastro de Terminais'
  ClientHeight = 706
  ClientWidth = 1366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1366
    Height = 706
    inherited PanelCabecalho: TPanel
      Width = 1364
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 1364
        inherited Panel1: TPanel
          Width = 1362
          inherited PanelNavigator: TPanel
            Width = 1362
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 1362
            end
          end
          inherited PanelLeft: TPanel
            Left = 905
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1364
      Height = 632
      inherited PanelBarra: TPanel
        Height = 632
        inherited Button3: TRxSpeedButton
          Tag = 4
          Caption = '&3 Impress'#245'es'
          Visible = True
          OnClick = Button3Click
        end
        object Button4: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 86
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 TEF, Teclado'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button3Click
        end
        object Button5: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 110
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Imp Cheques'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 1234
        Height = 632
        inherited Panel5: TPanel
          Width = 1234
          Height = 632
          inherited PagePrincipal: TPageControl
            Top = 54
            Width = 1234
            Height = 578
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 1226
                Height = 505
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TERMICOD'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCTIPO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCSTATUSCAIXA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMDSTATUSCAIXA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCMOVESTOQUE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCUSAVENDEDOR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCUSALIMITECRED'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA255MSGTELA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPCARNE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPPEDIDO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPORCAMEN'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPNF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPAUTENTIC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPCHEQUE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA60IMPTCKAFCX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCUSAMOEDA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCIMPRIMECHEQUE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCCONFIMPCARNE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCIMPCONFDIVIDA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCINFDADOSCLICP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCIMPIDCUPOM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA255MSGCARNE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCIMPBARRASPED'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCINFDADOCLIPAD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMINRODECQUANT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRESALOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIENTELOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLANORECTOLOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDEDORLOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPONUMEVISTALOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPONUMEPRAZOLOOKUP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMINUMEVISTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMINUMEPRAZO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USUAICODATIVO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCATIVO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA30ECFMODELO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMA5ECFPORTACOM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCECFIMPRCLIE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCECFIMPRVEND'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMCECFIMPRCONFDIV'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 1226
                inherited PanelBetween: TPanel
                  Width = 832
                  inherited AdvPanel1: TAdvPanel
                    Width = 832
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 832
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 832
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
              object Label6: TLabel
                Left = 4
                Top = 0
                Width = 49
                Height = 13
                Caption = 'Empresa'
                FocusControl = DBEditEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaEmpresa: TSpeedButton
                Left = 88
                Top = 12
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = RetornaEmpresaClick
              end
              object Label7: TLabel
                Left = 477
                Top = -1
                Width = 94
                Height = 13
                Caption = 'Tipo de Terminal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 5
                Top = 70
                Width = 82
                Height = 13
                Caption = 'Cliente Padr'#227'o'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 3
                Top = 105
                Width = 97
                Height = 13
                Caption = 'Vendedor Padr'#227'o'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 257
                Top = 105
                Width = 74
                Height = 13
                Caption = 'Plano Padr'#227'o'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButtonCliente: TSpeedButton
                Left = 88
                Top = 82
                Width = 21
                Height = 21
                Hint = 'Acessa Clientes'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = SpeedButtonClienteClick
              end
              object SpeedButtonVendedor: TSpeedButton
                Left = 88
                Top = 117
                Width = 21
                Height = 21
                Hint = 'Acessa Vendedores'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = SpeedButtonVendedorClick
              end
              object SpeedButtonPlanoRecto: TSpeedButton
                Left = 333
                Top = 117
                Width = 21
                Height = 21
                Hint = 'Acessa Planos de Recebimento'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = SpeedButtonPlanoRectoClick
              end
              object Label22: TLabel
                Left = 477
                Top = 69
                Width = 81
                Height = 13
                Caption = 'Decimais Qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 5
                Top = 35
                Width = 19
                Height = 13
                Caption = 'ECF'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaECF: TSpeedButton
                Left = 88
                Top = 47
                Width = 21
                Height = 21
                Hint = 'Acessa Ecf'#180's'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = RetornaECFClick
              end
              object Label34: TLabel
                Left = 477
                Top = 34
                Width = 53
                Height = 13
                Caption = 'Porta ECF'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 477
                Top = 105
                Width = 88
                Height = 13
                Caption = 'Qtd Padrao PDV'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 572
                Top = 69
                Width = 86
                Height = 13
                Caption = 'Decimais R$ un'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 338
                Top = 35
                Width = 73
                Height = 13
                Caption = 'ECF Nro Serie'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 571
                Top = 34
                Width = 83
                Height = 13
                Caption = 'Velocidade ECF'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 6
                Top = 434
                Width = 126
                Height = 13
                Caption = 'Valor Limite p/Sangria'
                FocusControl = DBEdit20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEditEmpresa: TDBEdit
                Left = 2
                Top = 13
                Width = 86
                Height = 19
                Ctl3D = False
                DataField = 'EMPRICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = DBEditEmpresaKeyDown
              end
              object DBEdit6: TDBEdit
                Left = 111
                Top = 13
                Width = 354
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'EMPRESALOOKUP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
              end
              object ComboTipoTerminal: TRxDBComboBox
                Left = 477
                Top = 12
                Width = 182
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'TERMCTIPO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Caixa                     1 ate 500  '
                  'Pr'#233'-venda         501 ate 600'
                  'Administrativo   601 ate ...')
                ParentCtl3D = False
                TabOrder = 14
                Values.Strings = (
                  'C'
                  'P'
                  'A')
              end
              object DBEdit7: TDBEdit
                Left = 2
                Top = 83
                Width = 86
                Height = 19
                Ctl3D = False
                DataField = 'CLIEA13ID'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 2
                OnKeyDown = DBEdit7KeyDown
              end
              object DBEdit8: TDBEdit
                Left = 2
                Top = 118
                Width = 86
                Height = 19
                Ctl3D = False
                DataField = 'VENDICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 3
                OnKeyDown = DBEdit8KeyDown
              end
              object DBEdit9: TDBEdit
                Left = 256
                Top = 118
                Width = 76
                Height = 19
                Ctl3D = False
                DataField = 'PLRCICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 11
                OnKeyDown = DBEdit9KeyDown
              end
              object DBEdit11: TDBEdit
                Left = 111
                Top = 118
                Width = 143
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'VENDEDORLOOKUP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit12: TDBEdit
                Left = 356
                Top = 118
                Width = 109
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'PLANORECTOLOOKUP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 13
              end
              object DBEdit4: TDBEdit
                Left = 2
                Top = 48
                Width = 86
                Height = 19
                Ctl3D = False
                DataField = 'ECFA13ID'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 1
                OnKeyDown = DBEdit4KeyDown
              end
              object DBEdit19: TDBEdit
                Left = 111
                Top = 48
                Width = 220
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'ECFLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
              end
              object ComboPortaECF: TDBComboBox
                Left = 477
                Top = 48
                Width = 90
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'TERMA5ECFPORTACOM'
                DataSource = DSTemplate
                ItemHeight = 13
                Items.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'COM5'
                  'COM6'
                  'COM7'
                  'COM8'
                  'COM9'
                  'COM10'
                  'COM11'
                  'COM12'
                  'COM13'
                  'COM14'
                  'COM15'
                  'COM16'
                  'COM17'
                  'COM18'
                  'COM19'
                  'COM20'
                  'COM21'
                  'COM22'
                  'COM23'
                  'COM24'
                  'COM25'
                  'USB')
                ParentCtl3D = False
                TabOrder = 15
              end
              object DBEdit10: TDBEdit
                Left = 111
                Top = 83
                Width = 354
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'CLIENTELOOKUP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 9
              end
              object GroupBox1: TGroupBox
                Left = 2
                Top = 189
                Width = 655
                Height = 242
                Caption = 'Par'#226'metros'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object ImpPreVenda: TDBCheckBox
                  Left = 4
                  Top = 15
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Ticket da Pr'#233'-Venda'
                  Ctl3D = False
                  DataField = 'TERMCIMPPREVENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpConfDiv: TDBCheckBox
                  Left = 4
                  Top = 74
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Confiss'#227'o D'#237'vida'
                  Ctl3D = False
                  DataField = 'TERMCIMPCONFDIVIDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnClick = ImpConfDivClick
                end
                object ImpCDBarrasPrevenda: TDBCheckBox
                  Left = 4
                  Top = 30
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir C'#243'digo Barras not Ticket da Pr'#233'-Venda'
                  Ctl3D = False
                  DataField = 'TERMCIMPBARRASPED'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpCheque: TDBCheckBox
                  Left = 4
                  Top = 44
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Cheque'
                  Ctl3D = False
                  DataField = 'TERMCIMPRIMECHEQUE'
                  DataSource = DSTemplate
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ConfirmaImpCarne: TDBCheckBox
                  Left = 294
                  Top = 72
                  Width = 191
                  Height = 17
                  Caption = 'Confirma Impress'#227'o de Carn'#234
                  Ctl3D = False
                  DataField = 'TERMCCONFIMPCARNE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 19
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object AutenticEntradaFinalCupom: TDBCheckBox
                  Left = 294
                  Top = 28
                  Width = 274
                  Height = 17
                  Caption = 'Autenticar Entrada na Finaliza'#231#227'o do Cupom'
                  Ctl3D = False
                  DataField = 'TERMCAUTENTRFIMCUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 16
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object OcultarVendCliPlano: TDBCheckBox
                  Left = 4
                  Top = 162
                  Width = 284
                  Height = 17
                  Caption = 'Ocultar Cliente, Plano e Vendedor no PDV'
                  Ctl3D = False
                  DataField = 'TERMCHIDECLIVENDPL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpDadosInternosCupom: TDBCheckBox
                  Left = 4
                  Top = 59
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Dados Internos no Cupom'
                  Ctl3D = False
                  DataField = 'TERMCIMPRDADINTCUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object MovEstoque: TDBCheckBox
                  Left = 294
                  Top = 116
                  Width = 182
                  Height = 17
                  Caption = 'Movimentar Estoque on Line'
                  Ctl3D = False
                  DataField = 'TERMCMOVESTOQUE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 22
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ConfirmaEncerramentoCupom: TDBCheckBox
                  Left = 294
                  Top = 57
                  Width = 274
                  Height = 17
                  Caption = 'Confirma o Encerramento do Cupom'
                  Ctl3D = False
                  DataField = 'TERMCCONFFECHCUPOM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 18
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object MostraIDCupomNoFechamento: TDBCheckBox
                  Left = 294
                  Top = 101
                  Width = 237
                  Height = 17
                  Caption = 'Mostra ID do Cupom no Encerramento'
                  Ctl3D = False
                  DataField = 'TERMCMOSTRAIDCUPOM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 21
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object InformaDadosClienteNoFechamento: TDBCheckBox
                  Left = 294
                  Top = 86
                  Width = 256
                  Height = 17
                  Caption = 'Informa Dados do Cliente no Fechamento'
                  Ctl3D = False
                  DataField = 'TERMCINFDADOCLIPAD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 20
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object AutenticImpMatricial: TDBCheckBox
                  Left = 294
                  Top = 13
                  Width = 274
                  Height = 17
                  Caption = 'Autenticar em Impressora Matricial'
                  Ctl3D = False
                  DataField = 'TERMCAUTENTIMPMATRI'
                  DataSource = DSTemplate
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 15
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpEntradaCarne: TDBCheckBox
                  Left = 4
                  Top = 133
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Entrada no Carn'#234
                  Ctl3D = False
                  DataField = 'TERMCIMPENTCARNE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object NaoAutenticParcNoRecto: TDBCheckBox
                  Left = 294
                  Top = 42
                  Width = 274
                  Height = 17
                  Caption = 'N'#227'o Autenticar Parcelas no Recebimento'
                  Ctl3D = False
                  DataField = 'TERMCNAOAUTRCTOCRD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 17
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpComprovComTotalRecto: TDBCheckBox
                  Left = 4
                  Top = 147
                  Width = 284
                  Height = 17
                  Caption = 'Imprimir Comprovante com Total no Recebimento'
                  Ctl3D = False
                  DataField = 'TERMCIMPCOMPTOTREC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object InfDadosCartaoCred: TDBCheckBox
                  Left = 294
                  Top = 131
                  Width = 189
                  Height = 17
                  Caption = 'Informa dados Cart'#227'o Cr'#233'dito'
                  Ctl3D = False
                  DataField = 'TERMCINFDADOCARTAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 23
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object InformaTrocoDestaqueCupom: TDBCheckBox
                  Left = 4
                  Top = 177
                  Width = 284
                  Height = 17
                  Caption = 'Mostrar Troco em Destaque no Encerramento'
                  Ctl3D = False
                  DataField = 'TERMCMOSTRATROCOCUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 8
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object CheckVendInicioVenda: TDBCheckBox
                  Left = 294
                  Top = 175
                  Width = 284
                  Height = 17
                  Caption = 'Solicita Vendedor ao iniciar venda PDV'
                  Ctl3D = False
                  DataField = 'TERMCSOLCODVEND'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 26
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox2: TDBCheckBox
                  Left = 294
                  Top = 145
                  Width = 221
                  Height = 17
                  Caption = 'Sim - Na impress'#227'o das Pr'#233'-Vendas'
                  Ctl3D = False
                  DataField = 'TERMCIMPPREVENDASIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 24
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 294
                  Top = 160
                  Width = 266
                  Height = 17
                  Caption = 'Movimentar Estoque ao Fechar o Caixa PDV'
                  Ctl3D = False
                  DataField = 'TERMCBXESTFECHCX'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 25
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object CheckMostraPAtacadoPDV: TDBCheckBox
                  Left = 294
                  Top = 189
                  Width = 264
                  Height = 17
                  Caption = 'Mostra Preco Atacado no Tira-Teima PDV'
                  Ctl3D = False
                  DataField = 'TERMCMPATACADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 27
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpConfDivPerg: TDBCheckBox
                  Left = 20
                  Top = 89
                  Width = 237
                  Height = 17
                  Caption = 'Perguntar Antes de Imprimir'
                  Ctl3D = False
                  DataField = 'TERMCECFIMPRCONFDIVPERGUNTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpConfDivItens: TDBCheckBox
                  Left = 20
                  Top = 103
                  Width = 245
                  Height = 17
                  Caption = 'Imprimir Itens Vendidos na Confiss'#227'o'
                  Ctl3D = False
                  DataField = 'TERMCECFIMPRCONFDIVIMPITENS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 13
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ImpConfDivFat: TDBCheckBox
                  Left = 20
                  Top = 118
                  Width = 249
                  Height = 17
                  Caption = 'Imprimir Faturamento na Confiss'#227'o'
                  Ctl3D = False
                  DataField = 'TERMCECFIMPRCONFDIVIMPFAT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 14
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox4: TDBCheckBox
                  Left = 4
                  Top = 192
                  Width = 278
                  Height = 17
                  Caption = 'Movimenta Estoque (Saida) na Transferencia'
                  Ctl3D = False
                  DataField = 'TERMCMOVTRANSF'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox5: TDBCheckBox
                  Left = 513
                  Top = 109
                  Width = 140
                  Height = 14
                  Caption = 'Imprimir dos Tablets'
                  Ctl3D = False
                  DataField = 'USATABLET'
                  DataSource = DSTemplate
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 29
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox6: TDBCheckBox
                  Left = 4
                  Top = 206
                  Width = 278
                  Height = 17
                  Caption = 'Permite alterar Nosso N'#250'mero'
                  Ctl3D = False
                  DataField = 'ALTERA_NOSSO_NUMERO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 10
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox7: TDBCheckBox
                  Left = 294
                  Top = 204
                  Width = 290
                  Height = 17
                  Caption = 'Ocultar Registro conforme Tipo Fornecedor'
                  Ctl3D = False
                  DataField = 'CONTROLA_CONSULTA_CP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 28
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox8: TDBCheckBox
                  Left = 4
                  Top = 221
                  Width = 290
                  Height = 17
                  Caption = 'Desabilita Entrada e Sa'#237'da R'#225'pida de Estoque'
                  Ctl3D = False
                  DataField = 'CONTROLA_ES_RAPIDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 11
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object GroupBox5: TGroupBox
                Left = 2
                Top = 139
                Width = 655
                Height = 50
                Caption = 'Numer'#225'rios Padr'#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object RetornoNumeVista: TSpeedButton
                  Left = 48
                  Top = 25
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Numer'#225'rios'
                  Flat = True
                  Glyph.Data = {
                    CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                    1000030000008801000000000000000000000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                    AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                    1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                    1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                    1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                    0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                    714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                    00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                  OnClick = RetornoNumeVistaClick
                end
                object RetornoNumePrazo: TSpeedButton
                  Left = 262
                  Top = 25
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Numer'#225'rios'
                  Flat = True
                  Glyph.Data = {
                    CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                    1000030000008801000000000000000000000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                    AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                    1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                    1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                    1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                    0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                    714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                    00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                  OnClick = RetornoNumePrazoClick
                end
                object RetornoNumeRecCred: TSpeedButton
                  Left = 473
                  Top = 25
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Numer'#225'rios'
                  Flat = True
                  Glyph.Data = {
                    CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                    1000030000008801000000000000000000000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                    AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                    1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                    1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                    1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                    0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                    714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                    00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                  OnClick = RetornoNumeRecCredClick
                end
                object Label11: TLabel
                  Left = 11
                  Top = 13
                  Width = 39
                  Height = 13
                  Caption = #192' Vista'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 225
                  Top = 13
                  Width = 43
                  Height = 13
                  Caption = #192' Prazo'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 436
                  Top = 13
                  Width = 51
                  Height = 13
                  Caption = 'Credi'#225'rio'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit15: TDBEdit
                  Left = 8
                  Top = 26
                  Width = 39
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMINUMEVISTA'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 0
                  OnKeyDown = DBEdit15KeyDown
                end
                object DBEdit16: TDBEdit
                  Left = 71
                  Top = 26
                  Width = 144
                  Height = 19
                  Ctl3D = False
                  DataField = 'TIPONUMEVISTALOOKUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit17: TDBEdit
                  Left = 222
                  Top = 26
                  Width = 39
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMINUMEPRAZO'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 2
                  OnKeyDown = DBEdit17KeyDown
                end
                object DBEdit18: TDBEdit
                  Left = 285
                  Top = 26
                  Width = 145
                  Height = 19
                  Ctl3D = False
                  DataField = 'TIPONUMEPRAZOLOOKUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit21: TDBEdit
                  Left = 433
                  Top = 26
                  Width = 39
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMINUMERECCRED'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 4
                  OnKeyDown = DBEdit21KeyDown
                end
                object DBEdit22: TDBEdit
                  Left = 496
                  Top = 26
                  Width = 152
                  Height = 19
                  Ctl3D = False
                  DataField = 'TIPONUMECREDLOOKUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                end
              end
              object ComboCasasDecimais: TRxDBComboBox
                Left = 477
                Top = 82
                Width = 90
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'TERMINRODECQUANT'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '2 Casas'
                  '3 Casas'
                  '4 Casas')
                ParentCtl3D = False
                TabOrder = 16
                Values.Strings = (
                  '2'
                  '3'
                  '4')
              end
              object BTLimpaPortaSerial: TButton
                Left = 666
                Top = 47
                Width = 62
                Height = 20
                Caption = 'Limpar ECF'
                TabOrder = 20
                OnClick = BTLimpaPortaSerialClick
              end
              object DBEdit30: TDBEdit
                Left = 477
                Top = 118
                Width = 90
                Height = 19
                Ctl3D = False
                DataField = 'TERMIQTDEPADRAO'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 17
                OnKeyDown = DBEdit9KeyDown
              end
              object ComboDecVenda: TRxDBComboBox
                Left = 570
                Top = 82
                Width = 90
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'TERMINRODECVALORUNIT'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '2 Casas'
                  '3 Casas')
                ParentCtl3D = False
                TabOrder = 18
                Values.Strings = (
                  '2'
                  '3'
                  '4'
                  '5')
              end
              object DBEdit31: TDBEdit
                Left = 334
                Top = 48
                Width = 131
                Height = 19
                Ctl3D = False
                DataField = 'TERMA20NROSERIE'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 12
                OnKeyDown = DBEdit4KeyDown
              end
              object ComboVelocidadeECF: TDBComboBox
                Left = 571
                Top = 47
                Width = 90
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'ECF_VELOC'
                DataSource = DSTemplate
                ItemHeight = 13
                Items.Strings = (
                  '9600'
                  '38400'
                  '115200')
                ParentCtl3D = False
                TabOrder = 19
              end
              object DBEdit20: TDBEdit
                Left = 2
                Top = 447
                Width = 134
                Height = 19
                Ctl3D = False
                DataField = 'VALOR_LIMITE_SANGRIA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
              end
            end
            object TabSheetAdicional: TTabSheet
              Caption = 'Adicional'
              ImageIndex = 2
              object Label24: TLabel
                Left = 5
                Top = 328
                Width = 115
                Height = 13
                Caption = 'Mensagem do Carn'#234
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 119
                Width = 637
                Height = 129
                TabOrder = 2
                object Label27: TLabel
                  Left = 7
                  Top = 9
                  Width = 112
                  Height = 13
                  Caption = 'Imprime Carn'#234' em :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 7
                  Top = 47
                  Width = 150
                  Height = 13
                  Caption = 'Imprime Ficha Cliente em :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 7
                  Top = 87
                  Width = 167
                  Height = 13
                  Caption = 'Autoriza'#231#227'o Dependente em :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboCarne: TDBComboBox
                  Left = 7
                  Top = 25
                  Width = 626
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA60IMPCARNE'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object ComboFichaCli: TDBComboBox
                  Left = 7
                  Top = 63
                  Width = 626
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA60IMPFICHACLI'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  ParentCtl3D = False
                  TabOrder = 1
                end
                object ComboAutDep: TDBComboBox
                  Left = 7
                  Top = 103
                  Width = 626
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA60IMPAUTORIZCOM'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  ParentCtl3D = False
                  TabOrder = 2
                end
              end
              object GroupBox7: TGroupBox
                Left = 0
                Top = 248
                Width = 637
                Height = 76
                Caption = 'Localiza'#231#227'o edo arquivo para impress'#227'o de notas fiscais'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object ButtonDialog: TSpeedButton
                  Left = 609
                  Top = 15
                  Width = 23
                  Height = 22
                  Caption = '...'
                  OnClick = ButtonDialogClick
                end
                object DBEdit27: TDBEdit
                  Left = 6
                  Top = 17
                  Width = 601
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMTPATHNF'
                  DataSource = DSTemplate
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object ComboImpNotaFiscal: TDBComboBox
                  Left = 5
                  Top = 51
                  Width = 429
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA60IMPNF'
                  DataSource = DSTemplate
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object CKVisualizarNF: TDBCheckBox
                  Left = 443
                  Top = 56
                  Width = 183
                  Height = 12
                  Caption = 'Visualizar antes de imprimir'
                  Ctl3D = False
                  DataField = 'TERMCIMPNFPRT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object DBEdit14: TDBEdit
                Left = 5
                Top = 342
                Width = 338
                Height = 19
                Ctl3D = False
                DataField = 'TERMA255MSGCARNE'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 4
              end
              object GroupBox8: TGroupBox
                Left = 0
                Top = 0
                Width = 637
                Height = 43
                Caption = 'Configura'#231#227'o de Impress'#227'o de Pedidos e Or'#231'amentos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object FilenameImpPedOrc: TFilenameEdit
                  Left = 608
                  Top = 17
                  Width = 24
                  Height = 21
                  Filter = 'Crystal Reports (*.rpt)|*.rpt'
                  DialogTitle = 'Selecionar'
                  GlyphKind = gkCustom
                  Glyph.Data = {
                    D6020000424DD60200000000000036000000280000000E0000000C0000000100
                    200000000000A002000000000000000000000000000000000000FF00FF000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000008080
                    8000808080008080800080808000808080008080800080808000808080000000
                    0000FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000808080008080
                    800080808000808080008080800080808000808080008080800000000000FF00
                    FF00FF00FF0000000000FFFFFF00FFFFFF000000000080808000808080008080
                    8000808080008080800080808000808080008080800000000000FF00FF000000
                    0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
                    000000000000000000000000000000000000FF00FF0000000000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
                    FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000
                    00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
                  NumGlyphs = 1
                  TabOrder = 0
                  OnChange = FilenameImpPedOrcChange
                end
                object RxDBComboBox4: TRxDBComboBox
                  Left = 4
                  Top = 17
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMACTIPOIMPPEDORC'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Padr'#227'o Bobina 80 Colunas'
                    'Padr'#227'o Matricial/Deskjet/Laser'
                    'Personalizado'
                    'Arquivo Externo')
                  ParentCtl3D = False
                  TabOrder = 1
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3')
                end
                object DBEdit28: TDBEdit
                  Left = 150
                  Top = 17
                  Width = 459
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMTPATHPEDORC'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 2
                end
              end
              object GroupImp: TGroupBox
                Left = 0
                Top = 44
                Width = 637
                Height = 74
                Caption = 'Imprimir Pedidos/Or'#231'amentos/Pr'#233'-Venda e Ordens de Servi'#231'o em:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label26: TLabel
                  Left = 6
                  Top = 17
                  Width = 270
                  Height = 13
                  Caption = 'Impressoras instaladas no sistema operacional:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 389
                  Top = 17
                  Width = 235
                  Height = 13
                  Caption = 'Impressora n'#227'o fiscal com DLL Fabricante'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboPedido: TDBComboBox
                  Left = 4
                  Top = 33
                  Width = 381
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA60IMPPEDIDO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object ComboImpNaoFiscal: TRxDBComboBox
                  Left = 388
                  Top = 33
                  Width = 244
                  Height = 21
                  Ctl3D = False
                  DataField = 'TERMA30MODIMPNFISC'
                  DataSource = DSTemplate
                  EnableValues = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'BEMATECH MP-20 CI'
                    'BEMATECH MP-20 TH'
                    'DARUMA DUAL'
                    'DARUMA DR700')
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  Values.Strings = (
                    'BEMATECH MP-20 CI'
                    'BEMATECH MP-20 TH'
                    'DARUMA DUAL'
                    'DARUMA DR700')
                end
                object DBCheckBox1: TDBCheckBox
                  Left = 7
                  Top = 57
                  Width = 183
                  Height = 12
                  Caption = 'Visualizar antes de imprimir'
                  Ctl3D = False
                  DataField = 'TERMCIMPPEDPRT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object GroupTipoDoc: TGroupBox
                Left = 347
                Top = 324
                Width = 290
                Height = 42
                Caption = 'Tipo de Documento Padr'#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object RxDBLookupCombo5: TRxDBLookupCombo
                  Left = 5
                  Top = 16
                  Width = 278
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = False
                  DataField = 'TPDCICOD'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'TPDCICOD'
                  LookupDisplay = 'TPDCA60DESCR'
                  LookupSource = DSSQLTipoDocumento
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object TabSheetAdicionalDois: TTabSheet
              Caption = 'TabSheetAdicionalDois'
              ImageIndex = 3
              object Label32: TLabel
                Left = 5
                Top = 208
                Width = 424
                Height = 13
                Caption = 
                  'Imprime Ticket de Abertura/Fechamento de Caixa e Cart'#227'o de Cr'#233'di' +
                  'to em :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 6
                Top = 246
                Width = 121
                Height = 13
                Caption = 'Imprime Cheque em :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object GroupBox4: TGroupBox
                Left = 2
                Top = 2
                Width = 655
                Height = 89
                Caption = '&Configura'#231#245'es do Gerenciador TEF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label13: TLabel
                  Left = 14
                  Top = 16
                  Width = 285
                  Height = 13
                  Caption = 'Limite m'#225'ximo para aguardar retorno do Software'
                  FocusControl = DBEdit23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 350
                  Top = 15
                  Width = 287
                  Height = 13
                  Caption = 'Intervalo para verifica'#231#227'o de retorno da transa'#231#227'o'
                  FocusControl = DBEdit25
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 148
                  Top = 33
                  Width = 54
                  Height = 13
                  Caption = 'segundos'
                  FocusControl = DBEdit23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 484
                  Top = 32
                  Width = 54
                  Height = 13
                  Caption = 'segundos'
                  FocusControl = DBEdit23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 14
                  Top = 50
                  Width = 109
                  Height = 13
                  Caption = 'N'#250'mero de Vias TEF'
                  FocusControl = DBEdit24
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label37: TLabel
                  Left = 244
                  Top = 67
                  Width = 99
                  Height = 13
                  Caption = 'Teclado Reduzido'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit23: TDBEdit
                  Left = 11
                  Top = 30
                  Width = 134
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMITMPLIMITESERV'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  MaxLength = 3
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit25: TDBEdit
                  Left = 347
                  Top = 29
                  Width = 134
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMIINTERVALOSERV'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  MaxLength = 3
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit24: TDBEdit
                  Left = 11
                  Top = 63
                  Width = 134
                  Height = 19
                  Ctl3D = False
                  DataField = 'TERMINROVIASTEF'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object ComboTecladoReduzido: TRxDBComboBox
                  Left = 347
                  Top = 62
                  Width = 231
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMCTECLREDUZ'
                  DataSource = DSTemplate
                  Enabled = False
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Gertec Tec44 com Display'
                    'Gertec Tec65 com Display')
                  ParentCtl3D = False
                  Sorted = True
                  TabOrder = 3
                  Values.Strings = (
                    'TEC44DIS'
                    'TEC65')
                end
                object Button6: TButton
                  Left = 581
                  Top = 62
                  Width = 58
                  Height = 20
                  Caption = 'Limpar'
                  TabOrder = 4
                  OnClick = Button6Click
                end
              end
              object GroupBox6: TGroupBox
                Left = 2
                Top = 99
                Width = 655
                Height = 43
                Caption = 
                  ' Configura'#231#227'o automatica para Exporta'#231#227'o / Importa'#231#227'o de &Dados ' +
                  'entre filiais '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object ButtonCadastroConfigIntegracao: TSpeedButton
                  Left = 82
                  Top = 15
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Configurador de Integra'#231#227'o'
                  Flat = True
                  Glyph.Data = {
                    CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                    1000030000008801000000000000000000000000000000000000007C0000E003
                    00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                    AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                    1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                    1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                    1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                    0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                    714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                    00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                    1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                  OnClick = ButtonCadastroConfigIntegracaoClick
                end
                object DBEdit5: TDBEdit
                  Left = 7
                  Top = 16
                  Width = 74
                  Height = 19
                  Ctl3D = False
                  DataField = 'CFGIICOD'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 0
                  OnKeyDown = DBEdit5KeyDown
                end
                object DBEdit26: TDBEdit
                  Left = 105
                  Top = 17
                  Width = 542
                  Height = 21
                  BorderStyle = bsNone
                  DataField = 'CFGIA60DESCRLookup'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = True
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object ComboTicket: TDBComboBox
                Left = 2
                Top = 222
                Width = 651
                Height = 21
                Ctl3D = False
                DataField = 'TERMA60IMPTCKAFCX'
                DataSource = DSTemplate
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 4
              end
              object ComboCheque: TDBComboBox
                Left = 2
                Top = 260
                Width = 651
                Height = 21
                Ctl3D = False
                DataField = 'TERMA60IMPCHEQUE'
                DataSource = DSTemplate
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 5
                Visible = False
              end
              object GroupLeitor: TGroupBox
                Left = 195
                Top = 143
                Width = 462
                Height = 59
                Caption = '&Modelo do Leitor de C'#243'd. de Barras'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object Label25: TLabel
                  Left = 316
                  Top = 17
                  Width = 113
                  Height = 13
                  Caption = 'Porta de Comuni'#231#227'o'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 5
                  Top = 17
                  Width = 41
                  Height = 13
                  Caption = 'Modelo'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboLeitor: TRxDBComboBox
                  Left = 3
                  Top = 33
                  Width = 310
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMA60MODLEITOR'
                  DataSource = DSTemplate
                  Enabled = False
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Sweda VS 1200 - SpectraFisics')
                  ParentCtl3D = False
                  Sorted = True
                  TabOrder = 0
                  Values.Strings = (
                    'SWEDA VS1200')
                end
                object ComboPortaLeitor: TDBComboBox
                  Left = 315
                  Top = 33
                  Width = 143
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMA5LEITPORTACOM'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  Items.Strings = (
                    'COM1'
                    'COM2'
                    'COM3'
                    'COM4'
                    'COM5')
                  ParentCtl3D = False
                  TabOrder = 1
                end
              end
              object RadioDispositivoEntrada: TDBRadioGroup
                Left = 2
                Top = 143
                Width = 191
                Height = 59
                Caption = 'Dispositivo de &Entrada'
                DataField = 'TERMCDISPOENTRADA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Teclado Padr'#227'o (102 Teclas)'
                  'Leitor de C'#243'd. de Barras')
                ParentFont = False
                TabOrder = 2
                Values.Strings = (
                  'T'
                  'L')
              end
            end
            object TabImpCheque: TTabSheet
              Caption = 'Imp Cheques'
              ImageIndex = 4
              object Label31: TLabel
                Left = 11
                Top = 65
                Width = 112
                Height = 13
                Caption = 'Mensagem tela PDV'
                FocusControl = DBEdit29
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupBox9: TGroupBox
                Left = 0
                Top = 0
                Width = 1226
                Height = 59
                Align = alTop
                Caption = ' Modelo de Impressora de Cheques '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label33: TLabel
                  Left = 500
                  Top = 16
                  Width = 113
                  Height = 13
                  Caption = 'Porta de Comuni'#231#227'o'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label35: TLabel
                  Left = 12
                  Top = 16
                  Width = 41
                  Height = 13
                  Caption = 'Modelo'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 8
                  Top = 30
                  Width = 484
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMA30MODIMPCHQ'
                  DataSource = DSTemplate
                  Enabled = False
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Schalter NSC 1')
                  ParentCtl3D = False
                  Sorted = True
                  TabOrder = 0
                  Values.Strings = (
                    'SCHALTER_NSC_1')
                end
                object RxDBComboBox5: TRxDBComboBox
                  Left = 495
                  Top = 30
                  Width = 137
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'TERMA5IMPCHQPORTA'
                  DataSource = DSTemplate
                  Enabled = False
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'COM1'
                    'COM2'
                    'COM3'
                    'COM4'
                    'COM5')
                  ParentCtl3D = False
                  Sorted = True
                  TabOrder = 1
                  Values.Strings = (
                    'COM1'
                    'COM2'
                    'COM3'
                    'COM4'
                    'COM5')
                end
              end
              object DBEdit29: TDBEdit
                Left = 9
                Top = 79
                Width = 624
                Height = 19
                Ctl3D = False
                DataField = 'TERMA60MENSAGEMPDV'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 1
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 40
            Width = 1234
            Height = 14
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 1234
            Height = 40
            object Label1: TLabel
              Left = 8
              Top = 3
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
              Left = 53
              Top = 3
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
            object Label4: TLabel
              Left = 504
              Top = 3
              Width = 71
              Height = 13
              Caption = 'Status Caixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 342
              Top = 3
              Width = 70
              Height = 13
              Caption = 'Computador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CapturaComput: TSpeedButton
              Left = 464
              Top = 2
              Width = 36
              Height = 38
              Hint = 'Acessa Empresa'
              Flat = True
              Glyph.Data = {
                060E0000424D060E000000000000360000002800000022000000220000000100
                180000000000D00D0000CE0E0000D80E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078707078700000000000000000000000
                00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF000000000000000000000000000000000000000000000000000000
                000000AFE0FFAFE0FF000000000000AFE0FF0078B0000000000000FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000
                00000000000000000000000000000000000000AFE0FF000000000000AFE0FFAF
                E0FFAFE0FF000000000000AFE0FFAFE0FFAFE0FF000000AFE0FFAFE0FF0078B0
                000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000000
                000000000000000000AFE0FFAFE0FF000000000000AFE0FFAFE0FFAFE0FFAFE0
                FF000000000000AFE0FF00000000000000000000000000000000000000000000
                0000AFE0FFAFE0FF0078B0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFF000000000000AFE0FFAFE0FFAFE0FFAFE0FFAFE0FF000000000000
                000000000000000000000000000000000000000000000000000000000000AFE0
                FFAFE0FFAFE0FF000000AFE0FFAFE0FFAFE0FF2F302F000000000000FFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF000000000000AFE0FFAFE0FF00000000
                0000000000000000000000AFE0FFAFE0FFAFE0FF000000AFE0FFAFE0FFAFE0FF
                AFE0FF000000AFE0FFAFE0FF20A8FF00000020A8FF20A8FF20A8FF0078B00078
                B00000005F605FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000
                00000000AFE0FFAFE0FFAFE0FF000000AFE0FFAFE0FF20A8FF20A8FF20A8FF00
                000020A8FF20A8FF20A8FF00000020A8FF20A8FF20A8FF20A8FF20A8FF20A8FF
                20A8FF0078B00078B00078B0000000000000000000FFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000000000AFE0FF20A8FF20A8FF00000000000020A8
                FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20
                A8FF20A8FF20A8FF20A8FF0078B00078B00078B00078B0000000000000FFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000AFE0FF20A8FF2F9700
                2F970020A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8
                FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF0078B00078B00078B00078B000
                78B0000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000AF
                E0FF20A8FF50FF202F970020A8FF20A8FF20A8FF20A8FF20A8FF20A8FF000000
                00000000000000000000000000000000000000000020A8FF20A8FF0078B00078
                B00078B00078B00078B0000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000000000020A8FF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000078B00078B00078B00078B0000000FFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
                0000000000000000000000000020A8FF20A8FF20A8FF20A8FF20A8FF0078B000
                78B00078B00078B00078B0000000000000000000000000000000000000FFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
                00000000000000000060C7FF60C7FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8
                FF20A8FF20A8FF20A8FF0078B00078B00078B00078B000000000000000000000
                0000000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000060C7FF60C7FF60C7FF60C7FF000000
                0000000000000000000000000000000000000000000000000000000078B0FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
                0000000000000020A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20
                A8FF20A8FF20A8FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FF20A8FF
                20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FFFFA8
                20FFA820FFA820FFA82020A8FF20A8FF0000000000000078B0000000FFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                000020A8FFFFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA820
                FFA820FFA820FFA820FFA820FFA820FFA820FFA82020A8FF0000000000000078
                B0000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000000000020A8FFFFA820FFA820FFA820FFA820FFC760FFC760FF
                C760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFA820FFA82020A8FF
                0000000000000078B0000000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820FFA820FFC760FFC7
                60FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FF
                A820FFA82020A8FF0000000000000078B00078B0000000FFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820
                FFA820FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC7
                60FFC760FFC760FFA820FFA82020A8FF0000000000000078B00078B0000000FF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                000020A8FFFFA820FFA820FFC760FFC760FFC760FFC760FFC760FFC760FFC760
                FFC760FFC760FFC760FFC760FFC760FFA820FFA82020A8FF20A8FF0000000078
                B00078B0000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000000000020A8FFFFA820FFA820FFC760FFC760FFC760FFC760FF
                C760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFA82020A8FF
                20A8FF0000000078B00078B0000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820FFA820FFC760FFE0
                AFFFE0AFFFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FF
                C760FFA82020A8FF20A8FF0000000078B00078B0000000000000FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820
                FFA820FFC760FFEFD0FFEFD0FFC760FFC760FFC760FFC760FFC760FFC760FFC7
                60FFC760FFC760FFC760FFA82020A8FF20A8FF0000000078B00078B000000000
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                000020A8FFFFA820FFA820FFC760FFE0AFFFE0AFFFC760FFC760FFC760FFC760
                FFC760FFC760FFC760FFC760FFC760FFC760FFA82020A8FF20A8FF0000000078
                B00078B00078B0000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000000000020A8FFFFA820FFA820FFC760FFC760FFC760FFC760FF
                C760FFC760FFC760FFC760FFC760FFC760FFC760FFC760FFA820FFA820FFA820
                20A8FF0000000078B00078B00078B0000000FFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820FFA820FFC760FFC7
                60FFC760FFC760FFC760FFA820FFA820FFA820FFA820FFA820FFA820FFA820FF
                A820FFA820FFA82020A8FF0000000078B00078B00078B0000000FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000020A8FFFFA820
                FFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA820FFA8
                20FFA820FFA820FFA820FFA82020A8FF20A8FF0000000078B00078B000000000
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
                FFFF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF
                20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF0000000000000000
                00000000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF000000FFFFFFFFFFFF20A8FF20A8FF20A8FF20A8FF20A8FF20A8FF20
                A8FF20A8FF20A8FF000000000000000000000000000000000000000000000000
                000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              OnClick = CapturaComputClick
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 42
              Height = 19
              Ctl3D = False
              DataField = 'TERMICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 49
              Top = 16
              Width = 286
              Height = 19
              Ctl3D = False
              DataField = 'TERMA60DESCR'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 501
              Top = 16
              Width = 162
              Height = 19
              Ctl3D = False
              DataField = 'StatusCaixaCalcField'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit13: TDBEdit
              Left = 338
              Top = 16
              Width = 124
              Height = 19
              Ctl3D = False
              DataField = 'TERMA60NOMECOMPUT'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCriarTerminalNovocomPerfildoTerminalAtual: TMenuItem
      Caption = 'Criar Terminal Novo com Perfil do Terminal Atual'
      OnClick = MnCriarTerminalNovocomPerfildoTerminalAtualClick
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From Terminal Where (%MFiltro)')
    object SQLTemplateTERMICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTemplateTERMA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TERMINAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TERMINAL.REGISTRO'
    end
    object SQLTemplateTERMCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'TERMCTIPO'
      Origin = 'DB.TERMINAL.TERMCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCSTATUSCAIXA: TStringField
      DisplayLabel = 'Status'
      FieldName = 'TERMCSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMCSTATUSCAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMDSTATUSCAIXA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'TERMDSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMDSTATUSCAIXA'
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'EmpresaC'#243'd.'
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ClienteC'#243'd.'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TERMINAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.TERMINAL.VENDICOD'
    end
    object SQLTemplatePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.TERMINAL.PLRCICOD'
    end
    object SQLTemplateTERMCMOVESTOQUE: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCMOVESTOQUE'
      Origin = 'DB.TERMINAL.TERMCMOVESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTERMA5ECFPORTACOM: TStringField
      FieldName = 'TERMA5ECFPORTACOM'
      Origin = 'DB.TERMINAL.TERMA5ECFPORTACOM'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateTERMA60IMPCARNE: TStringField
      FieldName = 'TERMA60IMPCARNE'
      Origin = 'DB.TERMINAL.TERMA60IMPCARNE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60IMPPEDIDO: TStringField
      FieldName = 'TERMA60IMPPEDIDO'
      Origin = 'DB.TERMINAL.TERMA60IMPPEDIDO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60IMPORCAMEN: TStringField
      FieldName = 'TERMA60IMPORCAMEN'
      Origin = 'DB.TERMINAL.TERMA60IMPORCAMEN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60IMPCHEQUE: TStringField
      FieldName = 'TERMA60IMPCHEQUE'
      Origin = 'DB.TERMINAL.TERMA60IMPCHEQUE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60IMPTCKAFCX: TStringField
      FieldName = 'TERMA60IMPTCKAFCX'
      Origin = 'DB.TERMINAL.TERMA60IMPTCKAFCX'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMCIMPRIMECHEQUE: TStringField
      FieldName = 'TERMCIMPRIMECHEQUE'
      Origin = 'DB.TERMINAL.TERMCIMPRIMECHEQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCCONFIMPCARNE: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCCONFIMPCARNE'
      Origin = 'DB.TERMINAL.TERMCCONFIMPCARNE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPCONFDIVIDA: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCIMPCONFDIVIDA'
      Origin = 'DB.TERMINAL.TERMCIMPCONFDIVIDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMA255MSGCARNE: TStringField
      FieldName = 'TERMA255MSGCARNE'
      Origin = 'DB.TERMINAL.TERMA255MSGCARNE'
      Size = 255
    end
    object SQLTemplateTERMCIMPBARRASPED: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCIMPBARRASPED'
      Origin = 'DB.TERMINAL.TERMCIMPBARRASPED'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCINFDADOCLIPAD: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCINFDADOCLIPAD'
      Origin = 'DB.TERMINAL.TERMCINFDADOCLIPAD'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMINRODECQUANT: TIntegerField
      FieldName = 'TERMINRODECQUANT'
      Origin = 'DB.TERMINAL.TERMINRODECQUANT'
    end
    object SQLTemplateEMPRESALOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'EMPRESALOOKUP'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePLANORECTOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANORECTOLOOKUP'
      LookupDataSet = TblPlano
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateVENDEDORLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDORLOOKUP'
      LookupDataSet = TblVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateTIPONUMEVISTALOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPONUMEVISTALOOKUP'
      LookupDataSet = TblNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'TERMINUMEVISTA'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateTIPONUMEPRAZOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPONUMEPRAZOLOOKUP'
      LookupDataSet = TblNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'TERMINUMEPRAZO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateTERMINUMEVISTA: TIntegerField
      FieldName = 'TERMINUMEVISTA'
      Origin = 'DB.TERMINAL.TERMINUMEVISTA'
    end
    object SQLTemplateTERMINUMEPRAZO: TIntegerField
      FieldName = 'TERMINUMEPRAZO'
      Origin = 'DB.TERMINAL.TERMINUMEPRAZO'
    end
    object SQLTemplateUSUAICODATIVO: TIntegerField
      FieldName = 'USUAICODATIVO'
      Origin = 'DB.TERMINAL.USUAICODATIVO'
    end
    object SQLTemplateTERMCATIVO: TStringField
      FieldName = 'TERMCATIVO'
      Origin = 'DB.TERMINAL.TERMCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRCLIE: TStringField
      FieldName = 'TERMCECFIMPRCLIE'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCLIE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRVEND: TStringField
      FieldName = 'TERMCECFIMPRVEND'
      Origin = 'DB.TERMINAL.TERMCECFIMPRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRCONFDIV: TStringField
      FieldName = 'TERMCECFIMPRCONFDIV'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCONFDIV'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateStatusCaixaCalcField: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'StatusCaixaCalcField'
      Visible = False
      Size = 30
      Calculated = True
    end
    object SQLTemplateECFLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ECFLookup'
      LookupDataSet = TblECF
      LookupKeyFields = 'ECFA13ID'
      LookupResultField = 'ECFA30DESCR'
      KeyFields = 'ECFA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateTERMCIMPPREVENDA: TStringField
      FieldName = 'TERMCIMPPREVENDA'
      Origin = 'DB.TERMINAL.TERMCIMPPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMA60NOMECOMPUT: TStringField
      DisplayLabel = 'Nome Computador'
      FieldName = 'TERMA60NOMECOMPUT'
      Origin = 'DB.TERMINAL.TERMA60NOMECOMPUT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMCAUTENTRFIMCUP: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCAUTENTRFIMCUP'
      Origin = 'DB.TERMINAL.TERMCAUTENTRFIMCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCHIDECLIVENDPL: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCHIDECLIVENDPL'
      Origin = 'DB.TERMINAL.TERMCHIDECLIVENDPL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPRDADINTCUP: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCIMPRDADINTCUP'
      Origin = 'DB.TERMINAL.TERMCIMPRDADINTCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCCONFFECHCUPOM: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Pede conf. encerramento do cupom'
      FieldName = 'TERMCCONFFECHCUPOM'
      Origin = 'DB.TERMINAL.TERMCCONFFECHCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMA60IMPFICHACLI: TStringField
      FieldName = 'TERMA60IMPFICHACLI'
      Origin = 'DB.TERMINAL.TERMA60IMPFICHACLI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60IMPAUTORIZCOM: TStringField
      FieldName = 'TERMA60IMPAUTORIZCOM'
      Origin = 'DB.TERMINAL.TERMA60IMPAUTORIZCOM'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMCMOSTRAIDCUPOM: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'TERMCMOSTRAIDCUPOM'
      Origin = 'DB.TERMINAL.TERMCMOSTRAIDCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMITMPLIMITESERV: TIntegerField
      FieldName = 'TERMITMPLIMITESERV'
      Origin = 'DB.TERMINAL.TERMITMPLIMITESERV'
    end
    object SQLTemplateTERMIINTERVALOSERV: TIntegerField
      FieldName = 'TERMIINTERVALOSERV'
      Origin = 'DB.TERMINAL.TERMIINTERVALOSERV'
    end
    object SQLTemplateCLIENTELOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTELOOKUP'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateTIPONUMECREDLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPONUMECREDLOOKUP'
      LookupDataSet = TblNumerarioCred
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'TERMINUMERECCRED'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SQLTemplateTERMINUMERECCRED: TIntegerField
      FieldName = 'TERMINUMERECCRED'
      Origin = 'DB.TERMINAL.TERMINUMERECCRED'
    end
    object SQLTemplateTERMINROVIASTEF: TIntegerField
      FieldName = 'TERMINROVIASTEF'
      Origin = 'DB.TERMINAL.TERMINROVIASTEF'
    end
    object SQLTemplateCFGIICOD: TIntegerField
      FieldName = 'CFGIICOD'
      Origin = 'DB.TERMINAL.CFGIICOD'
    end
    object SQLTemplateCFGIA60DESCRLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CFGIA60DESCRLookup'
      LookupDataSet = TblConfigIntegracao
      LookupKeyFields = 'CFGIICOD'
      LookupResultField = 'CFGIA60DESCR'
      KeyFields = 'CFGIICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateTERMTPATHNF: TStringField
      FieldName = 'TERMTPATHNF'
      Origin = 'DB.TERMINAL.TERMTPATHNF'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateTERMCAUTENTIMPMATRI: TStringField
      FieldName = 'TERMCAUTENTIMPMATRI'
      Origin = 'DB.TERMINAL.TERMCAUTENTIMPMATRI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMACTIPOIMPPEDORC: TStringField
      FieldName = 'TERMACTIPOIMPPEDORC'
      Origin = 'DB.TERMINAL.TERMACTIPOIMPPEDORC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMTPATHPEDORC: TStringField
      FieldName = 'TERMTPATHPEDORC'
      Origin = 'DB.TERMINAL.TERMTPATHPEDORC'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateTERMA30MODIMPNFISC: TStringField
      FieldName = 'TERMA30MODIMPNFISC'
      Origin = 'DB.TERMINAL.TERMA30MODIMPNFISC'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTERMCIMPENTCARNE: TStringField
      FieldName = 'TERMCIMPENTCARNE'
      Origin = 'DB.TERMINAL.TERMCIMPENTCARNE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCDISPOENTRADA: TStringField
      FieldName = 'TERMCDISPOENTRADA'
      Origin = 'DB.TERMINAL.TERMCDISPOENTRADA'
      OnChange = SQLTemplateTERMCDISPOENTRADAChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMA60MODLEITOR: TStringField
      FieldName = 'TERMA60MODLEITOR'
      Origin = 'DB.TERMINAL.TERMA60MODLEITOR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA5LEITPORTACOM: TStringField
      DisplayWidth = 5
      FieldName = 'TERMA5LEITPORTACOM'
      Origin = 'DB.TERMINAL.TERMA5LEITPORTACOM'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateTERMCIMPCOMPTOTREC: TStringField
      FieldName = 'TERMCIMPCOMPTOTREC'
      Origin = 'DB.TERMINAL.TERMCIMPCOMPTOTREC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCNAOAUTRCTOCRD: TStringField
      FieldName = 'TERMCNAOAUTRCTOCRD'
      Origin = 'DB.TERMINAL.TERMCNAOAUTRCTOCRD'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCUSAVENDEDOR: TStringField
      FieldName = 'TERMCUSAVENDEDOR'
      Origin = 'DB.TERMINAL.TERMCUSAVENDEDOR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCUSALIMITECRED: TStringField
      FieldName = 'TERMCUSALIMITECRED'
      Origin = 'DB.TERMINAL.TERMCUSALIMITECRED'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCUSAMOEDA: TStringField
      FieldName = 'TERMCUSAMOEDA'
      Origin = 'DB.TERMINAL.TERMCUSAMOEDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCINFDADOSCLICP: TStringField
      FieldName = 'TERMCINFDADOSCLICP'
      Origin = 'DB.TERMINAL.TERMCINFDADOSCLICP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPIDCUPOM: TStringField
      FieldName = 'TERMCIMPIDCUPOM'
      Origin = 'DB.TERMINAL.TERMCIMPIDCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMIPROXCODCTRC: TIntegerField
      FieldName = 'TERMIPROXCODCTRC'
      Origin = 'DB.TERMINAL.TERMIPROXCODCTRC'
    end
    object SQLTemplateTERMCSQLORDENADO: TStringField
      FieldName = 'TERMCSQLORDENADO'
      Origin = 'DB.TERMINAL.TERMCSQLORDENADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TERMINAL.TPDCICOD'
    end
    object SQLTemplateTERMA60MENSAGEMPDV: TStringField
      FieldName = 'TERMA60MENSAGEMPDV'
      Origin = 'DB.TERMINAL.TERMA60MENSAGEMPDV'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMCINFDADOCARTAO: TStringField
      FieldName = 'TERMCINFDADOCARTAO'
      Origin = 'DB.TERMINAL.TERMCINFDADOCARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMA30MODIMPCHQ: TStringField
      FieldName = 'TERMA30MODIMPCHQ'
      Origin = 'DB.TERMINAL.TERMA30MODIMPCHQ'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTERMA5IMPCHQPORTA: TStringField
      FieldName = 'TERMA5IMPCHQPORTA'
      Origin = 'DB.TERMINAL.TERMA5IMPCHQPORTA'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateTERMA60IMPNF: TStringField
      FieldName = 'TERMA60IMPNF'
      Origin = 'DB.TERMINAL.TERMA60IMPNF'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMCMOSTRATROCOCUP: TStringField
      FieldName = 'TERMCMOSTRATROCOCUP'
      Origin = 'DB.TERMINAL.TERMCMOSTRATROCOCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPNFPRT: TStringField
      FieldName = 'TERMCIMPNFPRT'
      Origin = 'DB.TERMINAL.TERMCIMPNFPRT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPPEDPRT: TStringField
      FieldName = 'TERMCIMPPEDPRT'
      Origin = 'DB.TERMINAL.TERMCIMPPEDPRT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCSOLCODVEND: TStringField
      FieldName = 'TERMCSOLCODVEND'
      Origin = 'DB.TERMINAL.TERMCSOLCODVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCIMPPREVENDASIM: TStringField
      FieldName = 'TERMCIMPPREVENDASIM'
      Origin = 'DB.TERMINAL.TERMCIMPPREVENDASIM'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCBXESTFECHCX: TStringField
      FieldName = 'TERMCBXESTFECHCX'
      Origin = 'DB.TERMINAL.TERMCBXESTFECHCX'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCTECLREDUZ: TStringField
      FieldName = 'TERMCTECLREDUZ'
      Origin = 'DB.TERMINAL.TERMCTECLREDUZ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateTERMIQTDEPADRAO: TIntegerField
      FieldName = 'TERMIQTDEPADRAO'
      Origin = 'DB.TERMINAL.TERMIQTDEPADRAO'
    end
    object SQLTemplateTERMCMPATACADO: TStringField
      FieldName = 'TERMCMPATACADO'
      Origin = 'DB.TERMINAL.TERMCMPATACADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRCONFDIVIMPFAT: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVIMPFAT'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCONFDIVIMPFAT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRCONFDIVIMPITENS: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVIMPITENS'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCONFDIVIMPITENS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMCECFIMPRCONFDIVPERGUNTA: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVPERGUNTA'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCONFDIVPERGUNTA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTERMINRODECVALORUNIT: TIntegerField
      FieldName = 'TERMINRODECVALORUNIT'
      Origin = 'DB.TERMINAL.TERMINRODECVALORUNIT'
    end
    object SQLTemplateTERMA20NROSERIE: TStringField
      FieldName = 'TERMA20NROSERIE'
      Origin = 'DB.TERMINAL.TERMA20NROSERIE'
      FixedChar = True
    end
    object SQLTemplateTERMCMOVTRANSF: TStringField
      FieldName = 'TERMCMOVTRANSF'
      Origin = 'DB.TERMINAL.TERMCMOVTRANSF'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateECF_VELOC: TIntegerField
      FieldName = 'ECF_VELOC'
      Origin = 'DB.TERMINAL.ECF_VELOC'
    end
    object SQLTemplateUSATABLET: TStringField
      FieldName = 'USATABLET'
      Origin = 'DB.TERMINAL.USATABLET'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVALOR_LIMITE_SANGRIA: TFloatField
      FieldName = 'VALOR_LIMITE_SANGRIA'
      Origin = 'DB.TERMINAL.VALOR_LIMITE_SANGRIA'
      DisplayFormat = '##0.00'
    end
    object SQLTemplateALTERA_NOSSO_NUMERO: TStringField
      FieldName = 'ALTERA_NOSSO_NUMERO'
      Origin = 'DB.TERMINAL.ALTERA_NOSSO_NUMERO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCONTROLA_CONSULTA_CP: TStringField
      FieldName = 'CONTROLA_CONSULTA_CP'
      Origin = 'DB.TERMINAL.CONTROLA_CONSULTA_CP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCONTROLA_ES_RAPIDA: TStringField
      FieldName = 'CONTROLA_ES_RAPIDA'
      Origin = 'DB.TERMINAL.CONTROLA_ES_RAPIDA'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Terminal'
      'set'
      '  TERMICOD = :TERMICOD,'
      '  EMPRICOD = :EMPRICOD,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  VENDICOD = :VENDICOD,'
      '  PLRCICOD = :PLRCICOD,'
      '  TERMA60DESCR = :TERMA60DESCR,'
      '  TERMCTIPO = :TERMCTIPO,'
      '  TERMCSTATUSCAIXA = :TERMCSTATUSCAIXA,'
      '  TERMDSTATUSCAIXA = :TERMDSTATUSCAIXA,'
      '  USUAICODATIVO = :USUAICODATIVO,'
      '  TERMCMOVESTOQUE = :TERMCMOVESTOQUE,'
      '  TERMCUSAVENDEDOR = :TERMCUSAVENDEDOR,'
      '  TERMCUSALIMITECRED = :TERMCUSALIMITECRED,'
      '  TERMA255MSGTELA = :TERMA255MSGTELA,'
      '  TERMA60IMPCARNE = :TERMA60IMPCARNE,'
      '  TERMA60IMPPEDIDO = :TERMA60IMPPEDIDO,'
      '  TERMA60IMPORCAMEN = :TERMA60IMPORCAMEN,'
      '  TERMA60IMPCHEQUE = :TERMA60IMPCHEQUE,'
      '  TERMA60IMPTCKAFCX = :TERMA60IMPTCKAFCX,'
      '  TERMCUSAMOEDA = :TERMCUSAMOEDA,'
      '  TERMCIMPRIMECHEQUE = :TERMCIMPRIMECHEQUE,'
      '  TERMCCONFIMPCARNE = :TERMCCONFIMPCARNE,'
      '  TERMCIMPCONFDIVIDA = :TERMCIMPCONFDIVIDA,'
      '  TERMCINFDADOSCLICP = :TERMCINFDADOSCLICP,'
      '  TERMCIMPIDCUPOM = :TERMCIMPIDCUPOM,'
      '  TERMA255MSGCARNE = :TERMA255MSGCARNE,'
      '  TERMCIMPBARRASPED = :TERMCIMPBARRASPED,'
      '  TERMCINFDADOCLIPAD = :TERMCINFDADOCLIPAD,'
      '  TERMINRODECQUANT = :TERMINRODECQUANT,'
      '  TERMINUMEVISTA = :TERMINUMEVISTA,'
      '  TERMINUMEPRAZO = :TERMINUMEPRAZO,'
      '  TERMCATIVO = :TERMCATIVO,'
      '  ECFA13ID = :ECFA13ID,'
      '  TERMA5ECFPORTACOM = :TERMA5ECFPORTACOM,'
      '  TERMCECFIMPRCLIE = :TERMCECFIMPRCLIE,'
      '  TERMCECFIMPRVEND = :TERMCECFIMPRVEND,'
      '  TERMCECFIMPRCONFDIV = :TERMCECFIMPRCONFDIV,'
      '  TERMCIMPPREVENDA = :TERMCIMPPREVENDA,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  TERMA60NOMECOMPUT = :TERMA60NOMECOMPUT,'
      '  TERMCAUTENTRFIMCUP = :TERMCAUTENTRFIMCUP,'
      '  TERMIPROXCODCTRC = :TERMIPROXCODCTRC,'
      '  TERMCHIDECLIVENDPL = :TERMCHIDECLIVENDPL,'
      '  TERMCIMPRDADINTCUP = :TERMCIMPRDADINTCUP,'
      '  TERMCCONFFECHCUPOM = :TERMCCONFFECHCUPOM,'
      '  TERMINUMERECCRED = :TERMINUMERECCRED,'
      '  TERMA254PATHTERM = :TERMA254PATHTERM'
      'where'
      '  TERMICOD = :OLD_TERMICOD')
    InsertSQL.Strings = (
      'insert into Terminal'
      
        '  (TERMICOD, EMPRICOD, CLIEA13ID, VENDICOD, PLRCICOD, TERMA60DES' +
        'CR, TERMCTIPO, '
      
        '   TERMCSTATUSCAIXA, TERMDSTATUSCAIXA, USUAICODATIVO, TERMCMOVES' +
        'TOQUE, '
      
        '   TERMCUSAVENDEDOR, TERMCUSALIMITECRED, TERMA255MSGTELA, TERMA6' +
        '0IMPCARNE, '
      
        '   TERMA60IMPPEDIDO, TERMA60IMPORCAMEN, TERMA60IMPCHEQUE, TERMA6' +
        '0IMPTCKAFCX, '
      
        '   TERMCUSAMOEDA, TERMCIMPRIMECHEQUE, TERMCCONFIMPCARNE, TERMCIM' +
        'PCONFDIVIDA, '
      
        '   TERMCINFDADOSCLICP, TERMCIMPIDCUPOM, TERMA255MSGCARNE, TERMCI' +
        'MPBARRASPED, '
      
        '   TERMCINFDADOCLIPAD, TERMINRODECQUANT, TERMINUMEVISTA, TERMINU' +
        'MEPRAZO, '
      
        '   TERMCATIVO, ECFA13ID, TERMA5ECFPORTACOM, TERMCECFIMPRCLIE, TE' +
        'RMCECFIMPRVEND, '
      
        '   TERMCECFIMPRCONFDIV, TERMCIMPPREVENDA, PENDENTE, REGISTRO, TE' +
        'RMA60NOMECOMPUT, '
      
        '   TERMCAUTENTRFIMCUP, TERMIPROXCODCTRC, TERMCHIDECLIVENDPL, TER' +
        'MCIMPRDADINTCUP, '
      '   TERMCCONFFECHCUPOM, TERMINUMERECCRED, TERMA254PATHTERM)'
      'values'
      
        '  (:TERMICOD, :EMPRICOD, :CLIEA13ID, :VENDICOD, :PLRCICOD, :TERM' +
        'A60DESCR, '
      
        '   :TERMCTIPO, :TERMCSTATUSCAIXA, :TERMDSTATUSCAIXA, :USUAICODAT' +
        'IVO, :TERMCMOVESTOQUE, '
      
        '   :TERMCUSAVENDEDOR, :TERMCUSALIMITECRED, :TERMA255MSGTELA, :TE' +
        'RMA60IMPCARNE, '
      
        '   :TERMA60IMPPEDIDO, :TERMA60IMPORCAMEN, :TERMA60IMPCHEQUE, :TE' +
        'RMA60IMPTCKAFCX, '
      
        '   :TERMCUSAMOEDA, :TERMCIMPRIMECHEQUE, :TERMCCONFIMPCARNE, :TER' +
        'MCIMPCONFDIVIDA, '
      
        '   :TERMCINFDADOSCLICP, :TERMCIMPIDCUPOM, :TERMA255MSGCARNE, :TE' +
        'RMCIMPBARRASPED, '
      
        '   :TERMCINFDADOCLIPAD, :TERMINRODECQUANT, :TERMINUMEVISTA, :TER' +
        'MINUMEPRAZO, '
      
        '   :TERMCATIVO, :ECFA13ID, :TERMA5ECFPORTACOM, :TERMCECFIMPRCLIE' +
        ', :TERMCECFIMPRVEND, '
      
        '   :TERMCECFIMPRCONFDIV, :TERMCIMPPREVENDA, :PENDENTE, :REGISTRO' +
        ', :TERMA60NOMECOMPUT, '
      
        '   :TERMCAUTENTRFIMCUP, :TERMIPROXCODCTRC, :TERMCHIDECLIVENDPL, ' +
        ':TERMCIMPRDADINTCUP, '
      '   :TERMCCONFFECHCUPOM, :TERMINUMERECCRED, :TERMA254PATHTERM)')
    DeleteSQL.Strings = (
      'delete from Terminal'
      'where'
      '  TERMICOD = :OLD_TERMICOD')
  end
  object TblEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 18
    Top = 253
    object TblEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Required = True
    end
    object TblEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object TblECF: TTable
    DatabaseName = 'DB'
    TableName = 'ECF'
    Left = 18
    Top = 281
    object TblECFECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblECFECFA30DESCR: TStringField
      FieldName = 'ECFA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblCliente: TTable
    DatabaseName = 'DB'
    TableName = 'CLIENTE'
    Left = 18
    Top = 309
    object TblClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object TblVendedor: TTable
    DatabaseName = 'DB'
    TableName = 'VENDEDOR'
    Left = 46
    Top = 309
    object TblVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Required = True
    end
    object TblVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object TblPlano: TTable
    DatabaseName = 'DB'
    TableName = 'PLANORECEBIMENTO'
    Left = 46
    Top = 253
    object TblPlanoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Required = True
    end
    object TblPlanoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object TblNumerario: TTable
    DatabaseName = 'DB'
    TableName = 'NUMERARIO'
    Left = 46
    Top = 281
    object TblNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Required = True
    end
    object TblNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblNumerarioCred: TTable
    DatabaseName = 'DB'
    TableName = 'NUMERARIO'
    Left = 74
    Top = 281
    object IntegerField1: TIntegerField
      FieldName = 'NUMEICOD'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblConfigIntegracao: TTable
    DatabaseName = 'DB'
    TableName = 'CONFIGINTEGRACAO'
    Left = 74
    Top = 309
  end
  object Dialog: TOpenDialog
    DefaultExt = '*.rpt'
    Filter = 'Crystal Reports|*.rpt'
    InitialDir = 'C:\Unti\Gestao'
    Left = 437
    Top = 1
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPODOCUMENTO'
      'order by TPDCA60DESCR')
    Macros = <>
    Left = 18
    Top = 338
    object SQLTipoDocumentoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocumentoTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 46
    Top = 338
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 536
    Top = 2
  end
end
