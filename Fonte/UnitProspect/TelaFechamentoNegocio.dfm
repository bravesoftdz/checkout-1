object FormTelaFechamentoNegocio: TFormTelaFechamentoNegocio
  Left = 236
  Top = 198
  Width = 349
  Height = 194
  Caption = 'Fechamento do Neg'#243'cio'
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
  object lblMotivoFechamento: TLabel
    Left = 6
    Top = 49
    Width = 112
    Height = 13
    Caption = 'Motivo Fechamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 7
    Top = 7
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboFechamento: TRxDBLookupCombo
    Left = 5
    Top = 20
    Width = 219
    Height = 21
    Cursor = crHandPoint
    DropDownCount = 8
    DisplayAllFields = True
    DataField = 'PRNSICOD'
    DataSource = FormCadastroNegocioComposto.DSTemplate
    DisplayEmpty = '...'
    EmptyValue = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'PRNSICOD'
    LookupDisplay = 'PRNSA60DESCR'
    LookupDisplayIndex = 1
    LookupSource = FormCadastroNegocioComposto.DSSQLMotivoFecha
    ParentFont = False
    TabOrder = 0
  end
  object BtGravar: TBitBtn
    Left = 121
    Top = 132
    Width = 105
    Height = 25
    Caption = '&Gravar'
    ModalResult = 1
    TabOrder = 2
    OnClick = BtGravarClick
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
  end
  object BtCancelar: TBitBtn
    Left = 229
    Top = 132
    Width = 105
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 3
    Kind = bkCancel
  end
  object MemoObs: TDBRichEdit
    Left = 6
    Top = 64
    Width = 327
    Height = 57
    DataField = 'PRNEA254OBS'
    DataSource = FormCadastroNegocioComposto.DSTemplate
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object SQLStatus: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRNEGOCIACAOSTATUS ')
    Macros = <>
    Left = 8
    Top = 136
    object SQLStatusPRNSICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd'
      FieldName = 'PRNSICOD'
      Origin = 'DB.PRNEGOCIACAOSTATUS.PRNSICOD'
      Visible = False
    end
    object SQLStatusPRNSCPEDEMOTIVO: TStringField
      DisplayLabel = 'Solicita Motivo'
      FieldName = 'PRNSCPEDEMOTIVO'
      Origin = 'DB.PRNEGOCIACAOSTATUS.PRNSCPEDEMOTIVO'
      FixedChar = True
      Size = 1
    end
    object SQLStatusPRNSA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRNSA60DESCR'
      Origin = 'DB.PRNEGOCIACAOSTATUS.PRNSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLStatusPRNSCALTERA: TStringField
      DisplayLabel = 'Permite Alterar'
      FieldName = 'PRNSCALTERA'
      Origin = 'DB.PRNEGOCIACAOSTATUS.PRNSCALTERA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLStatus: TDataSource
    DataSet = SQLStatus
    Left = 36
    Top = 136
  end
end
