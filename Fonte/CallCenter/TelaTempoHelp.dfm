object FormTempoHelp: TFormTempoHelp
  Left = 329
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tempo de Atendimento'
  ClientHeight = 29
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGreen
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTempo: TLabel
    Left = 0
    Top = 0
    Width = 180
    Height = 29
    Align = alClient
    Alignment = taCenter
    Caption = 'Tempo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
end
