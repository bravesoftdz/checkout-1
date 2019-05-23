inherited FormCadastroTarefa: TFormCadastroTarefa
  Left = 21
  Top = 22
  Caption = 'Formul'#225'rio Cadastro Tarefas'
  ClientHeight = 528
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 528
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 750
        inherited Panel1: TPanel
          Width = 748
          inherited PanelNavigator: TPanel
            Width = 748
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 748
            end
          end
          inherited PanelLeft: TPanel
            Left = 291
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 454
      inherited PanelBarra: TPanel
        Height = 454
        inherited Button3: TRxSpeedButton
          Caption = '&3 Dados Adicionais'
          Enabled = False
          Visible = True
          OnClick = Button1Click
        end
        object Button5: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 98
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Hist'#243'rico'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
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
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 74
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Check List'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
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
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 454
        inherited Panel5: TPanel
          Width = 620
          Height = 454
          inherited PagePrincipal: TPageControl
            Top = 41
            Width = 620
            Height = 413
            ActivePage = TabSheetProspect
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 66
                Width = 612
                Height = 321
                Font.Color = clBlack
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TAREA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREA30TITULO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREDDIGITACAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREDLEMBRETE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREHLEMBRETE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TARETSOLICITACAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TARECPENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCLA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRNEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREDPRAZOMAX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREDULTAGEND'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREA60MOTIVOADIO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAREA1000CHECKLIST'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TARECATULIZEMAIL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UsuarioDestino'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClasseUsuarioDestino'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                  inherited AdvPanel1: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 218
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
                Top = 263
              end
              object pnLegenda: TPanel
                Left = 0
                Top = 47
                Width = 612
                Height = 19
                Align = alTop
                BevelInner = bvLowered
                BevelOuter = bvSpace
                ParentColor = True
                TabOrder = 3
                object Label31: TLabel
                  Left = 290
                  Top = 3
                  Width = 127
                  Height = 14
                  AutoSize = False
                  Caption = 'Tarefas Indefinidas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 147
                  Top = 3
                  Width = 121
                  Height = 14
                  AutoSize = False
                  Caption = 'Tarefas N'#227'o Aceitas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 4868863
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 24
                  Top = 2
                  Width = 103
                  Height = 14
                  AutoSize = False
                  Caption = 'Tarefas Aceitas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Shape1: TShape
                  Left = 3
                  Top = 3
                  Width = 19
                  Height = 14
                  Brush.Color = clBlack
                end
                object Shape2: TShape
                  Left = 126
                  Top = 3
                  Width = 19
                  Height = 14
                  Brush.Color = clRed
                end
                object Shape3: TShape
                  Left = 269
                  Top = 3
                  Width = 19
                  Height = 14
                  Brush.Color = clGreen
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label9: TLabel
                Left = 0
                Top = 238
                Width = 612
                Height = 13
                Align = alTop
                Caption = 'Descri'#231#227'o da Tarefa:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object MemoDescTarefa: TDBMemo
                Left = 0
                Top = 251
                Width = 612
                Height = 136
                Align = alClient
                DataField = 'TARETSOLICITACAO'
                DataSource = DSTemplate
                MaxLength = 5000
                ScrollBars = ssVertical
                TabOrder = 0
              end
              object gboAceite: TGroupBox
                Left = 0
                Top = 0
                Width = 612
                Height = 34
                Align = alTop
                TabOrder = 1
                object btAceitar: TConerBtn
                  Left = 1
                  Top = 7
                  Width = 152
                  Height = 24
                  Cursor = crHandPoint
                  Caption = 'Aceitar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnClick = btAceitarClick
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF015403015403FF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFA46769A46769A46769A46769A46769405D2B01
                    540319A12E0E871C015403A46769A46769A46769FF00FFFF00FFFF00FFA46769
                    F7E3BCF8E0B7F7DDB00154030A6F122AC24C21B53D1AAB31015403F3CC8CF3CA
                    89A46769FF00FFFF00FFFF00FFA46769FAE6C6F8E2C0F7E0B801540335D35F01
                    5403035804119222108F1F236916F3CC8EA46769FF00FFFF00FFFF00FFA0675B
                    FAEACEEABD82EABC7FEABA7D0154034D7E2BE9B7740154030F8B1C015403F3D0
                    93A46769FF00FFFF00FFFF00FFA0675BFBEED7FAEBD0FAE9CAE9DDB7F8E2BCF8
                    E0B6F7DDB0F6D9AB015403097B13377524A46769FF00FFFF00FFFF00FFA7756B
                    FBF0DDEBC189EBBF87EBBD84EBBC81EABB7EEABA7BEAB878E9B7760258040665
                    0A415829FF00FFFF00FFFF00FFA7756BFCF4E6FCF2E1FBEFDAFBEDD3FAEACEFA
                    E7C7FAE5C1F8E2BBF7DEB566974C0259030A5208FF00FFFF00FFFF00FFBC8268
                    FEF7EDEDC490EDC28EEBC18BEBC088EBBF86EBBD82EABC80EABB7DEAB87A5E92
                    47005101015403FF00FFFF00FFBC82680C48970C48970C48970C48970C4897FB
                    EED8FAEBD1FAE9CBF8E6C5F8E3C0F7E1BA245B1A074E08FF00FFFF00FF0C4897
                    39A4FF339CFF2E96FF2E96FF0C4897EDC28CEBC18AEBC088EBBF84EBBC82FAE5
                    C1A46769015403004B00FF00FFD1926D0C48973DA9FF369FFF3098FF0C4897FC
                    F4E7FCF3E2FBEFDCFAEDD7FBEACFFAE9CAA46769FF00FFFF00FFFF00FF0C4897
                    53C2FF4AB8FF41ADFF3AA4FF0C4897EDC593EDC491EDC28FEDC28CEBC089FAEB
                    D1A46769FF00FFFF00FF0C48975BCCFF5BCCFF56C7FF0C489746B4FF0C4897FF
                    FAF4FEF8EFFEF6EBFCF4E5FCF2E0FBEFDAA46769FF00FFFF00FFFF00FF0C4897
                    5BCCFF0C4897FFFFFF0C4897FFFEFEFEFCFAFEFBF6FEFAF2FEF7EDFCF4E7FCF2
                    E1A46769FF00FFFF00FFFF00FFE7AB790C4897D1926DD1926DD1926DD1926DD1
                    926DD1926DD1926DD1926DD1926DD1926DD1926DFF00FFFF00FF}
                  Margin = 20
                  Flat = True
                  PlaceConer = pcNone
                  SymbolState = ssClose
                  SymbolColorOpen = clRed
                  SymbolColorClose = clMaroon
                  Transparent = True
                end
                object btRecusar: TConerBtn
                  Left = 153
                  Top = 7
                  Width = 152
                  Height = 24
                  Cursor = crHandPoint
                  Caption = 'Recusar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnClick = btRecusarClick
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
                    0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
                    B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
                    0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
                    00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
                    05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
                    00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
                    0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                  Margin = 20
                  Flat = True
                  PlaceConer = pcNone
                  SymbolState = ssClose
                  SymbolColorOpen = clRed
                  SymbolColorClose = clMaroon
                  Transparent = True
                end
              end
              object pnSecundario: TPanel
                Left = 0
                Top = 34
                Width = 612
                Height = 204
                Align = alTop
                AutoSize = True
                ParentColor = True
                TabOrder = 2
                object gboCliente: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 610
                  Height = 89
                  Align = alTop
                  Caption = 'Dados Cliente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object Label1: TLabel
                    Left = 6
                    Top = 14
                    Width = 32
                    Height = 13
                    Caption = 'Nome'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object AcessaCadastroCLiente: TSpeedButton
                    Left = 386
                    Top = 29
                    Width = 20
                    Height = 20
                    Cursor = crHandPoint
                    Hint = 'Acessa Cadastro Cliente'
                    Flat = True
                    Glyph.Data = {
                      9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                      18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                      0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                      48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                      0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                      FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                      7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                      B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                      FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                      00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                      EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                      FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                      00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                      B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                      0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = AcessaCadastroCLienteClick
                  end
                  object Label2: TLabel
                    Left = 6
                    Top = 50
                    Width = 38
                    Height = 13
                    Caption = 'Cidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 256
                    Top = 50
                    Width = 37
                    Height = 13
                    Caption = 'Titular'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label3: TLabel
                    Left = 215
                    Top = 50
                    Width = 14
                    Height = 13
                    Caption = 'UF'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object edCliCidade: TDBEdit
                    Left = 5
                    Top = 64
                    Width = 205
                    Height = 21
                    TabStop = False
                    BevelKind = bkSoft
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    DataField = 'CLIEA60CIDRES'
                    DataSource = dsSQLCliente
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object edCliTitular: TDBEdit
                    Left = 255
                    Top = 64
                    Width = 121
                    Height = 21
                    TabStop = False
                    BevelKind = bkSoft
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    DataField = 'CLIEA60TITULAR'
                    DataSource = dsSQLCliente
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object edCliUF: TDBEdit
                    Left = 215
                    Top = 64
                    Width = 34
                    Height = 21
                    TabStop = False
                    BevelKind = bkSoft
                    BorderStyle = bsNone
                    DataField = 'CLIEA2UFRES'
                    DataSource = dsSQLCliente
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object dblCliente: TRxDBLookupCombo
                    Left = 4
                    Top = 28
                    Width = 381
                    Height = 21
                    Cursor = crHandPoint
                    Hint = 'Cliente da Tarefa (F2 - Cadastro Cliente)'
                    DropDownCount = 8
                    DataField = 'CLIEA13ID'
                    DataSource = DSTemplate
                    DisplayEmpty = '...'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'CLIEA13ID'
                    LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
                    LookupDisplayIndex = 1
                    LookupSource = dsSQLCliente
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    OnKeyDown = dblClienteKeyDown
                  end
                end
                object gboTipoTarefa: TGroupBox
                  Left = 1
                  Top = 90
                  Width = 610
                  Height = 64
                  Align = alTop
                  TabOrder = 1
                  object Label10: TLabel
                    Left = 6
                    Top = 9
                    Width = 62
                    Height = 13
                    Caption = 'Tipo tarefa'
                    FocusControl = DBCLTpTarefa
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBCLTpTarefa: TDBLookupComboBox
                    Left = 6
                    Top = 23
                    Width = 203
                    Height = 21
                    Cursor = crHandPoint
                    DataField = 'TPTAICOD'
                    DataSource = DSTemplate
                    KeyField = 'TPTAICOD'
                    ListField = 'TPTAA30DESCRICAO'
                    ListSource = DSSQLTipoTarefa
                    TabOrder = 0
                    OnClick = DBCLTpTarefaClick
                  end
                  object pnGrupoUsuario: TPanel
                    Left = 216
                    Top = 8
                    Width = 449
                    Height = 53
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object Label4: TLabel
                      Left = 7
                      Top = -2
                      Width = 80
                      Height = 13
                      Caption = 'Grupo Usu'#225'rio'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label6: TLabel
                      Left = 143
                      Top = -2
                      Width = 89
                      Height = 13
                      Caption = 'Usu'#225'rio Destino'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit1: TDBEdit
                      Left = 7
                      Top = 11
                      Width = 130
                      Height = 21
                      BevelKind = bkSoft
                      BorderStyle = bsNone
                      DataField = 'ClasseUsuarioDestino'
                      DataSource = DSTemplate
                      ParentColor = True
                      TabOrder = 0
                    end
                    object DBEdit4: TDBEdit
                      Left = 143
                      Top = 11
                      Width = 130
                      Height = 21
                      BevelKind = bkSoft
                      BorderStyle = bsNone
                      DataField = 'UsuarioDestino'
                      DataSource = DSTemplate
                      ParentColor = True
                      TabOrder = 1
                    end
                    object DBCheckBox1: TDBCheckBox
                      Left = 4
                      Top = 35
                      Width = 213
                      Height = 17
                      Caption = 'Enviar Atualiza'#231#245'es via E-mail'
                      DataField = 'TARECATULIZEMAIL'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 2
                      ValueChecked = 'S'
                      ValueUnchecked = 'N'
                    end
                  end
                  object btAtribuirTarefa: TConerBtn
                    Left = 217
                    Top = 15
                    Width = 152
                    Height = 30
                    Caption = 'Atribuir Tarefa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    OnClick = btAtribuirTarefaClick
                    Glyph.Data = {
                      F6060000424DF606000000000000360000002800000018000000180000000100
                      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156
                      03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                      FF00FFFF00FF015603015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FF015603058C0D015603FF00FFFF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FF015603015603015603015603015603015603015603015603068E0E058C0D01
                      5603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                      FF00FFFF00FFFF00FF0156033DD56B36CE622FC55426BB451DAF3515A4280D9A
                      1C099213058C0D058C0D015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156033ED76D3CD46A35CC5F2DC451
                      24B8411BAD3313A3250C981A089111058C0D058C0D015603FF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156033ED76D3E
                      D76D3BD36834CB5D2BC14E22B6401AAB3011A0230C9718078F10015603FF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
                      C901560301560301560301560301560301560301560301560318A92D109E2001
                      5603DCEBFB0D5DC90D5DC90D5DC90D5DC90D5DC90D5DC9FF00FF0D5DC991CFFF
                      359FFE339DFE319AFF2F98FF2D96FF2C93FF0D3F7EFF00FFFF00FFFF00FF0156
                      031FB138015603FF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
                      5DC90D5DC992D0FF36A1FE359FFE339DFE319AFF2F98FF2D96FF0D3F7EFF00FF
                      FF00FFFF00FF015603015603FF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
                      FF1F81FF1F81FF0D5DC90D5DC993D1FF38A4FE36A1FE359FFE339DFE319AFF2F
                      98FF0D3F7EFF00FFFF00FFFF00FF015603FF00FFFF00FFFF00FFDCEBFB1F81FF
                      1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC995D3FF3AA6FE38A4FE36A1
                      FE359FFE339DFE319AFF0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC996D4FF
                      3CA9FE3AA6FE38A4FE36A1FE359FFE339DFE0D3F7EFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
                      5DC90D5DC997D5FF3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D3F7EFF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
                      FF1F81FF1F81FF0D5DC90D5DC998D7FF40ADFE3EABFE3CA9FE3AA6FE38A4FE36
                      A1FE0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFBDCEBFB
                      DCEBFBDCEBFBDCEBFBDCEBFBDCEBFBDCEBFB0D5DC94786C12374C12273C12172
                      C12070C11F6FC11F6EC10D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D
                      3F7E0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99AD9FF
                      43B2FE41B0FE40ADFE3EABFE3CA9FE3AA6FE1F6EC136A1FE359FFE339DFE319A
                      FF2F98FF2D96FF2C93FF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FF0D5DC99CD9FF44B4FE43B2FE41B0FE40ADFE3EABFE3CA9FE1F6FC138A4FE
                      36A1FE359FFE339DFE319AFF2F98FF2D96FF0D5DC9FF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE44B4FE42B1FE41B0FE40ADFE3E
                      ABFE2070C13AA6FE38A4FE36A1FE359FFE339DFE319AFF2F98FF0D5DC9FF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE46B6FE44B4
                      FE42B1FE41AFFE3FACFE2172C13CA9FE3AA6FE38A4FE36A1FE359FFE339DFE31
                      9AFF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF
                      46B6FE46B6FE46B6FE44B4FE42B1FE41AFFE2273C13EABFE3CA9FE3AA6FE38A4
                      FE36A1FE359FFE339DFE0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FF0D5DC9A7DEFF46B6FE46B6FE46B6FE46B6FE44B4FE42B1FE2374C13FACFE
                      3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D5DC9FF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FF0D5DC9E0EFFBA7DEFF9CDAFF9CDAFF9CDAFF9CD9FF9A
                      D8FF4786C198D5FF97D4FF96D4FF95D3FF93D1FF92D0FF91CFFF0D5DC9FF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
                      C90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D
                      5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                    Margin = 20
                    Flat = True
                    PlaceConer = pcNone
                    SymbolState = ssClose
                    SymbolColorOpen = clRed
                    SymbolColorClose = clMaroon
                    Transparent = True
                  end
                end
                object gboOutrasInfo: TGroupBox
                  Left = 1
                  Top = 154
                  Width = 610
                  Height = 49
                  Align = alTop
                  Caption = 'Outras Informa'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  object lstOutrasInformacoes: TListBox
                    Left = 2
                    Top = 15
                    Width = 606
                    Height = 32
                    Style = lbOwnerDrawVariable
                    Align = alClient
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    ItemHeight = 13
                    ParentColor = True
                    TabOrder = 0
                    OnDrawItem = lstOutrasInformacoesDrawItem
                  end
                end
              end
            end
            object TabSheetHelpDesk: TTabSheet
              ImageIndex = 2
              object Label7: TLabel
                Left = 0
                Top = 84
                Width = 57
                Height = 13
                Align = alTop
                Caption = 'Problema:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 0
                Top = 182
                Width = 95
                Height = 13
                Align = alTop
                Caption = 'Solu'#231#227'o via fone:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBMemo1: TDBMemo
                Left = 0
                Top = 97
                Width = 612
                Height = 85
                TabStop = False
                Align = alTop
                BevelKind = bkSoft
                BorderStyle = bsNone
                DataField = 'HELPTSOLICITACAO'
                DataSource = dsSQLAtendimento
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object DBMemo2: TDBMemo
                Left = 0
                Top = 195
                Width = 612
                Height = 85
                TabStop = False
                Align = alTop
                BevelKind = bkSoft
                BorderStyle = bsNone
                DataField = 'HELPTSOLUCAO'
                DataSource = dsSQLAtendimento
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 612
                Height = 84
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Label16: TLabel
                  Left = 4
                  Top = 0
                  Width = 89
                  Height = 13
                  Caption = 'Id Atendimento'
                  FocusControl = DBEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 112
                  Top = 0
                  Width = 45
                  Height = 13
                  Caption = 'Contato'
                  FocusControl = DBEdit7
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 4
                  Top = 40
                  Width = 61
                  Height = 13
                  Caption = 'Data Inicio'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 112
                  Top = 40
                  Width = 47
                  Height = 13
                  Caption = 'T'#233'rmino'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit6: TDBEdit
                  Left = 4
                  Top = 16
                  Width = 101
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'HELPA13ID'
                  DataSource = dsSQLAtendimento
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 112
                  Top = 16
                  Width = 200
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'HELPCCONTATO'
                  DataSource = dsSQLAtendimento
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit8: TDBEdit
                  Left = 4
                  Top = 56
                  Width = 101
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'HELPDINICIO'
                  DataSource = dsSQLAtendimento
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit9: TDBEdit
                  Left = 112
                  Top = 56
                  Width = 101
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'HELPDTERMINO'
                  DataSource = dsSQLAtendimento
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
              end
            end
            object TabSheetHistorico: TTabSheet
              ImageIndex = 3
              object pnHistorico: TPanel
                Left = 0
                Top = 0
                Width = 612
                Height = 379
                Align = alClient
                Color = 15461355
                TabOrder = 0
                object Label17: TLabel
                  Left = 1
                  Top = 1
                  Width = 610
                  Height = 22
                  Align = alTop
                  AutoSize = False
                  Caption = 'Hist'#243'rico'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                end
                object btHistorico: TSpeedButton
                  Left = 326
                  Top = 1
                  Width = 129
                  Height = 21
                  Cursor = crHandPoint
                  Caption = 'Incluir Hist'#243'rico'
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FF767474787777807E7E7E7D7D797777767474FF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF767474838282ACACADADACAFA3
                    A3A0A49F9AA79E9EA59C9C848080767474FF00FFFF00FFFF00FFFF00FFFF00FF
                    818181A1A0A0CBCBCC9D9A969290819696938A8B959A907E8F817ABBA4A3A495
                    95747373FF00FFFF00FFFF00FF767474A3A0A1D8D5D7969289C5C2AAFEF0CED3
                    C0C4ABA4CBFFFFE5D4D3C9847B6FBB9A9AA69595767474FF00FFFF00FF968F96
                    7DAC7F1F6E25CFD3B2FFF4CCF3C990EFB677EFAA67EFBF86FFFBDEEEF3EB8377
                    6ACAA3A4888080FF00FF767474799178269E3C2AC0524C9A49F7F3C0FFF8C9FA
                    EDB8F4CF97EEB87EF2C587FFE7C6CCCBC0937870B79C9C8C8182707E6F107A1A
                    29C44E40DD7028BC5069AF5EFEFFD3FEFFD3FCF8C9FFE7ACFBBD7BF0AD6FFFF7
                    D98C806FC49E9E8C81821068140A8F161DB0362ABF4B26AD450E7B1B7DB067B0
                    AA956A6A629D9E82967F62D1955ACFBFC5807F89C69E999788882D6E2F337B35
                    0D961B15A62B438F47C0D9B8C6E0A3AFAF953A3A3C292A286E6C5BC5935FB7A9
                    C0747589C9A09C9687879387928EAA8E06810C079313589F5CFFFFFFFFFFF4FF
                    FFD5D0D0AF4C4D44A49879FFCF91FFEEC096897AC59FA18B8081767474AAA9A9
                    1D8022018C07167F1CDDE6DAFFFFFFFFFFFAFFFFEBE7E7CA424139978873D5D5
                    B7A18883BD9F9F8B8081FF00FF8C878A7FA780047A0A00860529892D9CC49EE9
                    F2EAF6FAF6FFFFFEEEEECFBDC2A19C9284CEA7A98A8181FF00FFFF00FF767474
                    9F989E77A5790F7B14007703006E0407680D1B7227C2DEC0E7E7D7AAA393C7A6
                    A79E9090767474FF00FFFF00FFFF00FF7B7B7A9A979AABBAAB89AA8A70966D7D
                    996F93A584B1B0A3B1A4A0C4AAAB9C8F8F7B7B7BFF00FFFF00FFFF00FFFF00FF
                    FF00FF767474898688ABA4AABBB2BAB5AFB5B0A9ACABA1A39E97998482827674
                    74FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7674747674747A
                    79797B7979767575767474FF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentFont = False
                  OnClick = btHistoricoClick
                end
                object DBCtrlGridHistorico: TDBCtrlGrid
                  Left = 1
                  Top = 23
                  Width = 614
                  Height = 354
                  Align = alClient
                  DataSource = dsSQLTarefaHistorico
                  PanelHeight = 177
                  PanelWidth = 597
                  TabOrder = 0
                  RowCount = 2
                  object DBMemoTarefaHistorico: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 597
                    Height = 177
                    Align = alClient
                    DataField = 'TRHTA1000HISTORICO'
                    DataSource = dsSQLTarefaHistorico
                    ReadOnly = True
                    ScrollBars = ssBoth
                    TabOrder = 0
                    WordWrap = False
                  end
                end
                object pnMaisMenosCol: TPanel
                  Left = 56
                  Top = 2
                  Width = 137
                  Height = 19
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  object btMenosCol: TSpeedButton
                    Left = 0
                    Top = 1
                    Width = 65
                    Height = 18
                    Cursor = crHandPoint
                    Caption = '-'
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 9175040
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = btMenosColClick
                  end
                  object btMaisCol: TSpeedButton
                    Left = 65
                    Top = 1
                    Width = 65
                    Height = 18
                    Cursor = crHandPoint
                    Caption = '+'
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 9175040
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = btMaisColClick
                  end
                end
              end
            end
            object TabSheetCheckList: TTabSheet
              ImageIndex = 4
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 612
                Height = 379
                Align = alClient
                ParentColor = True
                TabOrder = 0
                object Label14: TLabel
                  Left = 1
                  Top = 1
                  Width = 97
                  Height = 13
                  Align = alTop
                  Caption = 'CheckList Padr'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 1
                  Top = 153
                  Width = 51
                  Height = 13
                  Align = alTop
                  Caption = 'Adicional'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBMemo3: TDBMemo
                  Left = 1
                  Top = 14
                  Width = 610
                  Height = 139
                  Align = alTop
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'TAREA1000CHECKLIST'
                  DataSource = DSTemplate
                  ScrollBars = ssBoth
                  TabOrder = 0
                  WantTabs = True
                end
                object mmCheckList: TMemo
                  Left = 1
                  Top = 166
                  Width = 610
                  Height = 89
                  Align = alTop
                  BevelInner = bvLowered
                  BevelKind = bkSoft
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  ScrollBars = ssBoth
                  TabOrder = 1
                  WantTabs = True
                end
                object btAddCheckList: TConerBtn
                  Left = 2
                  Top = 256
                  Width = 111
                  Height = 33
                  Cursor = crHandPoint
                  Caption = 'Adicionar'
                  TabOrder = 2
                  OnClick = btAddCheckListClick
                  Glyph.Data = {
                    F6060000424DF606000000000000360000002800000018000000180000000100
                    180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4E27004E27005229005E2E005E2E
                    005229005028004E2700FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4C26005028006431008A4400
                    9E4E00A65200A65200A04F009047006A34005229004E2700FF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF66320062300094
                    4900B85B00C26000C05F00BE5E00BE5E00C05F00C26000BA5C009C4D006E3600
                    522900FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7238
                    00783B00BA5C00C26000BE5E00BA5C00BA5C00BA5C00BA5C00BA5C00BA5C00BC
                    5D00C26000BE5E00864200542A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FF7A3C00864200CC6500C66200BC5D00BA5C00BA5C00B45900B45900BA5C
                    00BA5C00BA5C00BA5C00BA5C00BE5E00C260008C4500542A00FF00FFFF00FFFF
                    00FFFF00FFFF00FF5C2D00864200D86B00CE6600C66200C26000BC5D00B65A00
                    BC5D00BA5C00BA5C00BA5C00BA5C00BA5C00BA5C00BA5C00BC5D00C260008A44
                    00522900FF00FFFF00FFFF00FFFF00FF643100D66A00DE6E00D06700CE6600C6
                    6200B65A00BC5D00BA5C00DBA979FBF5F0FBF5F0E8C8A9BC6209BA5C00BA5C00
                    BA5C00BC5D00C05F00683300FF00FFFF00FFFF00FF703700A65200EE7600DC6D
                    00D66A00CC6500BE5E00C05F00BC5D00BA5C00DEB084FFFFFFFFFFFFFFFFFFE9
                    CAACBC6209BA5C00BA5C00BA5C00C260009C4D00522900FF00FFFF00FF723800
                    E06F00EC7500E27000D66A00C26000BE5E00BE5E00BC5D00BA5C00BE640DE7C5
                    A5FFFFFFFFFFFFFFFFFFE7C6A6BC6006BA5C00BA5C00BC5D00BC5D00643100FF
                    00FF763A00924800F87B00EA7400E67200D46900C66200BC5D00BC5D00BC5D00
                    BC5D00BC5D00BC5D00E2B992FFFEFEFFFFFFFFFFFFE5C2A0BB5F04BA5C00BA5C
                    00C260007E3E00562A00763A00B25800FF7E00F27800E67200F3861BDF852DCB
                    7B2CD5802CD8812CD07D2CD07D2CD17C29C8792CEBD0B5FFFFFFFFFFFFFFFFFF
                    E3BD98BA5D01BA5C00C26000944900562A00803F00CA6400FF860FF87B00FF7E
                    00FEEEDEFFFBF8FEFBF8FFFBF8FFFBF8FFFBF8FFFBF8FFFCF8FDF9F6FBF7F2FF
                    FFFFFFFFFFFFFFFFFFFFFFE0B58CBA5C00C260009E4E00542A008A4400E06F00
                    FF9731FF8003FC7D00FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F2BC5D00C05F00A04F0066
                    3200924800E06F00FFA853FF8F21FC7D00FEDCBAFFEEDEFFEEDDFFEEDDFFEEDD
                    FFEEDDFFEEDDFEEDDDF8E7D6F9EEE4FFFFFFFFFFFFFFFFFFFDF9F6D9995BBE5E
                    00C260009E4E00562A00984B00D86B00FFB267FFA64FFA7C00FC7F03FC820AFC
                    820AFC820AFC820AFC820AF17C0AE27101E0852CF7E0C9FFFFFFFFFFFFFDF7F1
                    E1974FD66A00C46100C26000904700562A00FF00FFBE5E00FFB165FFC083FF92
                    27E87300FC7D00FC7D00FC7D00FC7D00FC7D00F87B00F39539FAE9D8FFFFFFFF
                    FFFFFCF3EAE49344D66A00CE6600C05F00C26000783B00FF00FFFF00FFC66200
                    FF9833FFD2A7FFB66FFF8309E87300FA7C00FC7D00FC7D00FC7D00FDA44CFFF7
                    F0FFFFFFFFFFFFFBEFE4E18D3AD46900D06700C86300C66200BE5E005E2E00FF
                    00FFFF00FFFF00FFE27000FFCB99FFD8B1FFA64FFF7E00E67200F87B00FC7D00
                    FC7D00FECFA1FFFFFFFFFFFFFBEBDBE68A30DA6C00D86B00D46900CC6500D469
                    009A4C00FF00FFFF00FFFF00FFFF00FFF47900FF9833FFDAB5FFD8B1FFA44BFF
                    8309E87300F87B00FC7D00FD9D3EFFF0E2FFDEBEE78628E27000E06F00DC6D00
                    D86B00D86B00CE6600663200FF00FFFF00FFFF00FFFF00FFFF00FFD66A00FFAF
                    61FFE2C5FFDEBDFFB46BFF9227F87B00F27800FF8309FC7D00F07700F27800EE
                    7600EC7500E67200E27000DE6E00884300FF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFD26800FFB165FFE2C5FFE8D1FFCFA1FFB267FF9E3FFF8F21FF89
                    15FF8B19FF8E1FFF8E1FFF8711FC7D00EA7400924800FF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFE27000FF9C3BFFCB99FFDEBDFFE2C5
                    FFD8B1FFCB99FFC287FFBC7BFFB46BFFA44BFF9227F47900944900FF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE27000E2
                    7000FF9E3FFFBC7BFFC893FFC893FFC287FFB771FFA64FFF8B19D06700864200
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFE27000E06F00F87B00F87B00FA7C00EE7600CC65009A
                    4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                  Flat = True
                  PlaceConer = pcNone
                  SymbolState = ssClose
                  SymbolColorOpen = clRed
                  SymbolColorClose = clMaroon
                  Transparent = True
                end
              end
            end
            object TabSheetProspect: TTabSheet
              ImageIndex = 5
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 612
                Height = 387
                Align = alClient
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label21: TLabel
                  Left = 0
                  Top = 0
                  Width = 60
                  Height = 13
                  Caption = 'ID Neg'#243'cio'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 109
                  Top = 0
                  Width = 65
                  Height = 13
                  Caption = 'Dt. Emiss'#227'o'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 0
                  Top = 40
                  Width = 55
                  Height = 13
                  Caption = 'Descri'#231#227'o'
                  FocusControl = DBEdit12
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 0
                  Top = 80
                  Width = 27
                  Height = 13
                  Caption = 'Fone'
                  FocusControl = DBEdit13
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 112
                  Top = 80
                  Width = 45
                  Height = 13
                  Caption = 'Contato'
                  FocusControl = DBEdit14
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 0
                  Top = 160
                  Width = 29
                  Height = 13
                  Caption = 'Valor'
                  FocusControl = DBEdit15
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 0
                  Top = 200
                  Width = 21
                  Height = 13
                  Caption = 'Obs'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 0
                  Top = 120
                  Width = 52
                  Height = 13
                  Caption = 'Endere'#231'o'
                  FocusControl = DBEdit17
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 472
                  Top = 120
                  Width = 38
                  Height = 13
                  Caption = 'Cidade'
                  FocusControl = DBEdit18
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 576
                  Top = 120
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  FocusControl = DBEdit19
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label32: TLabel
                  Left = 304
                  Top = 120
                  Width = 34
                  Height = 13
                  Caption = 'Bairro'
                  FocusControl = DBEdit21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit10: TDBEdit
                  Left = 0
                  Top = 16
                  Width = 101
                  Height = 21
                  AutoSelect = False
                  AutoSize = False
                  BevelKind = bkTile
                  BorderStyle = bsNone
                  Color = 15461355
                  DataField = 'PRNEA13ID'
                  DataSource = DSSQLProspect
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 108
                  Top = 16
                  Width = 101
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEDEMISSAO'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit12: TDBEdit
                  Left = 0
                  Top = 56
                  Width = 545
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA100DESCRICAO'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit13: TDBEdit
                  Left = 0
                  Top = 96
                  Width = 101
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA15CONTATOFONE1'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEdit14: TDBEdit
                  Left = 110
                  Top = 96
                  Width = 187
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA60CONTATO'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 4
                end
                object DBEdit15: TDBEdit
                  Left = 0
                  Top = 176
                  Width = 97
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEN2VALOR'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 5
                end
                object DBEdit17: TDBEdit
                  Left = 0
                  Top = 136
                  Width = 297
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA60END'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 6
                end
                object DBEdit18: TDBEdit
                  Left = 472
                  Top = 136
                  Width = 100
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA60CIDADE'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 7
                end
                object DBEdit19: TDBEdit
                  Left = 576
                  Top = 136
                  Width = 30
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA2UF'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 8
                end
                object DBEdit21: TDBEdit
                  Left = 304
                  Top = 136
                  Width = 161
                  Height = 21
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA60BAIRRO'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 9
                end
                object DBMemo4: TDBMemo
                  Left = 0
                  Top = 216
                  Width = 609
                  Height = 89
                  BevelKind = bkSoft
                  BorderStyle = bsNone
                  DataField = 'PRNEA254OBS'
                  DataSource = DSSQLProspect
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 10
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 620
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            AutoSize = True
            object Label13: TLabel
              Left = 298
              Top = 2
              Width = 27
              Height = 13
              Caption = 'Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 209
              Top = 2
              Width = 55
              Height = 13
              Caption = 'Lembrete'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 2
              Top = 2
              Width = 32
              Height = 13
              Caption = 'Titulo'
              FocusControl = DBTituloTarefa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btConcluir: TSpeedButton
              Left = 347
              Top = 8
              Width = 106
              Height = 30
              Cursor = crHandPoint
              Caption = 'Concluir'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FF033B8A033D90013D95023B91033A89033A89FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0357D30147B20051D0035CE007
                63E3035CE0004ED30042B7023A8F023A8FFF00FFFF00FFFF00FFFF00FFFF00FF
                0650BA0357D32781F278B4F7CAE2FCE9F4FFDCEDFF9CC7FA3F8FF20155DD0140
                A404367DFF00FFFF00FFFF00FF075DD70762E155A0F7F3F8FEFFFFFFE9F3FCC6
                DEFAD9E9FCFFFFFFFFFFFF99C5F8055DE70040A302398BFF00FFFF00FF075DD7
                529EF7FEFEFFF0F7FE5CA3F31E78EBA1C9F70D65E32D7AE9BAD7F8FFFFFF9CC9
                F80355DE02398BFF00FF0455C9207DF0E1EFFEFFFFFF358CF30F6EEEC7E0FBFF
                FFFF2F83EA004ADE0559E1BAD8F8FFFFFF3E8FF20043B7033E96085FDA56A1FA
                FFFFFF9ECBFB2D88F4D4E9FCFCFEFED7E9FC8ABDF60058E2004FE02A7BE7FFFF
                FF9FCBFA0050D4033E960F6BE68BC1FCFFFFFF56A4FC97C7FCF8FBFF4B9AF628
                82F2D9EAFC1975EB005AE5015AE2D9E9FBDEEFFF0560E202409C1B76EDA4CFFC
                FFFFFF50A0FF2586FE358FFA0E70F6096AF289BFFA6AABF6025FEA0159E5C7E1
                FAEBF6FF0C68E60141A1207AEBA5CFFEFFFFFF75B6FF1278FF1A7DFE187AFB11
                73F71979F482BBFA0E6CEE0E6CEBEFF6FECEE5FE0763E203419E146FE79ACAFC
                FFFFFFD8EBFF1F81FF1B7EFF1E81FF1A7BFC1173F7368EF72983F463A9F6FFFF
                FF81BAF80258D8033E96FF00FF237BEBEDF6FFFFFFFF98CAFF1F81FF1379FF16
                7AFF1276FB0A6EF854A0F8F0F8FFF2F8FE3089F4024FC0FF00FFFF00FF237BEB
                BFDEFFF3F8FFFFFFFFD7EAFF74B6FF53A3FE5EA9FFA3CFFEFFFFFFFFFFFF5DA6
                F70860DE024FC0FF00FFFF00FFFF00FF4997F3C7E3FFF7FBFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE0EFFE5CA5F80E6BE70552C2FF00FFFF00FFFF00FFFF00FF
                FF00FF2D82EB91C5FBCCE6FFD9EDFFDCEDFEC4E0FE86BFFC348BF40A65E10A65
                E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF247BEB4696F34A
                98F42F87F0116CE6075FDCFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentFont = False
              OnClick = btConcluirClick
            end
            object pnPrazo: TPanel
              Left = 457
              Top = 0
              Width = 161
              Height = 41
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object lblPrazoMax: TLabel
                Left = 2
                Top = 1
                Width = 159
                Height = 13
                Caption = 'Prazo m'#225'ximo para Retorno'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblPrazoMaximoConclusao: TLabel
                Left = 2
                Top = 16
                Width = 156
                Height = 18
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object DBTituloTarefa: TDBEdit
              Left = 2
              Top = 16
              Width = 201
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TAREA30TITULO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBHoraLembrete: TDBEdit
              Left = 297
              Top = 16
              Width = 46
              Height = 21
              DataField = 'TAREHLEMBRETE'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnDblClick = DBHoraLembreteDblClick
              OnExit = DBHoraLembreteExit
            end
            object DBDataLembrete: TDBDateEdit
              Left = 208
              Top = 16
              Width = 85
              Height = 21
              Cursor = crHandPoint
              DataField = 'TAREDLEMBRETE'
              DataSource = DSTemplate
              DefaultToday = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object mnIniciarTarefa: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FF2F9FD82F9FD8A47874A47874A47874A47874A47874A47874A47874A478
        74A47874A47874FF00FFFF00FFFF00FF2F9FD88DD4EE81D2F0C9C7BCFCEDDDFA
        F2E4F8F1E0F7EEDDF7EEDBF7EDDBF7ECDAF8EDD9A47874FF00FFFF00FF2F9FD8
        A3E8F897F3FF8BF2FFC9C7BCF6E4DAF6E5D2F6DFC6F5DEC5F4DDC3F4DCBFF2DE
        C6F0E3D0A47874FF00FFFF00FF2F9FD8A1E7F893EDFF85ECFFC9C7BCF8E8DFF9
        E4CEF9DBBDF9DBBDF9DBBDF8D9B8F5DDC2F0E4D2A47874FF00FFFF00FF2F9FD8
        ACE9F8A2F1FF95F0FFC9C7BCF9EBE4F9E6D3F9DDC2F9DEC2F8DDC1F7DBBDF5DF
        C6F2E6D6A47874FF00FFFF00FF2F9FD8B5EBF8AFF3FFA3F2FFC9C7BCFAEFE9FA
        EDDEFAE5D0F9E5CFF9E3CDF8E1CAF5E4D0F3E8DBA47874FF00FFFF00FF2F9FD8
        BFECF8BEF5FFB0F4FFC9C7BCFCF4F0FCE8D2FCDBBBFBDCBCFADBBBFAD9B7F8E1
        C8F7EEE3A47874FF00FFFF00FF2F9FD8C7EEF8CBF7FFBEF6FFC9C7BCFEF7F4FE
        F7F0FBF0E5FBEFE3FAEDE0FAEEE1F9F0E5E8E3DDA47874FF00FFFF00FF2F9FD8
        CEEFF8DBFBFFCDF9FFC9C7BCFEF8F5FFFFFFFEFFFEFCFAF9FBFBF9F0E7E2D4BF
        B6C5AFA2A47874FF00FFFF00FF2F9FD8D4F0F8E9FDFFDBFBFFC9C7BCFFFAF8FF
        FFFFFFFFFFFFFFFFFFFFFFDECAC5E0A870F7935BFF00FFFF00FFFF00FF2F9FD8
        DAF1F8F8FFFFE9FEFFC9C7BCFCF0E9FCF5F1FCF4F0FBF3F0FBF4F1E3C4BAC7AF
        892F9FD8FF00FFFF00FFFF00FF2F9FD8DBF0F8FFFFFFF5FFFFC9C7BCC9C7BCC9
        C7BCC9C7BCC9C7BCC9C7BCC9C7BC85C4DA2F9FD8FF00FFFF00FFFF00FF2F9FD8
        DDF1F9F7F5F4B0C7CBA9C4CBA7C4CAA6C4CAA5C4CAA2C2C8B3D1D6DFFDFE89D9
        F52F9FD8FF00FFFF00FFFF00FF2F9FD8E4F8FFDFCBC2BBA398CFC1BCCFC1BBCF
        C1BBCFC1BBCEBEB7B99E92E6E8E391DBF72F9FD8FF00FFFF00FFFF00FFFF00FF
        2F9FD8B4D2E1969E9FE2D8D3FAF9F8F9F8F7F9F8F7D0C5BF849DA58CCFE72F9F
        D8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2F9FD82F9FD89F91899F91899F
        91899F91899F91892F9FD82F9FD8FF00FFFF00FFFF00FFFF00FF}
      Caption = 'Iniciar Tarefa'
      OnClick = mnIniciarTarefaClick
    end
    object mnConcluirTarefa: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF033B8A033D90013D95023B91033A89033A89FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0357D30147B20051D0035CE007
        63E3035CE0004ED30042B7023A8F023A8FFF00FFFF00FFFF00FFFF00FFFF00FF
        0650BA0357D32781F278B4F7CAE2FCE9F4FFDCEDFF9CC7FA3F8FF20155DD0140
        A404367DFF00FFFF00FFFF00FF075DD70762E155A0F7F3F8FEFFFFFFE9F3FCC6
        DEFAD9E9FCFFFFFFFFFFFF99C5F8055DE70040A302398BFF00FFFF00FF075DD7
        529EF7FEFEFFF0F7FE5CA3F31E78EBA1C9F70D65E32D7AE9BAD7F8FFFFFF9CC9
        F80355DE02398BFF00FF0455C9207DF0E1EFFEFFFFFF358CF30F6EEEC7E0FBFF
        FFFF2F83EA004ADE0559E1BAD8F8FFFFFF3E8FF20043B7033E96085FDA56A1FA
        FFFFFF9ECBFB2D88F4D4E9FCFCFEFED7E9FC8ABDF60058E2004FE02A7BE7FFFF
        FF9FCBFA0050D4033E960F6BE68BC1FCFFFFFF56A4FC97C7FCF8FBFF4B9AF628
        82F2D9EAFC1975EB005AE5015AE2D9E9FBDEEFFF0560E202409C1B76EDA4CFFC
        FFFFFF50A0FF2586FE358FFA0E70F6096AF289BFFA6AABF6025FEA0159E5C7E1
        FAEBF6FF0C68E60141A1207AEBA5CFFEFFFFFF75B6FF1278FF1A7DFE187AFB11
        73F71979F482BBFA0E6CEE0E6CEBEFF6FECEE5FE0763E203419E146FE79ACAFC
        FFFFFFD8EBFF1F81FF1B7EFF1E81FF1A7BFC1173F7368EF72983F463A9F6FFFF
        FF81BAF80258D8033E96FF00FF237BEBEDF6FFFFFFFF98CAFF1F81FF1379FF16
        7AFF1276FB0A6EF854A0F8F0F8FFF2F8FE3089F4024FC0FF00FFFF00FF237BEB
        BFDEFFF3F8FFFFFFFFD7EAFF74B6FF53A3FE5EA9FFA3CFFEFFFFFFFFFFFF5DA6
        F70860DE024FC0FF00FFFF00FFFF00FF4997F3C7E3FFF7FBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0EFFE5CA5F80E6BE70552C2FF00FFFF00FFFF00FFFF00FF
        FF00FF2D82EB91C5FBCCE6FFD9EDFFDCEDFEC4E0FE86BFFC348BF40A65E10A65
        E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF247BEB4696F34A
        98F42F87F0116CE6075FDCFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Concluir Tarefa'
      OnClick = mnConcluirTarefaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnAssociarCliente: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFAB4B14AE4B13AE4B13B04B14B04B14B04B14B04A12B0
        4912AF4C14AD4C15FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B15AC4A10
        D05524F1614AF86B53F97A5BF98067F9705DF26149C3542CAA4A13FF00FFFF00
        FFFF00FFFF00FFFF00FFA94B14AF4A13DA572DF67257FC8C69FB7F5BFCBFB0FB
        C7C1F36047CD5737AA4C18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB24B18
        E4623CFE8E6DFF8A63FF9072FFEEEBFFEEEBF77E62C2532EA84B18FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAF4D1BD86740FD8A5DF58059DEB5AAE8F6F5FE
        D8CAFF906DCF663EA84914FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        E66D3993484049396E294187374B8A6E556DD96C42CF632DFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C33950138AD0A38A305309E00
        258D2B2F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0016411658CA1C55BC1B56BC1C54BB1954BC0338ACFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF000000143E802677F32069D81E64CF1F62CD21
        68D21E5EC5FF00FF000000000000000000000000000000FF00FFFF00FF000000
        123E752676D92165BD1F63CA1D5CC32472DB256FDBFF00FF000415FF00FF033D
        FFFF00FF010929FF00FFFF00FF0505050D11130208121645723295F22E8AF131
        93F8277AEDFF00FF000B37033CFFFF00FF033DFF022096FF00FFFF00FF3B3836
        3B383638332C123454288CD536A2F3339DEE1C50B7FF00FF000A32FF00FFFF00
        FFFF00FF0338F7FF00FFFF00FFFF00FF3E3C3A7574746C69673C414B162A3F11
        2136FF00FFFF00FF00000200030C000000000208021D850338FEFF00FFFF00FF
        FF00FF91908E91908E857F7A342E29FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF0231E6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Associar Cliente'
      OnClick = mnAssociarClienteClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object mnImprimirTarefa: TMenuItem
      Caption = 'Imprimir Tarefa'
      OnClick = mnImprimirTarefaClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    OnCalcFields = SQLTemplateCalcFields
    AutoRefresh = True
    SQL.Strings = (
      'select'
      ' * '
      'from'
      ' TAREFA '
      'where '
      '(%MFiltro)')
    object SQLTemplateTAREA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Tarefa'
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQLTemplateTAREICOD: TIntegerField
      Tag = 1
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTemplateTAREA30TITULO: TStringField
      DisplayLabel = 'Titulo'
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTAREDDIGITACAO: TDateTimeField
      DisplayLabel = 'Dt. Digita'#231#227'o'
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTemplateTAREDLEMBRETE: TDateTimeField
      DisplayLabel = 'Dt. Lembrete'
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQLTemplateTAREHLEMBRETE: TStringField
      DisplayLabel = 'Hora Lembrete'
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateTARETSOLICITACAO: TMemoField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateTARECPENDENTE: TStringField
      DisplayLabel = 'Aberto'
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTAREDINICIO: TDateTimeField
      DisplayLabel = 'Dt. '#205'nicio'
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTemplateTAREDTERMINO: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQLTemplateTPTAICOD: TIntegerField
      DisplayLabel = 'Tipo Tarefa'
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRCLA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'PRCLA13ID'
      Origin = 'DB.TAREFA.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHELPA13ID: TStringField
      DisplayLabel = 'ID Atendimento'
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRNEA13ID: TStringField
      DisplayLabel = 'ID Neg'#243'cio'
      FieldName = 'PRNEA13ID'
      Origin = 'DB.TAREFA.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTAREDPRAZOMAX: TDateTimeField
      DisplayLabel = 'Prazo Retorno'
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQLTemplateTAREDULTAGEND: TDateTimeField
      DisplayLabel = 'Dt. '#218'ltimo Agendamento'
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object SQLTemplateTAREA60MOTIVOADIO: TStringField
      DisplayLabel = 'Motivo Adio'
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUAICOD: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQLTemplateUSUAICODDEST: TIntegerField
      DisplayLabel = 'Usu'#225'rio Destino'
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTemplateCLASSICOD: TIntegerField
      DisplayLabel = 'Classe Usu'#225'rio'
      FieldName = 'CLASSICOD'
      Origin = 'DB.TAREFA.CLASSICOD'
    end
    object SQLTemplateTAREA1000CHECKLIST: TMemoField
      DisplayLabel = 'Check List'
      FieldName = 'TAREA1000CHECKLIST'
      Origin = 'DB.TAREFA.TAREA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateTARECATULIZEMAIL: TStringField
      DisplayLabel = 'Enviar e-mail'
      FieldName = 'TARECATULIZEMAIL'
      Origin = 'DB.TAREFA.TARECATULIZEMAIL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUsuarioDestino: TStringField
      DisplayLabel = 'Usu'#225'rio Destino'
      FieldKind = fkCalculated
      FieldName = 'UsuarioDestino'
      Size = 60
      Calculated = True
    end
    object SQLTemplateClasseUsuarioDestino: TStringField
      DisplayLabel = 'Classe Usu'#225'rio Destino'
      FieldKind = fkCalculated
      FieldName = 'ClasseUsuarioDestino'
      Size = 60
      Calculated = True
    end
    object SQLTemplateTAREA13MODOTAREFA: TStringField
      FieldName = 'TAREA13MODOTAREFA'
      Origin = 'DB.TAREFA.TAREA13MODOTAREFA'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTARECSTATUS: TStringField
      FieldName = 'TARECSTATUS'
      Origin = 'DB.TAREFA.TARECSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateClienteNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteNome'
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteCidade'
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteUF: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteUF'
      Size = 2
      Calculated = True
    end
  end
  inherited ActionList1: TActionList
    Left = 132
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      ' * '
      'from'
      'CLIENTE '
      'order by CLIEA60RAZAOSOC')
    Left = 48
    Top = 256
  end
  object SQLTipoTarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TipoTarefa')
    Left = 48
    Top = 320
    object SQLTipoTarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TIPOTAREFA.TPTAICOD'
    end
    object SQLTipoTarefaTPTAA30DESCRICAO: TStringField
      FieldName = 'TPTAA30DESCRICAO'
      Origin = 'DB.TIPOTAREFA.TPTAA30DESCRICAO'
      FixedChar = True
      Size = 30
    end
    object SQLTipoTarefaTPTACINTEXT: TStringField
      FieldName = 'TPTACINTEXT'
      Origin = 'DB.TIPOTAREFA.TPTACINTEXT'
      FixedChar = True
      Size = 1
    end
    object SQLTipoTarefaTPTACCHECKLIST: TStringField
      FieldName = 'TPTACCHECKLIST'
      Origin = 'DB.TIPOTAREFA.TPTACCHECKLIST'
      FixedChar = True
      Size = 1
    end
    object SQLTipoTarefaTPTAA13PRAZOMAX: TStringField
      FieldName = 'TPTAA13PRAZOMAX'
      Origin = 'DB.TIPOTAREFA.TPTAA13PRAZOMAX'
      FixedChar = True
      Size = 13
    end
    object SQLTipoTarefaTPTAA1000CHECKLIST: TMemoField
      FieldName = 'TPTAA1000CHECKLIST'
      Origin = 'DB.TIPOTAREFA.TPTAA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1002
    end
  end
  object DSSQLTipoTarefa: TDataSource
    DataSet = SQLTipoTarefa
    Left = 80
    Top = 320
  end
  object SQLUsuariosEmail: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT distinct'
      'CLASSICOD, '
      'USUAICOD, '
      'USUAA60EMAIL, USUAA60LOGIN '
      'from'
      'CLASSEUSUARIO, USUARIO '
      'where (%filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 352
    object SQLUsuariosEmailCLASSICOD: TIntegerField
      FieldName = 'CLASSICOD'
      Origin = 'DB.CLASSEUSUARIO.CLASSICOD'
    end
    object SQLUsuariosEmailUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CLASSEUSUARIO.USUAICOD'
    end
    object SQLUsuariosEmailUSUAA60EMAIL: TStringField
      FieldName = 'USUAA60EMAIL'
      Origin = 'DB.USUARIO.USUAA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLUsuariosEmailUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLUsuariosEmail: TDataSource
    DataSet = SQLUsuariosEmail
    Left = 80
    Top = 352
  end
  object dsSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 80
    Top = 256
  end
  object SQLTarefaHistorico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TAREFAHISTORICO where (%MFiltro)'
      'order by REGISTRO desc')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 384
    object SQLTarefaHistoricoTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFAHISTORICO.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaHistoricoTRHTICOD: TIntegerField
      FieldName = 'TRHTICOD'
      Origin = 'DB.TAREFAHISTORICO.TRHTICOD'
    end
    object SQLTarefaHistoricoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFAHISTORICO.USUAICOD'
    end
    object SQLTarefaHistoricoTRHTDHORAINICIO: TDateTimeField
      FieldName = 'TRHTDHORAINICIO'
      Origin = 'DB.TAREFAHISTORICO.TRHTDHORAINICIO'
    end
    object SQLTarefaHistoricoTRHTDHORAFINAL: TDateTimeField
      FieldName = 'TRHTDHORAFINAL'
      Origin = 'DB.TAREFAHISTORICO.TRHTDHORAFINAL'
    end
    object SQLTarefaHistoricoTRHTEA60RESPATENEMP: TStringField
      FieldName = 'TRHTEA60RESPATENEMP'
      Origin = 'DB.TAREFAHISTORICO.TRHTEA60RESPATENEMP'
      FixedChar = True
      Size = 60
    end
    object SQLTarefaHistoricoTRHTA30NROOS: TStringField
      FieldName = 'TRHTA30NROOS'
      Origin = 'DB.TAREFAHISTORICO.TRHTA30NROOS'
      FixedChar = True
      Size = 30
    end
    object SQLTarefaHistoricoTRHTA1000HISTORICO: TMemoField
      FieldName = 'TRHTA1000HISTORICO'
      Origin = 'DB.TAREFAHISTORICO.TRHTA1000HISTORICO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTarefaHistoricoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFAHISTORICO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaHistoricoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFAHISTORICO.REGISTRO'
    end
  end
  object dsSQLTarefaHistorico: TDataSource
    DataSet = SQLTarefaHistorico
    Left = 80
    Top = 384
  end
  object tblImpressaoTarefa: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'tblImpressaoTarefa'
    Left = 484
    object tblImpressaoTarefaTAREA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Tarefa'
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object tblImpressaoTarefaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object tblImpressaoTarefaTAREICOD: TIntegerField
      Tag = 1
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object tblImpressaoTarefaTAREA30TITULO: TStringField
      DisplayLabel = 'Titulo'
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object tblImpressaoTarefaTAREDDIGITACAO: TDateTimeField
      DisplayLabel = 'Dt. Digita'#231#227'o'
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object tblImpressaoTarefaTAREDLEMBRETE: TDateTimeField
      DisplayLabel = 'Dt. Lembrete'
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object tblImpressaoTarefaTAREHLEMBRETE: TStringField
      DisplayLabel = 'Hora Lembrete'
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
    object tblImpressaoTarefaTARETSOLICITACAO: TMemoField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object tblImpressaoTarefaTARECPENDENTE: TStringField
      DisplayLabel = 'Aberto'
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object tblImpressaoTarefaTAREDINICIO: TDateTimeField
      DisplayLabel = 'Dt. '#205'nicio'
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object tblImpressaoTarefaTAREDTERMINO: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object tblImpressaoTarefaTPTAICOD: TIntegerField
      DisplayLabel = 'Tipo Tarefa'
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object tblImpressaoTarefaCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaPRCLA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'PRCLA13ID'
      Origin = 'DB.TAREFA.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaHELPA13ID: TStringField
      DisplayLabel = 'ID Atendimento'
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaPRNEA13ID: TStringField
      DisplayLabel = 'ID Neg'#243'cio'
      FieldName = 'PRNEA13ID'
      Origin = 'DB.TAREFA.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaTAREDPRAZOMAX: TDateTimeField
      DisplayLabel = 'Prazo Retorno'
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object tblImpressaoTarefaTAREDULTAGEND: TDateTimeField
      DisplayLabel = 'Dt. '#218'ltimo Agendamento'
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object tblImpressaoTarefaTAREA60MOTIVOADIO: TStringField
      DisplayLabel = 'Motivo Adio'
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      FixedChar = True
      Size = 60
    end
    object tblImpressaoTarefaUSUAICOD: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object tblImpressaoTarefaUSUAICODDEST: TIntegerField
      DisplayLabel = 'Usu'#225'rio Destino'
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object tblImpressaoTarefaCLASSICOD: TIntegerField
      DisplayLabel = 'Classe Usu'#225'rio'
      FieldName = 'CLASSICOD'
      Origin = 'DB.TAREFA.CLASSICOD'
    end
    object tblImpressaoTarefaTAREA1000CHECKLIST: TMemoField
      DisplayLabel = 'Check List'
      FieldName = 'TAREA1000CHECKLIST'
      Origin = 'DB.TAREFA.TAREA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1000
    end
    object tblImpressaoTarefaTARECATULIZEMAIL: TStringField
      DisplayLabel = 'Enviar e-mail'
      FieldName = 'TARECATULIZEMAIL'
      Origin = 'DB.TAREFA.TARECATULIZEMAIL'
      FixedChar = True
      Size = 1
    end
    object tblImpressaoTarefaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object tblImpressaoTarefaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object tblImpressaoTarefaUsuarioDestino: TStringField
      DisplayLabel = 'Usu'#225'rio Destino'
      FieldName = 'UsuarioDestino'
      Size = 60
    end
    object tblImpressaoTarefaClasseUsuarioDestino: TStringField
      DisplayLabel = 'Classe Usu'#225'rio Destino'
      FieldName = 'ClasseUsuarioDestino'
      Size = 60
    end
    object tblImpressaoTarefaTAREA13MODOTAREFA: TStringField
      FieldName = 'TAREA13MODOTAREFA'
      Origin = 'DB.TAREFA.TAREA13MODOTAREFA'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaTARECSTATUS: TStringField
      FieldName = 'TARECSTATUS'
      Origin = 'DB.TAREFA.TARECSTATUS'
      FixedChar = True
      Size = 1
    end
    object tblImpressaoTarefaClienteNome: TStringField
      FieldName = 'ClienteNome'
      Size = 60
    end
    object tblImpressaoTarefaClienteCidade: TStringField
      FieldName = 'ClienteCidade'
      Size = 60
    end
    object tblImpressaoTarefaClienteUF: TStringField
      FieldName = 'ClienteUF'
      Size = 2
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportTitle = 'Tarefa'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    OnError = ReportError
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 540
  end
  object tblImpressaoTarefaHistorico: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'tblImpressaoTarefaHistorico'
    Left = 512
    object tblImpressaoTarefaHistoricoTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFAHISTORICO.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object tblImpressaoTarefaHistoricoTRHTICOD: TIntegerField
      FieldName = 'TRHTICOD'
      Origin = 'DB.TAREFAHISTORICO.TRHTICOD'
    end
    object tblImpressaoTarefaHistoricoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFAHISTORICO.USUAICOD'
    end
    object tblImpressaoTarefaHistoricoTRHTDHORAINICIO: TDateTimeField
      FieldName = 'TRHTDHORAINICIO'
      Origin = 'DB.TAREFAHISTORICO.TRHTDHORAINICIO'
    end
    object tblImpressaoTarefaHistoricoTRHTDHORAFINAL: TDateTimeField
      FieldName = 'TRHTDHORAFINAL'
      Origin = 'DB.TAREFAHISTORICO.TRHTDHORAFINAL'
    end
    object tblImpressaoTarefaHistoricoTRHTEA60RESPATENEMP: TStringField
      FieldName = 'TRHTEA60RESPATENEMP'
      Origin = 'DB.TAREFAHISTORICO.TRHTEA60RESPATENEMP'
      FixedChar = True
      Size = 60
    end
    object tblImpressaoTarefaHistoricoTRHTA30NROOS: TStringField
      FieldName = 'TRHTA30NROOS'
      Origin = 'DB.TAREFAHISTORICO.TRHTA30NROOS'
      FixedChar = True
      Size = 30
    end
    object tblImpressaoTarefaHistoricoTRHTA1000HISTORICO: TMemoField
      FieldName = 'TRHTA1000HISTORICO'
      Origin = 'DB.TAREFAHISTORICO.TRHTA1000HISTORICO'
      BlobType = ftMemo
      Size = 1000
    end
    object tblImpressaoTarefaHistoricoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFAHISTORICO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object tblImpressaoTarefaHistoricoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFAHISTORICO.REGISTRO'
    end
  end
  object BatchMove: TBatchMove
    Mode = batCopy
    Left = 456
  end
  object SQLAtendimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '* '
      'from'
      'HELPDESK'
      'where'
      'HELPA13ID = :HELPA13ID ')
    Macros = <>
    Left = 48
    Top = 224
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'HELPA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLAtendimentoHELPA13ID: TStringField
      DisplayLabel = 'Id Atendimento'
      FieldName = 'HELPA13ID'
      Origin = 'DB.HELPDESK.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAtendimentoHELPCCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'HELPCCONTATO'
      Origin = 'DB.HELPDESK.HELPCCONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLAtendimentoHELPDINICIO: TDateTimeField
      DisplayLabel = 'Data Inicio'
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
      DisplayFormat = 'DD/MM/YYYY HH:MM'
    end
    object SQLAtendimentoHELPTSOLICITACAO: TMemoField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLAtendimentoHELPTSOLUCAO: TMemoField
      DisplayLabel = 'Solu'#231#227'o'
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLAtendimentoHELPDTERMINO: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
      DisplayFormat = 'DD/MM/YYYY HH:MM'
    end
  end
  object dsSQLAtendimento: TDataSource
    DataSet = SQLAtendimento
    Left = 80
    Top = 224
  end
  object SQLProspect: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '*'
      'from'
      'PROSPECTNEGOCIO '
      'where'
      'PRNEA13ID = :PRNEA13ID ')
    Macros = <>
    Left = 48
    Top = 416
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PRNEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLProspectPRNEA13ID: TStringField
      DisplayLabel = 'ID Neg'#243'cio'
      FieldName = 'PRNEA13ID'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProspectPRCLA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'PRCLA13ID'
      Origin = 'DB.PROSPECTNEGOCIO.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProspectPRNEDEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'PRNEDEMISSAO'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object SQLProspectPRNEA100DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRNEA100DESCRICAO'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA100DESCRICAO'
      FixedChar = True
      Size = 100
    end
    object SQLProspectPRNEA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'PRNEA60CONTATO'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLProspectPRNEA15CONTATOFONE1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'PRNEA15CONTATOFONE1'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA15CONTATOFONE1'
      FixedChar = True
      Size = 15
    end
    object SQLProspectPRNEN2VALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PRNEN2VALOR'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEN2VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLProspectPRNEA254OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'PRNEA254OBS'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA254OBS'
      Size = 254
    end
    object SQLProspectPRNEA60END: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PRNEA60END'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA60END'
      FixedChar = True
      Size = 60
    end
    object SQLProspectPRNEA60CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'PRNEA60CIDADE'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA60CIDADE'
      FixedChar = True
      Size = 60
    end
    object SQLProspectPRNEA2UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'PRNEA2UF'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLProspectPRNEA60EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'PRNEA60EMAIL'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLProspectPRNEA60BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'PRNEA60BAIRRO'
      Origin = 'DB.PROSPECTNEGOCIO.PRNEA60BAIRRO'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProspect: TDataSource
    AutoEdit = False
    DataSet = SQLProspect
    Left = 80
    Top = 416
  end
  object SQLClienteProspect: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '* '
      'from'
      'PROSPECTCLIENTE '
      'order by '
      'PRCLA60RAZAOSOC ')
    Left = 48
    Top = 288
    object SQLClienteProspectPRCLA13ID: TStringField
      FieldName = 'PRCLA13ID'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteProspectPRCLA60RAZAOSOC: TStringField
      FieldName = 'PRCLA60RAZAOSOC'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteProspectPRCLA60ENDCOM: TStringField
      FieldName = 'PRCLA60ENDCOM'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA60ENDCOM'
      FixedChar = True
      Size = 60
    end
    object SQLClienteProspectPRCLA60CIDCOM: TStringField
      FieldName = 'PRCLA60CIDCOM'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA60CIDCOM'
      FixedChar = True
      Size = 60
    end
    object SQLClienteProspectPRCLA60BAICOM: TStringField
      FieldName = 'PRCLA60BAICOM'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA60BAICOM'
      FixedChar = True
      Size = 60
    end
    object SQLClienteProspectPRCLA2UFCOM: TStringField
      FieldName = 'PRCLA2UFCOM'
      Origin = 'DB.PROSPECTCLIENTE.PRCLA2UFCOM'
      FixedChar = True
      Size = 2
    end
  end
  object dsSQLClienteProspect: TDataSource
    DataSet = SQLClienteProspect
    Left = 80
    Top = 288
  end
end
