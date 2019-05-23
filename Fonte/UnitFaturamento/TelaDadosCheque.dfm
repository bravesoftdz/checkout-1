object FormTelaDadosCheque: TFormTelaDadosCheque
  Left = 215
  Top = 99
  Width = 524
  Height = 457
  ActiveControl = ComboPortador
  BorderIcons = []
  Caption = 'Dados Cheque'
  Color = 12572888
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape4: TShape
    Left = 0
    Top = 0
    Width = 508
    Height = 419
    Align = alClient
    Brush.Color = 15461355
    Pen.Color = clNavy
    Pen.Width = 2
  end
  object Label8: TLabel
    Left = 8
    Top = 5
    Width = 50
    Height = 13
    Caption = 'Portador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 77
    Width = 34
    Height = 13
    Caption = 'Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 117
    Width = 45
    Height = 13
    Caption = 'Ag'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 131
    Top = 117
    Width = 80
    Height = 13
    Caption = 'N'#250'mero Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 391
    Top = 117
    Width = 81
    Height = 13
    Caption = 'Data Abertura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 156
    Width = 142
    Height = 13
    Caption = 'Nome do Titular da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 131
    Top = 195
    Width = 97
    Height = 13
    Caption = 'Total de Cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 391
    Top = 195
    Width = 87
    Height = 13
    Caption = 'Nro de Cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 195
    Width = 93
    Height = 13
    Caption = 'CGC/CPF Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 8
    Top = 41
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ComboPortador: TRxDBLookupCombo
    Left = 8
    Top = 21
    Width = 473
    Height = 21
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'PORTICOD'
    LookupDisplay = 'PORTA60DESCR'
    LookupSource = DSSQLPortador
    ParentFont = False
    TabOrder = 0
    OnKeyDown = ComboPortadorKeyDown
  end
  object ComboBanco: TRxDBLookupCombo
    Left = 8
    Top = 93
    Width = 473
    Height = 21
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    IndexSwitch = False
    LookupField = 'BANCA5COD'
    LookupDisplay = 'BANCA60NOME'
    LookupSource = DSSQLBanco
    ParentFont = False
    TabOrder = 2
    OnKeyDown = ComboBancoKeyDown
  end
  object Agencia: TEdit
    Left = 8
    Top = 133
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object NumConta: TEdit
    Left = 131
    Top = 133
    Width = 257
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DtAbert: TDateEdit
    Left = 391
    Top = 133
    Width = 90
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object NomeTitular: TEdit
    Left = 8
    Top = 172
    Width = 473
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 131
    Top = 211
    Width = 257
    Height = 21
    TabStop = False
    Color = 16767449
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 391
    Top = 211
    Width = 90
    Height = 21
    TabStop = False
    Color = 16767449
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object ListaCheques: TDBGrid
    Left = 2
    Top = 241
    Width = 483
    Height = 138
    BorderStyle = bsNone
    Color = clWhite
    FixedColor = 16767449
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgConfirmDelete]
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnEnter = ListaChequesEnter
    OnExit = ListaChequesExit
    OnKeyDown = ListaChequesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DtDep'
        ReadOnly = True
        Title.Caption = 'Data Dep'#243'sito'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NroCheque'
        Title.Caption = 'Nro.Cheque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Historico'
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 244
        Visible = True
      end>
  end
  object BtnOk: TBitBtn
    Left = 145
    Top = 389
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnOkClick
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
  end
  object BitBtn2: TBitBtn
    Left = 261
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn2Click
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
  end
  object CGCPFChq: TEdit
    Left = 8
    Top = 211
    Width = 121
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ComboStatus: TRxDBLookupCombo
    Left = 8
    Top = 56
    Width = 473
    Height = 21
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'ALINICOD'
    LookupDisplay = 'ALINA30DESCR'
    LookupSource = DSSQLAlinea
    ParentFont = False
    TabOrder = 1
    OnKeyDown = ComboStatusKeyDown
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PORTADOR'
      'order by PORTA60DESCR')
    Macros = <>
    Left = 104
    Top = 12
  end
  object DSSQLPortador: TDataSource
    AutoEdit = False
    DataSet = SQLPortador
    Left = 132
    Top = 12
  end
  object SQLBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BANCO'
      'order by BANCA60NOME')
    Macros = <>
    Left = 104
    Top = 84
  end
  object DSSQLBanco: TDataSource
    AutoEdit = False
    DataSet = SQLBanco
    Left = 132
    Top = 84
  end
  object SQLAlinea: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ALINEA'
      'order by ALINA30DESCR')
    Macros = <>
    Left = 96
    Top = 50
  end
  object DSSQLAlinea: TDataSource
    AutoEdit = False
    DataSet = SQLAlinea
    Left = 124
    Top = 50
  end
end
