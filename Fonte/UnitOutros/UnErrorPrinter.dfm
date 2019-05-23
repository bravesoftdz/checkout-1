object FrmErrorPrinter: TFrmErrorPrinter
  Left = 225
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Falha de Impressão'
  ClientHeight = 87
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 12
    Width = 247
    Height = 26
    Caption = 
      '       Ocorreu uma falha na impressão do documento.'#13#10'Uma nova te' +
      'ntativa será efetuada em 5 segundos...'
  end
  object btnRepetir: TBitBtn
    Left = 40
    Top = 52
    Width = 100
    Height = 25
    Caption = '&Repetir'
    TabOrder = 0
    OnClick = btnRepetirClick
  end
  object BtnCancelar: TBitBtn
    Left = 156
    Top = 52
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 4
    Top = 44
  end
end
