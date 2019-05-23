object FormPedidoCompraHistoricoCompra: TFormPedidoCompraHistoricoCompra
  Left = 68
  Top = 297
  Width = 937
  Height = 258
  Color = 15461355
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 929
    Height = 194
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 927
      Height = 192
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSSQLNotasCompra
      FixedColor = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'FORNA60RAZAOSOC'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCPA30NRO'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCPDRECEBIMENTO'
          Title.Caption = 'Dt. Recbto'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3CAPEMBAL'
          Title.Caption = 'Cap.Embal'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3QTDEMBAL'
          Title.Caption = 'Qtde.Embal'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRUNIT'
          Title.Caption = 'Vlr.Unit'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLREMBAL'
          Title.Caption = 'Vlr.Embal'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRIPI'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRDESC'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRICMS'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRSUBST'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOCIN3VLRFRETE'
          Width = 55
          Visible = True
        end>
    end
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LabelTitulo: TLabel
      Left = 4
      Top = 5
      Width = 73
      Height = 24
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 929
    Height = 7
    Align = alTop
    Color = 12572888
    TabOrder = 2
  end
  object DSSQLNotasCompra: TDataSource
    DataSet = SQLNotasCompra
    Left = 652
    Top = 90
  end
  object SQLNotasCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from NotaCompra, NotaCompraItem, Fornecedor'
      'where'
      '(%MEmpresa) and'
      '(%MProduto) and'
      'NotaCompraItem.NOCPA13ID = NotaCompra.NOCPA13ID and'
      'NotaCompra.FORNICOD = Fornecedor.FORNICOD and'
      
        '(NotaCompra.NOCPCSTATUS <> '#39'C'#39' or NotaCompra.NOCPCSTATUS is null' +
        ')'
      'order by'
      'NotaCompra.NOCPDRECEBIMENTO DESC')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProduto'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 624
    Top = 90
    object SQLNotasCompraNOCPA13ID: TStringField
      DisplayLabel = 'ID NF'
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasCompraEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLNotasCompraFORNICOD: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object SQLNotasCompraNOCPA30NRO: TStringField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotasCompraNOCPCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotasCompraOPESICOD: TIntegerField
      DisplayLabel = 'Opera'#231#227'o Estoque'
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTACOMPRA.OPESICOD'
    end
    object SQLNotasCompraNOCPDEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLNotasCompraPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
    end
    object SQLNotasCompraNOCIN3PERCDESC: TBCDField
      DisplayLabel = '% Desc.'
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRDESC: TBCDField
      DisplayLabel = 'Vlr. Desc.'
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRICMS: TBCDField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3PERCICMS: TBCDField
      DisplayLabel = '% ICMS'
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRSUBST: TBCDField
      DisplayLabel = 'Vlr. Subst.'
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRIPI: TBCDField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3PERCIPI: TBCDField
      DisplayLabel = '% IPI'
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRCUSTOMED: TBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,000'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLRFRETE: TBCDField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3QTDBONIF: TBCDField
      DisplayLabel = 'Bonifica'#231#227'o'
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraFORNA60RAZAOSOC: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLNotasCompraLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLNotasCompraNOCIN3CAPEMBAL: TBCDField
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      DisplayFormat = '###0.000'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3QTDEMBAL: TBCDField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      DisplayFormat = '###0.000'
      Precision = 15
      Size = 3
    end
    object SQLNotasCompraNOCIN3VLREMBAL: TFloatField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
    end
    object SQLNotasCompraNOCIN3VLRUNIT: TFloatField
      FieldName = 'NOCIN3VLRUNIT'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
    end
  end
end
