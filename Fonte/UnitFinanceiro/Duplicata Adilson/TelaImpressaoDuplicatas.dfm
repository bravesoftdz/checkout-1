inherited FormTelaImpressaoDuplicata: TFormTelaImpressaoDuplicata
  Left = 170
  Top = 117
  Width = 788
  Height = 507
  Caption = 'Emiss'#227'o de Boletos e Duplicatas'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 772
    Height = 469
    inherited PanelCabecalho: TPanel
      Width = 768
      inherited PanelNavigator: TPanel
        Width = 768
        inherited Image1: TImage
          Width = 768
        end
        object BtnSelecionarDoc: TSpeedButton
          Tag = 3
          Left = 2
          Top = 3
          Width = 175
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Selecionar Documentos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
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
        object ButtonImp: TRxSpeedButton
          Left = 177
          Top = 3
          Width = 177
          Height = 25
          DropDownMenu = MenuImp
          MenuPosition = dmpRight
          Caption = 'Emitir Documentos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            06020000424D0602000000000000760000002800000019000000190000000100
            0400000000009001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000770000000000
            00007777777770000000770BBBBBBBBBBBB07777777770000000770BBBBBBBBB
            BBB07777777770000000770BCCCCCCCCCCB07777774440000000770BBBBBBBBB
            BBB00000000CC0000000770BCCCCC777773733777370C0000000770BBBBE0000
            007373737770C0000000770BCCCB0E40F07737377370C00000007770BBB003E4
            00737373770040000000777700070FFE44777737007770000000777777770033
            E407337077777000000077777777770F3E407707777770000000777777777770
            F3E44077777770000000777777777777000E4477777770000000777777777777
            7777E47777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            77777777777770000000}
          Layout = blGlyphLeft
          ParentFont = False
          Spacing = 7
          Transparent = True
        end
        object RxSpeedButton1: TRxSpeedButton
          Left = 360
          Top = 3
          Width = 177
          Height = 25
          DropDownMenu = MenuImp
          MenuPosition = dmpRight
          Caption = 'Remessa / Retorno'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            06020000424D0602000000000000760000002800000019000000190000000100
            0400000000009001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000770000000000
            00007777777770000000770BBBBBBBBBBBB07777777770000000770BBBBBBBBB
            BBB07777777770000000770BCCCCCCCCCCB07777774440000000770BBBBBBBBB
            BBB00000000CC0000000770BCCCCC777773733777370C0000000770BBBBE0000
            007373737770C0000000770BCCCB0E40F07737377370C00000007770BBB003E4
            00737373770040000000777700070FFE44777737007770000000777777770033
            E407337077777000000077777777770F3E407707777770000000777777777770
            F3E44077777770000000777777777777000E4477777770000000777777777777
            7777E47777777000000077777777777777777777777770000000777777777777
            7777777777777000000077777777777777777777777770000000777777777777
            77777777777770000000}
          Layout = blGlyphLeft
          ParentFont = False
          Spacing = 7
          Transparent = True
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 768
      Height = 385
      inherited PanelBarra: TPanel
        Width = 768
        Height = 263
        Align = alTop
        Font.Color = clBlack
        object Label1: TLabel
          Left = 10
          Top = 7
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
          Left = 9
          Top = 44
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
        object Label4: TLabel
          Left = 102
          Top = 155
          Width = 19
          Height = 13
          Caption = 'at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 483
          Top = 140
          Width = 89
          Height = 13
          Caption = 'Total '#224' Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 399
          Top = 140
          Width = 73
          Height = 13
          Caption = 'Nro. Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 358
          Top = 82
          Width = 208
          Height = 13
          Caption = 'Selecione o bloqueto para impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 82
          Width = 173
          Height = 13
          Caption = 'Selecione o tipo de documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 203
          Top = 82
          Width = 141
          Height = 13
          Caption = 'Mostrar Boletos Emitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 238
          Top = 140
          Width = 129
          Height = 13
          Caption = 'Ordem para impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 358
          Top = 44
          Width = 147
          Height = 13
          Caption = 'Selecione o tipo de cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 357
          Top = 7
          Width = 218
          Height = 13
          Caption = 'Boletos Laser - Escolha Conta Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 6
          Top = 153
          Width = 90
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
        end
        object Ate: TDateEdit
          Left = 130
          Top = 153
          Width = 90
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 6
          Top = 20
          Width = 343
          Height = 21
          DropDownCount = 8
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupSource = DSSQLEmpresa
          TabOrder = 0
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 57
          Width = 345
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          TabOrder = 1
        end
        object TotalContasReceber: TCurrencyEdit
          Left = 479
          Top = 153
          Width = 116
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14536396
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object PanelIntrucoes: TPanel
          Left = 0
          Top = 178
          Width = 768
          Height = 85
          Align = alBottom
          Color = 12572888
          TabOrder = 9
          object Label5: TLabel
            Left = 9
            Top = 5
            Width = 117
            Height = 13
            Caption = 'Local de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 6
            Top = 42
            Width = 140
            Height = 13
            Caption = 'Endere'#231'o de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 394
            Top = 5
            Width = 60
            Height = 13
            Caption = 'Instru'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditLocalPagto: TEdit
            Left = 6
            Top = 18
            Width = 379
            Height = 21
            TabOrder = 0
          end
          object EditEndPagto: TEdit
            Left = 6
            Top = 55
            Width = 379
            Height = 21
            TabOrder = 1
          end
          object MemoInst: TMemo
            Left = 390
            Top = 18
            Width = 358
            Height = 58
            TabOrder = 2
          end
          object CheckLocalPagto: TCheckBox
            Left = 148
            Top = 2
            Width = 234
            Height = 17
            Caption = 'Usar Cidade do Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object CheckEndCob: TCheckBox
            Left = 148
            Top = 40
            Width = 242
            Height = 16
            Caption = 'Usar Endere'#231'o de Cobran'#231'a do Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
        object EditParcelas: TEdit
          Left = 396
          Top = 153
          Width = 78
          Height = 21
          Color = 14536396
          TabOrder = 11
        end
        object ComboBloqueto: TFilterComboBox
          Left = 354
          Top = 95
          Width = 244
          Height = 21
          Filter = '*.*'
          TabOrder = 5
        end
        object FileList: TFileListBox
          Left = 611
          Top = 81
          Width = 137
          Height = 67
          ItemHeight = 13
          Mask = '*.rpt'
          TabOrder = 10
          Visible = False
        end
        object RadioPeriodo: TRadioGroup
          Left = 6
          Top = 116
          Width = 214
          Height = 34
          Caption = 'Per'#237'odo'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Emiss'#227'o'
            'Vencimento')
          ParentFont = False
          TabOrder = 6
        end
        object ComboTipoDocumento: TRxDBLookupCombo
          Left = 5
          Top = 95
          Width = 192
          Height = 21
          DropDownCount = 8
          LookupField = 'TPDCICOD'
          LookupDisplay = 'TPDCA60DESCR'
          LookupSource = DSSQLTipoDocumento
          TabOrder = 3
        end
        object ComboEmitidos: TComboBox
          Left = 199
          Top = 95
          Width = 151
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Todos')
        end
        object ComboOrdem: TComboBox
          Left = 233
          Top = 153
          Width = 154
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 13
          Text = 'N'#250'mero da Duplicata'
          Items.Strings = (
            'Nome de Cliente'
            'N'#250'mero da Duplicata')
        end
        object ComboTipoCliente: TRxDBLookupCombo
          Left = 354
          Top = 57
          Width = 244
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSSQLTipoCliente
          TabOrder = 2
        end
        object ComboContaCorrente: TRxDBLookupCombo
          Left = 353
          Top = 20
          Width = 244
          Height = 21
          DropDownCount = 8
          LookupField = 'CTCRICOD'
          LookupDisplay = 'CTCRA60TITULAR'
          LookupSource = DSSQLContaCorrente
          TabOrder = 14
        end
        object radioTipoImpressao: TRadioGroup
          Left = 600
          Top = 140
          Width = 159
          Height = 34
          Caption = ' Tipo Impress'#227'o '
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Imprimir'
            'Visualizar')
          ParentFont = False
          TabOrder = 15
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 263
        Width = 768
        Height = 122
        Hint = 
          'Clique com o bot'#227'o direito do mouse para visualizar outras fun'#231#245 +
          'es...'
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLContasReceber
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = MenuOptions
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCDEMIS'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCDVENC'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCA30NRODUPLICBANCO'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCINROPARC'
            Title.Caption = 'Parc.'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLR'
            Title.Alignment = taRightJustify
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2DESCFIN'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA14CGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA20IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA11CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA10RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60NOMEFANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60ENDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60BAIRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA8CEPRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60ENDCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60BAICOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA8CEPCOB'
            Visible = True
          end>
      end
    end
  end
  object SQLContasReceber: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CR.CTRCA13ID,'
      '  CR.EMPRICOD,'
      '  CR.TERMICOD,'
      '  CR.CLIEA13ID,'
      '  CR.CTRCCSTATUS,'
      '  CR.CTRCINROPARC,'
      '  CR.CTRCDVENC,'
      '  CR.CTRCN2VLR,'
      '  (CR.CTRCN2VLR - CR.CTRCN2DESCFIN) as ValorTotal,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CTRCDEMIS,'
      '  CR.DUPLA13ID,'
      '  CR.CTRCA15NOSSONUMERO, '
      '  CL.CLIEA14CGC,'
      '  CL.CLIEA20IE,'
      '  CL.CLIEA11CPF,'
      '  CL.CLIEA10RG,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CL.CLIEA60NOMEFANT,'
      '  CL.CLIEA15FONE1,'
      '  CL.CLIEA15FONE2,'
      '  CL.CLIEA15FAX,'
      '  CL.CLIEA60ENDRES,'
      '  CL.CLIEA60BAIRES,'
      '  CL.CLIEA60CIDRES,'
      '  CL.CLIEA2UFRES,'
      '  CL.CLIEA8CEPRES,'
      '  CL.CLIEA60ENDCOB,'
      '  CL.CLIEA60BAICOB,'
      '  CL.CLIEA60CIDCOB,'
      '  CL.CLIEA2UFCOB,'
      '  CL.CLIEA8CEPCOB,'
      '  CL.TPCLICOD,'
      '  AVALISTA.AVALA60RAZAOSOC'
      'from'
      '  CONTASRECEBER CR'
      '  LEFT OUTER JOIN CLIENTE CL ON CR.CLIEA13ID = CL.CLIEA13ID'
      
        '  left outer join AVALISTA   ON CR.AVALA13ID = AVALISTA.AVALA13I' +
        'D'
      'where'
      '  (%CampoData between %DataInicial and %DataFinal) and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      '  ((Not CR.CUPOA13ID IS NULL) or'
      '   (Not CR.NOFIA13ID IS NULL) or'
      '   (CR.CTRCA13ID is not null) or'
      '   (CR.DUPLA13ID is not null))and'
      
        '  (CR.CTRCN2TOTREC < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null) an' +
        'd'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MTipoCliente) and'
      '  (%MNota ) and'
      '  (%MTipoDocumento) and'
      '  (%MEmitidos)'
      'order by'
      '  %MOrdem'
      ''
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
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
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNota'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoDocumento'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmitidos'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 400
    Top = 16
    object SQLContasReceberCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      DisplayLabel = 'ID NF'
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Nro Duplicata'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLContasReceberCLIEA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object SQLContasReceberCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCLIEA8CEPRES: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLContasReceberCLIEA60ENDCOB: TStringField
      DisplayLabel = 'End. Cob.'
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60BAICOB: TStringField
      DisplayLabel = 'Bairro Cob.'
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDCOB: TStringField
      DisplayLabel = 'Cidade Cob.'
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA2UFCOB: TStringField
      DisplayLabel = 'UF Cob.'
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCLIEA8CEPCOB: TStringField
      DisplayLabel = 'Cep Cob.'
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLContasReceberVALORTOTAL: TFloatField
      DisplayLabel = 'Vlr. L'#237'quido'
      FieldName = 'VALORTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'CLIEA13ID,'
      'CLIEA60RAZAOSOC'
      'from'
      'CLIENTE'
      'order by'
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 340
    Top = 16
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '*'
      'from '
      'EMPRESA')
    Macros = <>
    Left = 281
    Top = 16
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
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
  end
  object DSSQLContasReceber: TDataSource
    AutoEdit = False
    DataSet = SQLContasReceber
    Left = 428
    Top = 16
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 368
    Top = 16
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 309
    Top = 16
  end
  object TblDuplicatas: TTable
    BeforeEdit = TblDuplicatasBeforeEdit
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'Duplicatas.DB'
    Left = 225
    Top = 16
    object TblDuplicatasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblDuplicatasCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object TblDuplicatasCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object TblDuplicatasCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblDuplicatasCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblDuplicatasCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblDuplicatasCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblDuplicatasCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object TblDuplicatasCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object TblDuplicatasNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object TblDuplicatasCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object TblDuplicatasCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblDuplicatasCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblDuplicatasCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TblDuplicatasExtensoLin1: TStringField
      FieldName = 'ExtensoLin1'
      Size = 100
    end
    object TblDuplicatasExtensoLin2: TStringField
      FieldName = 'ExtensoLin2'
      Size = 100
    end
    object TblDuplicatasEndPagto: TStringField
      FieldName = 'EndPagto'
      Size = 60
    end
    object TblDuplicatasLocPagto: TStringField
      FieldName = 'LocPagto'
      Size = 240
    end
    object TblDuplicatasNumeroParcelas: TIntegerField
      FieldName = 'NumeroParcelas'
    end
    object TblDuplicatasTotalDocumento: TFloatField
      FieldName = 'TotalDocumento'
      DisplayFormat = '#,##0.00'
    end
    object TblDuplicatasInstrucoes: TStringField
      FieldName = 'Instrucoes'
      Size = 255
    end
    object TblDuplicatasDocumentos: TStringField
      FieldName = 'Documentos'
      Size = 254
    end
    object TblDuplicatasAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasNumeroDocParc: TStringField
      FieldName = 'NumeroDocParc'
      Size = 60
    end
    object TblDuplicatasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 5
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'EditEndPagto.Text'
      'EditLocalPagto.Text'
      'MemoInst.Lines'
      'RadioPeriodo.ItemIndex'
      'CheckLocalPagto.Checked')
    StoredValues = <>
    Left = 464
    Top = 16
  end
  object SQLTotais: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  Sum(CR.CTRCN2VLR) as TotalDocumento,'
      '  Count(CR.CTRCA13ID) as NroParcelas,'
      '  CR.CTRCA30NRODUPLICBANCO'
      'from'
      '  CONTASRECEBER CR, CLIENTE CL'
      'where'
      '  (%CampoData between %DataInicial and %DataFinal) and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  ((Not CR.CUPOA13ID IS NULL) or (Not CR.NOFIA13ID IS NULL)or (C' +
        'R.CTRCA13ID is not null))  and'
      
        '  (CR.CTRCN2TOTREC < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null) an' +
        'd'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MTipoCliente) and'
      '  (%MTipoDocumento)'
      'Group By'
      '  CR.CTRCA30NRODUPLICBANCO')
    Macros = <
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
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
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoDocumento'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 496
    Top = 16
    object SQLTotaisTOTALDOCUMENTO: TBCDField
      FieldName = 'TOTALDOCUMENTO'
      Precision = 15
      Size = 3
    end
    object SQLTotaisNROPARCELAS: TIntegerField
      FieldName = 'NROPARCELAS'
    end
    object SQLTotaisCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
  end
  object MenuImp: TPopupMenu
    Left = 192
    Top = 16
    object MnDuplicatas: TMenuItem
      Caption = 'Duplicata de Servi'#231'o'
      OnClick = MnDuplicatasClick
    end
    object DuplicatasMercantil1: TMenuItem
      Caption = 'Duplicata Mercantil'
      OnClick = DuplicatasMercantil1Click
    end
    object MnBloquetos: TMenuItem
      Caption = 'Bloquetos Pr'#233'-impressos'
      OnClick = MnBloquetosClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MnBloquetosLaser: TMenuItem
      Caption = 'Bloquetos - Laser'
      OnClick = MnBloquetosLaserClick
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
    Export.Excel.Constant = 9
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CancelBtn = True
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
    GraphOptions.Max = -1
    GraphOptions.Min = -1
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
    Left = 528
    Top = 16
  end
  object MenuOptions: TPopupMenu
    Left = 288
    Top = 368
    object Excluirregistroselecionado1: TMenuItem
      Caption = 'Excluir registro selecionado'
      OnClick = Excluirregistroselecionado1Click
    end
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT TPDCICOD, TPDCA60DESCR FROM TIPODOCUMENTO')
    Macros = <>
    Left = 560
    Top = 16
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
    Left = 588
    Top = 16
  end
  object PipelEmpresa: TppDBPipeline
    DataSource = DSSQLEmpresa
    UserName = 'PipelEmpresa'
    Left = 640
    Top = 97
    object PipelEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipelEmpresappField2: TppField
      FieldAlias = 'EMPRA60RAZAOSOC'
      FieldName = 'EMPRA60RAZAOSOC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipelEmpresappField3: TppField
      FieldAlias = 'EMPRA60NOMEFANT'
      FieldName = 'EMPRA60NOMEFANT'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipelEmpresappField4: TppField
      FieldAlias = 'EMPRCMATRIZFILIAL'
      FieldName = 'EMPRCMATRIZFILIAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object PipelEmpresappField5: TppField
      FieldAlias = 'EMPRA20FONE'
      FieldName = 'EMPRA20FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object PipelEmpresappField6: TppField
      FieldAlias = 'EMPRA20FAX'
      FieldName = 'EMPRA20FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object PipelEmpresappField7: TppField
      FieldAlias = 'EMPRA60END'
      FieldName = 'EMPRA60END'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object PipelEmpresappField8: TppField
      FieldAlias = 'EMPRA60BAI'
      FieldName = 'EMPRA60BAI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object PipelEmpresappField9: TppField
      FieldAlias = 'EMPRA60CID'
      FieldName = 'EMPRA60CID'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object PipelEmpresappField10: TppField
      FieldAlias = 'EMPRA2UF'
      FieldName = 'EMPRA2UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object PipelEmpresappField11: TppField
      FieldAlias = 'EMPRA8CEP'
      FieldName = 'EMPRA8CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object PipelEmpresappField12: TppField
      FieldAlias = 'EMPRCFISJURID'
      FieldName = 'EMPRCFISJURID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object PipelEmpresappField13: TppField
      FieldAlias = 'EMPRA14CGC'
      FieldName = 'EMPRA14CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 12
    end
    object PipelEmpresappField14: TppField
      FieldAlias = 'EMPRA20IE'
      FieldName = 'EMPRA20IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object PipelEmpresappField15: TppField
      FieldAlias = 'EMPRA11CPF'
      FieldName = 'EMPRA11CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 14
    end
    object PipelEmpresappField16: TppField
      FieldAlias = 'EMPRA10RG'
      FieldName = 'EMPRA10RG'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object PipelEmpresappField17: TppField
      FieldAlias = 'EMPRA60EMAIL'
      FieldName = 'EMPRA60EMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object PipelEmpresappField18: TppField
      FieldAlias = 'EMPRA60URL'
      FieldName = 'EMPRA60URL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object PipelEmpresappField19: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object PipelEmpresappField20: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object PipelEmpresappField21: TppField
      FieldAlias = 'EMPRA100INFSPC'
      FieldName = 'EMPRA100INFSPC'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object PipelEmpresappField22: TppField
      FieldAlias = 'EMPRA15CODEAN'
      FieldName = 'EMPRA15CODEAN'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object PipelEmpresappField23: TppField
      FieldAlias = 'EMPRBLOGOTIPO'
      FieldName = 'EMPRBLOGOTIPO'
      FieldLength = 1
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object PipeDuplicatas: TppDBPipeline
    DataSource = DSTblDuplicatas
    UserName = 'PipeDuplicatas'
    Left = 640
    Top = 125
  end
  object ReportDuplicatasServico: TppReport
    AutoStop = False
    DataPipeline = PipeDuplicatas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    BeforePrint = ReportDuplicatasServicoBeforePrint
    DeviceType = 'Screen'
    OnPreviewFormCreate = ReportDuplicatasServicoPreviewFormCreate
    Left = 668
    Top = 125
    Version = '6.02'
    mmColumnWidth = 209650
    DataPipelineName = 'PipeDuplicatas'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 132821
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 128588
        mmLeft = 265
        mmTop = 3969
        mmWidth = 200025
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 13229
        mmLeft = 529
        mmTop = 43921
        mmWidth = 164571
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.75
        mmHeight = 12700
        mmLeft = 40481
        mmTop = 44186
        mmWidth = 26988
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpRight
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 794
        mmTop = 52917
        mmWidth = 39952
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 11113
        mmLeft = 25665
        mmTop = 101600
        mmWidth = 174096
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 39952
        mmLeft = 25665
        mmTop = 62442
        mmWidth = 174096
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Pen.Width = 2
        mmHeight = 13494
        mmLeft = 131763
        mmTop = 43921
        mmWidth = 33602
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 39952
        mmLeft = 88371
        mmTop = 4233
        mmWidth = 111390
        BandType = 4
      end
      object NomeCli: TppDBText
        UserName = 'NomeCli'
        AutoSize = True
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 64029
        mmWidth = 27771
        BandType = 4
      end
      object EnderCli: TppDBText
        UserName = 'EnderCli'
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 69321
        mmWidth = 72761
        BandType = 4
      end
      object BairroCli: TppDBText
        UserName = 'BairroCli'
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 145257
        mmTop = 69321
        mmWidth = 53181
        BandType = 4
      end
      object DtaVenc: TppDBText
        UserName = 'DtaVenc'
        AutoSize = True
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 52123
        mmWidth = 15663
        BandType = 4
      end
      object DtaDoc: TppDBText
        UserName = 'DtaDoc'
        AutoSize = True
        DataField = 'CTRCDEMIS'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 37571
        mmWidth = 15663
        BandType = 4
      end
      object Valor1: TppDBText
        UserName = 'Valor1'
        AutoSize = True
        DataField = 'TotalDocumento'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 1852
        mmTop = 52123
        mmWidth = 22521
        BandType = 4
      end
      object CepCli: TppDBText
        UserName = 'CepCli'
        AutoSize = True
        DataField = 'CLIEA8CEPRES'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#####-###;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 152665
        mmTop = 74613
        mmWidth = 16764
        BandType = 4
      end
      object CidaCli: TppDBText
        UserName = 'CidaCli'
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 74613
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 90488
        mmTop = 6085
        mmWidth = 52239
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'EMPRA60END'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 98161
        mmTop = 10319
        mmWidth = 24469
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'EMPRA60BAI'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100806
        mmTop = 14552
        mmWidth = 19219
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'EMPRA8CEP'
        DataPipeline = PipelEmpresa
        DisplayFormat = '00000\-999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 169598
        mmTop = 14552
        mmWidth = 12361
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'EMPRA60CID'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 102129
        mmTop = 18785
        mmWidth = 22183
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'EMPRA2UF'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 174096
        mmTop = 18785
        mmWidth = 3895
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 90223
        mmTop = 23019
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'EMPRA14CGC'
        DataPipeline = PipelEmpresa
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100013
        mmTop = 27252
        mmWidth = 24553
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'EMPRA20IE'
        DataPipeline = PipelEmpresa
        DisplayFormat = '000/9999999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 104246
        mmTop = 31485
        mmWidth = 16764
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DATA DA EMISS'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 37571
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'VALOR TOTAL NF R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 44450
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#218'MERO E SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42069
        mmTop = 44450
        mmWidth = 21960
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 18785
        mmLeft = 164836
        mmTop = 43921
        mmWidth = 34925
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 44715
        mmWidth = 18521
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.75
        mmHeight = 4000
        mmLeft = 67469
        mmTop = 52917
        mmWidth = 35000
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DUPLICATA VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 44450
        mmWidth = 29898
        BandType = 4
      end
      object Valor2: TppDBText
        UserName = 'Valor2'
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 68527
        mmTop = 52123
        mmWidth = 29898
        BandType = 4
      end
      object NumDoc: TppDBText
        UserName = 'NumDoc'
        DataField = 'CTRCA30NRODUPLICBANCO'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3979
        mmLeft = 42863
        mmTop = 52123
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'N'#186' DE ORDEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 106627
        mmTop = 44450
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'PARA USO DA INST. FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 165365
        mmTop = 44450
        mmWidth = 33867
        BandType = 4
      end
      object UfCli: TppDBText
        UserName = 'UfCli'
        DataField = 'CLIEA2UFRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 132027
        mmTop = 74613
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'NOME DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 64294
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 69586
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'MUNIC'#205'PIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 74877
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'PRA'#199'A DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 80433
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 85725
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'CNPJ / CIC N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 91281
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 74877
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 74877
        mmWidth = 5821
        BandType = 4
      end
      object CgcCli: TppDBText
        UserName = 'CgcCli'
        AutoSize = True
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 91017
        mmWidth = 22013
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 64294
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 69586
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 74877
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 80433
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 85725
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 91281
        mmWidth = 2381
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.75
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'VALOR POR EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 126207
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 124884
        mmWidth = 35190
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 124090
        mmWidth = 94986
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'CgcCli1'
        DataField = 'ExtensoLin1'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 102923
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'ExtensoLin2'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 107686
        mmWidth = 48768
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'CidaCli1'
        AutoSize = True
        DataField = 'LocPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 80169
        mmWidth = 14901
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'CgcCli2'
        AutoSize = True
        DataField = 'CLIEA11CPF'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 59267
        mmTop = 91017
        mmWidth = 21251
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'CLIEA20IE'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 146315
        mmTop = 91017
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'INSC. ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 91281
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label11'
        Caption = '      /      /            '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 126207
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'EMPRA20FONE'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NumeroDocParc'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 102923
        mmTop = 52123
        mmWidth = 28575
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label13'
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 10319
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label21'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 14552
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label29'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 18785
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label30'
        Caption = 'C.G.C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 27252
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label31'
        Caption = 'Insc.Est.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 31485
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label32'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 14552
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label33'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 18785
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 
          'Reconhe'#231'o(emos) a exalitidade desta duplicata de PRESTA'#199#195'O DE SE' +
          'RVI'#199'OS, na import'#226'ncia acima que pagarei(emos) '#224' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 112713
        mmWidth = 174096
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Fax :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 130969
        mmTop = 23019
        mmWidth = 6435
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'EMPRA20FAX'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 138907
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'EndPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58473
        mmTop = 85725
        mmWidth = 15494
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'BAIRRO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 69586
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'AVALISTA/FIADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 96309
        mmWidth = 25188
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 96044
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText10'
        DataField = 'AVALA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3704
        mmLeft = 58208
        mmTop = 96044
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText12'
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 2910
        mmLeft = 25665
        mmTop = 115623
        mmWidth = 89165
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label34'
        Caption = ', ou a sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2822
        mmLeft = 137054
        mmTop = 115623
        mmWidth = 62706
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label36'
        Caption = 'NOTAS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 1852
        mmTop = 58208
        mmWidth = 21336
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape9'
        mmHeight = 50271
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 21696
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'Documentos'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ForceJustifyLastLine = True
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 49213
        mmLeft = 3175
        mmTop = 62971
        mmWidth = 20638
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImageServico: TppImage
        UserName = 'ppImageServico'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35983
        mmLeft = 5821
        mmTop = 6350
        mmWidth = 77258
        BandType = 4
      end
    end
  end
  object DSTblDuplicatas: TDataSource
    DataSet = TblDuplicatas
    Left = 253
    Top = 16
  end
  object ReportDuplicataMercantil: TppReport
    AutoStop = False
    DataPipeline = PipeDuplicatas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    BeforePrint = ReportDuplicataMercantilBeforePrint
    DeviceType = 'Screen'
    OnPreviewFormCreate = ReportDuplicataMercantilPreviewFormCreate
    Left = 668
    Top = 97
    Version = '6.02'
    mmColumnWidth = 209650
    DataPipelineName = 'PipeDuplicatas'
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 132821
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 128588
        mmLeft = 265
        mmTop = 3969
        mmWidth = 200025
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape4'
        mmHeight = 13229
        mmLeft = 529
        mmTop = 43921
        mmWidth = 164571
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.75
        mmHeight = 12700
        mmLeft = 40481
        mmTop = 44186
        mmWidth = 26988
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Position = lpRight
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 794
        mmTop = 52917
        mmWidth = 39952
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape8'
        mmHeight = 11113
        mmLeft = 25665
        mmTop = 101600
        mmWidth = 174096
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape7'
        mmHeight = 39952
        mmLeft = 25665
        mmTop = 62442
        mmWidth = 174096
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape6'
        Pen.Width = 2
        mmHeight = 13494
        mmLeft = 131763
        mmTop = 43921
        mmWidth = 33602
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape3'
        mmHeight = 39952
        mmLeft = 88371
        mmTop = 4233
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'NomeCli'
        AutoSize = True
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 64029
        mmWidth = 27771
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'EnderCli'
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 69321
        mmWidth = 72761
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'BairroCli'
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 145257
        mmTop = 69321
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DtaVenc'
        AutoSize = True
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 52123
        mmWidth = 15663
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DtaDoc'
        AutoSize = True
        DataField = 'CTRCDEMIS'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 37571
        mmWidth = 15663
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'Valor1'
        AutoSize = True
        DataField = 'TotalDocumento'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 1852
        mmTop = 52123
        mmWidth = 22521
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'CepCli'
        AutoSize = True
        DataField = 'CLIEA8CEPRES'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#####-###;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 152665
        mmTop = 74613
        mmWidth = 16764
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'CidaCli'
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 74613
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 90488
        mmTop = 6085
        mmWidth = 52239
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'EMPRA60END'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 98161
        mmTop = 10319
        mmWidth = 24469
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'EMPRA60BAI'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100806
        mmTop = 14552
        mmWidth = 19219
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'EMPRA8CEP'
        DataPipeline = PipelEmpresa
        DisplayFormat = '00000\-999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 169598
        mmTop = 14552
        mmWidth = 12361
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'EMPRA60CID'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 102129
        mmTop = 18785
        mmWidth = 22183
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'EMPRA2UF'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 174096
        mmTop = 18785
        mmWidth = 3895
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label1'
        Caption = 'Fone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 90223
        mmTop = 23019
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'EMPRA14CGC'
        DataPipeline = PipelEmpresa
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100013
        mmTop = 27252
        mmWidth = 24553
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'EMPRA20IE'
        DataPipeline = PipelEmpresa
        DisplayFormat = '000/9999999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 104246
        mmTop = 31485
        mmWidth = 16764
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label2'
        Caption = 'DATA DA EMISS'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 37571
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label3'
        Caption = 'VALOR TOTAL NF R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 44450
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label4'
        Caption = 'N'#218'MERO E SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42069
        mmTop = 44450
        mmWidth = 21960
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape5'
        mmHeight = 18785
        mmLeft = 164836
        mmTop = 43921
        mmWidth = 34925
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label5'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 44715
        mmWidth = 18521
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.75
        mmHeight = 4000
        mmLeft = 67469
        mmTop = 52917
        mmWidth = 35000
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label6'
        Caption = 'DUPLICATA VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 44450
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'Valor2'
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 68527
        mmTop = 52123
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'NumDoc'
        DataField = 'CTRCA30NRODUPLICBANCO'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3979
        mmLeft = 42863
        mmTop = 52123
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label7'
        Caption = 'N'#186' DE ORDEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 106363
        mmTop = 44450
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label8'
        Caption = 'PARA USO DA INST. FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 165365
        mmTop = 44450
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'UfCli'
        DataField = 'CLIEA2UFRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 132027
        mmTop = 74613
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label9'
        Caption = 'NOME DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 64294
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label10'
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 69586
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label101'
        Caption = 'MUNIC'#205'PIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 74877
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label12'
        Caption = 'PRA'#199'A DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 80433
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label102'
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 85725
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label14'
        Caption = 'CNPJ / CIC N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 91281
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label15'
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 74877
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label16'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 74877
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'CgcCli'
        AutoSize = True
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 91017
        mmWidth = 22013
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label19'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 64294
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label20'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 69586
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'Label201'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 74877
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label22'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 80433
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label23'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 85725
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label24'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 91281
        mmWidth = 2381
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.75
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'VALOR POR EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label26'
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 126207
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label27'
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 124884
        mmWidth = 35190
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 124090
        mmWidth = 94986
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'CgcCli1'
        DataField = 'ExtensoLin1'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 102923
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText11'
        DataField = 'ExtensoLin2'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 107686
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'CidaCli1'
        AutoSize = True
        DataField = 'LocPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 80169
        mmWidth = 14901
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'CgcCli2'
        AutoSize = True
        DataField = 'CLIEA11CPF'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 59267
        mmTop = 91017
        mmWidth = 21251
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'CLIEA20IE'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 146315
        mmTop = 91017
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label28'
        Caption = 'INSC. ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 91281
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label11'
        Caption = '      /      /            '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 126207
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText16'
        DataField = 'EMPRA20FONE'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText9'
        DataField = 'NumeroDocParc'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 102923
        mmTop = 52123
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label13'
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 10319
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label21'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 14552
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label29'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 18785
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label30'
        Caption = 'C.G.C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 27252
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label31'
        Caption = 'Insc.Est.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 31485
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label32'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 14552
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label33'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 18785
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 
          'Reconhe'#231'o(emos) a exalitidade desta duplicata MERCANTIL, na impo' +
          'rt'#226'ncia acima que pagarei(emos) '#224' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 112713
        mmWidth = 174096
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label18'
        Caption = 'Fax :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 130969
        mmTop = 23019
        mmWidth = 6435
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText15'
        DataField = 'EMPRA20FAX'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 138907
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'EndPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58473
        mmTop = 85725
        mmWidth = 15494
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label37'
        Caption = 'BAIRRO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 69586
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label38'
        Caption = 'AVALISTA/FIADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 96309
        mmWidth = 25188
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label39'
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 96044
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText10'
        DataField = 'AVALA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3704
        mmLeft = 58208
        mmTop = 96044
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText12'
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 2910
        mmLeft = 25665
        mmTop = 115623
        mmWidth = 89165
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label34'
        Caption = ', ou a sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2822
        mmLeft = 137054
        mmTop = 115623
        mmWidth = 62706
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label36'
        Caption = 'NOTAS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 1852
        mmTop = 58208
        mmWidth = 21336
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape9'
        mmHeight = 50271
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 21696
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'Documentos'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ForceJustifyLastLine = True
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 49213
        mmLeft = 3175
        mmTop = 62971
        mmWidth = 20638
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImageMercantil: TppImage
        UserName = 'ppImageMercantil'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 34660
        mmLeft = 4498
        mmTop = 6879
        mmWidth = 80433
        BandType = 4
      end
    end
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TIPOCLIENTE'
      'ORDER BY TPCLA30DESCR')
    Macros = <>
    Left = 627
    Top = 16
    object SQLTipoClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTE.TPCLICOD'
    end
    object SQLTipoClienteTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      Origin = 'DB.TIPOCLIENTE.TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 655
    Top = 16
  end
  object gbTitulo: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaJuridica
    Cedente.NumeroCPFCGC = '92871771000172'
    Cedente.Nome = 'ASSOCIACAO BRASILEIRA DOS DISTRIBUIDORES GUERRA'
    Cedente.Endereco.Rua = 'Rua Leonardo Truda'
    Cedente.Endereco.Numero = '40'
    Cedente.Endereco.Bairro = 'Centro'
    Cedente.Endereco.Cidade = 'Porto Alegre'
    Cedente.Endereco.Estado = 'RS'
    Cedente.Endereco.CEP = '90010050'
    Cedente.Endereco.EMail = 'abradigue@abradigue.com.br'
    Cedente.ContaBancaria.Banco.Logo = 'C:\UNIT\GESTAO\BMP\LOGOSICREDI.JPG'
    Cedente.ContaBancaria.Banco.Codigo = '237'
    Cedente.ContaBancaria.CodigoAgencia = '324'
    Cedente.ContaBancaria.DigitoAgencia = '7'
    Cedente.ContaBancaria.NumeroConta = '161971'
    Cedente.ContaBancaria.DigitoConta = '3'
    Cedente.ContaBancaria.NomeCliente = 'ASSOCIACAO BRASILEIRA DOS DISTRIBUIDORES GUERRA'
    Cedente.CodigoCedente = '161971'
    Cedente.DigitoCodigoCedente = '3'
    Sacado.TipoInscricao = tiPessoaFisica
    Sacado.NumeroCPFCGC = '12345678901'
    Sacado.Nome = 'Jo'#227'o da Silva'
    Sacado.Endereco.Rua = 'Av. P. H. Rolfs'
    Sacado.Endereco.Numero = '324'
    Sacado.Endereco.Complemento = 'apto 220'
    Sacado.Endereco.Bairro = 'Centro'
    Sacado.Endereco.Cidade = 'Vi'#231'osa'
    Sacado.Endereco.Estado = 'MG'
    Sacado.Endereco.CEP = '36570000'
    Sacado.Endereco.EMail = 'joao@silva.com.br'
    SeuNumero = '9876'
    NossoNumero = '1234'
    NumeroDocumento = '4567'
    Carteira = '006'
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    DataProcessamento = 38849
    DataDocumento = 38847
    DataVencimento = 38857
    ValorDocumento = 350
    EmissaoBoleto = ebClienteEmite
    Left = 720
    Top = 97
  end
  object DSSQLContaCorrente: TDataSource
    DataSet = SQLContaCorrente
    Left = 722
    Top = 16
  end
  object SQLContaCorrente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CONTACORRENTE')
    Macros = <>
    Left = 694
    Top = 16
    object SQLContaCorrenteCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLContaCorrenteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLContaCorrenteCTCRA15AGENCIA: TStringField
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLContaCorrenteCTCRDABERTURA: TDateTimeField
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
    end
    object SQLContaCorrenteCTCRN2LIMITE: TBCDField
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
      Precision = 15
      Size = 3
    end
    object SQLContaCorrenteCTCRN2SALDOATUAL: TBCDField
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLContaCorrenteTMBCICOD: TIntegerField
      FieldName = 'TMBCICOD'
      Origin = 'DB.CONTACORRENTE.TMBCICOD'
    end
    object SQLContaCorrentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContaCorrenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTACORRENTE.REGISTRO'
    end
    object SQLContaCorrenteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTACORRENTE.EMPRICOD'
    end
    object SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField
      FieldName = 'CTCRDULTALTSALDO'
      Origin = 'DB.CONTACORRENTE.CTCRDULTALTSALDO'
    end
    object SQLContaCorrenteCTCRA30CODCONTABIL: TStringField
      FieldName = 'CTCRA30CODCONTABIL'
      Origin = 'DB.CONTACORRENTE.CTCRA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object SQLContaCorrenteCTCRA15CEDENTECOD: TStringField
      FieldName = 'CTCRA15CEDENTECOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTECOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15CEDENTEDIGCOD: TStringField
      FieldName = 'CTCRA15CEDENTEDIGCOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTEDIGCOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGAGENCIA: TStringField
      FieldName = 'CTCRA15DIGAGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGAGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGCONTA: TStringField
      FieldName = 'CTCRA15DIGCONTA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGCONTA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15CARTEIRACOD: TStringField
      FieldName = 'CTCRA15CARTEIRACOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CARTEIRACOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGBANCO: TStringField
      FieldName = 'CTCRA15DIGBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGBANCO'
      Size = 15
    end
    object SQLContaCorrenteCTCRA15POSTO: TStringField
      FieldName = 'CTCRA15POSTO'
      Origin = 'DB.CONTACORRENTE.CTCRA15POSTO'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRINOSSONUMERO: TIntegerField
      FieldName = 'CTCRINOSSONUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRINOSSONUMERO'
    end
    object SQLContaCorrenteCTCRA150LOGOBANCO: TStringField
      FieldName = 'CTCRA150LOGOBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA150LOGOBANCO'
      Size = 150
    end
  end
  object gbCobranca: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 720
    Top = 128
  end
end
