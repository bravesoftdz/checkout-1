object FormTelaAutomaBombas: TFormTelaAutomaBombas
  Left = 300
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Automa'#231#227'o de Pista'
  ClientHeight = 485
  ClientWidth = 714
  Color = 14731440
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
  object RxLabel2: TRxLabel
    Left = 0
    Top = 454
    Width = 714
    Height = 31
    Align = alBottom
    Alignment = taCenter
    Caption = '<Espa'#231'o> Marca/Desmarca - <Enter>Confirma - <Esc> Cancela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ShadowColor = clBlack
  end
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 714
    Height = 39
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Abastecidas Pendentes'
    Color = clNavy
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
    Transparent = True
  end
  object DBGridPista: TDBGrid
    Left = 16
    Top = 41
    Width = 685
    Height = 408
    Ctl3D = False
    DataSource = DM.dtsPista
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridPistaDrawColumnCell
    OnKeyPress = DBGridPistaKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Bico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Combust'#237'vel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LITROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Litros'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data / Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'R$ Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCADO'
        Title.Caption = 'M'
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 308
    Top = 124
    object Aferrio1: TMenuItem
      Caption = 'Excluir Abastecida'
      OnClick = Aferrio1Click
    end
    object VerAbastecidasExcluidas1: TMenuItem
      Caption = 'Ver Abastecidas Excluidas'
      OnClick = VerAbastecidasExcluidas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Aferrio2: TMenuItem
      Caption = 'Marcar como Aferi'#231#227'o'
      OnClick = Aferrio2Click
    end
    object VerAferies1: TMenuItem
      Caption = 'Ver Aferi'#231#245'es'
      OnClick = VerAferies1Click
    end
  end
end
