inherited FormTelaGeracaoNotasFiscais: TFormTelaGeracaoNotasFiscais
  Left = 255
  Top = 132
  Width = 800
  Height = 528
  Caption = 'Gera'#231#227'o Autom'#225'tica de Notas Fiscais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 784
    Height = 490
    inherited PanelCentral: TPanel
      Top = 66
      Width = 780
      Height = 420
      inherited PanelBarra: TPanel
        Top = 265
        Width = 1
        Height = 137
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 265
        Align = alTop
        Color = 16249066
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 2
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 38
          Width = 39
          Height = 13
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 110
          Width = 180
          Height = 13
          Caption = 'Per'#237'odo de Digita'#231#227'o de Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 74
          Width = 54
          Height = 13
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 480
          Top = 227
          Width = 93
          Height = 13
          Caption = 'Total de Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 10
          Top = 145
          Width = 101
          Height = 13
          Caption = 'Data Emiss'#227'o NF'#39's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 601
          Top = 14
          Width = 189
          Height = 111
          AutoSize = False
          Caption = 
            'Dica: O CFOP, Plano de Contas e a opera'#231#227'o de estoque ser'#227'o inse' +
            'ridos autom'#225'ticamente, conforme as configura'#231#245'es padr'#245'es cadastr' +
            'adas no m'#243'dulo configurador.'#13#10'         O Nosso Numero deve ser i' +
            'nformado desconsiderando o digito verificador.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label10: TLabel
          Left = 236
          Top = 146
          Width = 92
          Height = 13
          Caption = 'Nosso Nro Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 123
          Top = 146
          Width = 101
          Height = 13
          Caption = 'Data e Hora Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 226
          Top = 74
          Width = 62
          Height = 13
          Caption = 'S'#233'rie da NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 321
          Top = 74
          Width = 27
          Height = 13
          Caption = 'Rota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 7
          Top = 16
          Width = 578
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DisplayEmpty = 'Escolha uma Empresa...'
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupSource = DSSQLEmpresa
          ParentCtl3D = False
          TabOrder = 0
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 8
          Top = 51
          Width = 577
          Height = 22
          DropDownCount = 8
          Ctl3D = False
          DisplayEmpty = 'Todos'
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentCtl3D = False
          TabOrder = 1
        end
        object De: TDateEdit
          Left = 7
          Top = 123
          Width = 106
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
        end
        object Ate: TDateEdit
          Left = 119
          Top = 123
          Width = 106
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object CheckPeriodo: TCheckBox
          Left = 231
          Top = 125
          Width = 157
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object ComboVendedor: TRxDBLookupCombo
          Left = 7
          Top = 87
          Width = 214
          Height = 22
          DropDownCount = 8
          Ctl3D = False
          DisplayEmpty = 'Todos'
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          ParentCtl3D = False
          TabOrder = 2
        end
        object Radioimportar: TRadioGroup
          Left = 359
          Top = 181
          Width = 89
          Height = 38
          Caption = ' Importar '
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
        end
        object RadioOrdem: TRadioGroup
          Left = 6
          Top = 222
          Width = 442
          Height = 39
          Caption = ' Ordenar por '
          Columns = 4
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'ID'
            'ID Cliente'
            'Emiss'#227'o'
            'Entrega')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object DbEditTotalPedidos: TCurrencyEdit
          Left = 456
          Top = 240
          Width = 143
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16249066
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DataEmissaoNF: TDateEdit
          Left = 7
          Top = 158
          Width = 107
          Height = 22
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 6
        end
        object RadioStatus: TRadioGroup
          Left = 179
          Top = 181
          Width = 176
          Height = 38
          Caption = ' Status '
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 1
          Items.Strings = (
            'Abertos'
            'Encerrados')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object EditNossoNroinicial: TEdit
          Left = 231
          Top = 159
          Width = 122
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object EditDataHoraSaida: TEdit
          Left = 118
          Top = 159
          Width = 109
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          Text = '28/05/2006 10:25:00'
        end
        object ComboSerieNF: TRxDBLookupCombo
          Left = 224
          Top = 87
          Width = 92
          Height = 22
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = False
          DisplayEmpty = '...'
          LookupField = 'SERIA5COD'
          LookupDisplay = 'SERIA5COD;EMPRICOD'
          LookupSource = DSSQLSerieNF
          ParentCtl3D = False
          TabOrder = 14
        end
        object RadioTipo: TRadioGroup
          Left = 6
          Top = 181
          Width = 169
          Height = 38
          Caption = ' Tipo '
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Pedido'
            'Or'#231'amento')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object CkVariosPedidos: TCheckBox
          Left = 395
          Top = 159
          Width = 179
          Height = 17
          Caption = 'Juntar v'#225'rios pedidos em uma NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ComboRota: TRxDBLookupCombo
          Left = 318
          Top = 87
          Width = 267
          Height = 22
          DropDownCount = 8
          Ctl3D = False
          DisplayEmpty = '...'
          LookupField = 'ROTAICOD'
          LookupDisplay = 'ROTAA60NOME'
          LookupSource = DSSQLRota
          ParentCtl3D = False
          TabOrder = 16
        end
        object chkDataHoraSaida: TCheckBox
          Left = 395
          Top = 125
          Width = 194
          Height = 17
          Caption = 'N'#227'o Imprimir Data/Hora Saida'
          Checked = True
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          State = cbChecked
          TabOrder = 17
        end
      end
      object Progress: TProgressBar
        Left = 0
        Top = 402
        Width = 780
        Height = 18
        Align = alBottom
        TabOrder = 2
      end
      object DBGridLista: TDBGrid
        Left = 1
        Top = 265
        Width = 779
        Height = 137
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblPedido
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridListaCellClick
        OnColEnter = DBGridListaColEnter
        OnColExit = DBGridListaColExit
        OnDrawColumnCell = DBGridListaDrawColumnCell
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIA5COD'
            Title.Caption = 'S'#233'rie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDA13ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDDEMISSAO'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDDENTREGA'
            Title.Caption = 'Entrega'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDN2TOTPED'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importar'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDA60NOME'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 780
      Height = 66
      inherited PanelCabecalho: TPanel
        Width = 780
        Height = 66
        inherited PanelNavigator: TPanel
          Top = 34
          Width = 780
          object BtnSelecionarDoc: TSpeedButton [0]
            Tag = 3
            Left = 3
            Top = 3
            Width = 160
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = '&Selecionar Pedidos'
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
          object BtnGeraNotas: TSpeedButton [1]
            Tag = 3
            Left = 166
            Top = 3
            Width = 160
            Height = 25
            Cursor = crHandPoint
            Hint = 'Gerar Notas'
            Caption = 'Gerar Notas'
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
            ParentShowHint = False
            ShowHint = True
            Spacing = 10
            OnClick = BtnGeraNotasClick
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 780
          end
        end
      end
    end
  end
  object DSSQLPedido: TDataSource
    DataSet = SQLPedido
    Left = 156
    Top = 16
  end
  object SQLPedido: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PedidoVenda '
      'Where'
      'PDVDA13ID in (Select PDVDA13ID from PedidoVendaItem) and'
      '(PDVDCIMPORTADO <> '#39'S'#39' or PDVDCIMPORTADO is null)  and'
      '(%MEmpresa) and'
      '(%MData) and'
      '(%MCliente) and'
      '(%MTipo) and'
      '(%MStatus) and'
      '(%MVendedor) and'
      '(%MRota) and'
      '(%MSerie)'
      'Order by %MOrdem'
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MStatus'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MRota'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSerie'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 128
    Top = 16
    object SQLPedidoPDVDA13ID: TStringField
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLPedidoPDVDICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLPedidoVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLPedidoCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoTRANICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Transportadora'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLPedidoPLRCICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Recbto.'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLPedidoPDVDDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLPedidoPDVDN2VLRFRETE: TBCDField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDA30NROPEDCOMP: TStringField
      DisplayLabel = 'Nro. Pedido Compra'
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoPDVDA30COMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoPDVDCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoPDVDCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoPDVDN2VLRDESC: TBCDField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDN2TOTPROD: TBCDField
      DisplayLabel = 'Tot. Produtos'
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDN2TOTPED: TBCDField
      DisplayLabel = 'Tot. Pedido'
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDTOBS: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLPedidoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLPedidoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoPDVDN2VLRDESCPROM: TBCDField
      DisplayLabel = 'Vlr. Desc. Promocional'
      FieldName = 'PDVDN2VLRDESCPROM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESCPROM'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDCTIPOFRETE: TStringField
      DisplayLabel = 'Frete'
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoPDVDDENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLPedidoPDVDINROTALAO: TIntegerField
      DisplayLabel = 'Nro. Tal'#227'o'
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLPedidoPDVDCIMPORTADO: TStringField
      DisplayLabel = 'Importado'
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLPedidoVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VENDA60NOME'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object SQLPedidoPDVDN2PERCFAT: TBCDField
      FieldName = 'PDVDN2PERCFAT'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCFAT'
      Precision = 15
      Size = 2
    end
    object SQLPedidoPDVDN2PERCOMIS: TBCDField
      FieldName = 'PDVDN2PERCOMIS'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCOMIS'
      Precision = 15
      Size = 2
    end
    object SQLPedidoROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.PEDIDOVENDA.ROTAICOD'
    end
    object SQLPedidoSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.PEDIDOVENDA.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.PEDIDOVENDA.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.PEDIDOVENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.PEDIDOVENDA.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLPedidoPDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      Origin = 'DB.PEDIDOVENDA.PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLPedidoPDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      Origin = 'DB.PEDIDOVENDA.PDVDA15NROPEDPALM'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.PEDIDOVENDA.OPESICOD'
    end
    object SQLPedidoPDVDN2VLROUTRASDESP: TBCDField
      FieldName = 'PDVDN2VLROUTRASDESP'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLROUTRASDESP'
      Precision = 15
      Size = 3
    end
    object SQLPedidoPDVDIVOLUMES: TIntegerField
      FieldName = 'PDVDIVOLUMES'
      Origin = 'DB.PEDIDOVENDA.PDVDIVOLUMES'
    end
  end
  object SQLPedidoItem: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblPedido
    SQL.Strings = (
      'SELECT * FROM PEDIDOVENDAITEM '
      'WHERE PDVDA13ID = :PDVDA13ID')
    Macros = <>
    Left = 69
    Top = 16
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPedidoItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoItemPVITN3QUANT: TBCDField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemPVITN2VLRUNIT: TBCDField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemPVITN2PERCDESC: TBCDField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemPVITN2VLRDESC: TBCDField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoItemPVITN3QUANTVEND: TBCDField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoItemPVITN2PERCCOMIS: TBCDField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
      Precision = 15
      Size = 3
    end
    object SQLPedidoItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.PEDIDOVENDAITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select EMPRICOD, EMPRA60RAZAOSOC, EMPRA2UF from EMPRESA')
    Macros = <>
    Left = 240
    Top = 13
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 268
    Top = 16
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLIEA13ID, CLIEA60RAZAOSOC, CLIEA2UFRES from CLIENTE')
    Macros = <>
    Left = 296
    Top = 16
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 324
    Top = 16
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD, VENDA60NOME from VENDEDOR')
    Macros = <>
    Left = 352
    Top = 16
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 380
    Top = 16
  end
  object TblPedido: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'Pedidos.db'
    Left = 40
    Top = 16
    object TblPedidoPDVDA13ID: TStringField
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblPedidoEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object TblPedidoPDVDICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object TblPedidoVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object TblPedidoCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblPedidoTRANICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Transportadora'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object TblPedidoPLRCICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Recbto.'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object TblPedidoPDVDDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblPedidoPDVDN2VLRFRETE: TBCDField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object TblPedidoPDVDA30NROPEDCOMP: TStringField
      DisplayLabel = 'Nro. Pedido Compra'
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object TblPedidoPDVDA30COMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object TblPedidoPDVDCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object TblPedidoPDVDCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblPedidoPDVDN2VLRDESC: TBCDField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object TblPedidoPDVDN2TOTPROD: TBCDField
      DisplayLabel = 'Tot. Produtos'
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object TblPedidoPDVDN2TOTPED: TBCDField
      DisplayLabel = 'Tot. Pedido'
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object TblPedidoPDVDTOBS: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object TblPedidoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object TblPedidoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblPedidoPDVDN2VLRDESCPROM: TBCDField
      DisplayLabel = 'Vlr. Desc. Promocional'
      FieldName = 'PDVDN2VLRDESCPROM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESCPROM'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object TblPedidoPDVDCTIPOFRETE: TStringField
      DisplayLabel = 'Frete'
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object TblPedidoPDVDDENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblPedidoPDVDINROTALAO: TIntegerField
      DisplayLabel = 'Nro. Tal'#227'o'
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object TblPedidoPDVDCIMPORTADO: TStringField
      DisplayLabel = 'Importado'
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object TblPedidoCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblPedidoVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VENDA60NOME'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object TblPedidoPDVDN2PERCFAT: TBCDField
      FieldName = 'PDVDN2PERCFAT'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCFAT'
      Precision = 15
      Size = 2
    end
    object TblPedidoPDVDN2PERCOMIS: TBCDField
      FieldName = 'PDVDN2PERCOMIS'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCOMIS'
      Precision = 15
      Size = 2
    end
    object TblPedidoROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.PEDIDOVENDA.ROTAICOD'
    end
    object TblPedidoSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.PEDIDOVENDA.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object TblPedidoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.PEDIDOVENDA.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object TblPedidoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.PEDIDOVENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object TblPedidoImportar: TBooleanField
      FieldName = 'Importar'
    end
    object TblPedidoNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.PEDIDOVENDA.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object TblPedidoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.PEDIDOVENDA.OPESICOD'
    end
    object TblPedidoPDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      Origin = 'DB.PEDIDOVENDA.PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object TblPedidoPDVDN2VLROUTRASDESP: TBCDField
      DisplayWidth = 16
      FieldName = 'PDVDN2VLROUTRASDESP'
      DisplayFormat = '###0.00'
      Precision = 15
    end
    object TblPedidoPDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      Size = 15
    end
    object TblPedidoPDVDIVOLUMES: TIntegerField
      FieldName = 'PDVDIVOLUMES'
    end
  end
  object DSTblPedido: TDataSource
    DataSet = TblPedido
    Left = 12
    Top = 16
  end
  object FormStorage: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CheckPeriodo.Checked'
      'Radioimportar.ItemIndex'
      'RadioStatus.ItemIndex'
      'ComboSerieNF.Anchors'
      'chkDataHoraSaida.Checked')
    StoredValues = <>
    Left = 444
    Top = 15
  end
  object SQLNotaFiscal: TRxQuery
    Tag = 2
    BeforePost = SQLNotaFiscalBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from NotaFiscal')
    Macros = <>
    Left = 504
    Top = 16
    object SQLNotaFiscalNOFIA13ID: TStringField
      Tag = 2
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCAL.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNotaFiscalNOFIICOD: TIntegerField
      Tag = 1
      FieldName = 'NOFIICOD'
      Origin = 'DB.NOTAFISCAL.NOFIICOD'
    end
    object SQLNotaFiscalEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTAFISCAL.EMPRICODDEST'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTAFISCAL.FORNICOD'
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNotaFiscalCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTAFISCAL.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object SQLNotaFiscalNOFIN2BASCALCICMS: TBCDField
      FieldName = 'NOFIN2BASCALCICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TBCDField
      FieldName = 'NOFIN2VLRICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2BASCALCSUBS: TBCDField
      FieldName = 'NOFIN2BASCALCSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2BASCALCCIPI: TBCDField
      FieldName = 'NOFIN2BASCALCCIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCCIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRIPI: TBCDField
      FieldName = 'NOFIN2VLRIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRDESC: TBCDField
      FieldName = 'NOFIN2VLRDESC'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRFRETE: TBCDField
      FieldName = 'NOFIN2VLRFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRSEGURO: TBCDField
      FieldName = 'NOFIN2VLRSEGURO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSEGURO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLROUTRASDESP: TBCDField
      FieldName = 'NOFIN2VLROUTRASDESP'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLROUTRASDESP'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRSERVICO: TBCDField
      FieldName = 'NOFIN2VLRSERVICO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSERVICO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRISSQN: TBCDField
      FieldName = 'NOFIN2VLRISSQN'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRPRODUTO: TBCDField
      FieldName = 'NOFIN2VLRPRODUTO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TBCDField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFICFRETEPORCONTA: TStringField
      FieldName = 'NOFICFRETEPORCONTA'
      Origin = 'DB.NOTAFISCAL.NOFICFRETEPORCONTA'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.NOTAFISCAL.TRANICOD'
    end
    object SQLNotaFiscalNOFIN3QUANT: TBCDField
      FieldName = 'NOFIN3QUANT'
      Origin = 'DB.NOTAFISCAL.NOFIN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIA15MARCA: TStringField
      FieldName = 'NOFIA15MARCA'
      Origin = 'DB.NOTAFISCAL.NOFIA15MARCA'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalNOFIN3PESBRUT: TBCDField
      FieldName = 'NOFIN3PESBRUT'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESBRUT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN3PESLIQ: TBCDField
      FieldName = 'NOFIN3PESLIQ'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESLIQ'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIA8PLACAVEIC: TStringField
      FieldName = 'NOFIA8PLACAVEIC'
      Origin = 'DB.NOTAFISCAL.NOFIA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLNotaFiscalPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.NOTAFISCAL.PLRCICOD'
    end
    object SQLNotaFiscalPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.NOTAFISCAL.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCAL.REGISTRO'
    end
    object SQLNotaFiscalNOFIN2VLRDESCPROM: TBCDField
      FieldName = 'NOFIN2VLRDESCPROM'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESCPROM'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIINROTALAO: TIntegerField
      FieldName = 'NOFIINROTALAO'
      Origin = 'DB.NOTAFISCAL.NOFIINROTALAO'
    end
    object SQLNotaFiscalPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCAL.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.NOTAFISCAL.VENDICOD'
    end
    object SQLNotaFiscalPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.NOTAFISCAL.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalNOFIA20ESPECIE: TStringField
      FieldName = 'NOFIA20ESPECIE'
      Origin = 'DB.NOTAFISCAL.NOFIA20ESPECIE'
      FixedChar = True
    end
    object SQLNotaFiscalNOFIA30COMPRADOR: TStringField
      FieldName = 'NOFIA30COMPRADOR'
      Origin = 'DB.NOTAFISCAL.NOFIA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField
      FieldName = 'NOFIA30NROPEDCOMP'
      Origin = 'DB.NOTAFISCAL.NOFIA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIN2VLRICMSFRETE: TBCDField
      FieldName = 'NOFIN2VLRICMSFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMSFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TBCDField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCAL.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField
      FieldName = 'NOFIA13IDCONSIGNADA'
      Origin = 'DB.NOTAFISCAL.NOFIA13IDCONSIGNADA'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.NOTAFISCAL.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.NOTAFISCAL.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIDCANCEL: TDateTimeField
      FieldName = 'NOFIDCANCEL'
      Origin = 'DB.NOTAFISCAL.NOFIDCANCEL'
    end
    object SQLNotaFiscalPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.NOTAFISCAL.USUAICOD'
    end
    object SQLNotaFiscalUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTAFISCAL.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.NOTAFISCAL.ROTAICOD'
    end
    object SQLNotaFiscalNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.NOTAFISCAL.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLNotaFiscalVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.NOTAFISCAL.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFICEXPCONTABIL: TStringField
      FieldName = 'NOFICEXPCONTABIL'
      Origin = 'DB.NOTAFISCAL.NOFICEXPCONTABIL'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalTransportadoraLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraLookup'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60RAZAOSOC'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraCGCLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraCGCLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA14CGC'
      KeyFields = 'TRANICOD'
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraEnderecoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraEnderecoLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60END'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraCidadeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraCidadeLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60CID'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraEstadoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraEstadoLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA2UF'
      KeyFields = 'TRANICOD'
      Size = 2
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraIELookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraIELookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA15IE'
      KeyFields = 'TRANICOD'
      Lookup = True
    end
    object SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField
      FieldName = 'NOFIDSAIDAENTRADA'
      Origin = 'DB.NOTAFISCAL.NOFIDSAIDAENTRADA'
    end
    object SQLNotaFiscalNOFIA255OBS: TMemoField
      FieldName = 'NOFIA255OBS'
      Origin = 'DB.NOTAFISCAL.NOFIA255OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLNotaFiscalNOFA1ENTRADASAIDA: TStringField
      FieldName = 'NOFA1ENTRADASAIDA'
      Origin = 'DB.NOTAFISCAL.NOFA1ENTRADASAIDA'
      Size = 1
    end
    object SQLNotaFiscalNOFICFINALIDADE: TStringField
      FieldName = 'NOFICFINALIDADE'
      Origin = 'DB.NOTAFISCAL.NOFICFINALIDADE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLNotaFiscalItem: TRxQuery
    BeforePost = SQLNotaFiscalItemBeforePost
    OnNewRecord = SQLNotaFiscalItemNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NOTAFISCALITEM'
      'Where (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 533
    Top = 16
    object SQLNotaFiscalItemNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALITEM.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemNFITIITEM: TIntegerField
      FieldName = 'NFITIITEM'
      Origin = 'DB.NOTAFISCALITEM.NFITIITEM'
    end
    object SQLNotaFiscalItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTAFISCALITEM.PRODICOD'
    end
    object SQLNotaFiscalItemNFITN3QUANT: TBCDField
      FieldName = 'NFITN3QUANT'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRUNIT: TBCDField
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCDESC: TBCDField
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRDESC: TBCDField
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCICMS: TBCDField
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2BASEICMS: TBCDField
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRICMS: TBCDField
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalItemNFITN2PERCSUBS: TBCDField
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2BASESUBS: TBCDField
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRSUBS: TBCDField
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCIPI: TBCDField
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRIPI: TBCDField
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCISSQN: TBCDField
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalItemNFITN2VLRISSQN: TBCDField
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRFRETE: TBCDField
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRLUCRO: TBCDField
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCALITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCALITEM.REGISTRO'
    end
    object SQLNotaFiscalItemNFITN2PERCREDUCAO: TBCDField
      FieldName = 'NFITN2PERCREDUCAO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCREDUCAO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN3TOTVEND: TBCDField
      FieldName = 'NFITN3TOTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3TOTVEND'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCALITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.NOTAFISCALITEM.PVITIITEM'
    end
    object SQLNotaFiscalItemNFITN3QUANTVEND: TBCDField
      FieldName = 'NFITN3QUANTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANTVEND'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCCOMIS: TBCDField
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemCPITICPOS: TIntegerField
      FieldName = 'CPITICPOS'
      Origin = 'DB.NOTAFISCALITEM.CPITICPOS'
    end
    object SQLNotaFiscalItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCALITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTAFISCALITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalItemNFITA254OBS: TStringField
      FieldName = 'NFITA254OBS'
      Origin = 'DB.NOTAFISCALITEM.NFITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLNotaFiscalItemNFITICST: TIntegerField
      FieldName = 'NFITICST'
      Origin = 'DB.NOTAFISCALITEM.NFITICST'
    end
    object SQLNotaFiscalItemCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTAFISCALITEM.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Serie'
      'Where (%Empresa) and  (%Serie)')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 616
    Top = 16
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
    object SQLSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 644
    Top = 16
  end
  object SQLContasReceberPedido: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblPedido
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      'PDVDA13ID = :PDVDA13ID')
    Macros = <>
    Left = 49
    Top = 41
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContasReceberPedidoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPedidoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberPedidoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberPedidoCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberPedidoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPedidoCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberPedidoCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberPedidoCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberPedidoCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPedidoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberPedidoCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberPedidoCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberPedidoCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberPedidoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPedidoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPedidoPLCTA15COD: TStringField
      DisplayLabel = 'Conta Cr'#233'dito'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPedidoCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberPedidoNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPedidoCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPedidoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberPedidoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberPedidoCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberPedidoCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberPedidoBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberPedidoCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberPedidoCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPedidoCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPedidoCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberPedidoCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberPedidoCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberPedidoALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPedidoPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object SQLContasReceberPedidoCTRCA254HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberPedidoHTPDICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Hist. Padr'#227'o'
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberPedidoPLCTA15CODDEBITO: TStringField
      DisplayLabel = 'Conta Debito'
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPedidoAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPedidoCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLIcmsUF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMSUF'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 584
    Top = 16
  end
  object SQLNotaContasReceber: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      '(%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 533
    Top = 44
    object SQLNotaContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLNotaContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLNotaContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLNotaContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLNotaContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLNotaContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLNotaContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLNotaContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLNotaContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLNotaContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLNotaContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLNotaContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLNotaContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLNotaContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLNotaContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLNotaContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLNotaContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLNotaContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLNotaContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLNotaContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLNotaContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLNotaContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCTEMREGRECEBER: TStringField
      FieldName = 'CTRCCTEMREGRECEBER'
      Origin = 'DB.CONTASRECEBER.CTRCCTEMREGRECEBER'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLNotaContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLNotaContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLNotaContasReceberPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
  end
  object DSSQLTransportadora: TDataSource
    DataSet = SQLTransportadora
    Left = 639
    Top = 288
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora')
    Macros = <>
    Left = 611
    Top = 288
    object SQLTransportadoraTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.TRANSPORTADORA.TRANICOD'
    end
    object SQLTransportadoraTRANA60RAZAOSOC: TStringField
      FieldName = 'TRANA60RAZAOSOC'
      Origin = 'DB.TRANSPORTADORA.TRANA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA60END: TStringField
      FieldName = 'TRANA60END'
      Origin = 'DB.TRANSPORTADORA.TRANA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA60BAI: TStringField
      FieldName = 'TRANA60BAI'
      Origin = 'DB.TRANSPORTADORA.TRANA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA60CID: TStringField
      FieldName = 'TRANA60CID'
      Origin = 'DB.TRANSPORTADORA.TRANA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA8CEP: TStringField
      FieldName = 'TRANA8CEP'
      Origin = 'DB.TRANSPORTADORA.TRANA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTransportadoraTRANA2UF: TStringField
      FieldName = 'TRANA2UF'
      Origin = 'DB.TRANSPORTADORA.TRANA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTransportadoraTRANA14CGC: TStringField
      FieldName = 'TRANA14CGC'
      Origin = 'DB.TRANSPORTADORA.TRANA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLTransportadoraTRANA15IE: TStringField
      FieldName = 'TRANA15IE'
      Origin = 'DB.TRANSPORTADORA.TRANA15IE'
      FixedChar = True
      Size = 15
    end
  end
  object SQLVeiculo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLTransportadora
    SQL.Strings = (
      'SELECT * FROM VEICULO'
      'WHERE TRANICOD =:TRANICOD')
    Macros = <>
    Left = 611
    Top = 316
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLVeiculoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.VEICULO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVeiculoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.VEICULO.EMPRICOD'
    end
    object SQLVeiculoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.VEICULO.TERMICOD'
    end
    object SQLVeiculoVEICICOD: TIntegerField
      FieldName = 'VEICICOD'
      Origin = 'DB.VEICULO.VEICICOD'
    end
    object SQLVeiculoVEICA7PLACA: TStringField
      FieldName = 'VEICA7PLACA'
      Origin = 'DB.VEICULO.VEICA7PLACA'
      FixedChar = True
      Size = 7
    end
    object SQLVeiculoVEICA2UFPLACA: TStringField
      FieldName = 'VEICA2UFPLACA'
      Origin = 'DB.VEICULO.VEICA2UFPLACA'
      FixedChar = True
      Size = 2
    end
    object SQLVeiculoVEICA60DESCR: TStringField
      FieldName = 'VEICA60DESCR'
      Origin = 'DB.VEICULO.VEICA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVeiculoVEICA3OMARCA: TStringField
      FieldName = 'VEICA3OMARCA'
      Origin = 'DB.VEICULO.VEICA3OMARCA'
      FixedChar = True
      Size = 30
    end
    object SQLVeiculoVEICA3OMOTORISTA: TStringField
      FieldName = 'VEICA3OMOTORISTA'
      Origin = 'DB.VEICULO.VEICA3OMOTORISTA'
      FixedChar = True
      Size = 30
    end
    object SQLVeiculoVEICA3OMOTOCPF: TStringField
      FieldName = 'VEICA3OMOTOCPF'
      Origin = 'DB.VEICULO.VEICA3OMOTOCPF'
      FixedChar = True
      Size = 14
    end
    object SQLVeiculoVEICN3PESOSUPORTA: TBCDField
      FieldName = 'VEICN3PESOSUPORTA'
      Origin = 'DB.VEICULO.VEICN3PESOSUPORTA'
      Precision = 15
      Size = 3
    end
    object SQLVeiculoTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.VEICULO.TRANICOD'
    end
    object SQLVeiculoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VEICULO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVeiculoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VEICULO.REGISTRO'
    end
  end
  object DSSQLSerieNF: TDataSource
    DataSet = SQLSerieNF
    Left = 644
    Top = 45
  end
  object SQLSerieNF: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Serie'
      'Where (%Empresa) and  (%Serie)')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 616
    Top = 45
    object SQLSerieNFSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieNFSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLSerieNFEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
    object SQLSerieNFSERIA100PATHEXEIMP: TStringField
      FieldName = 'SERIA100PATHEXEIMP'
      Origin = 'DB.SERIE.SERIA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLSerieNFPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieNFREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
  end
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 717
    Top = 188
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ROTA'
      'Order by ROTAA60NOME')
    Macros = <>
    Left = 689
    Top = 188
    object SQLRotaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTA.ROTAICOD'
    end
    object SQLRotaROTAA60NOME: TStringField
      FieldName = 'ROTAA60NOME'
      Origin = 'DB.ROTA.ROTAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object SQLBuscas: TRxQuery
    Tag = 2
    BeforePost = SQLNotaFiscalBeforePost
    DatabaseName = 'DB'
    Macros = <>
    Left = 608
    Top = 248
  end
end
