object Form1: TForm1
  Left = 457
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizador de PIS e COFINS'
  ClientHeight = 218
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 51
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 4
      Width = 158
      Height = 13
      Caption = 'Selecione a Base de Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FilenameEdit1: TFilenameEdit
      Left = 8
      Top = 19
      Width = 445
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 467
      Top = 12
      Width = 93
      Height = 25
      Caption = 'Conectar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 64
    Width = 549
    Height = 65
    TabOrder = 1
    object Label2: TLabel
      Left = 12
      Top = 8
      Width = 117
      Height = 13
      Caption = 'Selecione o Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 148
      Top = 30
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 304
      Top = 12
      Width = 161
      Height = 41
      Caption = 'Executar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 172
    Width = 545
    Height = 25
    Min = 0
    Max = 100
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 144
    Width = 541
    Height = 17
    Caption = 'Atualizar Base de Calculo e R$ ICMS na Tabela CUPOMITEM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
