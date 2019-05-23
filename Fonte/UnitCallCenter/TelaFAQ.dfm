inherited FormTelaFAQ: TFormTelaFAQ
  Left = 188
  Top = 92
  Caption = 'FAQ'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited Panel2: TPanel
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Top = 41
        Height = 341
        inherited BevelEsq: TBevel
          Height = 341
        end
        object Button1: TRxSpeedButton
          Left = 1
          Top = 2
          Width = 126
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Down = True
          Caption = '&1 Consulta'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84848484
            848400315A00185A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484848484840052
            7B00527B73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84848400527B00527B
            8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8C
            D6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6
            FF8CD6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF
            8CD6FF8CD6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8C
            D6FF8CD6FF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6
            FF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF
            8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7373
            737373738CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8C
            D6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39423973CEFF
            0084BD00527B006B948CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B8CD6FF73
            CEFF73CEFF0084BD0084BD8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008CADFF8CD6FF8CD6
            FF8CD6FF8CD6FF006B9473CEFF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000008CD6FF8CD6FF
            00000073CEFF0084BD006B9473CEFF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF00
            0000006B9473CEFF0084BD6B6B6B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000006B6B6B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button1Click
        end
        object Button2: TRxSpeedButton
          Tag = 1
          Left = 1
          Top = 26
          Width = 126
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&2 Adicionar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84848484
            848400315A00185A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484848484840052
            7B00527B73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84848400527B00527B
            8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8C
            D6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6
            FF8CD6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF
            8CD6FF8CD6FF8CD6FF8CD6FF73CEFF00527B000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8C
            D6FF8CD6FF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6
            FF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00527B00527B8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF
            8CD6FF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7373
            737373738CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8C
            D6FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39423973CEFF
            0084BD00527B006B948CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00527B8CD6FF73
            CEFF73CEFF0084BD0084BD8CD6FF8CD6FF8CD6FF8CD6FF8CD6FF000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008CADFF8CD6FF8CD6
            FF8CD6FF8CD6FF006B9473CEFF8CD6FF8CD6FF8CD6FF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000008CD6FF8CD6FF
            00000073CEFF0084BD006B9473CEFF8CD6FF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF00
            0000006B9473CEFF0084BD6B6B6B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000006B6B6B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button2Click
        end
      end
      object PageFAQ: TPageControl
        Left = 130
        Top = 41
        Width = 627
        Height = 341
        ActivePage = PaginaConsulta
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabPosition = tpBottom
        object PaginaConsulta: TTabSheet
          Caption = 'Consulta'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 619
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 5
              Top = 18
              Width = 161
              Height = 13
              Caption = 'Digite a(s) palavra(s) chave:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 536
              Top = 9
              Width = 75
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Procurar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
            object EditProcura: TEdit
              Left = 171
              Top = 11
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object GroupTipo: TRadioGroup
              Left = 330
              Top = 1
              Width = 202
              Height = 36
              Columns = 3
              ItemIndex = 2
              Items.Strings = (
                'Pergunta'
                'Resposta'
                'Ambos')
              TabOrder = 1
            end
          end
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 41
            Width = 619
            Height = 274
            Align = alClient
            ColCount = 1
            DataSource = DSSQLConsultaFAQ
            PanelHeight = 137
            PanelWidth = 603
            TabOrder = 1
            RowCount = 2
            object Label5: TLabel
              Left = 6
              Top = 13
              Width = 27
              Height = 13
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 420
              Top = 13
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 7
              Top = 31
              Width = 52
              Height = 13
              Caption = 'Pergunta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 306
              Top = 31
              Width = 53
              Height = 13
              Caption = 'Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 40
              Top = 8
              Width = 113
              Height = 21
              Color = clBtnFace
              DataField = 'FAQDDEMISSAO'
              DataSource = DSSQLConsultaFAQ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 470
              Top = 8
              Width = 121
              Height = 21
              Color = clBtnFace
              DataField = 'USUAA60LOGIN'
              DataSource = DSSQLConsultaFAQ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBMemo3: TDBMemo
              Left = 5
              Top = 48
              Width = 291
              Height = 83
              Color = clBtnFace
              DataField = 'FAQDTPERGUNTA'
              DataSource = DSSQLConsultaFAQ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 2
            end
            object DBMemo4: TDBMemo
              Left = 302
              Top = 48
              Width = 291
              Height = 83
              Color = clBtnFace
              DataField = 'FAQDTRESPOSTA'
              DataSource = DSSQLConsultaFAQ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 3
            end
          end
        end
        object PaginaAdicionar: TTabSheet
          Caption = 'Adicionar'
          ImageIndex = 1
          object Label3: TLabel
            Left = 1
            Top = 41
            Width = 52
            Height = 13
            Caption = 'Pergunta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 1
            Top = 177
            Width = 59
            Height = 13
            Caption = 'Respostas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBMemoR: TDBMemo
            Left = 0
            Top = 192
            Width = 609
            Height = 117
            DataField = 'FAQDTRESPOSTA'
            DataSource = DSSQLNovoFAQ
            TabOrder = 0
            OnKeyPress = DBMemoPKeyPress
          end
          object DBMemoP: TDBMemo
            Left = 0
            Top = 58
            Width = 609
            Height = 117
            DataField = 'FAQDTPERGUNTA'
            DataSource = DSSQLNovoFAQ
            TabOrder = 1
            OnKeyPress = DBMemoPKeyPress
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 619
            Height = 41
            Align = alTop
            TabOrder = 2
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 504
              Top = 8
              Width = 109
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = 'Gravar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object SpeedButton1: TSpeedButton
              Tag = 3
              Left = 390
              Top = 8
              Width = 109
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = 'Cancelar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                4E010000424D4E01000000000000760000002800000014000000120000000100
                040000000000D800000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFF0000FFFCCCFFFFFFFFFFFFFF0000FFFCF0FFFFCCCCCCCFFF
                0000FFCEF0FFFFFCEEEE0FFF0000FFCF0FFFFFFFCEFF0FFF0000FFCF0FFFFFFF
                CFFF0FFF0000FFCF0FFFFFFCEFCF0FFF0000FFCFECFFFCCEF0FC0FFF0000FFFC
                FECCCEFF0FFF0FFF0000FFFFCFFFFF00FFFFFFFF0000FFFFF00000FFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
              ParentFont = False
              Spacing = 10
              OnClick = SpeedButton1Click
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 41
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 9
          Top = 18
          Width = 79
          Height = 13
          Caption = 'Selecione FAQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboFAQ: TRxDBLookupCombo
          Left = 95
          Top = 12
          Width = 186
          Height = 21
          DropDownCount = 8
          LookupField = 'FAQUA13ID'
          LookupDisplay = 'FAQUA60DESR'
          LookupSource = DSSQLFAQ
          TabOrder = 0
        end
      end
    end
  end
  object SQLFAQ: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from FAQ'
      'order by FAQUA60DESR')
    Macros = <>
    Left = 88
    Top = 24
    object SQLFAQFAQUA13ID: TStringField
      FieldName = 'FAQUA13ID'
      Origin = 'UNITGESTAO.FAQ.FAQUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFAQEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'UNITGESTAO.FAQ.EMPRICOD'
    end
    object SQLFAQFAQUICOD: TIntegerField
      FieldName = 'FAQUICOD'
      Origin = 'UNITGESTAO.FAQ.FAQUICOD'
    end
    object SQLFAQFAQUA60DESR: TStringField
      FieldName = 'FAQUA60DESR'
      Origin = 'UNITGESTAO.FAQ.FAQUA60DESR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLFAQ: TDataSource
    DataSet = SQLFAQ
    Left = 120
    Top = 24
  end
  object SQLConsultaFAQ: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      
        '  FAQDETALHE.FAQDDEMISSAO,FAQDETALHE.FAQDTPERGUNTA,FAQDETALHE.FA' +
        'QDTRESPOSTA,USUARIO.USUAA60LOGIN '
      'from '
      
        '  FAQDETALHE left outer join USUARIO on FAQDETALHE.USUAICOD=USUA' +
        'RIO.USUAICOD'
      'Where '
      '  FAQUA13ID=:FAQUA13ID and '
      '  ((%MFiltroP) %MCond'
      '   (%MFiltroR))'
      'order by '
      '  FAQDDEMISSAO')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltroP'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCond'
        ParamType = ptInput
        Value = 'OR'
      end
      item
        DataType = ftString
        Name = 'MFiltroR'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 320
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'FAQUA13ID'
        ParamType = ptUnknown
      end>
    object SQLConsultaFAQFAQDDEMISSAO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'FAQDDEMISSAO'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDDEMISSAO'
    end
    object SQLConsultaFAQFAQDTPERGUNTA: TMemoField
      DisplayLabel = 'Pergunta'
      FieldName = 'FAQDTPERGUNTA'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDTPERGUNTA'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLConsultaFAQFAQDTRESPOSTA: TMemoField
      DisplayLabel = 'Resposta'
      FieldName = 'FAQDTRESPOSTA'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDTRESPOSTA'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLConsultaFAQUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAA60LOGIN'
      Origin = 'UNITGESTAO.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLConsultaFAQ: TDataSource
    DataSet = SQLConsultaFAQ
    Left = 352
    Top = 24
  end
  object SQLNovoFAQ: TRxQuery
    Tag = 1
    BeforePost = SQLNovoFAQBeforePost
    OnNewRecord = SQLNovoFAQNewRecord
    DatabaseName = 'DB'
    DataSource = DSSQLFAQ
    RequestLive = True
    SQL.Strings = (
      'Select '
      '  *'
      'from '
      '  FAQDETALHE'
      'Where '
      '  FAQUA13ID is Null')
    Macros = <>
    Left = 416
    Top = 24
    object SQLNovoFAQFAQUA13ID: TStringField
      Tag = 1
      FieldName = 'FAQUA13ID'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNovoFAQFAQDICOD: TIntegerField
      Tag = 1
      FieldName = 'FAQDICOD'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDICOD'
    end
    object SQLNovoFAQFAQDDEMISSAO: TDateTimeField
      FieldName = 'FAQDDEMISSAO'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDDEMISSAO'
    end
    object SQLNovoFAQUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'UNITGESTAO.FAQDETALHE.USUAICOD'
    end
    object SQLNovoFAQFAQDTPERGUNTA: TMemoField
      FieldName = 'FAQDTPERGUNTA'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDTPERGUNTA'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLNovoFAQFAQDTRESPOSTA: TMemoField
      FieldName = 'FAQDTRESPOSTA'
      Origin = 'UNITGESTAO.FAQDETALHE.FAQDTRESPOSTA'
      BlobType = ftMemo
      Size = 1016
    end
  end
  object DSSQLNovoFAQ: TDataSource
    DataSet = SQLNovoFAQ
    Left = 448
    Top = 24
  end
end
