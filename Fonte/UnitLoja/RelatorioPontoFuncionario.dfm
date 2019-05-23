inherited FormRelatorioPontoFuncionario: TFormRelatorioPontoFuncionario
  Caption = 'Relatorio de Frequ'#234'ncia por Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 277
      inherited BtnVisualizar: TSpeedButton
        Top = 233
      end
      inherited EmpresaGroup: TGroupBox
        Height = 127
        inherited ListaEmpresas: TListBox
          Height = 53
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 132
        inherited Label3: TLabel
          Width = 52
          Caption = 'Iniciando'
        end
        inherited Label4: TLabel
          Left = 161
          Visible = False
        end
        inherited De: TDateEdit
          Left = 69
        end
        inherited Ate: TDateEdit
          Left = 183
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 174
        Width = 407
        Height = 41
        Caption = ' Funcion'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboFornecedor: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60RAZAOSOC'
          LookupSource = DSSQLFornecedor
          TabOrder = 0
        end
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsSQLPonto
    UserName = 'BDEPipeline1'
    Left = 526
    Top = 5
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'PONTA13ID'
      FieldName = 'PONTA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'PONTICOD'
      FieldName = 'PONTICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'FORNICOD'
      FieldName = 'FORNICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'PONTDDATA'
      FieldName = 'PONTDDATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'PONTDMANHAENT'
      FieldName = 'PONTDMANHAENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'PONTDMANHASAI'
      FieldName = 'PONTDMANHASAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'PONTDTARDEENT'
      FieldName = 'PONTDTARDEENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'PONTDTARDESAI'
      FieldName = 'PONTDTARDESAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'PONTDNOITEENT'
      FieldName = 'PONTDNOITEENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'PONTDNOITESAI'
      FieldName = 'PONTDNOITESAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'PONTDDIASEMANA'
      FieldName = 'PONTDDIASEMANA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'PONTDATRAZO'
      FieldName = 'PONTDATRAZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'PONTDEXTRA'
      FieldName = 'PONTDEXTRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'PONTTOBS'
      FieldName = 'PONTTOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ReportPonto: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportPontoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 556
    Top = 5
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 10583
        mmLeft = 88371
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 25400
        mmLeft = 2910
        mmTop = 3969
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cart'#227'o Ponto -  Advanced Control'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 4498
        mmTop = 5821
        mmWidth = 189707
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 15346
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 19579
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hor'#225'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 23813
        mmWidth = 15610
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 21960
        mmLeft = 2910
        mmTop = 29104
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 4498
        mmTop = 44450
        mmWidth = 9567
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 21960
        mmLeft = 16404
        mmTop = 29104
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 44450
        mmWidth = 5821
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 10583
        mmLeft = 24077
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 10583
        mmLeft = 45508
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 44450
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 44450
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MANHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 39075
        mmTop = 33073
        mmWidth = 12912
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 66940
        mmTop = 29369
        mmWidth = 265
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TARDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 82493
        mmTop = 33073
        mmWidth = 12023
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 10583
        mmLeft = 66940
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 69056
        mmTop = 44450
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 44450
        mmWidth = 10583
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 109802
        mmTop = 29369
        mmWidth = 265
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 10583
        mmLeft = 109802
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 10583
        mmLeft = 131234
        mmTop = 40481
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 136525
        mmTop = 44450
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 44450
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 125969
        mmTop = 33073
        mmWidth = 10795
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 152665
        mmTop = 29369
        mmWidth = 265
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 21960
        mmLeft = 152665
        mmTop = 29104
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 157916
        mmTop = 44450
        mmWidth = 11726
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 21960
        mmLeft = 174096
        mmTop = 29104
        mmWidth = 21696
        BandType = 0
      end
      object ppEmpresa: TppLabel
        UserName = 'Empresa'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 15346
        mmWidth = 155046
        BandType = 0
      end
      object ppFuncionario: TppLabel
        UserName = 'Empresa1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppFuncionario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 19579
        mmWidth = 155046
        BandType = 0
      end
      object ppHorario: TppLabel
        UserName = 'Horario'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppHorario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 23813
        mmWidth = 155046
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDDATA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3260
        mmLeft = 3440
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDDIASEMANA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3260
        mmLeft = 17198
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDMANHAENT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 25400
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDMANHASAI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 19314
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDTARDEENT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 529
        mmWidth = 19314
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDTARDESAI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 529
        mmWidth = 19314
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDNOITEENT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 111125
        mmTop = 529
        mmWidth = 19314
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PONTDNOITESAI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 529
        mmWidth = 19314
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 37306
        mmLeft = 2910
        mmTop = 1852
        mmWidth = 192882
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL DE HORAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 4498
        mmTop = 3969
        mmWidth = 31115
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Reconhe'#231'o a exatid'#227'o dos dados acima listados e de acordo com'#13#10'm' +
          'inha frequ'#234'ncia. Nos termos da portaria MTB Nro 3626 de 13/01/91' +
          #13#10'artigo 13 , este substitui o quadro de hor'#225'rio dos funcion'#225'rio' +
          's.'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Lines.Strings = (
          '- Reconhe'#231'o a exatid'#227'o dos dados acima listados e de acordo com'
          
            'minha frequ'#234'ncia. Nos termos da portaria MTB Nro 3626 de 13/01/9' +
            '1'
          'artigo 13 , este substitui o quadro de hor'#225'rio dos funcion'#225'rios.')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 13758
        mmLeft = 64029
        mmTop = 3969
        mmWidth = 128323
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 106627
        mmTop = 30956
        mmWidth = 74877
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ASSINATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 131234
        mmTop = 31750
        mmWidth = 22691
        BandType = 7
      end
    end
  end
  object SQLPonto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PONTOFUNC')
    Macros = <>
    Left = 456
    Top = 4
    object SQLPontoPONTA13ID: TStringField
      FieldName = 'PONTA13ID'
      Origin = 'DB.PONTOFUNC.PONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPontoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PONTOFUNC.EMPRICOD'
    end
    object SQLPontoPONTICOD: TIntegerField
      FieldName = 'PONTICOD'
      Origin = 'DB.PONTOFUNC.PONTICOD'
    end
    object SQLPontoFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PONTOFUNC.FORNICOD'
    end
    object SQLPontoPONTDDATA: TDateTimeField
      FieldName = 'PONTDDATA'
      Origin = 'DB.PONTOFUNC.PONTDDATA'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLPontoPONTDMANHAENT: TDateTimeField
      FieldName = 'PONTDMANHAENT'
      Origin = 'DB.PONTOFUNC.PONTDMANHAENT'
    end
    object SQLPontoPONTDMANHASAI: TDateTimeField
      FieldName = 'PONTDMANHASAI'
      Origin = 'DB.PONTOFUNC.PONTDMANHASAI'
    end
    object SQLPontoPONTDTARDEENT: TDateTimeField
      FieldName = 'PONTDTARDEENT'
      Origin = 'DB.PONTOFUNC.PONTDTARDEENT'
    end
    object SQLPontoPONTDTARDESAI: TDateTimeField
      FieldName = 'PONTDTARDESAI'
      Origin = 'DB.PONTOFUNC.PONTDTARDESAI'
    end
    object SQLPontoPONTDNOITEENT: TDateTimeField
      FieldName = 'PONTDNOITEENT'
      Origin = 'DB.PONTOFUNC.PONTDNOITEENT'
    end
    object SQLPontoPONTDNOITESAI: TDateTimeField
      FieldName = 'PONTDNOITESAI'
      Origin = 'DB.PONTOFUNC.PONTDNOITESAI'
    end
    object SQLPontoPONTDDIASEMANA: TStringField
      FieldName = 'PONTDDIASEMANA'
      Origin = 'DB.PONTOFUNC.PONTDDIASEMANA'
      Size = 3
    end
    object SQLPontoPONTDATRAZO: TDateTimeField
      FieldName = 'PONTDATRAZO'
      Origin = 'DB.PONTOFUNC.PONTDATRAZO'
    end
    object SQLPontoPONTDEXTRA: TDateTimeField
      FieldName = 'PONTDEXTRA'
      Origin = 'DB.PONTOFUNC.PONTDEXTRA'
    end
    object SQLPontoPONTTOBS: TStringField
      FieldName = 'PONTTOBS'
      Origin = 'DB.PONTOFUNC.PONTTOBS'
      Size = 254
    end
    object SQLPontoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PONTOFUNC.REGISTRO'
    end
    object SQLPontoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PONTOFUNC.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 622
    Top = 5
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from FORNECEDOR'
      'where FORNA13IDCRACHA <> '#39#39
      'order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 594
    Top = 5
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA13IDCRACHA: TStringField
      FieldName = 'FORNA13IDCRACHA'
      Origin = 'DB.FORNECEDOR.FORNA13IDCRACHA'
      FixedChar = True
      Size = 13
    end
  end
  object dsSQLPonto: TDataSource
    DataSet = SQLPonto
    Left = 484
    Top = 4
  end
end
