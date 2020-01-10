object FormTelaDadosCheque: TFormTelaDadosCheque
  Left = -1122
  Top = -31
  Width = 798
  Height = 580
  BorderIcons = []
  Caption = 'Dados Cheque'
  Color = 5278518
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 36
  object Label1: TLabel
    Left = 660
    Top = 166
    Width = 80
    Height = 36
    Caption = 'Banco'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 13
    Top = 166
    Width = 329
    Height = 36
    Caption = 'Nome do Titular da Conta'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 13
    Top = 81
    Width = 234
    Height = 36
    Caption = 'CGC/CPF Cheque'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 782
    Height = 73
    Align = alTop
    Alignment = taCenter
    Caption = 'Dados do(s) Cheque(s)'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -64
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object NomeTitular: TEdit
    Left = 9
    Top = 201
    Width = 640
    Height = 42
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnExit = NomeTitularExit
  end
  object ListaCheques: TDBGrid
    Left = 8
    Top = 252
    Width = 768
    Height = 213
    BorderStyle = bsNone
    Color = clWhite
    FixedColor = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgConfirmDelete]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnEnter = ListaChequesEnter
    OnExit = ListaChequesExit
    OnKeyDown = ListaChequesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NroCheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nro.Cheque(s)'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NroDias'
        Title.Caption = 'Nro Dias'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataVecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Color = 14731440
        Expanded = False
        FieldName = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 225
        Visible = True
      end>
  end
  object CGCPFChq: TEdit
    Left = 9
    Top = 116
    Width = 385
    Height = 42
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnExit = CGCPFChqExit
  end
  object Banco: TEdit
    Left = 657
    Top = 201
    Width = 118
    Height = 42
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnExit = BancoExit
  end
  object btnOK: TBitBtn
    Left = 368
    Top = 481
    Width = 200
    Height = 40
    Caption = '&1 - OK'
    TabOrder = 4
    OnClick = btnOKClick
  end
  object BtnCancelar: TBitBtn
    Left = 576
    Top = 481
    Width = 200
    Height = 40
    Cancel = True
    Caption = '&2 - Cancelar'
    ModalResult = 2
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
end
