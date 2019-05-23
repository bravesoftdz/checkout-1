object Form1: TForm1
  Left = 192
  Top = 110
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Grid1: TIB_Grid
    Left = 0
    Top = 0
    Width = 862
    Height = 473
    CustomGlyphsSupplied = []
    DataSource = dsSQLProd
    Align = alClient
    TabOrder = 0
  end
  object DB: TIB_Connection
    LoginPrompt = True
    SQLDialect = 3
    Params.Strings = (
      'CHARACTER SET=ISO8859_1'
      'PATH=/home/superbom/Banco.gdb'
      'USER NAME=SYSDBA'
      'SERVER=201.47.86.193'
      'PROTOCOL=TCP/IP')
    Left = 600
    Top = 8
  end
  object tr: TIB_Transaction
    IB_Connection = DB
    Isolation = tiCommitted
    Left = 624
    Top = 8
  end
  object SQLProd: TIB_Query
    DatabaseName = '201.47.86.193:/home/superbom/Banco.gdb'
    IB_Connection = DB
    IB_Transaction = tr
    SQL.Strings = (
      'Select * From ConfigGeral')
    RefreshAction = raKeepDataPos
    RequestLive = True
    Left = 656
    Top = 8
  end
  object dsSQLProd: TIB_DataSource
    Dataset = SQLProd
    Left = 688
    Top = 8
  end
end
