object FormTelaDadosCartaoCreditoManual: TFormTelaDadosCartaoCreditoManual
  Left = -2
  Top = 3
  Width = 808
  Height = 580
  Caption = 'Dados do Cart'#227'o de Cr'#233'dito'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 20
    Top = 79
    Width = 253
    Height = 36
    Caption = 'Data do Movimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 15
    Top = 175
    Width = 64
    Height = 36
    Caption = 'Hora'
    FocusControl = EditHora
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 800
    Height = 46
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Dados do Cart'#227'o de Cr'#233'dito'
    Color = 6079486
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
  end
  object Label2: TLabel
    Left = 15
    Top = 287
    Width = 327
    Height = 36
    Caption = 'Provedor / Adminitradora'
    FocusControl = EditProvedor
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 15
    Top = 383
    Width = 203
    Height = 36
    Caption = 'Institui'#231#227'o NSU'
    FocusControl = EditInstituicaoNSU
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object EditData: TDateEdit
    Left = 16
    Top = 115
    Width = 270
    Height = 42
    DialogTitle = 'Selecione a Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
  end
  object EditHora: TEdit
    Left = 13
    Top = 211
    Width = 273
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ' 00:00  '
  end
  object BtnOK: TConerBtn
    Left = 339
    Top = 500
    Width = 200
    Height = 40
    Cursor = crHandPoint
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnOKClick
    Glyph.Data = {
      DE040000424DDE0400000000000036040000280000000C0000000E0000000100
      080000000000A8000000130B0000130B0000000100000001000000000000A7C2
      B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
      88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000111111111100
      11111111111111111111000B0011111111111111110009090011111111111111
      1100090F10001111111111110009090D0E0011111111110009090B000C060011
      11111100090800000A0200111111000909000011000206001111000708001111
      0003020011111100001111111100030600111111111111111100050200111111
      1111111111110003040011111111111111110001020011111111111111111100
      0011}
    NumGlyphs = 2
    Spacing = 10
    Flat = False
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = clRed
    SymbolColorClose = clMaroon
    Transparent = True
  end
  object BtnCancelar: TConerBtn
    Left = 543
    Top = 500
    Width = 200
    Height = 40
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 5
    OnClick = BtnCancelarClick
    Glyph.Data = {
      16050000424D160500000000000036040000280000000D0000000E0000000100
      080000000000E0000000130B0000130B0000000100000001000000000000746D
      C400443C9F004E44B500625ABD00342D7B003C348C00FFFFFF00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707070707
      0707000007070700000007000007070707000203000707000000000306000707
      0700030200070700000000010306000700020300070707000000070004030600
      0003060007070700000007070004030303030007070707000000070707000403
      0303000707070700000007070707000303030300070707000000070707070003
      0303030200070700000007070700030300000403060007000000070707000302
      0007000403050000000007070003030007070700040300000000070700010200
      0707070700030000000007070700000707070707070007000000}
    Spacing = 5
    Flat = False
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = clRed
    SymbolColorClose = clMaroon
    Transparent = True
  end
  object EditProvedor: TEdit
    Left = 13
    Top = 323
    Width = 772
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EditInstituicaoNSU: TEdit
    Left = 13
    Top = 419
    Width = 772
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
