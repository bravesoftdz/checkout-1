object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 188
  Height = 208
  Caption = 'PreVenda'
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
  object TblPedidoFinanceiro: TTable
    Active = True
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoFinan.DB'
    Left = 103
    Top = 120
    object TblPedidoFinanceiroPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanceiroVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanceiroValor: TFloatField
      FieldName = 'Valor'
    end
    object TblPedidoFinanceiroNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
  end
  object TblPreVendaItem: TTable
    Active = True
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaItem.DB'
    Left = 64
    Top = 120
    object TblPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblPreVendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TblPreVendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblPreVendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TblPreVendaItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblPreVendaItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TblPreVendaItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object TblPreVendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TblPreVendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblPreVendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
  end
  object TblPreVendaCab: TTable
    Active = True
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 21
    Top = 120
    object TblPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblPreVendaCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblPreVendaCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblPreVendaCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TblPreVendaCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblPreVendaCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblPreVendaCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblPreVendaCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TblPreVendaCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblPreVendaCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblPreVendaCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblPreVendaCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TblPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblPreVendaCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TblPreVendaCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TblPreVendaCabCidadeClienteVenda: TStringField
      FieldName = 'CidadeClienteVenda'
      Size = 30
    end
    object TblPreVendaCabOBSImpressaoCupom: TStringField
      FieldName = 'OBSImpressaoCupom'
      Size = 60
    end
    object TblPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TblPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TblPreVendaCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object TblPreVendaCabDocumentoClienteVenda: TStringField
      FieldName = 'DocumentoClienteVenda'
    end
    object TblPreVendaCabTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblPreVendaCabPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
    object TblPreVendaCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TblPreVendaCabDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
  end
  object rdp: TppReport
    AutoStop = False
    DataPipeline = PipeItem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 48
    Top = 11
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeItem'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Duarte Mat Constru'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5715
        mmLeft = 2910
        mmTop = 2117
        mmWidth = 53763
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1852
        mmTop = 28046
        mmWidth = 30734
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qdte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 14552
        mmTop = 32279
        mmWidth = 6900
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unitario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 27781
        mmTop = 32279
        mmWidth = 11007
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 48948
        mmTop = 32015
        mmWidth = 6731
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 36513
        mmWidth = 55827
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 27517
        mmWidth = 55827
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UsuarioVendaSTR'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 39158
        mmTop = 23019
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DataEmissao'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 23019
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 2117
        mmTop = 18785
        mmWidth = 10761
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NomeClienteVenda'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3260
        mmLeft = 15081
        mmTop = 19050
        mmWidth = 41540
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '51 3352 2602'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 15875
        mmTop = 12965
        mmWidth = 23791
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 22754
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R.Barao do Amazonas 2675'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 2930
        mmTop = 8202
        mmWidth = 48641
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descricao'
        DataPipeline = PipeItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeItem'
        mmHeight = 3260
        mmLeft = 9260
        mmTop = 529
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Quantidade'
        DataPipeline = PipeItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeItem'
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ValorTotal'
        DataPipeline = PipeItem
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItem'
        mmHeight = 3260
        mmLeft = 45508
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SubTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 16404
        mmTop = 1588
        mmWidth = 13674
        BandType = 7
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalGeral'
        DataPipeline = PipeCab
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3969
        mmLeft = 40481
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Troco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5715
        mmLeft = 17727
        mmTop = 12171
        mmWidth = 12488
        BandType = 7
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Troco'
        DataPipeline = PipeCab
        DisplayFormat = 'R$ ##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 5715
        mmLeft = 40481
        mmTop = 12171
        mmWidth = 17357
        BandType = 7
      end
      object ppSubFinanceiro: TppSubReport
        UserName = 'SubFinanceiro'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeFin'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6085
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeFin
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeFin'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Valor'
              DataPipeline = PipeFin
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeFin'
              mmHeight = 3969
              mmLeft = 41275
              mmTop = 794
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Numerario'
              DataPipeline = PipeFin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeFin'
              mmHeight = 3969
              mmLeft = 5292
              mmTop = 794
              mmWidth = 25929
              BandType = 4
            end
          end
        end
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 794
        mmWidth = 55563
        BandType = 7
      end
    end
  end
  object dsCab: TDataSource
    DataSet = TblPreVendaCab
    Left = 22
    Top = 90
  end
  object dsItem: TDataSource
    DataSet = TblPreVendaItem
    Left = 64
    Top = 90
  end
  object dsFin: TDataSource
    DataSet = TblPedidoFinanceiro
    Left = 103
    Top = 90
  end
  object PipeItem: TppDBPipeline
    DataSource = dsItem
    UserName = 'PipeItem'
    Left = 64
    Top = 57
    object PipeItemppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeItemppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object PipeItemppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object PipeItemppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorUnitario'
      FieldName = 'ValorUnitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeItemppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorTotal'
      FieldName = 'ValorTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipeItemppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto'
      FieldName = 'Desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object PipeItemppField7: TppField
      FieldAlias = 'Marca'
      FieldName = 'Marca'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object PipeItemppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object PipeItemppField9: TppField
      FieldAlias = 'Troca'
      FieldName = 'Troca'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object PipeItemppField10: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object PipeItemppField11: TppField
      FieldAlias = 'ImpCozinha'
      FieldName = 'ImpCozinha'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object PipeItemppField12: TppField
      FieldAlias = 'ImpVale'
      FieldName = 'ImpVale'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
  end
  object PipeFin: TppDBPipeline
    DataSource = dsFin
    UserName = 'PipeFin'
    Left = 102
    Top = 57
  end
  object PipeCab: TppDBPipeline
    DataSource = dsCab
    UserName = 'PipeCab'
    Left = 22
    Top = 58
  end
end
