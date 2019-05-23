object FormTelaConfigECFDaruma345: TFormTelaConfigECFDaruma345
  Left = 192
  Top = 103
  BorderStyle = bsSingle
  Caption = 'Configura'#231#227'o de ECF Daruma 3.45'
  ClientHeight = 192
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 50
    Width = 207
    Height = 137
    Caption = 'Comprovantes N'#195'O &FISCAIS'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 73
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 9
      Top = 17
      Width = 179
      Height = 13
      Caption = 'Selecione qual o tipo do comprovante'
    end
    object ListBox1: TListBox
      Left = 7
      Top = 33
      Width = 194
      Height = 35
      ItemHeight = 13
      Items.Strings = (
        'Vinculado'
        'N'#227'o Vinculado')
      TabOrder = 0
    end
    object EditComprovante: TEdit
      Left = 45
      Top = 70
      Width = 156
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 64
      Top = 104
      Width = 75
      Height = 25
      Caption = 'ENVIAR'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 218
    Top = 50
    Width = 269
    Height = 137
    Caption = '&Formas de Pagamento'
    TabOrder = 1
    object Label3: TLabel
      Left = 5
      Top = 53
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 5
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Tipo (A a P)'
    end
    object Button3: TButton
      Left = 109
      Top = 104
      Width = 75
      Height = 25
      Caption = 'ENVIAR'
      TabOrder = 2
      OnClick = Button3Click
    end
    object EditForma: TEdit
      Left = 77
      Top = 53
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object ComboAlfabeto: TComboBox
      Left = 77
      Top = 21
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P')
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 0
    Width = 484
    Height = 47
    Caption = '&Comunica'#231#227'o'
    TabOrder = 2
    object ComboCOM: TComboBox
      Left = 7
      Top = 18
      Width = 112
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Porta Serial'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5')
    end
    object Button5: TButton
      Left = 123
      Top = 16
      Width = 99
      Height = 25
      Caption = 'Abrir Comunica'#231#227'o'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 221
      Top = 16
      Width = 108
      Height = 25
      Caption = 'Fechar Comunica'#231#227'o'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button2: TButton
      Left = 328
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Leitura X'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 402
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Redu'#231#227'o Z'
      TabOrder = 4
      OnClick = Button4Click
    end
  end
end
