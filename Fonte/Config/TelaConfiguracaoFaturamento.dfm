inherited FormTelaConfiguracaoFaturamento: TFormTelaConfiguracaoFaturamento
  Left = 527
  Top = 130
  Width = 812
  Height = 569
  Hint = 'Post'
  Caption = 'Configura'#231#245'es de Faturamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 796
    Height = 530
    inherited PanelCentral: TPanel
      Width = 792
      Height = 446
      inherited PanelBarra: TPanel
        Width = 0
        Height = 446
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 8
        Width = 652
        Height = 158
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
          Width = 211
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Nota Fiscal'
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
          Width = 271
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Cancel. de Nota Fiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 12
          Top = 67
          Width = 247
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Pedido  de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 12
          Top = 88
          Width = 304
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Cancel. de Pedido de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 12
          Top = 111
          Width = 277
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Importa'#231#227'o de Cupom'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 12
          Top = 135
          Width = 254
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque para Venda Consignada'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 330
          Top = 15
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODNF'
          DataSource = DSSQLConfigVenda
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
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 330
          Top = 37
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODCANCNF'
          DataSource = DSSQLConfigVenda
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
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 330
          Top = 61
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODPED'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 330
          Top = 84
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODCANCPED'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 3
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 330
          Top = 107
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODIMPCUPOM'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 4
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 330
          Top = 131
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'OPESICODVENDCONSIG'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 166
        Width = 652
        Height = 103
        Caption = ' Par'#226'metros Gerais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBCheckBox3: TDBCheckBox
          Left = 4
          Top = 17
          Width = 230
          Height = 17
          Caption = 'Movimenta Estoque na Nota Fiscal'
          DataField = 'CFVECMOVESTOQUENF'
          DataSource = DSSQLConfigVenda
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
          Left = 4
          Top = 32
          Width = 230
          Height = 17
          Caption = 'Excluir Pedidos Faturados'
          DataField = 'CFVECEXCLUIPEDFAT'
          DataSource = DSSQLConfigVenda
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
          Left = 4
          Top = 58
          Width = 290
          Height = 16
          Caption = 'Confirma Qtdes do Pedido de Venda ao Importar'
          DataField = 'CFVECALTPEDIMPORT'
          DataSource = DSSQLConfigVenda
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
        object DBCheckBox6: TDBCheckBox
          Left = 261
          Top = 30
          Width = 290
          Height = 16
          Caption = 'Imprimir Descri'#231#227'o Principal de Produto na NF'
          DataField = 'CFVECIMPDESCRPRINF'
          DataSource = DSSQLConfigVenda
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
        object DBCheckBox19: TDBCheckBox
          Left = 261
          Top = 45
          Width = 389
          Height = 14
          Hint = 
            'Permitir somente o autor do valor altera-lo.'#13#10'Ex.: Somente quem ' +
            'emitiu um pedido pode altera o seu valor.'
          Caption = 'Permitir que somente o Autor do pedido de venda possa alter'#225'-lo'
          DataField = 'CFVECCONTPEDVDAUSU'
          DataSource = DSSQLConfigVenda
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
        object DBCheckBox1: TDBCheckBox
          Left = 345
          Top = 58
          Width = 281
          Height = 17
          Caption = 'Vendedor Obrigatorio no Pedido e Nota Fiscal'
          DataField = 'CFVECVENDEDOREXIGE'
          DataSource = DSSQLConfigVenda
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
        object DBCheckBox2: TDBCheckBox
          Left = 4
          Top = 74
          Width = 313
          Height = 16
          Caption = 'N'#227'o Importar Financeiro do Pedido para Nota Fiscal'
          DataField = 'CFVENIMPFINANC'
          DataSource = DSSQLConfigVenda
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
      object GroupBox2: TGroupBox
        Left = 12
        Top = 270
        Width = 652
        Height = 99
        Caption = ' Padr'#245'es para Financeiro do Faturamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label7: TLabel
          Left = 9
          Top = 17
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
          Left = 224
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
        object Label13: TLabel
          Left = 439
          Top = 18
          Width = 207
          Height = 13
          Caption = 'Opera'#231#227'o de Tesouraria Para Cancel.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 224
          Top = 59
          Width = 105
          Height = 13
          Caption = 'Numerario A Prazo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 9
          Top = 58
          Width = 101
          Height = 13
          Caption = 'Numerario A Vista'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 5
          Top = 31
          Width = 212
          Height = 21
          DropDownCount = 8
          DataField = 'TPDCICOD'
          DataSource = DSSQLConfigVenda
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
          Left = 220
          Top = 31
          Width = 212
          Height = 21
          DropDownCount = 8
          DataField = 'PORTICOD'
          DataSource = DSSQLConfigVenda
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
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 436
          Top = 31
          Width = 212
          Height = 21
          DropDownCount = 8
          DataField = 'CFVEIOPTESVENDANF'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPTEICOD'
          LookupDisplay = 'OPTEA60DESCR'
          LookupSource = DSSQLOperacaoTesouraria
          ParentFont = False
          TabOrder = 2
        end
        object ComboNumerarioVista: TRxDBLookupCombo
          Left = 5
          Top = 72
          Width = 212
          Height = 21
          DropDownCount = 8
          DataField = 'NUMEVISTA'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = dsSQLNumVista
          ParentFont = False
          TabOrder = 3
        end
        object ComboNumerarioPrazo: TRxDBLookupCombo
          Left = 220
          Top = 72
          Width = 212
          Height = 21
          DropDownCount = 8
          DataField = 'NUMEPRAZO'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = dsSQLNumPrazo
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 371
        Width = 324
        Height = 75
        Caption = ' Obs Padr'#227'o Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object DBMemoNF: TDBMemo
          Left = 2
          Top = 15
          Width = 320
          Height = 58
          Align = alClient
          DataField = 'CFVETOBSPADRAONF'
          DataSource = DSSQLConfigVenda
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 340
        Top = 371
        Width = 324
        Height = 75
        Caption = ' Obs Padr'#227'o Pedido Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object DBMemoPedido: TDBMemo
          Left = 2
          Top = 15
          Width = 320
          Height = 58
          Align = alClient
          DataField = 'CFVETOBSPADRAOPED'
          DataSource = DSSQLConfigVenda
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 669
        Top = 0
        Width = 123
        Height = 446
        Align = alRight
        Caption = ' Adicionais '
        TabOrder = 6
        object Label3: TLabel
          Left = 4
          Top = 16
          Width = 100
          Height = 13
          Caption = '% Al'#237'quota ISSQN'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 4
          Top = 54
          Width = 89
          Height = 13
          Caption = 'C'#243'd. ICMS Frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 4
          Top = 92
          Width = 71
          Height = 13
          Caption = 'Nro. '#205'tens NF'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 137
          Width = 100
          Height = 13
          Caption = 'Tipo Frete Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 4
          Top = 32
          Width = 115
          Height = 21
          DataField = 'CFVEN3ALIQISSQN'
          DataSource = DSSQLConfigVenda
          TabOrder = 0
        end
        object ComboICMS: TRxDBLookupCombo
          Left = 4
          Top = 70
          Width = 116
          Height = 21
          DropDownCount = 8
          DataField = 'CFVEICMSFRETECOD'
          DataSource = DSSQLConfigVenda
          LookupField = 'ICMSICOD'
          LookupDisplay = 'ICMSN2ALIQUOTA;ICMSA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLICMS
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 4
          Top = 107
          Width = 115
          Height = 21
          DataField = 'CFVEINROITENSNF'
          DataSource = DSSQLConfigVenda
          TabOrder = 2
        end
        object ComboFrete: TRxDBComboBox
          Left = 5
          Top = 153
          Width = 113
          Height = 21
          Style = csDropDownList
          DataField = 'CFVECFRETEPADRAO'
          DataSource = DSSQLConfigVenda
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Cif - Emitente'
            'Fob - Destinat'#225'rio')
          TabOrder = 3
          Values.Strings = (
            'C'
            'F')
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 792
      inherited PanelCabecalho: TPanel
        Width = 792
        inherited PanelNavigator: TPanel
          Width = 792
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 792
            object LabelGravar: TSpeedButton
              Tag = 3
              Left = 4
              Top = 3
              Width = 73
              Height = 25
              Cursor = crHandPoint
              Action = DataSetPost1
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
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
  object SQLConfigVenda: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGVENDA')
    UpdateObject = UpdateSQLConfigVenda
    Left = 136
    Top = 8
    object SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
    end
    object SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
    end
    object SQLConfigVendaCFVECTIPOLIMCRED: TStringField
      FieldName = 'CFVECTIPOLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOLIMCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECARREDPARCELA: TStringField
      FieldName = 'CFVECARREDPARCELA'
      Origin = 'DB.CONFIGVENDA.CFVECARREDPARCELA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTIPOIMPPED: TStringField
      FieldName = 'CFVECTIPOIMPPED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOIMPPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECDADOSCHQPDV: TStringField
      FieldName = 'CFVECDADOSCHQPDV'
      Origin = 'DB.CONFIGVENDA.CFVECDADOSCHQPDV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECUSADEBCREDCLI: TStringField
      FieldName = 'CFVECUSADEBCREDCLI'
      Origin = 'DB.CONFIGVENDA.CFVECUSADEBCREDCLI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCGVECTESTAITENSNF: TStringField
      FieldName = 'CGVECTESTAITENSNF'
      Origin = 'DB.CONFIGVENDA.CGVECTESTAITENSNF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3ALIQISSQN: TFloatField
      FieldName = 'CFVEN3ALIQISSQN'
      Origin = 'DB.CONFIGVENDA.CFVEN3ALIQISSQN'
    end
    object SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField
      FieldName = 'CFVECIMPLEGPEDVENF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPLEGPEDVENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField
      FieldName = 'CFVEN3PERCICMFRETE'
      Origin = 'DB.CONFIGVENDA.CFVEN3PERCICMFRETE'
    end
    object SQLConfigVendaCFVEA255OBSPADNF: TStringField
      FieldName = 'CFVEA255OBSPADNF'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADNF'
      FixedChar = True
      Size = 255
    end
    object SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField
      FieldName = 'CFVEITEMPOCONSPROD'
      Origin = 'DB.CONFIGVENDA.CFVEITEMPOCONSPROD'
    end
    object SQLConfigVendaCFVECQUITARPARCHQ: TStringField
      FieldName = 'CFVECQUITARPARCHQ'
      Origin = 'DB.CONFIGVENDA.CFVECQUITARPARCHQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA255OBSPADRPED: TStringField
      FieldName = 'CFVEA255OBSPADRPED'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADRPED'
      Size = 255
    end
    object SQLConfigVendaOPESICODCUPOM: TIntegerField
      FieldName = 'OPESICODCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCUPOM'
    end
    object SQLConfigVendaOPESICODCANCCUPOM: TIntegerField
      FieldName = 'OPESICODCANCCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCCUPOM'
    end
    object SQLConfigVendaOPESICODNF: TIntegerField
      FieldName = 'OPESICODNF'
      Origin = 'DB.CONFIGVENDA.OPESICODNF'
    end
    object SQLConfigVendaOPESICODCANCNF: TIntegerField
      FieldName = 'OPESICODCANCNF'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCNF'
    end
    object SQLConfigVendaOPESICODRETORNO: TIntegerField
      FieldName = 'OPESICODRETORNO'
      Origin = 'DB.CONFIGVENDA.OPESICODRETORNO'
    end
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCTROCA: TIntegerField
      FieldName = 'OPESICODCANCTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCTROCA'
    end
    object SQLConfigVendaOPESICODTROCA: TIntegerField
      FieldName = 'OPESICODTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODTROCA'
    end
    object SQLConfigVendaCFVECINFDADOVENDA: TStringField
      FieldName = 'CFVECINFDADOVENDA'
      Origin = 'DB.CONFIGVENDA.CFVECINFDADOVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField
      FieldName = 'CFVECPARC0ENTRBAIX'
      Origin = 'DB.CONFIGVENDA.CFVECPARC0ENTRBAIX'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField
      FieldName = 'CFVEIQTDPADRPDV'
      Origin = 'DB.CONFIGVENDA.CFVEIQTDPADRPDV'
    end
    object SQLConfigVendaCFVEICMSFRETECOD: TIntegerField
      FieldName = 'CFVEICMSFRETECOD'
      Origin = 'DB.CONFIGVENDA.CFVEICMSFRETECOD'
    end
    object SQLConfigVendaCFVECMOVESTOQUENF: TStringField
      FieldName = 'CFVECMOVESTOQUENF'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECMOVESTOQUEPED: TStringField
      FieldName = 'CFVECMOVESTOQUEPED'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUEPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCPED: TIntegerField
      FieldName = 'OPESICODCANCPED'
      Origin = 'UNITGESTAO.CONFIGVENDA.OPESICODCANCPED'
    end
    object SQLConfigVendaOPESICODPED: TIntegerField
      FieldName = 'OPESICODPED'
      Origin = 'UNITGESTAO.CONFIGVENDA.OPESICODPED'
    end
    object SQLConfigVendaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'UNITGESTAO.CONFIGVENDA.PORTICOD'
    end
    object SQLConfigVendaTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'UNITGESTAO.CONFIGVENDA.TPDCICOD'
    end
    object SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField
      FieldName = 'CFVECEXCLUIPEDFAT'
      Size = 1
    end
    object SQLConfigVendaCFVECALTPEDIMPORT: TStringField
      FieldName = 'CFVECALTPEDIMPORT'
      Origin = 'DB.CONFIGVENDA.CFVECALTPEDIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVETOBSPADRAONF: TStringField
      DisplayLabel = 'Obs. Padr'#227'o NF'
      FieldName = 'CFVETOBSPADRAONF'
      Origin = 'DB.CONFIGVENDA.CFVETOBSPADRAONF'
      FixedChar = True
      Size = 100
    end
    object SQLConfigVendaCFVETOBSPADRAOPED: TStringField
      DisplayLabel = 'Obs. Padr'#227'o Pedido de Venda'
      FieldName = 'CFVETOBSPADRAOPED'
      Origin = 'DB.CONFIGVENDA.CFVETOBSPADRAOPED'
      FixedChar = True
      Size = 100
    end
    object SQLConfigVendaCFVEINROITENSNF: TIntegerField
      DisplayLabel = 'Nro. '#205'tens NF'
      FieldName = 'CFVEINROITENSNF'
      Origin = 'DB.CONFIGVENDA.CFVEINROITENSNF'
    end
    object SQLConfigVendaOPESICODIMPCUPOM: TIntegerField
      FieldName = 'OPESICODIMPCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODIMPCUPOM'
    end
    object SQLConfigVendaOPESICODVENDCONSIG: TIntegerField
      FieldName = 'OPESICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.OPESICODVENDCONSIG'
    end
    object SQLConfigVendaCFVECIMPDESCRPRINF: TStringField
      FieldName = 'CFVECIMPDESCRPRINF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPDESCRPRINF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField
      FieldName = 'CFVECCONTPEDVDAUSU'
      Origin = 'DB.CONFIGVENDA.CFVECCONTPEDVDAUSU'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECNAOIMPCLFISNF: TStringField
      FieldName = 'CFVECNAOIMPCLFISNF'
      Origin = 'DB.CONFIGVENDA.CFVECNAOIMPCLFISNF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEIOPTESVENDANF: TIntegerField
      FieldName = 'CFVEIOPTESVENDANF'
      Origin = 'DB.CONFIGVENDA.CFVEIOPTESVENDANF'
    end
    object SQLConfigVendaCFVECFRETEPADRAO: TStringField
      FieldName = 'CFVECFRETEPADRAO'
      Origin = 'DB.CONFIGVENDA.CFVECFRETEPADRAO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECVENDEDOREXIGE: TStringField
      FieldName = 'CFVECVENDEDOREXIGE'
      Origin = 'DB.CONFIGVENDA.CFVECVENDEDOREXIGE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaNUMEVISTA: TIntegerField
      FieldName = 'NUMEVISTA'
      Origin = 'DB.CONFIGVENDA.NUMEVISTA'
    end
    object SQLConfigVendaNUMEPRAZO: TIntegerField
      FieldName = 'NUMEPRAZO'
      Origin = 'DB.CONFIGVENDA.NUMEPRAZO'
    end
    object SQLConfigVendaCFVENIMPFINANC: TStringField
      FieldName = 'CFVENIMPFINANC'
      Origin = 'DB.CONFIGVENDA.CFVENIMPFINANC'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLConfigVenda: TDataSource
    DataSet = SQLConfigVenda
    Left = 162
    Top = 8
  end
  object UpdateSQLConfigVenda: TUpdateSQL
    ModifySQL.Strings = (
      'update CONFIGVENDA'
      'set'
      '  CFVEN3MAXLIMCRED = :CFVEN3MAXLIMCRED,'
      '  CFVEN2PERCLIMCRED = :CFVEN2PERCLIMCRED,'
      '  CFVECTIPOLIMCRED = :CFVECTIPOLIMCRED,'
      '  CFVECARREDPARCELA = :CFVECARREDPARCELA,'
      '  CFVECVENDAESTNEGAT = :CFVECVENDAESTNEGAT,'
      '  CFVECTIPOIMPPED = :CFVECTIPOIMPPED,'
      '  CFVECDADOSCHQPDV = :CFVECDADOSCHQPDV,'
      '  CFVECUSADEBCREDCLI = :CFVECUSADEBCREDCLI,'
      '  CGVECTESTAITENSNF = :CGVECTESTAITENSNF,'
      '  CFVEN3ALIQISSQN = :CFVEN3ALIQISSQN,'
      '  CFVECIMPLEGPEDVENF = :CFVECIMPLEGPEDVENF,'
      '  CFVEN3PERCICMFRETE = :CFVEN3PERCICMFRETE,'
      '  CFVEA255OBSPADNF = :CFVEA255OBSPADNF,'
      '  CFVEITEMPOCONSPROD = :CFVEITEMPOCONSPROD,'
      '  CFVECQUITARPARCHQ = :CFVECQUITARPARCHQ,'
      '  CFVEA255OBSPADRPED = :CFVEA255OBSPADRPED,'
      '  OPESICODCUPOM = :OPESICODCUPOM,'
      '  OPESICODCANCCUPOM = :OPESICODCANCCUPOM,'
      '  OPESICODNF = :OPESICODNF,'
      '  OPESICODCANCNF = :OPESICODCANCNF,'
      '  OPESICODRETORNO = :OPESICODRETORNO,'
      '  CFVECRENDCONJNOLIM = :CFVECRENDCONJNOLIM,'
      '  OPESICODCANCTROCA = :OPESICODCANCTROCA,'
      '  OPESICODTROCA = :OPESICODTROCA,'
      '  CFVECINFDADOVENDA = :CFVECINFDADOVENDA,'
      '  CFVECPARC0ENTRBAIX = :CFVECPARC0ENTRBAIX,'
      '  CFVEIQTDPADRPDV = :CFVEIQTDPADRPDV'
      'where'
      '  CFVEN3MAXLIMCRED = :OLD_CFVEN3MAXLIMCRED and'
      '  CFVEN2PERCLIMCRED = :OLD_CFVEN2PERCLIMCRED and'
      '  CFVECTIPOLIMCRED = :OLD_CFVECTIPOLIMCRED and'
      '  CFVECARREDPARCELA = :OLD_CFVECARREDPARCELA and'
      '  CFVECVENDAESTNEGAT = :OLD_CFVECVENDAESTNEGAT and'
      '  CFVECTIPOIMPPED = :OLD_CFVECTIPOIMPPED and'
      '  CFVECDADOSCHQPDV = :OLD_CFVECDADOSCHQPDV and'
      '  CFVECUSADEBCREDCLI = :OLD_CFVECUSADEBCREDCLI and'
      '  CGVECTESTAITENSNF = :OLD_CGVECTESTAITENSNF and'
      '  CFVEN3ALIQISSQN = :OLD_CFVEN3ALIQISSQN and'
      '  CFVECIMPLEGPEDVENF = :OLD_CFVECIMPLEGPEDVENF and'
      '  CFVEN3PERCICMFRETE = :OLD_CFVEN3PERCICMFRETE and'
      '  CFVEA255OBSPADNF = :OLD_CFVEA255OBSPADNF and'
      '  CFVEITEMPOCONSPROD = :OLD_CFVEITEMPOCONSPROD and'
      '  CFVECQUITARPARCHQ = :OLD_CFVECQUITARPARCHQ and'
      '  CFVEA255OBSPADRPED = :OLD_CFVEA255OBSPADRPED and'
      '  OPESICODCUPOM = :OLD_OPESICODCUPOM and'
      '  OPESICODCANCCUPOM = :OLD_OPESICODCANCCUPOM and'
      '  OPESICODNF = :OLD_OPESICODNF and'
      '  OPESICODCANCNF = :OLD_OPESICODCANCNF and'
      '  OPESICODRETORNO = :OLD_OPESICODRETORNO and'
      '  CFVECRENDCONJNOLIM = :OLD_CFVECRENDCONJNOLIM and'
      '  OPESICODCANCTROCA = :OLD_OPESICODCANCTROCA and'
      '  OPESICODTROCA = :OLD_OPESICODTROCA and'
      '  CFVECINFDADOVENDA = :OLD_CFVECINFDADOVENDA and'
      '  CFVECPARC0ENTRBAIX = :OLD_CFVECPARC0ENTRBAIX and'
      '  CFVEIQTDPADRPDV = :OLD_CFVEIQTDPADRPDV')
    InsertSQL.Strings = (
      'insert into CONFIGVENDA'
      
        '  (CFVEN3MAXLIMCRED, CFVEN2PERCLIMCRED, CFVECTIPOLIMCRED, CFVECA' +
        'RREDPARCELA, '
      
        '   CFVECVENDAESTNEGAT, CFVECTIPOIMPPED, CFVECDADOSCHQPDV, CFVECU' +
        'SADEBCREDCLI, '
      
        '   CGVECTESTAITENSNF, CFVEN3ALIQISSQN, CFVECIMPLEGPEDVENF, CFVEN' +
        '3PERCICMFRETE, '
      
        '   CFVEA255OBSPADNF, CFVEITEMPOCONSPROD, CFVECQUITARPARCHQ, CFVE' +
        'A255OBSPADRPED, '
      
        '   OPESICODCUPOM, OPESICODCANCCUPOM, OPESICODNF, OPESICODCANCNF,' +
        ' OPESICODRETORNO, '
      
        '   CFVECRENDCONJNOLIM, OPESICODCANCTROCA, OPESICODTROCA, CFVECIN' +
        'FDADOVENDA, '
      '   CFVECPARC0ENTRBAIX, CFVEIQTDPADRPDV)'
      'values'
      
        '  (:CFVEN3MAXLIMCRED, :CFVEN2PERCLIMCRED, :CFVECTIPOLIMCRED, :CF' +
        'VECARREDPARCELA, '
      
        '   :CFVECVENDAESTNEGAT, :CFVECTIPOIMPPED, :CFVECDADOSCHQPDV, :CF' +
        'VECUSADEBCREDCLI, '
      
        '   :CGVECTESTAITENSNF, :CFVEN3ALIQISSQN, :CFVECIMPLEGPEDVENF, :C' +
        'FVEN3PERCICMFRETE, '
      
        '   :CFVEA255OBSPADNF, :CFVEITEMPOCONSPROD, :CFVECQUITARPARCHQ, :' +
        'CFVEA255OBSPADRPED, '
      
        '   :OPESICODCUPOM, :OPESICODCANCCUPOM, :OPESICODNF, :OPESICODCAN' +
        'CNF, :OPESICODRETORNO, '
      
        '   :CFVECRENDCONJNOLIM, :OPESICODCANCTROCA, :OPESICODTROCA, :CFV' +
        'ECINFDADOVENDA, '
      '   :CFVECPARC0ENTRBAIX, :CFVEIQTDPADRPDV)')
    DeleteSQL.Strings = (
      'delete from CONFIGVENDA'
      'where'
      '  CFVEN3MAXLIMCRED = :OLD_CFVEN3MAXLIMCRED and'
      '  CFVEN2PERCLIMCRED = :OLD_CFVEN2PERCLIMCRED and'
      '  CFVECTIPOLIMCRED = :OLD_CFVECTIPOLIMCRED and'
      '  CFVECARREDPARCELA = :OLD_CFVECARREDPARCELA and'
      '  CFVECVENDAESTNEGAT = :OLD_CFVECVENDAESTNEGAT and'
      '  CFVECTIPOIMPPED = :OLD_CFVECTIPOIMPPED and'
      '  CFVECDADOSCHQPDV = :OLD_CFVECDADOSCHQPDV and'
      '  CFVECUSADEBCREDCLI = :OLD_CFVECUSADEBCREDCLI and'
      '  CGVECTESTAITENSNF = :OLD_CGVECTESTAITENSNF and'
      '  CFVEN3ALIQISSQN = :OLD_CFVEN3ALIQISSQN and'
      '  CFVECIMPLEGPEDVENF = :OLD_CFVECIMPLEGPEDVENF and'
      '  CFVEN3PERCICMFRETE = :OLD_CFVEN3PERCICMFRETE and'
      '  CFVEA255OBSPADNF = :OLD_CFVEA255OBSPADNF and'
      '  CFVEITEMPOCONSPROD = :OLD_CFVEITEMPOCONSPROD and'
      '  CFVECQUITARPARCHQ = :OLD_CFVECQUITARPARCHQ and'
      '  CFVEA255OBSPADRPED = :OLD_CFVEA255OBSPADRPED and'
      '  OPESICODCUPOM = :OLD_OPESICODCUPOM and'
      '  OPESICODCANCCUPOM = :OLD_OPESICODCANCCUPOM and'
      '  OPESICODNF = :OLD_OPESICODNF and'
      '  OPESICODCANCNF = :OLD_OPESICODCANCNF and'
      '  OPESICODRETORNO = :OLD_OPESICODRETORNO and'
      '  CFVECRENDCONJNOLIM = :OLD_CFVECRENDCONJNOLIM and'
      '  OPESICODCANCTROCA = :OLD_OPESICODCANCTROCA and'
      '  OPESICODTROCA = :OLD_OPESICODTROCA and'
      '  CFVECINFDADOVENDA = :OLD_CFVECINFDADOVENDA and'
      '  CFVECPARC0ENTRBAIX = :OLD_CFVECPARC0ENTRBAIX and'
      '  CFVEIQTDPADRPDV = :OLD_CFVEIQTDPADRPDV')
    Left = 190
    Top = 8
  end
  object ActionList1: TActionList
    Left = 222
    Top = 8
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DSSQLConfigVenda
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
    Left = 314
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
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 342
    Top = 36
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPODOCUMENTO'
      'order by TPDCA60DESCR')
    Macros = <>
    Left = 314
    Top = 65
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
    Top = 65
  end
  object SQLICMS: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM ICMS')
    Macros = <>
    Left = 370
    Top = 7
  end
  object DSSQLICMS: TDataSource
    DataSet = SQLICMS
    Left = 398
    Top = 7
  end
  object SQLOperacaoTesouraria: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'OPTEICOD,'
      'OPTEA60DESCR'
      'FROM'
      'OPERACAOTESOURARIA'
      'WHERE'
      'OPTECDEBCRED = '#39'D'#39
      'ORDER BY'
      'OPTEA60DESCR')
    Macros = <>
    Left = 370
    Top = 36
    object SQLOperacaoTesourariaOPTEICOD: TIntegerField
      FieldName = 'OPTEICOD'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEICOD'
    end
    object SQLOperacaoTesourariaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoTesouraria: TDataSource
    DataSet = SQLOperacaoTesouraria
    Left = 398
    Top = 36
  end
  object SQLNumVista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 370
    Top = 65
    object SQLNumVistaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumVistaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object dsSQLNumVista: TDataSource
    DataSet = SQLNumVista
    Left = 398
    Top = 65
  end
  object SQLNumPrazo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 434
    Top = 65
    object SQLNumPrazoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumPrazoNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object dsSQLNumPrazo: TDataSource
    DataSet = SQLNumPrazo
    Left = 462
    Top = 65
  end
end
