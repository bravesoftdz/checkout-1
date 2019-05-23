inherited FormTelaExportacaoSeller: TFormTelaExportacaoSeller
  Caption = 'Exporta'#231#227'o Seller Mobile - by Easy2Solutions.com.br'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Bevel1: TBevel [0]
        Left = 357
        Top = 10
        Width = 398
        Height = 119
      end
      object Label8: TLabel [1]
        Left = 361
        Top = 16
        Width = 65
        Height = 13
        Caption = 'Contadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 394
        Top = 39
        Width = 31
        Height = 13
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel [3]
        Left = 387
        Top = 94
        Width = 38
        Height = 13
        Caption = 'Tabela'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel [4]
        Left = 377
        Top = 66
        Width = 47
        Height = 13
        Caption = 'T'#233'rmino'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 3
      end
      object RadioTipoExportacao: TRadioGroup
        Left = 6
        Top = 64
        Width = 336
        Height = 42
        Caption = ' Tipo Exporta'#231#227'o '
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Inicial'
          'Complementar')
        ParentFont = False
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 109
        Width = 336
        Height = 119
        Caption = ' Dados '#224' Exportar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object CkProdutos: TCheckBox
          Left = 12
          Top = 83
          Width = 174
          Height = 17
          Caption = 'Cadastro de Produtos'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
        end
        object CkClientes: TCheckBox
          Left = 12
          Top = 67
          Width = 174
          Height = 17
          Caption = 'Cadastro de Clientes'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
        object CkRotas: TCheckBox
          Left = 12
          Top = 51
          Width = 174
          Height = 17
          Caption = 'Cadastro de Roteiros'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 2
        end
        object CkVendedores: TCheckBox
          Left = 12
          Top = 35
          Width = 174
          Height = 17
          Caption = 'Vendedores'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
        object CkGrupos: TCheckBox
          Left = 12
          Top = 99
          Width = 174
          Height = 17
          Caption = 'Cadastro de Grupos'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 5
        end
        object CkPlanoRecebimento: TCheckBox
          Left = 12
          Top = 19
          Width = 174
          Height = 17
          Caption = 'Condi'#231#245'es de Pagamento'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
        end
      end
      object EditHoraInicio: TEdit
        Left = 430
        Top = 35
        Width = 90
        Height = 21
        TabStop = False
        Color = 14737632
        ReadOnly = True
        TabOrder = 3
      end
      object EditHoraTermino: TEdit
        Left = 431
        Top = 62
        Width = 90
        Height = 21
        TabStop = False
        Color = 14737632
        ReadOnly = True
        TabOrder = 4
      end
      object EditTabela: TEdit
        Left = 430
        Top = 90
        Width = 317
        Height = 21
        TabStop = False
        Color = 14737632
        ReadOnly = True
        TabOrder = 5
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 9
        Width = 336
        Height = 49
        Caption = ' Informe o caminho do(s) arquivo(s) a ser gerado(s) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label1: TLabel
          Left = 20
          Top = 14
          Width = 5
          Height = 13
        end
        object EditDiretorio: TDirectoryEdit
          Left = 6
          Top = 19
          Width = 323
          Height = 21
          ButtonHint = 'Selecione o Diret'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = 'C:\Unit\Gestao\Seller\Exportacao'
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object BtExecutar: TSpeedButton
              Tag = 3
              Left = 8
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Exportar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000000000
                00CF3000CF3000CF3000CF3000CF3000CF3000CF3000000000000000FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF0000000097CF0097FF006790000000006700006700003000FF30
                2FFF302FFF302FFF302FFF302FFF302FCF3000FF302FCF300000300000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000097FF00679000000000670000972F00972F00972F0030
                00FF302FFF302FFF672FFF672FFF302FFF302FFF302F00300000672F003000CF
                3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000067900000000067002FC82F00972F2FC82F00972F0097
                2F003000FF302FFF672FFF302FFF672FFF302FFF302F00300060C82F003000CF
                3000CF3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097CF00000000670060FF2F2FC82F2FC82F2FC82F00972F2FC8
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF672FFF302FFF302F00
                300000672F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097FF0097CF0000002FC82F60FF2F2FC82F2FC82F2FC82F0097
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF302FFF302F00300000
                7F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF00C8FF0097FF0097CF0000002FC82F2FC82F60FF2F2FC82F2FC8
                2F00972F00972F003000FF672FFF672FFF672FFF672FFF302F00300000972F00
                7F00007F00007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CFCFFFFF00C8FF0097FF0097CF00000060FF2F2FC82F2FC82F2FC8
                2F00972F00972F003000FF672F00000000000000000000000000000000000000
                0000000000007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CF90FFFF00C8FF0097FF0097CF0000002FC82F00972F7F7F
                00000000FF9700FF672FFF672F0097CF00C8FF00C8FF0097FF0097FF0097FF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000067000000
                00000000FF9700FF9700FF97000097CF90FFFF00C8FF00C8FF0097FF00000000
                7F00007F0000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF2FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000097
                FF000000FF9700FF9700FF97000097CF90FFFF90FFFF00C8FF0097FF0097CF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A02FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097FF0097
                FF000000FF9700FFC82FFF97000097CF90FFFF90FFFF90FFFF00C8FF0097FF00
                97CF00000000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCF2FC82F0097CFCFFFFF90FFFF00C8FF00C8FF0097
                FF000000FF9700FFC82FFFC82F0097CF90FFFF0097CFCFFFFF90FFFF00C8FF00
                97FF0097CF00000000972F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFFCF2F676090FFFF90FFFF00C8FF00C8
                FF000000FFC82FFF9700FF97000097CF0097CF00672F0097CFCFFFFF90FFFF00
                C8FF0097FF0097CF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCFFFFFCF2F676090FFFF90FFFF90FFFF90FFFF00C8
                FF000000FFC82FFFC82FFFC82F0097CFFF9700FF9700FF672F0097CFCFFFFF90
                FFFF00C8FF0097FF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A00097CF0097CF0097CF0097CF0097CF0097CF0097
                CF000000FFC82FFFC82FFFFF2F007F00FFC82F007F0000672F0030000097CFCF
                FFFF90FFFF00C8FF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFF2F00672F2FC82F00972F0067
                2FFFC82FFFC82FFFC82FFF9700FFC82FFF9700FFC82F2FC82F00672F00300000
                97CFCFFFFF90FFFF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEFC8A0FFFFFF00672F2FC82F2FC82F00972F0097
                2FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFF9700007F002FC82F007F00FF
                672F0097CFCFFFFF90FFFF0097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00672F60FF2F60FF2F2FC82F00972F0097
                2F00672FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFFC82F007F00FF672FFF
                672FFF672F0097CFCFFFFF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FCFFFCFCFFFCF60FF2F2FC82F2FC8
                2F00972F00972F00672FFFC82F00672F00672FFF672FFF9700FF9700FF9700FF
                672F2F67600067900097CF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FFFFFFFCFFFCF60FF2F60FF
                2F2FC82F00972F00972F00672F00972F00972F00672FFF672FFF9700FF9700FF
                672F00C8FF0097FF00679000C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC82FCFFFCF60FF
                2F60FF2F2FC82F2FC82F2FC82F00972F00972F00972F00672FFF672FFF672F00
                C8FF0097FF0097FF006790006790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC8
                2FCFFFCFFFFFFFCFFFCF60FF2F60FF2F2FC82F2FC82F00972F00672FFFFFFF00
                97CF0097CF0097CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2FC82F2FC82F2FC82F2FC82F2FC82F2FC82F2FC82FFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BtExecutarClick
            end
          end
        end
      end
    end
  end
end
