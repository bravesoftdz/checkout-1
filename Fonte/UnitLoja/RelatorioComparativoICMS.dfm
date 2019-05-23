inherited FormRelatorioComparativoICMSCompraVEnda: TFormRelatorioComparativoICMSCompraVEnda
  Caption = 'Comparativo de ICMS de Compra e Venda'
  ClientWidth = 811
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 811
  end
  inherited ScrollBox: TScrollBox
    Width = 811
    inherited LblTituloTela: TPanel
      Width = 807
    end
    inherited PanelNavigator: TPanel
      Width = 807
      inherited AdvPanelNavigator: TAdvOfficeStatusBar
        Width = 807
      end
    end
  end
  inherited TblTemporaria: TTable
    object TblTemporariaDataMovimento: TDateField
      FieldName = 'DataMovimento'
    end
    object TblTemporariaSubstTribt: TFloatField
      FieldName = 'SubstTribt'
    end
    object TblTemporariaIsento: TFloatField
      FieldName = 'Isento'
    end
    object TblTemporariaVlrTotalCompraVenda: TFloatField
      FieldName = 'VlrTotalCompraVenda'
    end
    object TblTemporariaIcms25: TFloatField
      FieldName = 'Icms25'
    end
    object TblTemporariaIcms17: TFloatField
      FieldName = 'Icms17'
    end
    object TblTemporariaIcms12: TFloatField
      FieldName = 'Icms12'
    end
    object TblTemporariaIcms7: TFloatField
      FieldName = 'Icms7'
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '  select'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) as VLRTOTALITE' +
        'M,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOM.CUPOA13ID'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 450
    Top = 5
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLCupomPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLCupomPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object SQLCupomCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
  end
end
