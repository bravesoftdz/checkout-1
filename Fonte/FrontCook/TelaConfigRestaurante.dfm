inherited FormTelaConfigRestaurante: TFormTelaConfigRestaurante
  Left = 257
  Top = 143
  Caption = 'Configura'#231#245'es para Restaurante / Pizzarias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Label1: TLabel [0]
        Left = 106
        Top = 78
        Width = 106
        Height = 13
        Caption = '% Taxa de Servi'#231'o'
        FocusControl = TxServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 136
        Top = 103
        Width = 147
        Height = 13
        Caption = 'R$ Taxa de Entrega Reais.'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LBlGarcomPadrao: TLabel [2]
        Left = 71
        Top = 126
        Width = 145
        Height = 13
        Caption = 'Informe o gar'#231'om padr'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      inherited PanelBarra: TPanel
        Width = 1
      end
      object TxServ: TDBEdit
        Left = 68
        Top = 74
        Width = 34
        Height = 21
        DataField = 'ConfN2TaxaServ'
        DataSource = DSSQLConfigRestaurante
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 68
        Top = 100
        Width = 62
        Height = 21
        DataField = 'CONFN2TAXAENTR'
        DataSource = DSSQLConfigRestaurante
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object PedeGarcom: TDBCheckBox
        Left = 68
        Top = 48
        Width = 112
        Height = 17
        Caption = 'Solicitar Gar'#231'om'
        DataField = 'ConfCPedeFunc'
        DataSource = DSSQLConfigRestaurante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Visible = False
      end
      object PedeConta: TDBCheckBox
        Left = 68
        Top = 28
        Width = 102
        Height = 17
        Caption = 'Solicitar Conta'
        DataField = 'CONFCPEDECONTA'
        DataSource = DSSQLConfigRestaurante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Visible = False
      end
      object CmbGarcomPadrao: TRxDBLookupCombo
        Left = 68
        Top = 140
        Width = 261
        Height = 21
        DropDownCount = 8
        DataField = 'FUNCICODPADRAO'
        DataSource = DSSQLConfigRestaurante
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'USUAICOD'
        LookupDisplay = 'USUAA60LOGIN'
        LookupSource = DSQryFUNC
        ParentFont = False
        TabOrder = 5
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object LabelGravar: TSpeedButton
              Tag = 3
              Left = 12
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
  object ActionList1: TActionList
    Left = 190
    Top = 7
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DSSQLConfigRestaurante
    end
  end
  object DSSQLConfigRestaurante: TDataSource
    DataSet = SQLConfigRestaurante
    Left = 162
    Top = 7
  end
  object SQLConfigRestaurante: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGREST')
    Left = 134
    Top = 7
    object SQLConfigRestauranteCONFN2TAXASERV: TFloatField
      FieldName = 'CONFN2TAXASERV'
      Origin = 'DB.CONFIGREST.CONFN2TAXASERV'
    end
    object SQLConfigRestauranteCONFCPEDEFUNC: TStringField
      FieldName = 'CONFCPEDEFUNC'
      Origin = 'DB.CONFIGREST.CONFCPEDEFUNC'
      FixedChar = True
      Size = 1
    end
    object SQLConfigRestauranteCONFCPEDECONTA: TStringField
      FieldName = 'CONFCPEDECONTA'
      Origin = 'DB.CONFIGREST.CONFCPEDECONTA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigRestauranteFUNCICODPADRAO: TIntegerField
      FieldName = 'FUNCICODPADRAO'
      Origin = 'DB.CONFIGREST.FUNCICODPADRAO'
    end
    object SQLConfigRestauranteCONFN2TAXAENTR: TFloatField
      FieldName = 'CONFN2TAXAENTR'
      Origin = 'DB.CONFIGREST.CONFN2TAXAENTR'
    end
  end
  object QryFUNC: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select USUAICOD, USUAA60LOGIN from USUARIO'
      'order by USUAA60LOGIN')
    Left = 332
    Top = 8
    object QryFUNCUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object QryFUNCUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object DSQryFUNC: TDataSource
    DataSet = QryFUNC
    Left = 304
    Top = 8
  end
end
