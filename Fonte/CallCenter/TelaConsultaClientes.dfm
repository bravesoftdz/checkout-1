object FormTelaConsultaClientes: TFormTelaConsultaClientes
  Left = 325
  Top = 206
  Width = 552
  Height = 381
  Caption = 'FormTelaConsultaClientes'
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
    Top = 146
    Width = 544
    Height = 208
    Align = alBottom
    Color = 14737632
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Solicita'#231#227'o'
      FocusControl = DBMemo2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 273
      Top = 55
      Width = 47
      Height = 13
      Caption = 'Solu'#231#227'o'
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 233
      Height = 21
      TabStop = False
      Color = 14737632
      DataField = 'TPTAA30DESCRICAO'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBCheckPendente: TDBCheckBox
      Left = 456
      Top = 26
      Width = 81
      Height = 17
      Caption = 'Pendente'
      DataField = 'PENDENTE'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 72
      Width = 233
      Height = 89
      TabStop = False
      Color = 14737632
      DataField = 'HELPTSOLICITACAO'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 272
      Top = 72
      Width = 265
      Height = 89
      DataField = 'HELPTSOLUCAO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 456
      Top = 176
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
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
    object DBEdit2: TDBEdit
      Left = 272
      Top = 24
      Width = 145
      Height = 21
      TabStop = False
      Color = 14737632
      DataField = 'HELPA13ID'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 145
    Align = alTop
    Color = 14536396
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 529
      Height = 129
      TabStop = False
      BorderStyle = bsNone
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentColor = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIEA60RAZAOSOC'
          Title.Caption = 'Cliente'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA60CIDRES'
          Title.Caption = 'Cidade'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA2UFRES'
          Title.Caption = 'UF'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HELPDINICIO'
          Title.Caption = 'Inicio'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HELPDTERMINO'
          Title.Caption = 'T'#233'rmino'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGISTRO'
          Title.Caption = 'Data'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HELPCCONTATO'
          Title.Caption = 'Contato'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PENDENTE'
          Title.Color = 16767449
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLTemplate
    Left = 208
  end
  object SQLTemplate: TQuery
    Active = True
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    UpdateMode = upWhereChanged
    Left = 248
  end
  object SQLTptarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TIPOTAREFA ')
    Left = 328
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 360
  end
end
