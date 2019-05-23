inherited FormTelaConfiguracaoEmail: TFormTelaConfiguracaoEmail
  Caption = 'Configura'#231#245'es para Envio de E-Mail'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Label1: TLabel [0]
        Left = 140
        Top = 8
        Width = 98
        Height = 13
        Caption = 'Nome do Remetente'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 140
        Top = 48
        Width = 80
        Height = 13
        Caption = 'Email Remetente'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 140
        Top = 88
        Width = 107
        Height = 13
        Caption = 'Porta de Comunica'#231#227'o'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 277
        Top = 88
        Width = 158
        Height = 13
        Caption = 'Nome do Usu'#225'rio na Caixa Postal'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [4]
        Left = 140
        Top = 128
        Width = 167
        Height = 13
        Caption = 'Provedor de Envio de Email (SMTP)'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel [5]
        Left = 140
        Top = 197
        Width = 121
        Height = 13
        Caption = 'Senha para Autentica'#231#227'o'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 140
        Top = 24
        Width = 600
        Height = 21
        DataField = 'CFEMA60REMETENTE'
        DataSource = DSSQLConfigEmail
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 140
        Top = 64
        Width = 600
        Height = 21
        DataField = 'CFEMTMAILREMET'
        DataSource = DSSQLConfigEmail
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 140
        Top = 104
        Width = 134
        Height = 21
        DataField = 'CFEMIPORTA'
        DataSource = DSSQLConfigEmail
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 277
        Top = 104
        Width = 463
        Height = 21
        DataField = 'CFEMTUSUARIO'
        DataSource = DSSQLConfigEmail
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 140
        Top = 144
        Width = 600
        Height = 21
        DataField = 'CFEMTHOST'
        DataSource = DSSQLConfigEmail
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 140
        Top = 176
        Width = 164
        Height = 17
        Caption = 'Autentica'#231#227'o no Servidor'
        DataField = 'CFEMCAUTENTICA'
        DataSource = DSSQLConfigEmail
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit6: TDBEdit
        Left = 140
        Top = 213
        Width = 199
        Height = 21
        DataField = 'CFEMA15SENHA'
        DataSource = DSSQLConfigEmail
        PasswordChar = '*'
        TabOrder = 7
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object LabelGravar: TSpeedButton
              Tag = 3
              Left = 4
              Top = 3
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Caption = '&Gravar'
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
              OnClick = LabelGravarClick
            end
          end
        end
      end
    end
  end
  object SQLConfigEmail: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ConfigEmail')
    Macros = <>
    Left = 264
    Top = 16
    object SQLConfigEmailCFEMA60REMETENTE: TStringField
      FieldName = 'CFEMA60REMETENTE'
      Origin = 'DB.CONFIGEMAIL.CFEMA60REMETENTE'
      FixedChar = True
      Size = 60
    end
    object SQLConfigEmailCFEMTMAILREMET: TStringField
      FieldName = 'CFEMTMAILREMET'
      Origin = 'DB.CONFIGEMAIL.CFEMTMAILREMET'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMIPORTA: TIntegerField
      FieldName = 'CFEMIPORTA'
      Origin = 'DB.CONFIGEMAIL.CFEMIPORTA'
    end
    object SQLConfigEmailCFEMTUSUARIO: TStringField
      FieldName = 'CFEMTUSUARIO'
      Origin = 'DB.CONFIGEMAIL.CFEMTUSUARIO'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMTHOST: TStringField
      FieldName = 'CFEMTHOST'
      Origin = 'DB.CONFIGEMAIL.CFEMTHOST'
      FixedChar = True
      Size = 255
    end
    object SQLConfigEmailCFEMA15SENHA: TStringField
      FieldName = 'CFEMA15SENHA'
      Origin = 'DB.CONFIGEMAIL.CFEMA15SENHA'
      FixedChar = True
      Size = 15
    end
    object SQLConfigEmailCFEMCAUTENTICA: TStringField
      FieldName = 'CFEMCAUTENTICA'
      Origin = 'DB.CONFIGEMAIL.CFEMCAUTENTICA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLConfigEmail: TDataSource
    DataSet = SQLConfigEmail
    Left = 236
    Top = 16
  end
end
