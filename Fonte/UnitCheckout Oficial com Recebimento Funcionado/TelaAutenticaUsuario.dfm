object FormTelaAutenticaUsuario: TFormTelaAutenticaUsuario
  Left = 244
  Top = 377
  Width = 440
  Height = 157
  Caption = 'Advanced Control'
  Color = 12572888
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 432
    Height = 43
    Align = alTop
    Alignment = taCenter
    Caption = 'Informe a Senha de Acesso!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    ShadowColor = clBlack
  end
  object RxLabel2: TRxLabel
    Left = 0
    Top = 100
    Width = 432
    Height = 23
    Align = alBottom
    Alignment = taCenter
    Caption = 'Pressione Enter ou Esc para finalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ShadowColor = clBlack
  end
  object EditSenha: TMaskEdit
    Left = 33
    Top = 51
    Width = 350
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 0
    OnKeyDown = EditSenhaKeyDown
  end
end
