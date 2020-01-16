inherited FormTelaConfiguracaoCompra: TFormTelaConfiguracaoCompra
  Left = 260
  Top = 97
  Caption = 'Configura'#231#245'es de Compra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 0
      end
      object GroupBox1: TGroupBox
        Left = 7
        Top = 149
        Width = 653
        Height = 66
        Caption = ' Opera'#231#245'es de Estoque Padronizadas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 12
          Top = 21
          Width = 241
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Nota de Compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 42
          Width = 301
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Cancel. de Nota de Compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboOperacaoEntrada: TRxDBLookupCombo
          Left = 330
          Top = 15
          Width = 317
          Height = 21
          DropDownCount = 8
          DataField = 'CFCOITIPMOVNFE'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 0
          OnExit = ComboOperacaoEntradaExit
        end
        object ComboOperacaoSaida: TRxDBLookupCombo
          Left = 330
          Top = 37
          Width = 317
          Height = 21
          DropDownCount = 8
          DataField = 'CFCOITIPMOVCANCNFE'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 1
          OnExit = ComboOperacaoSaidaExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 425
        Top = 2
        Width = 328
        Height = 145
        Caption = 'Par'#226'metros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 13
          Width = 312
          Height = 17
          Caption = 'Verificar se o Total da Nota '#233' Igual ao dos Produtos'
          DataField = 'CFCOCTESTAITENSNFE'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 6
          Top = 31
          Width = 317
          Height = 17
          Caption = 'Excluir Pedido de Compra Depois Importado na Nota'
          DataField = 'CFCOCEXCLUIPEDENT'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 6
          Top = 69
          Width = 305
          Height = 17
          Caption = 'Testar se Produto Pertence ao Fornecedor da Nota'
          DataField = 'CFCOCTESTPRODFORN'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 6
          Top = 87
          Width = 305
          Height = 18
          Caption = 'Informa Dados do Frete'
          DataField = 'CFCOCINFDADOSFRETE'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 6
          Top = 50
          Width = 317
          Height = 17
          Caption = 'N'#227'o Importar os Itens do Pedido para a Nf.Compra'
          DataField = 'CFCOCNIMPFINPEDCOMP'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 6
          Top = 105
          Width = 305
          Height = 18
          Caption = 'Abre tela pre'#231'o autom'#225'tico quando encerra nota'
          DataField = 'LISTAPRECO_AUTOMATICO'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object dbchkLISTAPRECO_AUTOMATICO: TDBCheckBox
          Left = 6
          Top = 123
          Width = 320
          Height = 18
          Caption = 'Habilita cadastro de todos os produtos(Importar xml)'
          DataField = 'CADASTRAR_TODOS_PRODUTOS'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 221
        Width = 745
        Height = 42
        Caption = 'Par'#226'metros para Financeiro do Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label7: TLabel
          Left = 12
          Top = 19
          Width = 109
          Height = 13
          Caption = 'Tipo de Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 306
          Top = 18
          Width = 50
          Height = 13
          Caption = 'Portador'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 542
          Top = 19
          Width = 60
          Height = 13
          Caption = 'Tipo Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 125
          Top = 15
          Width = 173
          Height = 21
          DropDownCount = 8
          DataField = 'TPDCICOD'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPDCICOD'
          LookupDisplay = 'TPDCA60DESCR'
          LookupSource = DSSQLTipoDocumento
          ParentFont = False
          TabOrder = 0
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 359
          Top = 14
          Width = 173
          Height = 21
          DropDownCount = 8
          DataField = 'PORTICOD'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          ParentFont = False
          TabOrder = 1
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 605
          Top = 14
          Width = 132
          Height = 21
          Style = csDropDownList
          DataField = 'CFCOCPREVREALNFCOMPRAFIN'
          DataSource = DSSQLConfigCompra
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Previsto'
            'Realizado')
          TabOrder = 2
          Values.Strings = (
            'P'
            'R')
        end
      end
      object GroupBox4: TGroupBox
        Left = 6
        Top = 2
        Width = 417
        Height = 145
        Caption = 'Pre'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label3: TLabel
          Left = 8
          Top = 116
          Width = 175
          Height = 13
          Caption = 'Aplicar Margem de Lucro sobre'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBCheckBox3: TDBCheckBox
          Left = 6
          Top = 20
          Width = 296
          Height = 17
          Caption = 'Altera Pre'#231'o de Compra pela NF Compra'
          DataField = 'CFCOCALTVLRCOMPRA'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 6
          Top = 38
          Width = 289
          Height = 17
          Caption = 'Altera Pre'#231'o de Custo pela NF Compra'
          DataField = 'CFCOCALTVLRCUSTO'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 6
          Top = 56
          Width = 404
          Height = 17
          Caption = 'Altera % de de IPI, ST, DIF ICMS, FRETE, DESP pela NF Compra'
          DataField = 'CFCOCALTPERCIPI'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 190
          Top = 112
          Width = 145
          Height = 21
          Style = csDropDownList
          DataField = 'CFCOCTOTPRCVENPROD'
          DataSource = DSSQLConfigCompra
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Valor de Custo'
            'Valor de Custo M'#233'dio')
          TabOrder = 3
          Values.Strings = (
            'U'
            'M')
        end
        object DBCheckBox2: TDBCheckBox
          Left = 6
          Top = 75
          Width = 289
          Height = 17
          Caption = 'Altera Pre'#231'o de Venda na Entrada dos Produtos'
          DataField = 'CFCOCALTPRCPRODENT'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 6
          Top = 93
          Width = 406
          Height = 17
          Caption = 
            'N'#227'o alterar quando os valores da nota forem menores que os atuai' +
            's'
          DataField = 'CFCOCVERIFICAVLRMENOR'
          DataSource = DSSQLConfigCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object LabelGravar: TSpeedButton
              Tag = 3
              Left = 8
              Top = 3
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Action = DataSetPost1
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                C2040000424DC204000000000000420000002800000018000000180000000100
                1000030000008004000000000000000000000000000000000000007C0000E003
                00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
                7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
                9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
                BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
                742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
                BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
                0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
                7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
                EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
                DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
                742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F}
              Margin = 0
              ParentFont = False
              Spacing = 1
            end
          end
        end
      end
    end
  end
  object SQLConfigCompra: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGCOMPRAS')
    UpdateObject = UpdateSQLConfigCompra
    Left = 134
    Top = 7
    object SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Estoque para Cancelamento de Nota de Compra'
      FieldName = 'CFCOITIPMOVCANCNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVCANCNFE'
    end
    object SQLConfigCompraCFCOCALTPRCPRODENT: TStringField
      FieldName = 'CFCOCALTPRCPRODENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTPRCPRODENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCTESTAITENSNFE: TStringField
      DisplayLabel = 'Testa total Nota x Total Itens'
      FieldName = 'CFCOCTESTAITENSNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTESTAITENSNFE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField
      FieldName = 'CFCOCTOTPRCVENPROD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTOTPRCVENPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCNUMSERPRODENT: TStringField
      FieldName = 'CFCOCNUMSERPRODENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCNUMSERPRODENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField
      FieldName = 'CFCOCIMPLEGORDCOMP'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCIMPLEGORDCOMP'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOITIPMOVNFE: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Estoque para Nota de Compra'
      FieldName = 'CFCOITIPMOVNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVCANCNFE'
    end
    object SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField
      FieldName = 'CFCOCALTVLRCOMPRA'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTVLRCOMPRA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTPERCIPI: TStringField
      FieldName = 'CFCOCALTPERCIPI'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTPERCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTVLRCUSTO: TStringField
      FieldName = 'CFCOCALTVLRCUSTO'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTVLRCUSTO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
    end
    object SQLConfigCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
    end
    object SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField
      FieldName = 'CFCOCEXCLUIPEDENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCTESTPRODFORN: TStringField
      FieldName = 'CFCOCTESTPRODFORN'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTESTPRODFORN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField
      FieldName = 'CFCOCVERIFICAVLRMENOR'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCVERIFICAVLRMENOR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCINFDADOSFRETE: TStringField
      DisplayLabel = 'Inf. Dados do Frete'
      FieldName = 'CFCOCINFDADOSFRETE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCINFDADOSFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCPREVREALNFCOMPRAFIN: TStringField
      FieldName = 'CFCOCPREVREALNFCOMPRAFIN'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCPREVREALNFCOMPRAFIN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCNIMPFINPEDCOMP: TStringField
      FieldName = 'CFCOCNIMPFINPEDCOMP'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCNIMPFINPEDCOMP'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraLISTAPRECO_AUTOMATICO: TStringField
      FieldName = 'LISTAPRECO_AUTOMATICO'
      Origin = 'DB.CONFIGCOMPRAS.LISTAPRECO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCADASTRAR_TODOS_PRODUTOS: TStringField
      FieldName = 'CADASTRAR_TODOS_PRODUTOS'
      Origin = 'DB.CONFIGCOMPRAS.CADASTRAR_TODOS_PRODUTOS'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLConfigCompra: TDataSource
    DataSet = SQLConfigCompra
    Left = 162
    Top = 7
  end
  object UpdateSQLConfigCompra: TUpdateSQL
    ModifySQL.Strings = (
      'update CONFIGCOMPRAS'
      'set'
      '  CFCOITIPMOVNFE = :CFCOITIPMOVNFE,'
      '  CFCOITIPMOVCANCNFE = :CFCOITIPMOVCANCNFE,'
      '  CFCOCALTPRCPRODENT = :CFCOCALTPRCPRODENT,'
      '  CFCOCTESTAITENSNFE = :CFCOCTESTAITENSNFE,'
      '  CFCOCTOTPRCVENPROD = :CFCOCTOTPRCVENPROD,'
      '  CFCOCNUMSERPRODENT = :CFCOCNUMSERPRODENT,'
      '  CFCOCIMPLEGORDCOMP = :CFCOCIMPLEGORDCOMP,'
      '  CFCOCALTVLRCOMPRA = :CFCOCALTVLRCOMPRA,'
      '  CFCOCALTPERCIPI = :CFCOCALTPERCIPI,'
      '  CFCOCALTVLRCUSTO = :CFCOCALTVLRCUSTO'
      'where'
      '  CFCOITIPMOVNFE = :OLD_CFCOITIPMOVNFE and'
      '  CFCOITIPMOVCANCNFE = :OLD_CFCOITIPMOVCANCNFE and'
      '  CFCOCALTPRCPRODENT = :OLD_CFCOCALTPRCPRODENT and'
      '  CFCOCTESTAITENSNFE = :OLD_CFCOCTESTAITENSNFE and'
      '  CFCOCTOTPRCVENPROD = :OLD_CFCOCTOTPRCVENPROD and'
      '  CFCOCNUMSERPRODENT = :OLD_CFCOCNUMSERPRODENT and'
      '  CFCOCIMPLEGORDCOMP = :OLD_CFCOCIMPLEGORDCOMP and'
      '  CFCOCALTVLRCOMPRA = :OLD_CFCOCALTVLRCOMPRA and'
      '  CFCOCALTPERCIPI = :OLD_CFCOCALTPERCIPI and'
      '  CFCOCALTVLRCUSTO = :OLD_CFCOCALTVLRCUSTO')
    InsertSQL.Strings = (
      'insert into CONFIGCOMPRAS'
      
        '  (CFCOITIPMOVNFE, CFCOITIPMOVCANCNFE, CFCOCALTPRCPRODENT, CFCOC' +
        'TESTAITENSNFE, '
      
        '   CFCOCTOTPRCVENPROD, CFCOCNUMSERPRODENT, CFCOCIMPLEGORDCOMP, C' +
        'FCOCALTVLRCOMPRA, '
      '   CFCOCALTPERCIPI, CFCOCALTVLRCUSTO)'
      'values'
      
        '  (:CFCOITIPMOVNFE, :CFCOITIPMOVCANCNFE, :CFCOCALTPRCPRODENT, :C' +
        'FCOCTESTAITENSNFE, '
      
        '   :CFCOCTOTPRCVENPROD, :CFCOCNUMSERPRODENT, :CFCOCIMPLEGORDCOMP' +
        ', :CFCOCALTVLRCOMPRA, '
      '   :CFCOCALTPERCIPI, :CFCOCALTVLRCUSTO)')
    DeleteSQL.Strings = (
      'delete from CONFIGCOMPRAS'
      'where'
      '  CFCOITIPMOVNFE = :OLD_CFCOITIPMOVNFE and'
      '  CFCOITIPMOVCANCNFE = :OLD_CFCOITIPMOVCANCNFE and'
      '  CFCOCALTPRCPRODENT = :OLD_CFCOCALTPRCPRODENT and'
      '  CFCOCTESTAITENSNFE = :OLD_CFCOCTESTAITENSNFE and'
      '  CFCOCTOTPRCVENPROD = :OLD_CFCOCTOTPRCVENPROD and'
      '  CFCOCNUMSERPRODENT = :OLD_CFCOCNUMSERPRODENT and'
      '  CFCOCIMPLEGORDCOMP = :OLD_CFCOCIMPLEGORDCOMP and'
      '  CFCOCALTVLRCOMPRA = :OLD_CFCOCALTVLRCOMPRA and'
      '  CFCOCALTPERCIPI = :OLD_CFCOCALTPERCIPI and'
      '  CFCOCALTVLRCUSTO = :OLD_CFCOCALTVLRCUSTO')
    Left = 190
    Top = 7
  end
  object ActionList1: TActionList
    Left = 222
    Top = 8
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DSSQLConfigCompra
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 314
    Top = 7
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 342
    Top = 7
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PORTADOR'
      'order by PORTA60DESCR')
    Macros = <>
    Left = 313
    Top = 36
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPODOCUMENTO'
      'order by TPDCA60DESCR')
    Macros = <>
    Left = 314
    Top = 66
    object SQLTipoDocumentoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocumentoTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 342
    Top = 66
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 342
    Top = 36
  end
end
