object FrmPrinters: TFrmPrinters
  Left = 147
  Top = 166
  Width = 328
  Height = 181
  BorderIcons = [biSystemMenu]
  Caption = 'Sele'#231#227'o de Impressoras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 110
    Height = 13
    Caption = 'Selecione a Impressora'
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 44
    Height = 13
    Caption = 'No.C'#243'pia'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 20
    Width = 289
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 138
    Top = 56
    Width = 75
    Height = 28
    TabOrder = 1
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 222
    Top = 56
    Width = 75
    Height = 28
    TabOrder = 2
    Kind = bkOK
  end
  object edtCopia: TEdit
    Left = 8
    Top = 61
    Width = 101
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object UpDown1: TUpDown
    Left = 109
    Top = 61
    Width = 15
    Height = 21
    Associate = edtCopia
    Position = 1
    TabOrder = 4
  end
end
