inherited FormTelaConfiguracaoCrediario: TFormTelaConfiguracaoCrediario
  Left = 152
  Top = 69
  Width = 733
  Height = 550
  Caption = 'Configura'#231#245'es de Credi'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 717
    Height = 511
    inherited PanelCentral: TPanel
      Width = 713
      Height = 427
      ParentFont = False
      inherited PanelBarra: TPanel
        Width = 0
        Height = 427
        TabOrder = 7
      end
      object GroupBox1: TGroupBox
        Left = 9
        Top = 4
        Width = 224
        Height = 129
        Caption = ' Atraso '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 5
          Top = 16
          Width = 90
          Height = 13
          Caption = '% Juros Mensal'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 36
          Width = 48
          Height = 13
          Caption = '% Multa'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 82
          Width = 143
          Height = 13
          Caption = 'Nro.dias n'#227'o cobrar Juros'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 60
          Width = 144
          Height = 13
          Caption = 'Nro.dias n'#227'o cobrar Multa'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 5
          Top = 104
          Width = 100
          Height = 13
          Caption = '% Taxa Cobran'#231'a'
          FocusControl = DBEdit14
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 155
          Top = 12
          Width = 62
          Height = 21
          DataField = 'CFCRN2PERCJURATRAS'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 155
          Top = 34
          Width = 62
          Height = 21
          DataField = 'CFCRN2PERCMULATRAS'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 155
          Top = 78
          Width = 62
          Height = 21
          DataField = 'CFCRINRODIASTOLJUR'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 155
          Top = 56
          Width = 62
          Height = 21
          DataField = 'CFCRINRODIASTOLMUL'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 155
          Top = 100
          Width = 62
          Height = 21
          DataField = 'CFCRN2PERCTAXACOBR'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 137
        Width = 224
        Height = 54
        Caption = ' Desconto por Adiantamento '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 5
          Top = 12
          Width = 69
          Height = 13
          Caption = '% Desconto'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 83
          Top = 12
          Width = 135
          Height = 13
          Caption = 'Nro.Dias Conceder Desc.'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 5
          Top = 28
          Width = 54
          Height = 21
          DataField = 'CFCRN2PERCADIANT'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 83
          Top = 28
          Width = 64
          Height = 21
          DataField = 'CFCRINRODIASADIANT'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 246
        Top = 137
        Width = 246
        Height = 54
        Caption = 'Nro. de Dias Para envio de Cartas em... '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label6: TLabel
          Left = 5
          Top = 12
          Width = 47
          Height = 13
          Caption = '1'#186' Aviso'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 58
          Top = 12
          Width = 47
          Height = 13
          Caption = '2'#186' Aviso'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 111
          Top = 12
          Width = 21
          Height = 13
          Caption = 'SPC'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 164
          Top = 12
          Width = 53
          Height = 13
          Caption = 'Cobran'#231'a'
          FocusControl = DBEdit13
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 5
          Top = 28
          Width = 44
          Height = 21
          DataField = 'CFCRINRODIACARTA1A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 58
          Top = 28
          Width = 44
          Height = 21
          DataField = 'CFCRINRODIACARTA2A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 111
          Top = 28
          Width = 44
          Height = 21
          DataField = 'CFCRINRODIACARTA3A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 164
          Top = 28
          Width = 44
          Height = 21
          DataField = 'CFCRINRODIACARTA4A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 9
        Top = 197
        Width = 482
        Height = 167
        Caption = ' Localiza'#231#227'o dos arquivos texto das Cartas de Aviso '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label11: TLabel
          Left = 8
          Top = 16
          Width = 98
          Height = 13
          Caption = 'Carta de 1'#186' Aviso'
          FocusControl = DBEdit11
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 54
          Width = 98
          Height = 13
          Caption = 'Carta de 2'#186' Aviso'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 9
          Top = 91
          Width = 123
          Height = 13
          Caption = 'Carta de Aviso de SPC'
          FocusControl = DBEdit12
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 9
          Top = 128
          Width = 119
          Height = 13
          Caption = 'Carta Personalizadas'
          FocusControl = DBEdit17
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit11: TDBEdit
          Left = 5
          Top = 29
          Width = 432
          Height = 21
          DataField = 'CFCRA255PATHCART1A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ArqCarta1Aviso: TFilenameEdit
          Left = 434
          Top = 29
          Width = 21
          Height = 21
          Filter = 'All files (*.rt)|*.rtf'
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 3
          OnChange = ArqCarta1AvisoChange
        end
        object DBEdit10: TDBEdit
          Left = 5
          Top = 67
          Width = 432
          Height = 21
          DataField = 'CFCRA255PATHCART2A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ArqCarta2Aviso: TFilenameEdit
          Left = 434
          Top = 67
          Width = 21
          Height = 21
          Filter = 'All files (*.rt)|*.rtf'
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 4
          OnChange = ArqCarta2AvisoChange
        end
        object DBEdit12: TDBEdit
          Left = 6
          Top = 104
          Width = 432
          Height = 21
          DataField = 'CFCRA255PATHCART3A'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ArqCartaAvisoSPC: TFilenameEdit
          Left = 434
          Top = 104
          Width = 21
          Height = 21
          Filter = 'All files (*.rt)|*.rtf'
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 5
          OnChange = ArqCartaAvisoSPCChange
        end
        object DBEdit17: TDBEdit
          Left = 6
          Top = 141
          Width = 432
          Height = 21
          DataField = 'CFCRA255PATHCARTPE'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ArqCartasPerson: TFilenameEdit
          Left = 434
          Top = 141
          Width = 21
          Height = 21
          Filter = 'All files (*.rt)|*.rtf'
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 7
          OnChange = ArqCartasPersonChange
        end
      end
      object GroupBox5: TGroupBox
        Left = 246
        Top = 4
        Width = 246
        Height = 69
        Caption = 'Bloqueios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label15: TDBCheckBox
          Left = 5
          Top = 16
          Width = 235
          Height = 13
          Caption = 'Bloquear venda p/cliente em 1'#186' Aviso'
          DataField = 'CFCRCBLOQVENDCLI1AV'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 5
          Top = 30
          Width = 235
          Height = 13
          Caption = 'Bloquear venda p/cliente em 2'#186' Aviso'
          DataField = 'CFCRCBLOQVENDCLI2AV'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 5
          Top = 44
          Width = 235
          Height = 13
          Caption = 'Bloquear venda p/cliente em SPC'
          DataField = 'CFCRCBLOQVENDCLI3AV'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox6: TGroupBox
        Left = 9
        Top = 366
        Width = 482
        Height = 45
        Caption = 'Localiza'#231#227'o do arquivo texto para mala direta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object DBEdit15: TDBEdit
          Left = 5
          Top = 17
          Width = 432
          Height = 21
          DataField = 'CFCRA254PATHMALADIRETA'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object FilenameMaladireta: TFilenameEdit
          Left = 434
          Top = 17
          Width = 21
          Height = 21
          Filter = 'All files (*.rt)|*.rtf'
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 1
          OnChange = FilenameMaladiretaChange
        end
      end
      object GroupBox7: TGroupBox
        Left = 246
        Top = 76
        Width = 246
        Height = 57
        Caption = 'Cart'#227'o Prefer'#234'ncial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label16: TLabel
          Left = 5
          Top = 12
          Width = 217
          Height = 13
          Caption = 'Prazo M'#237'nimo Para Cart'#227'o Prefer'#234'ncial'
          FocusControl = DBEdit16
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 101
          Top = 32
          Width = 24
          Height = 13
          Caption = 'Dias'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit16: TDBEdit
          Left = 5
          Top = 28
          Width = 92
          Height = 21
          DataField = 'CFCRIPRZMINCARTAO'
          DataSource = DSSQLConfigCrediario
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 713
      inherited PanelCabecalho: TPanel
        Width = 713
        inherited PanelNavigator: TPanel
          Width = 713
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 713
            inherited BtnFecharTela: TSpeedButton
              Left = 413
            end
            object LabelGravar: TSpeedButton
              Tag = 3
              Left = 4
              Top = 3
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Action = DataSetPost1
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                C2040000424DC204000000000000420000002800000018000000180000000100
                1000030000008004000000000000000000000000000000000000007C0000E003
                00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
                7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
                9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
                BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
                742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
                BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
                0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
                7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
                EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
                DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
                742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F}
              Margin = 0
              ParentFont = False
              Spacing = 1
            end
          end
        end
      end
    end
  end
  object SQLConfigCrediario: TQuery
    AfterEdit = SQLConfigCrediarioAfterEdit
    AfterPost = SQLConfigCrediarioAfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGCREDIARIO ')
    Left = 134
    Top = 7
    object SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField
      FieldName = 'CFCRN2PERCMULATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCMULATRAS'
    end
    object SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField
      FieldName = 'CFCRN2PERCJURATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCJURATRAS'
    end
    object SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField
      FieldName = 'CFCRINRODIASTOLJUR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLJUR'
    end
    object SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField
      FieldName = 'CFCRINRODIASTOLMUL'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLMUL'
    end
    object SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField
      FieldName = 'CFCRN2PERCADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCADIANT'
    end
    object SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField
      FieldName = 'CFCRINRODIASADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASADIANT'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField
      FieldName = 'CFCRINRODIACARTA1A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA1A'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField
      FieldName = 'CFCRINRODIACARTA2A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA2A'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField
      FieldName = 'CFCRINRODIACARTA3A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA3A'
    end
    object SQLConfigCrediarioCFCRA255PATHCART1A: TStringField
      FieldName = 'CFCRA255PATHCART1A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART1A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHCART2A: TStringField
      FieldName = 'CFCRA255PATHCART2A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART2A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHCART3A: TStringField
      FieldName = 'CFCRA255PATHCART3A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART3A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField
      FieldName = 'CFCRCCONSMOTBLOQ'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCCONSMOTBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField
      FieldName = 'CFCRCCONSCARTAVISO'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCCONSCARTAVISO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField
      FieldName = 'CFCRA255PATHRELSPC'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHRELSPC'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField
      FieldName = 'CFCRA255PATHAUTDEP'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHAUTDEP'
      Size = 255
    end
    object SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField
      FieldName = 'CFCRINRODIACARTA4A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA4A'
    end
    object SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField
      FieldName = 'CFCRN2PERCTAXACOBR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCTAXACOBR'
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI1AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI1AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI2AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI2AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI3AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI3AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField
      FieldName = 'CFCRA254PATHMALADIRETA'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA254PATHMALADIRETA'
      Size = 254
    end
    object SQLConfigCrediarioCFCRIPRZMINCARTAO: TStringField
      FieldName = 'CFCRIPRZMINCARTAO'
      Origin = 'DB.CONFIGCREDIARIO.CFCRIPRZMINCARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField
      FieldName = 'CFCRA255PATHCARTPE'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCARTPE'
      Size = 254
    end
  end
  object DSSQLConfigCrediario: TDataSource
    DataSet = SQLConfigCrediario
    Left = 162
    Top = 7
  end
  object ActionList1: TActionList
    Left = 190
    Top = 7
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DSSQLConfigCrediario
    end
  end
end
