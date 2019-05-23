object FormTelaDataConclusao: TFormTelaDataConclusao
  Left = 386
  Top = 233
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Calendario'
  ClientHeight = 237
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 227
    Height = 81
    Align = alTop
    Color = 14731440
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 8
      Width = 200
      Height = 13
      Caption = 'Selecione uma data com click duplo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 227
    Height = 156
    Align = alClient
    Color = 15461355
    TabOrder = 1
    object Label2: TLabel
      Left = 67
      Top = 104
      Width = 30
      Height = 13
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object HoraConclusao: TDateTimePicker
      Left = 102
      Top = 101
      Width = 57
      Height = 21
      CalAlignment = dtaLeft
      Date = 37867.75
      Format = 'HH:mm'
      Time = 37867.75
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkTime
      ParseInput = False
      TabOrder = 0
    end
    object btOK: TConerBtn
      Left = 20
      Top = 124
      Width = 94
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = btOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Flat = False
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
    object btCancela: TConerBtn
      Left = 124
      Top = 123
      Width = 94
      Height = 25
      Cancel = True
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Flat = False
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
  end
  object CalendarioConclusao: TMonthCalendar
    Left = 16
    Top = 24
    Width = 190
    Height = 153
    AutoSize = True
    Date = 37866.6047299421
    TabOrder = 2
    OnDblClick = CalendarioConclusaoDblClick
  end
end
