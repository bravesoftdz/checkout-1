inherited FormTelaExportarProdutoPDV: TFormTelaExportarProdutoPDV
  Left = 443
  Top = 122
  Width = 716
  Height = 581
  Caption = 'Exportar Produtos para PDV'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 700
    Height = 543
    inherited PanelCentral: TPanel
      Width = 696
      Height = 459
      inherited PanelBarra: TPanel
        Height = 459
      end
      object PanelImp: TPanel
        Left = 144
        Top = 16
        Width = 577
        Height = 345
        ParentColor = True
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 7
          Width = 78
          Height = 13
          Caption = 'Hora de In'#237'cio'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 115
          Top = 7
          Width = 97
          Height = 13
          Caption = 'Tempo Decorrido'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 219
          Top = 7
          Width = 94
          Height = 13
          Caption = 'Hora de T'#233'rmino'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 88
          Width = 178
          Height = 13
          Caption = 'N'#250'mero de registros '#224' exportar'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnIniciar: TSpeedButton
          Tag = 3
          Left = 108
          Top = 299
          Width = 105
          Height = 41
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
            180000000000000C000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF1F18
            1F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F
            181F1F181F1F181F1F181F1F181F1F181FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBF0030600030600030600030601F181FBFBFBFBFBFBF909090D0E0
            E0BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF8FA0AF8FA0AF8FA0AF8FA0AF8FA0AF8F
            A0AF8FA0AF9090909090909090906060601F181FBFBFBFBFBFBF1F181F1F181F
            1F181F1F181F0090FF90C8FF0090FF0030601F181F1F181F1F181F909090D0E0
            E0CFC8CF2F902F2F6000CFC8CFCFC8CFCFC8CFCFC8CFBFB8BFBFB8BF8FA0AFF0
            F0F0F0F0F0D0E0E09090909090906060606060601F181FBFBFBF606060606060
            6060606060600090FF00F8FF90C8FF0030601F181F5F585F5F585F909090F0F0
            F0CFC8CF60F82F2F902FCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFBFB8BFBFB8BF1F
            181F1F181F1F181F9090909090906060606060606060601F181F909090909090
            9090909090900090FF0090FF0090FF0030601F181F909090909090909090F0F0
            F0CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF8F
            A0AF8FA0AF8FA0AF9090909090906060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090905F585F1F181FBFBFBFBFBFBF909090F0F0
            F0F0F0F0F0F0F0F0F0F0D0E0E0D0E0E0D0E0E0D0E0E0E0E8E0D0E0E0D0E0E0D0
            E0E0D0E0E0D0E0E0D0E0E0D0E0E06060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090905F585F1F181FBFBFBFBFBFBF6060606060
            6060606060606060606060606060606060606060606060606060606060606060
            60606060606060606060609090906060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090906060601F181FBFBFBFBFBFBFBFBFBF1F18
            1F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F
            181F1F181F1F181F1F181F6060609090906060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090906060601F181FBFBFBFBFBFBF909090D0E0
            E0D0E0E0D0E0E0D0E0E0CFC8CFCFC8CFCFC8CFBFB8BFBFB8BFBFB8BFBFB8BF8F
            A0AF8FA0AF8FA0AF8FA0AF1F181F6060609090906060601F181FBFBFBF1F181F
            1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F909090F0F0
            F0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0EFE8EFE0E8E0D0E0E0D0E0E0E0
            E8E0D0E0E0D0E0E08FA0AF9090901F181F6060609090901F201F909090D0E0E0
            BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF8FA0AF8FA0AF909090909090909090F0F0
            F0D0E0E060300060602F60602F60602F60602F60602F60602F60602F60602F60
            602F60602FD0E0E08FA0AF9090908080801F181F606060BFBFBF909090F0F0F0
            CFC8CF2F902F2F6000BFB8BFBFB8BFBFB8BFBFB8BF8FA0AF909090909090F0F0
            F0E0E8E06030007F780090902F7F780090902F7F78007F780060602F7F780060
            602F60602FD0E0E08FA0AF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            CFC8CF60F82F2F902FCFC8CFCFC8CFBFB8BFBFB8BFBFB8BFBFB8BF909090F0F0
            F0E0E8E060300090902F7F780090902F7F780090902F7F78007F780060602F7F
            780060602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF8FA0AF909090F0F0
            F0D0E0E06030007F780090902F90902F90902F7F780090902F7F78007F780060
            602F60602FE0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E0E8E0E0E8E0E0E8E0D0E0E0909090EFF8
            FFE0E8E060300090902F90902FCFC82F90902F90902F7F780090902F7F78007F
            780060602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF606060606060
            606060606060606060606060606060606060606060606060606060909090F0F0
            F0D0E0E060300090902FCFC82FFFF800CFC82F90902F90902F7F78007F780060
            602F60602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFFFF8FF1F181F
            1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F909090F0F0
            F0D0E0E060300090902F90902FCFC82F90902F90902F7F780090902F7F78007F
            780060602FE0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090D0E0E0
            D0E0E0D0E0E0D0E0E0CFC8CFCFC8CFCFC8CFBFB8BFBFB8BFBFB8BF909090F0F0
            F0D0E0E06030007F780090902F90902F90902F7F780090902F7F78007F780060
            602F60602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0909090F0F0
            F0D0E0E060300060300060300060300060300060300060300060300060300060
            3000603000D0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E060300090002F90002F90002F90002F90002F90002F90002F909090F0F0
            F0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0
            E8E0D0E0E0E0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF302FCF302FCF302FCF302FCF302FCF302F909090F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0CFC8CF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF302FCF302FCF302FCF302FCF302FCF302FCF302F9090
            90BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBF
            B8BFBFB8BFBFB8BFBFB8BFBFB8BF8080801F201FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF6000CF6000CF6000CF302FCF302FCF302FCF302FCF30
            2F90909090909090909090909090909090909090909090909090909090909090
            9090909090909090909090909090909090BFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF6000FF6000FF9060FF6000CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF6000FF9060F0F0F0FF9060CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            E0E8E0603000CF6000FF6000FF9060FF6000CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF6000CF6000CF6000CF302FCF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E06030006030006030006030006030006030006030006030006030006030
            00603000D0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            E0E8E0E0E8E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8
            E0D0E0E0E0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0CFC8CF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090
            BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
            BFBFB8BFBFB8BFBFB8BFBFB8BF8080801F201FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            9090909090909090909090909090909090909090909090909090909090909090
            90909090909090909090909090909090BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
          ParentFont = False
          Spacing = 8
          OnClick = BtnIniciarClick
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 50
          Height = 13
          Caption = 'Terminal'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditHoraInicio: TEdit
          Left = 7
          Top = 23
          Width = 100
          Height = 21
          TabStop = False
          Color = 16249066
          ReadOnly = True
          TabOrder = 0
        end
        object EditTempoDecorrido: TEdit
          Left = 114
          Top = 23
          Width = 100
          Height = 21
          TabStop = False
          Color = 16249066
          ReadOnly = True
          TabOrder = 1
        end
        object EditHoraTermino: TEdit
          Left = 218
          Top = 23
          Width = 100
          Height = 21
          TabStop = False
          Color = 16249066
          ReadOnly = True
          TabOrder = 2
        end
        object EditContTotRegistros: TCurrencyEdit
          Left = 7
          Top = 103
          Width = 310
          Height = 21
          TabStop = False
          Alignment = taLeftJustify
          AutoSize = False
          Color = 16249066
          DisplayFormat = '#'
          ReadOnly = True
          TabOrder = 3
        end
        object Panel4: TPanel
          Left = 6
          Top = 248
          Width = 310
          Height = 49
          BevelOuter = bvNone
          Color = 16249066
          TabOrder = 4
          object LabelInfo: TLabel
            Left = 0
            Top = 0
            Width = 309
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Color = 16249066
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object GroupBox1: TGroupBox
          Left = 328
          Top = 7
          Width = 233
          Height = 325
          Caption = ' Problemas '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object MemoProblemas: TMemo
            Left = 2
            Top = 15
            Width = 229
            Height = 308
            TabStop = False
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object EditTerminal: TEdit
          Left = 7
          Top = 63
          Width = 310
          Height = 21
          TabStop = False
          Color = 16249066
          ReadOnly = True
          TabOrder = 6
        end
        object GroupBox2: TGroupBox
          Left = 7
          Top = 127
          Width = 310
          Height = 119
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object MemoDados: TMemo
            Left = 2
            Top = 15
            Width = 306
            Height = 102
            TabStop = False
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object ExpProdAlter: TCheckBox
        Left = 159
        Top = 299
        Width = 290
        Height = 17
        TabStop = False
        Caption = 'Exportar somente produtos alterados'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        OnClick = ExpProdAlterClick
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 696
      inherited PanelCabecalho: TPanel
        Width = 696
        inherited PanelNavigator: TPanel
          Width = 696
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 696
          end
        end
      end
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO '
      'where %MFiltro and PRODCATIVO = '#39'S'#39)
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 16
    Top = 151
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'where not (TERMA254PATHTERM is null)  and '
      '   (TERMCTIPO="C") and'
      '   (TERMAHOSTSERVIDOR<>'#39#39')'
      'order by termicod')
    Macros = <>
    Left = 16
    Top = 119
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalTERMAHOSTSERVIDOR: TStringField
      FieldName = 'TERMAHOSTSERVIDOR'
      Origin = 'DB.TERMINAL.TERMAHOSTSERVIDOR'
    end
    object SQLTerminalTERMA254PATHTERM: TStringField
      FieldName = 'TERMA254PATHTERM'
      Origin = 'DB.TERMINAL.TERMA254PATHTERM'
      FixedChar = True
      Size = 254
    end
  end
  object SQLBarras: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTOBARRAS '
      'where Pendente='#39'S'#39)
    Macros = <>
    Left = 16
    Top = 186
  end
end
