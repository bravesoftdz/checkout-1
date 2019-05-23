object FormTelaConsultaPaciente: TFormTelaConsultaPaciente
  Left = 73
  Top = 12
  Width = 696
  Height = 480
  Caption = 'Consulta R'#225'pida de Titular'
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
  object PanelProcura: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 54
    Align = alTop
    Color = 12572888
    TabOrder = 0
    object Label43: TLabel
      Left = 9
      Top = 8
      Width = 154
      Height = 13
      Caption = 'Procurar Titular pelo Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object EditProcuraTitular: TEdit
      Left = 6
      Top = 24
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EditProcuraTitularKeyDown
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 54
    Width = 688
    Height = 399
    Align = alClient
    Color = clWhite
    DataSource = DSSQLClienteConsulta
    FixedColor = 10053171
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIEA13ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60RAZAOSOC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA15FONE1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA15FONE2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60ENDRES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60BAIRES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60CIDRES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA2UFRES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DSSQLClienteConsulta: TDataSource
    DataSet = SQLClienteConsulta
    Left = 611
    Top = 4
  end
  object SQLClienteConsulta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  CLIEA13ID,'
      '  CLIEA10CODANT,'
      '  CLIEA60RAZAOSOC,'
      '  CLIEA15FONE1,'
      '  CLIEA15FONE2,'
      '  CLIEA60ENDRES,'
      '  CLIEA60BAIRES,'
      '  CLIEA60CIDRES,'
      '  CLIEA2UFRES'
      'From '
      '  Cliente '
      'Where '
      '  (%Filtro)'
      'Order by  CLIEA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 640
    Top = 4
    object SQLClienteConsultaCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DBGESTAO.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteConsultaCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome do Titular'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteConsultaCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteConsultaCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteConsultaCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteConsultaCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteConsultaCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteConsultaCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteConsultaCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DBGESTAO.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
  end
end
