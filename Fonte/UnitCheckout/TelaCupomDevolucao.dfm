object FormTelaCupomDevolucao: TFormTelaCupomDevolucao
  Left = -1
  Top = 25
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'FormTelaCupomDevolucao'
  ClientHeight = 585
  ClientWidth = 804
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 804
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Cupons para Devolu'#231#227'o'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DadosTerminal: TRxLabel
    Left = 0
    Top = 565
    Width = 804
    Height = 20
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'DadosTerminal'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBGridLista: TDBGrid
    Left = 9
    Top = 49
    Width = 775
    Height = 530
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSMemPrevenda
    FixedColor = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridListaCellClick
    OnColEnter = DBGridListaColEnter
    OnColExit = DBGridListaColExit
    OnDrawColumnCell = DBGridListaDrawColumnCell
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUPOA13ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMPRICOD'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VENDICOD'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUPODEMIS'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTRCN2VLR'
        Title.Alignment = taRightJustify
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTRCN2TOTREC'
        Title.Alignment = taRightJustify
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taRightJustify
        Visible = True
      end>
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 31
    Top = 402
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CP.CUPOA13ID,'
      '  CP.CLIEA13ID,'
      '  CP.EMPRICOD,'
      '  CP.VENDICOD,'
      '  CP.CUPODEMIS,'
      '  CP.CUPOCTIPOPADRAO,'
      '  CP.CUPOCCONSIG,'
      '  CR.CTRCN2VLR,'
      '  CR.CTRCN2TOTREC'
      'from'
      '  CUPOM CP, CONTASRECEBER CR'
      'where'
      '  CP.CUPOA13ID = CR.CUPOA13ID and'
      '  CP.CUPOCSTATUS = "A" and'
      '  %MCliente and'
      '  %MTipoPadrao and'
      '  %MValor')
    Macros = <
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoPadrao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MValor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 31
    Top = 374
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object SQLCupomVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCupomCUPOCCONSIG: TStringField
      FieldName = 'CUPOCCONSIG'
      Origin = 'DB.CUPOM.CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLCupomCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
  end
  object DSMemPrevenda: TDataSource
    DataSet = TblMemPreVenda
    Left = 87
    Top = 402
  end
  object WallPaper: TEvWallPaper
    Enabled = True
    Style = wsStretch
    Left = 115
    Top = 402
  end
  object TblMemPreVenda: TMemoryTable
    OnCalcFields = TblMemPreVendaCalcFields
    DatabaseName = 'UNITGESTAO_TEMP'
    Left = 59
    Top = 402
    object TblMemPreVendaCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblMemPreVendaEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object TblMemPreVendaVENDICOD: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object TblMemPreVendaCUPODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object TblMemPreVendaCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object TblMemPreVendaCUPOCCONSIG: TStringField
      FieldName = 'CUPOCCONSIG'
      Origin = 'DB.CUPOM.CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object TblMemPreVendaCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object TblMemPreVendaCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object TblMemPreVendaMarcado: TBooleanField
      FieldName = 'Marcado'
    end
    object TblMemPreVendaSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '#,##0.00'
    end
  end
end
