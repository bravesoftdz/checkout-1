object FormTelaCalculaCheques: TFormTelaCalculaCheques
  Left = 268
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calcula Cheques'
  ClientHeight = 309
  ClientWidth = 479
  Color = 13612943
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 14
    Top = 6
    Width = 157
    Height = 13
    Caption = 'Novo Plano de Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboPlanoRecto: TRxDBLookupCombo
    Left = 13
    Top = 22
    Width = 458
    Height = 20
    DropDownCount = 8
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'PLRCICOD'
    LookupDisplay = 'PLRCA60DESCR'
    LookupSource = FormCadastroPedidoVenda.DSSQLPlanoRecebimento
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 14
    Top = 50
    Width = 457
    Height = 218
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 396
    Top = 276
    Width = 75
    Height = 25
    Caption = 'Finalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
