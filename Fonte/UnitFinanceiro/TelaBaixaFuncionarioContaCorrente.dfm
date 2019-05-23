inherited FormTelaBaixaFuncionarioContaCorrente: TFormTelaBaixaFuncionarioContaCorrente
  Left = 21
  Top = 114
  Caption = 'Baixa de Contas por Funcion'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Top = 68
        Width = 0
        Height = 200
        Color = 15461355
      end
      object PanelSelect: TPanel
        Left = 0
        Top = 0
        Width = 799
        Height = 68
        Align = alTop
        BevelOuter = bvNone
        Color = 16249066
        TabOrder = 1
        object Label9: TLabel
          Left = 5
          Top = 5
          Width = 65
          Height = 13
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 53
          Width = 65
          Height = 13
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 285
          Top = 53
          Width = 41
          Height = 13
          Caption = 'Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 354
          Top = 53
          Width = 37
          Height = 13
          Caption = 'D'#233'bito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 420
          Top = 53
          Width = 54
          Height = 13
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 555
          Top = 53
          Width = 36
          Height = 13
          Caption = 'Baixar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 459
          Top = 5
          Width = 74
          Height = 13
          Caption = 'Lan'#231'ados em'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 556
          Top = 24
          Width = 7
          Height = 13
          Caption = 'e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 486
          Top = 53
          Width = 43
          Height = 13
          Caption = #224' Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboFuncionario: TDBLookupComboBox
          Left = 5
          Top = 21
          Width = 450
          Height = 21
          KeyField = 'FUNCA13ID'
          ListField = 'FUNCA60NOME'
          ListSource = DsQueryFuncionario
          TabOrder = 0
        end
        object De: TDateEdit
          Left = 459
          Top = 21
          Width = 94
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object Ate: TDateEdit
          Left = 566
          Top = 21
          Width = 94
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object GridBaixa: TDBCtrlGrid
        Left = 0
        Top = 68
        Width = 799
        Height = 200
        Align = alClient
        DataSource = DsTableFucionarioContaCorrente
        PanelHeight = 14
        PanelWidth = 782
        TabOrder = 2
        RowCount = 14
        object LabelView: TLabel
          Left = 610
          Top = 4
          Width = 111
          Height = 13
          Cursor = crHandPoint
          Caption = 'Visualizar Registros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = LabelViewClick
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 3
          Width = 276
          Height = 21
          Color = 14737632
          DataField = 'FUNCA60NOME'
          DataSource = DsTableFucionarioContaCorrente
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 283
          Top = 3
          Width = 64
          Height = 21
          Color = 14737632
          DataField = 'FUNCN2VLRCREDITO'
          DataSource = DsTableFucionarioContaCorrente
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 351
          Top = 3
          Width = 64
          Height = 21
          Color = 14737632
          DataField = 'FUNCN2VLRDEBITO'
          DataSource = DsTableFucionarioContaCorrente
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 418
          Top = 3
          Width = 64
          Height = 21
          Color = 14737632
          DataField = 'FUNCN2VLRDIFERENCA'
          DataSource = DsTableFucionarioContaCorrente
          ReadOnly = True
          TabOrder = 5
        end
        object CheckBaixa: TDBCheckBox
          Left = 565
          Top = 5
          Width = 17
          Height = 17
          DataField = 'FUCCCBAIXAR'
          DataSource = DsTableFucionarioContaCorrente
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit5: TDBEdit
          Left = 486
          Top = 3
          Width = 64
          Height = 21
          Color = clWhite
          DataField = 'FUNCN2VLRPAGO'
          DataSource = DsTableFucionarioContaCorrente
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 5
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Selecionar Documentos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 153
              Top = 3
              Width = 131
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Baixar Documentos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object SpeedButton1: TSpeedButton
              Tag = 3
              Left = 285
              Top = 3
              Width = 212
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Baixar Documentos e Emitir Recibos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 10
              OnClick = SpeedButton1Click
            end
          end
        end
      end
    end
  end
  object QueryFuncionario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT FUNCA13ID,FUNCICOD,FUNCA60NOME FROM FUNCIONARIO')
    Left = 208
    Top = 1
  end
  object DsQueryFuncionario: TDataSource
    DataSet = QueryFuncionario
    Left = 236
    Top = 1
  end
  object QueryFuncionarioConta: TQuery
    DatabaseName = 'DB'
    DataSource = DsQueryFuncionario
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOCONTACORRENTE')
    Left = 264
    Top = 1
    object QueryFuncionarioContaFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryFuncionarioContaFUCCICOD: TIntegerField
      FieldName = 'FUCCICOD'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCICOD'
    end
    object QueryFuncionarioContaFUCCN2VLRDEBITO: TBCDField
      FieldName = 'FUCCN2VLRDEBITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaFUCCN2VLRCREDITO: TBCDField
      FieldName = 'FUCCN2VLRCREDITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaOPFUICOD: TIntegerField
      FieldName = 'OPFUICOD'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.OPFUICOD'
    end
    object QueryFuncionarioContaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryFuncionarioContaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.REGISTRO'
    end
    object QueryFuncionarioContaFUCCDULTREC: TDateTimeField
      FieldName = 'FUCCDULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCDULTREC'
    end
    object QueryFuncionarioContaFUCCN2VLRTOTREC: TBCDField
      FieldName = 'FUCCN2VLRTOTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRTOTREC'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaFUCCN2VLRULTREC: TBCDField
      FieldName = 'FUCCN2VLRULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRULTREC'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaOPFUCTIPOOPERACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUCTIPOOPERACAO'
      LookupDataSet = QueryTipoOperacaoFuncionario
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUCTIPOOPERACAO'
      KeyFields = 'OPFUICOD'
      Size = 1
      Lookup = True
    end
  end
  object DsQueryFuncionarioConta: TDataSource
    DataSet = QueryFuncionarioConta
    Left = 292
    Top = 1
  end
  object TableFucionarioContaCorrente: TTable
    OnNewRecord = TableFucionarioContaCorrenteNewRecord
    DatabaseName = 'Easy_Temp'
    TableName = 'FuncionarioContaCorrente'
    Left = 320
    Top = 1
    object TableFucionarioContaCorrenteFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Size = 13
    end
    object TableFucionarioContaCorrenteFUNCN2VLRCREDITO: TFloatField
      FieldName = 'FUNCN2VLRCREDITO'
      DisplayFormat = '#,##0.00'
    end
    object TableFucionarioContaCorrenteFUNCN2VLRDEBITO: TFloatField
      FieldName = 'FUNCN2VLRDEBITO'
      DisplayFormat = '#,##0.00'
    end
    object TableFucionarioContaCorrenteFUNCA60NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCA60NOME'
      LookupDataSet = QueryFuncionario
      LookupKeyFields = 'FUNCA13ID'
      LookupResultField = 'FUNCA60NOME'
      KeyFields = 'FUNCA13ID'
      Size = 60
      Lookup = True
    end
    object TableFucionarioContaCorrenteFUNCN2VLRDIFERENCA: TFloatField
      FieldName = 'FUNCN2VLRDIFERENCA'
      DisplayFormat = '#,##0.00'
    end
    object TableFucionarioContaCorrenteFUNCN2VLRPAGO: TFloatField
      FieldName = 'FUNCN2VLRPAGO'
      DisplayFormat = '#,##0.00'
    end
    object TableFucionarioContaCorrenteFUCCCBAIXAR: TStringField
      FieldName = 'FUCCCBAIXAR'
      Size = 1
    end
  end
  object DsTableFucionarioContaCorrente: TDataSource
    DataSet = TableFucionarioContaCorrente
    Left = 348
    Top = 1
  end
  object QueryTipoOperacaoFuncionario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT OPFUICOD,OPFUA60DESCR,OPFUCTIPOOPERACAO FROM '
      'OPERACAOFUNCIONARIO')
    Left = 376
    Top = 1
  end
  object QueryFuncionarioContaCorrente: TQuery
    BeforeInsert = QueryFuncionarioContaCorrenteBeforeInsert
    BeforePost = QueryFuncionarioContaCorrenteBeforePost
    OnNewRecord = QueryFuncionarioContaCorrenteNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    Left = 404
    Top = 1
    object QueryFuncionarioContaCorrenteFUCCICOD: TIntegerField
      Tag = 1
      FieldName = 'FUCCICOD'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCICOD'
    end
    object QueryFuncionarioContaCorrenteFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryFuncionarioContaCorrenteFUCCN2VLRDEBITO: TBCDField
      FieldName = 'FUCCN2VLRDEBITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaCorrenteFUCCN2VLRCREDITO: TBCDField
      FieldName = 'FUCCN2VLRCREDITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaCorrenteOPFUICOD: TIntegerField
      FieldName = 'OPFUICOD'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.OPFUICOD'
    end
    object QueryFuncionarioContaCorrentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryFuncionarioContaCorrenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.REGISTRO'
    end
    object QueryFuncionarioContaCorrenteFUCCDULTREC: TDateTimeField
      FieldName = 'FUCCDULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCDULTREC'
    end
    object QueryFuncionarioContaCorrenteFUCCN2VLRTOTREC: TBCDField
      FieldName = 'FUCCN2VLRTOTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRTOTREC'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaCorrenteFUCCN2VLRULTREC: TBCDField
      FieldName = 'FUCCN2VLRULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRULTREC'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioContaCorrenteFUCCDLANCAMENTO: TDateTimeField
      FieldName = 'FUCCDLANCAMENTO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCDLANCAMENTO'
    end
    object QueryFuncionarioContaCorrenteOPFUCTIPOOPERACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUCTIPOOPERACAO'
      LookupDataSet = QueryTipoOperacaoFuncionario
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUCTIPOOPERACAO'
      KeyFields = 'OPFUICOD'
      Size = 1
      Lookup = True
    end
  end
  object TableReportFuncionarioConta: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'FuncionarioConta'
    Left = 432
    Top = 1
    object TableReportFuncionarioContaFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object TableReportFuncionarioContaFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      Size = 60
    end
    object TableReportFuncionarioContaFUNCA60NOMELOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCA60NOMELOOKUP'
      LookupDataSet = QueryFuncionario
      LookupKeyFields = 'FUNCA13ID'
      LookupResultField = 'FUNCA60NOME'
      KeyFields = 'FUNCA13ID'
      Size = 60
      Lookup = True
    end
    object TableReportFuncionarioContaFUCCN2VLRDEBITO: TBCDField
      FieldName = 'FUCCN2VLRDEBITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object TableReportFuncionarioContaFUCCN2VLRCREDITO: TBCDField
      FieldName = 'FUCCN2VLRCREDITO'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object TableReportFuncionarioContaOPFUICOD: TIntegerField
      FieldName = 'OPFUICOD'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.OPFUICOD'
    end
    object TableReportFuncionarioContaOPFUA60DESCR: TStringField
      FieldName = 'OPFUA60DESCR'
      Size = 60
    end
    object TableReportFuncionarioContaOPFUA60DESCRLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUA60DESCRLOOKUP'
      LookupDataSet = QueryTipoOperacaoFuncionario
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUA60DESCR'
      KeyFields = 'OPFUICOD'
      Size = 60
      Lookup = True
    end
    object TableReportFuncionarioContaFUCCDULTREC: TDateTimeField
      FieldName = 'FUCCDULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCDULTREC'
    end
    object TableReportFuncionarioContaFUCCN2VLRTOTREC: TBCDField
      FieldName = 'FUCCN2VLRTOTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRTOTREC'
      Precision = 15
      Size = 3
    end
    object TableReportFuncionarioContaFUCCN2VLRULTREC: TBCDField
      FieldName = 'FUCCN2VLRULTREC'
      Origin = 'DB.FUNCIONARIOCONTACORRENTE.FUCCN2VLRULTREC'
      Precision = 15
      Size = 3
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    WindowEvents = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowStyle.BorderStyle = bsSingle
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 460
    Top = 1
  end
  object TableRecibo: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'ReciboTemp'
    Left = 548
    Top = 2
    object TableReciboRECIICOD: TAutoIncField
      FieldName = 'RECIICOD'
    end
    object TableReciboFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Size = 13
    end
    object TableReciboRECIN2VLRBRUTO: TBCDField
      FieldName = 'RECIN2VLRBRUTO'
      Origin = 'DB.RECIBO.RECIN2VLRBRUTO'
      Precision = 15
      Size = 2
    end
    object TableReciboRECIN2VLRIRRF: TBCDField
      FieldName = 'RECIN2VLRIRRF'
      Origin = 'DB.RECIBO.RECIN2VLRIRRF'
      Precision = 15
      Size = 2
    end
    object TableReciboRECIN2VLRLIQUIDO: TBCDField
      FieldName = 'RECIN2VLRLIQUIDO'
      Origin = 'DB.RECIBO.RECIN2VLRLIQUIDO'
      Precision = 15
      Size = 2
    end
    object TableReciboRECIDEMISSAO: TDateTimeField
      FieldName = 'RECIDEMISSAO'
      Origin = 'DB.RECIBO.RECIDEMISSAO'
    end
    object TableReciboRECITOBS: TStringField
      FieldName = 'RECITOBS'
      Origin = 'DB.RECIBO.RECITOBS'
      Size = 255
    end
  end
  object DSTableRecibo: TDataSource
    DataSet = TableRecibo
    Left = 576
    Top = 2
  end
  object TableReciboConta: TTable
    OnNewRecord = TableReciboContaNewRecord
    DatabaseName = 'Easy_Temp'
    IndexFieldNames = 'RECIICOD'
    MasterFields = 'RECIICOD'
    MasterSource = DSTableRecibo
    TableName = 'ReciboContaTemp'
    Left = 604
    Top = 2
    object TableReciboContaRECIICOD: TIntegerField
      FieldName = 'RECIICOD'
    end
    object TableReciboContaRECOICOD: TAutoIncField
      FieldName = 'RECOICOD'
    end
    object TableReciboContaRECOA13DOCORIGEM: TStringField
      FieldName = 'RECOA13DOCORIGEM'
      Origin = 'DB.RECIBOCONTA.RECOA13DOCORIGEM'
      FixedChar = True
      Size = 13
    end
    object TableReciboContaRECON2VLRBAIXA: TBCDField
      FieldName = 'RECON2VLRBAIXA'
      Origin = 'DB.RECIBOCONTA.RECON2VLRBAIXA'
      Precision = 15
      Size = 2
    end
    object TableReciboContaRECODBAIXA: TDateTimeField
      FieldName = 'RECODBAIXA'
      Origin = 'DB.RECIBOCONTA.RECODBAIXA'
    end
  end
  object QueryRecibo: TRxQuery
    Tag = 3
    BeforePost = QueryReciboBeforePost
    OnNewRecord = QueryReciboNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RECIBO WHERE RECIA13ID IS NULL')
    Macros = <>
    Left = 672
    Top = 2
    object QueryReciboRECIA13ID: TStringField
      Tag = 2
      FieldName = 'RECIA13ID'
      Origin = 'DB.RECIBO.RECIA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.RECIBO.EMPRICOD'
    end
    object QueryReciboTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.RECIBO.TERMICOD'
    end
    object QueryReciboRECIICOD: TIntegerField
      Tag = 1
      FieldName = 'RECIICOD'
      Origin = 'DB.RECIBO.RECIICOD'
    end
    object QueryReciboCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECIBO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.RECIBO.FORNICOD'
    end
    object QueryReciboFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.RECIBO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboRECIN2VLRBRUTO: TBCDField
      FieldName = 'RECIN2VLRBRUTO'
      Origin = 'DB.RECIBO.RECIN2VLRBRUTO'
      Precision = 15
      Size = 2
    end
    object QueryReciboRECIN2VLRIRRF: TBCDField
      FieldName = 'RECIN2VLRIRRF'
      Origin = 'DB.RECIBO.RECIN2VLRIRRF'
      Precision = 15
      Size = 2
    end
    object QueryReciboRECIN2VLRLIQUIDO: TBCDField
      FieldName = 'RECIN2VLRLIQUIDO'
      Origin = 'DB.RECIBO.RECIN2VLRLIQUIDO'
      Precision = 15
      Size = 2
    end
    object QueryReciboRECIDEMISSAO: TDateTimeField
      FieldName = 'RECIDEMISSAO'
      Origin = 'DB.RECIBO.RECIDEMISSAO'
    end
    object QueryReciboRECITOBS: TStringField
      FieldName = 'RECITOBS'
      Origin = 'DB.RECIBO.RECITOBS'
      Size = 255
    end
    object QueryReciboREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECIBO.REGISTRO'
    end
    object QueryReciboPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECIBO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryReciboRECICTIPO: TStringField
      FieldName = 'RECICTIPO'
      Origin = 'DB.RECIBO.RECICTIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSQueryRecibo: TDataSource
    DataSet = QueryRecibo
    Left = 700
    Top = 2
  end
  object QueryReciboConta: TRxQuery
    Tag = 1
    BeforePost = QueryReciboContaBeforePost
    OnNewRecord = QueryReciboContaNewRecord
    DatabaseName = 'DB'
    DataSource = DSQueryRecibo
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RECIBOCONTA WHERE'
      'RECIA13ID IS NULL AND'
      'RECIA13ID=:RECIA13ID')
    Macros = <>
    Left = 728
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RECIA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object QueryReciboContaRECIA13ID: TStringField
      Tag = 1
      FieldName = 'RECIA13ID'
      Origin = 'DB.RECIBOCONTA.RECIA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboContaRECOICOD: TIntegerField
      Tag = 1
      FieldName = 'RECOICOD'
      Origin = 'DB.RECIBOCONTA.RECOICOD'
    end
    object QueryReciboContaRECOA13DOCORIGEM: TStringField
      FieldName = 'RECOA13DOCORIGEM'
      Origin = 'DB.RECIBOCONTA.RECOA13DOCORIGEM'
      FixedChar = True
      Size = 13
    end
    object QueryReciboContaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECIBOCONTA.REGISTRO'
    end
    object QueryReciboContaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECIBOCONTA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryReciboContaRECODBAIXA: TDateTimeField
      FieldName = 'RECODBAIXA'
      Origin = 'DB.RECIBOCONTA.RECODBAIXA'
    end
    object QueryReciboContaRECON2VLRBAIXA: TBCDField
      FieldName = 'RECON2VLRBAIXA'
      Origin = 'DB.RECIBOCONTA.RECON2VLRBAIXA'
      Precision = 15
      Size = 2
    end
  end
end
