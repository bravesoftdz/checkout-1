inherited FormCadastroPedidoVenda: TFormCadastroPedidoVenda
  Left = 192
  Top = 110
  Caption = 'Or'#231'amentos e Pedidos de Venda'
  ClientHeight = 519
  ClientWidth = 928
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 928
    Height = 519
    inherited PanelCabecalho: TPanel
      Width = 926
      inherited PanelNavigator: TPanel
        Width = 926
      end
      inherited Panel2: TPanel
        Width = 926
        inherited Panel3: TPanel
          Left = 574
        end
        inherited Panel1: TPanel
          Width = 926
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 926
      Height = 445
      inherited PanelBarra: TPanel
        Height = 445
        inherited Button1: TRxSpeedButton
          Caption = '1 Consulta'
        end
        inherited Button2: TRxSpeedButton
          Top = 37
          Caption = '2 Dados Principais'
        end
        inherited Button3: TRxSpeedButton
          Tag = 3
          Top = 60
          Caption = '3 Itens'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object LbVendedorAtual: TLabel
          Left = 5
          Top = 190
          Width = 122
          Height = 17
          AutoSize = False
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbRotaAtual: TLabel
          Left = 5
          Top = 207
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Rota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbDataEntrega: TLabel
          Left = 5
          Top = 273
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbTranspAtual: TLabel
          Left = 5
          Top = 224
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Transp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbVeiculo: TLabel
          Left = 5
          Top = 241
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbEmissao: TLabel
          Left = 5
          Top = 257
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object Button4: TRxSpeedButton
          Tag = 3
          Left = 1
          Top = 83
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '4 Parcelas'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button1Click
        end
        object RadioConsultaCodigo: TRadioGroup
          Left = 3
          Top = 109
          Width = 125
          Height = 76
          Caption = ' Consultar por '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'ID Cliente'
            'C'#243'd.Antigo'
            'Rota+Seq Di'#225'ria')
          ParentFont = False
          TabOrder = 0
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 796
        Height = 445
        inherited Panel5: TPanel
          Width = 796
          Height = 445
          inherited PagePrincipal: TPageControl
            Top = 79
            Width = 796
            Height = 366
            ActivePage = TabItens
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 75
                Width = 788
                Height = 265
                Columns = <
                  item
                    Alignment = taCenter
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'PDVDCTIPO'
                    PickList.Strings = (
                      'P=Pedido'
                      'O=Or'#231'amento')
                    Width = 25
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA5COD'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDINROTALAO'
                    Title.Caption = 'Nro.Ped. Tal'#227'o'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PDVDCSTATUS'
                    Title.Caption = 'ST'
                    Width = 16
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PDVDDEMISSAO'
                    Width = 58
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteLookup'
                    Title.Caption = 'Cliente'
                    Width = 267
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDN2TOTPROD'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDN2TOTPED'
                    Width = 71
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 788
                Height = 41
                inherited PanelBetween: TPanel
                  Width = 394
                  Height = 41
                end
                inherited PanelEditProcura: TPanel
                  Width = 394
                  Height = 41
                end
                inherited PanelIndice: TPanel
                  Height = 41
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 280
                Height = 35
                Lines.Strings = (
                  'PEDIDOVENDAITEM'
                  'CONTASRECEBER')
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 41
                Width = 788
                Height = 34
                Align = alTop
                BevelOuter = bvNone
                Color = 12572888
                TabOrder = 3
                TabStop = True
                object BTNLocalizar: TSpeedButton
                  Left = 576
                  Top = 6
                  Width = 68
                  Height = 22
                  Caption = '&Localizar'
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF60000000000000076000000280000000E000000100000000100
                    04000000000080000000CE0E0000C40E00001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                    77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                    70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                    70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                    0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
                  OnClick = BTNLocalizarClick
                end
                object ComboCliente: TRxDBLookupCombo
                  Left = 2
                  Top = 10
                  Width = 410
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um cliente...'
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  LookupSource = DSSQLCliente
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object GroupConsultaSituacao: TGroupBox
                  Left = 416
                  Top = -1
                  Width = 156
                  Height = 33
                  Caption = ' Situa'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object RdAbertos: TRadioButton
                    Left = 5
                    Top = 13
                    Width = 68
                    Height = 17
                    Caption = 'Ab+Enc'
                    Checked = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    TabStop = True
                  end
                  object RdFaturado: TRadioButton
                    Left = 67
                    Top = 13
                    Width = 39
                    Height = 17
                    Caption = 'Fat'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object RdCanc: TRadioButton
                    Left = 106
                    Top = 13
                    Width = 48
                    Height = 17
                    Caption = 'Canc'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label14: TLabel
                Left = 307
                Top = 35
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
              object Label27: TLabel
                Left = 305
                Top = 2
                Width = 74
                Height = 13
                Caption = 'Data Entrega'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 5
                Top = 35
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
              object Label11: TLabel
                Left = 400
                Top = 2
                Width = 63
                Height = 13
                Caption = 'Comprador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 5
                Top = 68
                Width = 89
                Height = 13
                Caption = 'Transportadora'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 308
                Top = 68
                Width = 55
                Height = 13
                Caption = 'Motorista'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 150
                Top = 103
                Width = 57
                Height = 13
                Caption = 'Tipo Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 308
                Top = 103
                Width = 48
                Height = 13
                Caption = 'Vlr.Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 5
                Top = 139
                Width = 243
                Height = 13
                Caption = 'Dados Adicionais Nota Fiscal / Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 305
                Top = 139
                Width = 301
                Height = 13
                Caption = 'Observa'#231#245'es que ser'#227'o impressas ap'#243's o '#250'ltimo item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 5
                Top = 1
                Width = 209
                Height = 13
                Caption = 'Opera'#231#227'o de Estoque ao gerar a nota'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnTransportadora: TSpeedButton
                Left = 282
                Top = 80
                Width = 22
                Height = 21
                Hint = 'Acesso ao Cadastro de Transportadoras'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                ParentShowHint = False
                ShowHint = True
                OnClick = BtnTransportadoraClick
              end
              object LBPlaca: TLabel
                Left = 6
                Top = 104
                Width = 30
                Height = 13
                Caption = 'Placa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 533
                Top = 103
                Width = 111
                Height = 13
                Caption = 'Nro Pedido no Talao'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 420
                Top = 103
                Width = 95
                Height = 13
                Caption = 'Outras Despesas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DateEntrega: TDBDateEdit
                Left = 304
                Top = 15
                Width = 89
                Height = 20
                DataField = 'PDVDDENTREGA'
                DataSource = DSTemplate
                Ctl3D = True
                NumGlyphs = 2
                ParentCtl3D = False
                TabOrder = 2
              end
              object ComboVendedor: TRxDBLookupCombo
                Left = 343
                Top = 48
                Width = 303
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'VENDICOD'
                DataSource = DSTemplate
                LookupField = 'VENDICOD'
                LookupDisplay = 'VENDA60NOME'
                LookupSource = DSSQLVendedor
                ParentCtl3D = False
                TabOrder = 7
              end
              object DBEdit15: TDBEdit
                Left = 304
                Top = 48
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'VENDICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 6
              end
              object DBEdit7: TDBEdit
                Left = 2
                Top = 48
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 4
              end
              object ComboRota: TRxDBLookupCombo
                Left = 42
                Top = 48
                Width = 257
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                LookupField = 'ROTAICOD'
                LookupDisplay = 'ROTAA60NOME'
                LookupSource = DSSQLRota
                ParentCtl3D = False
                TabOrder = 5
              end
              object DBEdit9: TDBEdit
                Left = 397
                Top = 15
                Width = 247
                Height = 21
                Ctl3D = True
                DataField = 'PDVDA30COMPRADOR'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 3
              end
              object DBEdit10: TDBEdit
                Left = 2
                Top = 81
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'TRANICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 8
              end
              object ComboTransp: TRxDBLookupCombo
                Left = 41
                Top = 81
                Width = 240
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'TRANICOD'
                DataSource = DSTemplate
                LookupField = 'TRANICOD'
                LookupDisplay = 'TRANA60RAZAOSOC'
                LookupSource = DSSQLTransportadora
                ParentCtl3D = False
                TabOrder = 9
              end
              object ComboVeiculo: TRxDBLookupCombo
                Left = 305
                Top = 81
                Width = 340
                Height = 20
                DropDownCount = 8
                DisplayAllFields = True
                Ctl3D = True
                DataField = 'VEICA13ID'
                DataSource = DSTemplate
                LookupField = 'VEICA13ID'
                LookupDisplay = 'VEICA3OMOTORISTA;VEICA7PLACA'
                LookupSource = DSSQLVeiculo
                ParentCtl3D = False
                TabOrder = 10
                OnExit = ComboVeiculoExit
              end
              object ComboTipoFrete: TRxDBComboBox
                Left = 147
                Top = 116
                Width = 150
                Height = 21
                Style = csDropDownList
                Ctl3D = True
                DataField = 'PDVDCTIPOFRETE'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'CIF - Emitente'
                  'FOB - Destinat'#225'rio')
                ParentCtl3D = False
                TabOrder = 12
                Values.Strings = (
                  'C'
                  'F')
              end
              object dbFrete: TDBEdit
                Left = 305
                Top = 116
                Width = 110
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLRFRETE'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 13
              end
              object ComboObsNota: TRxDBLookupCombo
                Left = 2
                Top = 153
                Width = 297
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                Ctl3D = True
                DisplayEmpty = '...'
                LookupField = 'OBSNICOD'
                LookupDisplay = 'NOFIA50DESC'
                LookupSource = DSSQLObsNota
                ParentCtl3D = False
                TabOrder = 16
                OnExit = ComboObsNotaExit
              end
              object DBMemo1: TDBMemo
                Left = 2
                Top = 173
                Width = 297
                Height = 68
                BevelWidth = 0
                Ctl3D = True
                DataField = 'PDVDTOBS'
                DataSource = DSTemplate
                ParentCtl3D = False
                ScrollBars = ssVertical
                TabOrder = 17
              end
              object DBMemo2: TDBMemo
                Left = 304
                Top = 153
                Width = 340
                Height = 89
                BevelWidth = 0
                Ctl3D = True
                DataField = 'NOFIAOBSCORPONF'
                DataSource = DSTemplate
                ParentCtl3D = False
                ScrollBars = ssVertical
                TabOrder = 18
                OnExit = DBMemo2Exit
              end
              object DBEdit1: TDBEdit
                Left = 2
                Top = 15
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 0
              end
              object ComboOperacaoEstoque: TRxDBLookupCombo
                Left = 42
                Top = 15
                Width = 257
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                LookupField = 'OPESICOD'
                LookupDisplay = 'OPESA60DESCR'
                LookupSource = DSSQLOperacaoEstoque
                ParentCtl3D = False
                TabOrder = 1
              end
              object DBEditPlaca: TDBEdit
                Left = 3
                Top = 117
                Width = 140
                Height = 21
                Ctl3D = True
                DataField = 'PDVD8PLACAVEIC'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 11
              end
              object DBEdit8: TDBEdit
                Left = 532
                Top = 116
                Width = 110
                Height = 21
                Ctl3D = True
                DataField = 'PDVDINROTALAO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 15
              end
              object DBEdit13: TDBEdit
                Left = 418
                Top = 116
                Width = 110
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLROUTRASDESP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 14
              end
            end
            object TabItens: TTabSheet
              Caption = 'Itens'
              ImageIndex = 2
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 788
                Height = 117
                Align = alTop
                BevelWidth = 3
                Color = 12572888
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label13: TLabel
                  Left = 10
                  Top = 39
                  Width = 170
                  Height = 13
                  Caption = 'C'#243'digo / Descri'#231#227'o do Produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 448
                  Top = 39
                  Width = 27
                  Height = 13
                  Caption = 'Qtde'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 493
                  Top = 39
                  Width = 63
                  Height = 13
                  Caption = 'Vlr.Unit'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object LSaldo: TLabel
                  Left = 561
                  Top = 39
                  Width = 78
                  Height = 13
                  Caption = 'Estoque Atual'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object SaldoAtual: TLabel
                  Left = 627
                  Top = 53
                  Width = 10
                  Height = 19
                  Alignment = taRightJustify
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object AcessaProduto: TSpeedButton
                  Left = 412
                  Top = 52
                  Width = 24
                  Height = 22
                  Hint = 'Acessa Cadastro de Produtos'
                  Flat = True
                  Glyph.Data = {
                    E6000000424DE60000000000000076000000280000000E0000000E0000000100
                    0400000000007000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                    DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                    DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                    DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                    DD00DDDDDDDDDDDDDD00}
                  OnClick = AcessaProdutoClick
                end
                object Label33: TLabel
                  Left = 9
                  Top = 75
                  Width = 73
                  Height = 13
                  Caption = 'Observa'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboProdutos: TRxDBLookupCombo
                  Left = 109
                  Top = 53
                  Width = 301
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'PRODICOD'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'PRODICOD'
                  LookupDisplay = 'PRODA60DESCR'
                  LookupSource = DSSQLProdutos
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit11: TDBEdit
                  Left = 438
                  Top = 53
                  Width = 52
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN3QUANT'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  OnExit = DBEdit11Exit
                end
                object DBEdit12: TDBEdit
                  Left = 492
                  Top = 53
                  Width = 63
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN2VLRUNIT'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                end
                object BTItemNovo: TBitBtn
                  Left = 440
                  Top = 83
                  Width = 62
                  Height = 28
                  Caption = 'Novo Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BTItemNovoClick
                end
                object BtItemGravar: TBitBtn
                  Left = 503
                  Top = 82
                  Width = 62
                  Height = 29
                  Caption = 'Gravar Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnClick = BtItemGravarClick
                end
                object BtItemExcluir: TBitBtn
                  Left = 566
                  Top = 82
                  Width = 62
                  Height = 29
                  Caption = 'Excluir Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = BtItemExcluirClick
                end
                object Panel7: TPanel
                  Left = 3
                  Top = 3
                  Width = 782
                  Height = 33
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelInner = bvLowered
                  BevelOuter = bvNone
                  BevelWidth = 2
                  Caption = ' Lan'#231'amento de Itens'
                  Color = 10053171
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -21
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 8
                end
                object EditCdProduto: TEdit
                  Left = 5
                  Top = 53
                  Width = 101
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnExit = EditCdProdutoExit
                end
                object DBEdit14: TDBEdit
                  Left = 5
                  Top = 89
                  Width = 404
                  Height = 21
                  Ctl3D = True
                  DataField = 'PDVDA255OBS1'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                end
              end
              object DBGridItens: TDBGrid
                Left = 0
                Top = 117
                Width = 788
                Height = 223
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLPedidoVendaItem
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridListaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Title.Caption = 'C'#243'd.'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 39
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DescricaoProduto'
                    Title.Caption = 'Descri'#231#227'o'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 262
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3QUANT'
                    Title.Alignment = taCenter
                    Title.Caption = 'Qtde'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN2VLRUNIT'
                    Title.Alignment = taCenter
                    Title.Caption = 'Vlr.Unit'#225'rio'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN2VLRDESC'
                    Title.Caption = 'Vlr.Desc Prod'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 76
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3TOTVENDITEM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Total Item'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3QUANTVEND'
                    Title.Caption = 'Sald.Entregar'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 78
                    Visible = True
                  end>
              end
            end
            object TabFinanceiro: TTabSheet
              Caption = 'Financeiro'
              ImageIndex = 3
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 788
                Height = 340
                Align = alClient
                BevelWidth = 3
                Color = 12572888
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Panel9: TPanel
                  Left = 3
                  Top = 3
                  Width = 782
                  Height = 30
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelInner = bvLowered
                  BevelOuter = bvNone
                  BevelWidth = 2
                  Caption = '  Lan'#231'amento das Parcelas'
                  Color = 10053171
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -21
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
                object Panel6: TPanel
                  Left = 426
                  Top = 33
                  Width = 359
                  Height = 304
                  Align = alClient
                  Caption = 'Panel6'
                  Color = 12572888
                  TabOrder = 1
                  object DBGrid2: TDBGrid
                    Left = 1
                    Top = 39
                    Width = 357
                    Height = 264
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
                    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines]
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnDrawColumnCell = DBGridListaDrawColumnCell
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'CTRCINROPARC'
                        ReadOnly = True
                        Title.Caption = 'Parc'
                        Width = 30
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCDVENC'
                        Title.Caption = 'Dt.Vencto'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2VLR'
                        Title.Caption = 'Valor'
                        Width = 90
                        Visible = True
                      end>
                  end
                  object Panel11: TPanel
                    Left = 1
                    Top = 1
                    Width = 357
                    Height = 38
                    Align = alTop
                    Color = 12572888
                    TabOrder = 1
                    object Label21: TLabel
                      Left = 6
                      Top = 2
                      Width = 142
                      Height = 13
                      Caption = 'Plano Recebimento Atual'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object ComboPlanoRectoAtual: TRxDBLookupCombo
                      Left = 2
                      Top = 15
                      Width = 201
                      Height = 20
                      DropDownCount = 8
                      Ctl3D = True
                      DataField = 'PLRCICOD'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      LookupField = 'PLRCICOD'
                      LookupDisplay = 'PLRCA60DESCR'
                      LookupSource = DSSQLPlanoRecebimento
                      ParentCtl3D = False
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                      TabStop = False
                    end
                  end
                end
                object Panel10: TPanel
                  Left = 3
                  Top = 33
                  Width = 423
                  Height = 304
                  Align = alLeft
                  Color = 12572888
                  TabOrder = 2
                  object Label12: TLabel
                    Left = 17
                    Top = 6
                    Width = 157
                    Height = 13
                    Caption = 'Novo Plano de Recebimento'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label28: TLabel
                    Left = 18
                    Top = 39
                    Width = 38
                    Height = 13
                    Caption = #224' Vista'
                    Color = 12572888
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                  end
                  object Label26: TLabel
                    Left = 226
                    Top = 39
                    Width = 42
                    Height = 13
                    Caption = #224' Prazo'
                    Color = 12572888
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 18
                    Top = 73
                    Width = 92
                    Height = 13
                    Caption = 'Tipo Documento'
                    Color = 12572888
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                  end
                  object Label29: TLabel
                    Left = 226
                    Top = 73
                    Width = 50
                    Height = 13
                    Caption = 'Portador'
                    Color = 12572888
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                  end
                  object Label23: TLabel
                    Left = 18
                    Top = 108
                    Width = 93
                    Height = 13
                    Caption = 'Hist'#243'rico Padr'#227'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object BTNRecalcularFinanceiro: TSpeedButton
                    Left = 21
                    Top = 187
                    Width = 186
                    Height = 22
                    Caption = '&Recalcular'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      5A010000424D5A01000000000000760000002800000012000000130000000100
                      040000000000E4000000CE0E0000C40E00001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778877777
                      7777770000007777844877777777770000007778444487777777770000007784
                      4444487777777700000078444C4444877777770000007444C4C4448777777700
                      00007C4C444C444877777700000078C44444C4448777770000008444C4444C44
                      487777000000444C7C4448C4448777000000C4C777C4448C4448770000007C77
                      777C4448C4448700000077777777C4448C4487000000777777777C4448C44700
                      00007777777777C4448C7700000077777777777C444877000000777777777777
                      C448770000007777777777777C447700000077777777777777C777000000}
                    ParentFont = False
                    OnClick = BTNRecalcularFinanceiroClick
                  end
                  object BtnExcluirParcAtuais: TSpeedButton
                    Left = 212
                    Top = 187
                    Width = 186
                    Height = 22
                    Caption = '&Excluir Parcelas Atuais'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      96010000424D9601000000000000760000002800000018000000180000000100
                      0400000000002001000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFFFF077777777000FF
                      FFFFFFFFF078787727770000FFFFFFFFF0787837272700000FFFFFFFF0787837
                      272700000FFFFFFFF0787837272700000FFFFFFFF078783727270000FFFFFFFF
                      F078783727270FFFFFFFFFFFF070000000070FFFFFFFFFFFF007777777200FFF
                      FFFFFFFF07777777777770FFFFFFFFFF07888877777770FFFFFFFFFF07888777
                      777770FFFFFFFFFF08888700077770FFFFFFFFFFF0088F7737700FFFFFFFFFFF
                      FFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                    ParentFont = False
                    OnClick = BtnExcluirParcAtuaisClick
                  end
                  object ComboPlanoRecto: TRxDBLookupCombo
                    Left = 13
                    Top = 19
                    Width = 403
                    Height = 20
                    DropDownCount = 8
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'PLRCICOD'
                    LookupDisplay = 'PLRCA60DESCR'
                    LookupSource = DSSQLPlanoRecebimento
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnExit = ComboPlanoRectoExit
                  end
                  object ComboNumerarioVista: TRxDBLookupCombo
                    Left = 13
                    Top = 52
                    Width = 201
                    Height = 20
                    DropDownCount = 8
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'NUMEICOD'
                    LookupDisplay = 'NUMEA30DESCR'
                    LookupSource = DSSQLNumerarioVista
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    OnChange = ComboNumerarioVistaChange
                  end
                  object ComboNumerarioPrazo: TRxDBLookupCombo
                    Left = 220
                    Top = 52
                    Width = 196
                    Height = 20
                    DropDownCount = 8
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'NUMEICOD'
                    LookupDisplay = 'NUMEA30DESCR'
                    LookupSource = DSSQLNumerarioPrazo
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    OnChange = ComboNumerarioPrazoChange
                  end
                  object ComboTipoDoc: TRxDBLookupCombo
                    Left = 13
                    Top = 86
                    Width = 201
                    Height = 20
                    DropDownCount = 8
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'TPDCICOD'
                    LookupDisplay = 'TPDCA60DESCR'
                    LookupSource = DSSQLTipoDoc
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                  end
                  object ComboPortador: TRxDBLookupCombo
                    Left = 220
                    Top = 86
                    Width = 196
                    Height = 20
                    DropDownCount = 8
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'PORTICOD'
                    LookupDisplay = 'PORTA60DESCR'
                    LookupSource = DSSQLPortador
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 4
                  end
                  object ComboHistoricoPadrao: TRxDBLookupCombo
                    Left = 13
                    Top = 121
                    Width = 403
                    Height = 21
                    DropDownCount = 8
                    Ctl3D = True
                    DisplayEmpty = 'Selecione um hist'#243'rico Padr'#227'o...'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'HTPDICOD'
                    LookupDisplay = 'HTPDA100HISTORICO'
                    LookupSource = DSSQLHistoricoPadrao
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 5
                    OnExit = ComboHistoricoPadraoExit
                    OnKeyDown = ComboHistoricoPadraoKeyDown
                  end
                  object MemoHistorico: TMemo
                    Left = 13
                    Top = 142
                    Width = 403
                    Height = 40
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    MaxLength = 254
                    ParentCtl3D = False
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 6
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 79
            Width = 796
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 796
            Height = 79
            object Label2: TLabel
              Left = 10
              Top = 3
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 97
              Top = 3
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 192
              Top = 3
              Width = 37
              Height = 13
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 261
              Top = 3
              Width = 66
              Height = 13
              Caption = 'Vlr Tot Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 345
              Top = 3
              Width = 74
              Height = 13
              Caption = 'Vlr Desc Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 511
              Top = 3
              Width = 64
              Height = 13
              Caption = 'Vlr Tot. Ped'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 429
              Top = 3
              Width = 45
              Height = 13
              Caption = 'Vlr Desc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 146
              Top = 3
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 592
              Top = 3
              Width = 61
              Height = 13
              Caption = 'Importado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBDateEdit
              Left = 6
              Top = 16
              Width = 86
              Height = 20
              DataField = 'PDVDDEMISSAO'
              DataSource = DSTemplate
              Ctl3D = True
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 0
              YearDigits = dyFour
            end
            object ComboTipo: TRxDBComboBox
              Left = 94
              Top = 16
              Width = 47
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCTIPO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Ped'
                'Or'#231)
              ParentCtl3D = False
              TabOrder = 1
              Values.Strings = (
                'P'
                'O')
            end
            object Combostatus: TRxDBComboBox
              Left = 189
              Top = 16
              Width = 69
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado'
                'Faturado'
                'Orig.Parcial')
              ParentCtl3D = False
              TabOrder = 3
              Values.Strings = (
                'A'
                'E'
                'C'
                'F'
                'P')
            end
            object ComboSerie: TRxDBLookupCombo
              Left = 143
              Top = 16
              Width = 44
              Height = 20
              DropDownCount = 8
              Ctl3D = True
              DataField = 'SERIA5COD'
              DataSource = DSTemplate
              LookupField = 'SERIA5COD'
              LookupDisplay = 'SERIA5COD'
              LookupSource = DSSQLSerie
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 426
              Top = 16
              Width = 80
              Height = 21
              Ctl3D = True
              DataField = 'PDVDN2VLRDESCPROM'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 260
              Top = 16
              Width = 80
              Height = 21
              TabStop = False
              Color = 12572888
              Ctl3D = True
              DataField = 'PDVDN2TOTPROD'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit4: TDBEdit
              Left = 343
              Top = 16
              Width = 80
              Height = 21
              TabStop = False
              Color = 12572888
              Ctl3D = True
              DataField = 'PDVDN2VLRDESC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit5: TDBEdit
              Left = 508
              Top = 16
              Width = 80
              Height = 21
              TabStop = False
              Color = 12572888
              Ctl3D = True
              DataField = 'PDVDN2TOTPED'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object GroupCliente: TGroupBox
              Left = 0
              Top = 38
              Width = 796
              Height = 41
              Align = alBottom
              Caption = ' Cliente '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object BtnCliente: TSpeedButton
                Left = 594
                Top = 14
                Width = 21
                Height = 21
                Hint = 'Acessa Clientes'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                ParentShowHint = False
                ShowHint = True
                OnClick = BtnClienteClick
              end
              object DBEdit6: TDBEdit
                Left = 6
                Top = 15
                Width = 100
                Height = 21
                Ctl3D = True
                DataField = 'CLIEA13ID'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit6Exit
                OnKeyDown = DBEdit6KeyDown
              end
              object ComboClientePedido: TRxDBLookupCombo
                Left = 109
                Top = 15
                Width = 479
                Height = 21
                DropDownCount = 8
                Ctl3D = True
                DataField = 'ClienteLookup'
                DataSource = DSTemplate
                DisplayEmpty = 'Selecione um Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 592
              Top = 16
              Width = 60
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCIMPORTADO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentCtl3D = False
              TabOrder = 8
              Values.Strings = (
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCancelarPedidodeVenda: TMenuItem
      Caption = '&Cancelar Pedido de Venda'
      OnClick = MnCancelarPedidodeVendaClick
    end
    object MnCalcularFinanceiro: TMenuItem
      Caption = '&Calcular Financeiro'
      Visible = False
    end
    object mnGerarOS: TMenuItem
      Caption = 'Gerar OS'
      Visible = False
      OnClick = mnGerarOSClick
    end
    object MnTrrocarVendedoreRotaPadrao: TMenuItem
      Caption = 'Trocar dados padr'#245'es para digita'#231#227'o dos Pedidos'
      OnClick = MnTrrocarVendedoreRotaPadraoClick
    end
    object MnTrocarStatusdoPedidoparaFaturado: TMenuItem
      Caption = 'Trocar Status do Pedido para Faturado'
      OnClick = MnTrocarStatusdoPedidoparaFaturadoClick
    end
    object MnTrocarStatusdoPedidoparaAberto: TMenuItem
      Caption = 'Trocar Status do Pedido para Aberto'
      OnClick = MnTrocarStatusdoPedidoparaAbertoClick
    end
    object MNGerarPedidoParcial: TMenuItem
      Caption = 'Gerar Pedido com Entrega Parcial'
      OnClick = MNGerarPedidoParcialClick
    end
    object MnIgualarSaldoaEntregarcomoSaldoPedido: TMenuItem
      Caption = 'Igualar Saldo a Entregar com o Saldo Pedido'
      OnClick = MnIgualarSaldoaEntregarcomoSaldoPedidoClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImprimirPedidodeVenda1: TMenuItem
      Caption = 'Or'#231'amento / Pedido  Atual'
      OnClick = ImprimirPedidodeVenda1Click
    end
    object MnVisualizarPedidoOrcamentoAtual: TMenuItem
      Caption = 'Visualizar Pedido / Or'#231'amento Atual'
      OnClick = MnVisualizarPedidoOrcamentoAtualClick
    end
    object MnPedidoOramentoemSequencia: TMenuItem
      Caption = 'Pedido / Or'#231'amento em Sequencia'
      OnClick = MnPedidoOramentoemSequenciaClick
    end
    object PedidoOramentocomComposioCabecalho: TMenuItem
      Caption = 'Pedido / Or'#231'amento com Composi'#231#227'o - Com cabe'#231'alho'
    end
    object PedidoOramentocomComposicaoSemcabealho: TMenuItem
      Caption = 'Pedido / Or'#231'amento com Composi'#231#227'o - Sem cabe'#231'alho'
    end
    object OrdemdeServio1: TMenuItem
      Caption = '&Ordem de Servi'#231'o'
      OnClick = OrdemdeServio1Click
    end
    object EtiquetasdeCdigodeBarras1: TMenuItem
      Caption = '&Etiquetas de C'#243'digo de Barras'
      OnClick = EtiquetasdeCdigodeBarras1Click
    end
    object PedidoEspecialPic1: TMenuItem
      Caption = 'Pedido Especial - Pic'
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From PEDIDOVENDA Where (%MFiltro) and (%MSituacao)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSituacao'
        ParamType = ptInput
        Value = '0=0'
      end>
    object SQLTemplatePDVDA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLTemplatePDVDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTRANICOD: TIntegerField
      DisplayLabel = 'Transportadora'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLTemplatePLRCICOD: TIntegerField
      DisplayLabel = 'Plano'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLTemplatePDVDDEMISSAO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplatePDVDN2VLRFRETE: TBCDField
      DisplayLabel = 'Vlr Frete'
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDA30NROPEDCOMP: TStringField
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDA30COMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDCSTATUS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESC: TBCDField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDN2TOTPROD: TBCDField
      DisplayLabel = 'Tot Produtos'
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      Visible = False
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDN2TOTPED: TBCDField
      DisplayLabel = 'Tot. Pedido'
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDTOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVendedorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePDVDN2VLRDESCPROM: TBCDField
      FieldName = 'PDVDN2VLRDESCPROM'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
      Size = 3
    end
    object SQLTemplatePDVDINROTALAO: TIntegerField
      DisplayLabel = 'Nro.Pedido Tal'#227'o'
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLTemplatePDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDDENTREGA: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Entrega'
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateEmpresaLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePDVDN2PERCFAT: TBCDField
      DisplayLabel = '% '#192' Faturar'
      FieldName = 'PDVDN2PERCFAT'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCFAT'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplatePDVDN2PERCOMIS: TBCDField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PDVDN2PERCOMIS'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCOMIS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.PEDIDOVENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.PEDIDOVENDA.ROTAICOD'
    end
    object SQLTemplatePlanoRecebimentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoRecebimentoLookUp'
      LookupDataSet = SQLPlanoRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePDVDCIMPORTADO: TStringField
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.PEDIDOVENDA.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.PEDIDOVENDA.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.PEDIDOVENDA.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLTemplatePDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      Origin = 'DB.PEDIDOVENDA.PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLTemplatePDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      Origin = 'DB.PEDIDOVENDA.PDVDA15NROPEDPALM'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.PEDIDOVENDA.OPESICOD'
    end
    object SQLTemplatePDVDN2VLROUTRASDESP: TBCDField
      FieldName = 'PDVDN2VLROUTRASDESP'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLROUTRASDESP'
      Precision = 15
      Size = 3
    end
    object SQLTemplateClienteLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteLookup'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
  end
  object SQLEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 19
    Top = 312
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 103
    Top = 284
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'Vendedor')
    Macros = <>
    Left = 75
    Top = 284
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
    object SQLVendedorVENDN2COMISV: TBCDField
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object SQLVendedorVENDN2COMISP: TBCDField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
      Precision = 15
      Size = 3
    end
    object SQLVendedorVENDCTIPCOMIS: TStringField
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'DB.VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorVENDCCOMISACRESC: TStringField
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'DB.VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDOR.REGISTRO'
    end
    object SQLVendedorVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA5FISJURID: TStringField
      FieldName = 'VENDA5FISJURID'
      Origin = 'DB.VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA14CGC: TStringField
      FieldName = 'VENDA14CGC'
      Origin = 'DB.VENDEDOR.VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLVendedorVENDA20IE: TStringField
      FieldName = 'VENDA20IE'
      Origin = 'DB.VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLVendedorVENDA11CPF: TStringField
      FieldName = 'VENDA11CPF'
      Origin = 'DB.VENDEDOR.VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLVendedorVENDA10RG: TStringField
      FieldName = 'VENDA10RG'
      Origin = 'DB.VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60CONTATO: TStringField
      FieldName = 'VENDA60CONTATO'
      Origin = 'DB.VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA15FONE1: TStringField
      FieldName = 'VENDA15FONE1'
      Origin = 'DB.VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FONE2: TStringField
      FieldName = 'VENDA15FONE2'
      Origin = 'DB.VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FAX: TStringField
      FieldName = 'VENDA15FAX'
      Origin = 'DB.VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA60END: TStringField
      FieldName = 'VENDA60END'
      Origin = 'DB.VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60BAI: TStringField
      FieldName = 'VENDA60BAI'
      Origin = 'DB.VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60CID: TStringField
      FieldName = 'VENDA60CID'
      Origin = 'DB.VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA2UF: TStringField
      FieldName = 'VENDA2UF'
      Origin = 'DB.VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLVendedorVENDA8CEP: TStringField
      FieldName = 'VENDA8CEP'
      Origin = 'DB.VENDEDOR.VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLVendedorBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA5AGENCIA: TStringField
      FieldName = 'VENDA5AGENCIA'
      Origin = 'DB.VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA10CONTA: TStringField
      FieldName = 'VENDA10CONTA'
      Origin = 'DB.VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60TITULAR: TStringField
      FieldName = 'VENDA60TITULAR'
      Origin = 'DB.VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
      Origin = 'DB.VENDEDOR.VENDDABERTCONTA'
    end
    object SQLVendedorVENDA254OBS: TStringField
      FieldName = 'VENDA254OBS'
      Origin = 'DB.VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLVendedorVENDA30CORE: TStringField
      FieldName = 'VENDA30CORE'
      Origin = 'DB.VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLVendedorVENDA60RAZAOSOCIAL: TStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'DB.VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLVendedorVENDN2PERCFIDEL: TBCDField
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object SQLVendedorVENDN2PERCIRRF: TBCDField
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 47
    Top = 284
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  CLIEA13ID, CLIEA60RAZAOSOC, CLIECTPPRCVENDA '
      'FROM'
      '  CLIENTE'
      'ORDER BY'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 19
    Top = 284
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
    object SQLClienteCLIECTPPRCVENDA: TStringField
      FieldName = 'CLIECTPPRCVENDA'
      Origin = 'DB.CLIENTE.CLIECTPPRCVENDA'
      FixedChar = True
      Size = 1
    end
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'RadioConsultaCodigo.ItemIndex'
      'MemoHistorico.Lines')
    StoredValues = <>
    Left = 448
    Top = 1
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ROTA'
      'Order by ROTAA60NOME')
    Macros = <>
    Left = 1
    Top = 372
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
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 29
    Top = 372
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PlanoRecebimento'
      'Order by PLRCA60DESCR')
    Macros = <>
    Left = 64
    Top = 372
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2TXMULTA: TBCDField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2TXCRED: TBCDField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2PERCDESC: TBCDField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN2PERCENTR: TBCDField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2DESC: TBCDField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoRecebimentoPLRCCIMPDESCRNF: TStringField
      FieldName = 'PLRCCIMPDESCRNF'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCIMPDESCRNF'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN5FATOR: TBCDField
      FieldName = 'PLRCN5FATOR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATOR'
      Precision = 15
      Size = 5
    end
    object SQLPlanoRecebimentoPLRCN5FATORPARC: TBCDField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLPlanoRecebimento: TDataSource
    DataSet = SQLPlanoRecebimento
    Left = 93
    Top = 372
  end
  object ppPedidoVendaPadrao: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppPedidoVendaPadraoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 36
    Top = 496
    Version = '10.06'
    mmColumnWidth = 216000
    DataPipelineName = 'ppBDEPipe'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79375
      mmPrintPosition = 0
      object ppLbEmpresa: TppLabel
        UserName = 'LbEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 6646
        mmLeft = 7673
        mmTop = 8731
        mmWidth = 20066
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 19050
        mmWidth = 11853
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDA13ID'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 161132
        mmTop = 19050
        mmWidth = 38894
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 6879
        mmTop = 32544
        mmWidth = 203465
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 22754
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDEMISSAO'
        DataPipeline = ppBDEPipe
        DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 161132
        mmTop = 22754
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 26458
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDENTREGA'
        DataPipeline = ppBDEPipe
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 161132
        mmTop = 26458
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 27781
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 20373
        mmWidth = 15240
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VendedorLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 20373
        mmWidth = 23707
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 24077
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PlanoRecebimentoLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 24077
        mmWidth = 48683
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 6615
        mmTop = 68527
        mmWidth = 204523
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 34925
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 54504
        mmTop = 35190
        mmWidth = 22013
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'END:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 39952
        mmWidth = 6773
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEnderecoLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 39688
        mmWidth = 99748
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 128323
        mmTop = 39952
        mmWidth = 11853
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCidadeLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 39952
        mmWidth = 65352
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 44450
        mmWidth = 11853
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteBairroLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 44450
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 98425
        mmTop = 44450
        mmWidth = 6773
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCEPLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 107686
        mmTop = 44450
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 44450
        mmWidth = 5080
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEstadoLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 173832
        mmTop = 44450
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 48948
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCGC'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 48948
        mmWidth = 70115
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 163248
        mmTop = 49477
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteFoneLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 173832
        mmTop = 49213
        mmWidth = 36248
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6615
        mmTop = 73819
        mmWidth = 204788
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 69850
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 69850
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17992
        mmTop = 69850
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 190077
        mmTop = 69850
        mmWidth = 15240
        BandType = 0
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 74348
        mmWidth = 216000
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PRODICOD'
              DisplayFormat = '####0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3440
              mmLeft = 7144
              mmTop = 529
              mmWidth = 11642
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN3QUANT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 153744
              mmTop = 529
              mmWidth = 18627
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DescricaoProduto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3440
              mmLeft = 19050
              mmTop = 529
              mmWidth = 96573
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN2VLRUNIT'
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 126419
              mmTop = 529
              mmWidth = 22013
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalItem'
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 189813
              mmTop = 529
              mmWidth = 15240
              BandType = 4
            end
            object LBUnidade: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 116946
              mmTop = 529
              mmWidth = 5292
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppDBText21: TppDBText
              UserName = 'DBText1'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PDVDN2TOTPROD'
              DataPipeline = ppBDEPipe
              DisplayFormat = 'R$ ##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipe'
              mmHeight = 4530
              mmLeft = 172033
              mmTop = 2381
              mmWidth = 33020
              BandType = 7
            end
            object ppLabel20: TppLabel
              UserName = 'Label202'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vlr.Total ===>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4530
              mmLeft = 125180
              mmTop = 2381
              mmWidth = 35560
              BandType = 7
            end
          end
        end
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Obs.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 59002
        mmWidth = 8467
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'PDVDTOBS'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 8731
        mmLeft = 27517
        mmTop = 59002
        mmWidth = 182827
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 134884
        mmTop = 69850
        mmWidth = 13547
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 98425
        mmTop = 49213
        mmWidth = 5080
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteIE'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 107686
        mmTop = 49213
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Comprador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 53975
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDA30COMPRADOR'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 53975
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ROTAICOD'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 27781
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA13ID'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 35190
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 115623
        mmTop = 69850
        mmWidth = 6773
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PDVDA13ID'
      DataPipeline = ppBDEPipe
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipe'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppBDEPipe: TppBDEPipeline
    DataSource = DSTemplate
    OpenDataSource = False
    UserName = 'BDEPipe'
    Left = 21
    Top = 467
    object ppBDEPipeppField1: TppField
      FieldAlias = 'PDVDA13ID'
      FieldName = 'PDVDA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField3: TppField
      FieldAlias = 'PDVDICOD'
      FieldName = 'PDVDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField4: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField5: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField6: TppField
      FieldAlias = 'TRANICOD'
      FieldName = 'TRANICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField7: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField8: TppField
      FieldAlias = 'PDVDDEMISSAO'
      FieldName = 'PDVDDEMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField9: TppField
      FieldAlias = 'PDVDN2VLRFRETE'
      FieldName = 'PDVDN2VLRFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField10: TppField
      FieldAlias = 'PDVDA30NROPEDCOMP'
      FieldName = 'PDVDA30NROPEDCOMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField11: TppField
      FieldAlias = 'PDVDA30COMPRADOR'
      FieldName = 'PDVDA30COMPRADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField12: TppField
      FieldAlias = 'PDVDCTIPO'
      FieldName = 'PDVDCTIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField13: TppField
      FieldAlias = 'PDVDCSTATUS'
      FieldName = 'PDVDCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField14: TppField
      FieldAlias = 'PDVDN2VLRDESC'
      FieldName = 'PDVDN2VLRDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField15: TppField
      FieldAlias = 'PDVDN2TOTPROD'
      FieldName = 'PDVDN2TOTPROD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField16: TppField
      FieldAlias = 'PDVDN2TOTPED'
      FieldName = 'PDVDN2TOTPED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField17: TppField
      FieldAlias = 'PDVDTOBS'
      FieldName = 'PDVDTOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField20: TppField
      FieldAlias = 'TransportadoraLookUp'
      FieldName = 'TransportadoraLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField21: TppField
      FieldAlias = 'VendedorLookUp'
      FieldName = 'VendedorLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField22: TppField
      FieldAlias = 'PDVDN2VLRDESCPROM'
      FieldName = 'PDVDN2VLRDESCPROM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField23: TppField
      FieldAlias = 'PDVDINROTALAO'
      FieldName = 'PDVDINROTALAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField25: TppField
      FieldAlias = 'PDVDCTIPOFRETE'
      FieldName = 'PDVDCTIPOFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField26: TppField
      FieldAlias = 'PDVDDENTREGA'
      FieldName = 'PDVDDENTREGA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField27: TppField
      FieldAlias = 'EmpresaLookUp'
      FieldName = 'EmpresaLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField28: TppField
      FieldAlias = 'PDVDN2PERCFAT'
      FieldName = 'PDVDN2PERCFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField29: TppField
      FieldAlias = 'PDVDN2PERCOMIS'
      FieldName = 'PDVDN2PERCOMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField30: TppField
      FieldAlias = 'USUAA60LOGIN'
      FieldName = 'USUAA60LOGIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField31: TppField
      FieldAlias = 'ROTAICOD'
      FieldName = 'ROTAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField33: TppField
      FieldAlias = 'ClienteLookUp'
      FieldName = 'ClienteLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeppField45: TppField
      FieldAlias = 'PlanoRecebimentoLookUp'
      FieldName = 'PlanoRecebimentoLookUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object SQLPedidoVendaItem: TRxQuery
    OnNewRecord = SQLPedidoVendaItemNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select * From PEDIDOVENDAITEM  '
      'Where'
      'PDVDA13ID = :PDVDA13ID '
      'Order by  PVITIITEM')
    Macros = <>
    Left = 65
    Top = 428
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPedidoVendaItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
      OnChange = SQLPedidoVendaItemPRODICODChange
    end
    object SQLPedidoVendaItemPVITN3QUANT: TBCDField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      OnChange = SQLPedidoVendaItemPVITN3QUANTChange
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2VLRUNIT: TBCDField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      OnChange = SQLPedidoVendaItemPVITN2VLRUNITChange
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = SQLProdutos
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLPedidoVendaItemPVITN2PERCDESC: TBCDField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2VLRDESC: TBCDField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN3QUANTVEND: TBCDField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2PERCCOMIS: TBCDField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoVendaItemPVITN3TOTVENDITEM: TBCDField
      FieldName = 'PVITN3TOTVENDITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3TOTVENDITEM'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
  end
  object DSSQLPedidoVendaItem: TDataSource
    AutoEdit = False
    DataSet = SQLPedidoVendaItem
    Left = 94
    Top = 428
  end
  object SQLProdutos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTO'
      'Order by PRODA60DESCR')
    Macros = <>
    Left = 44
    Top = 344
    object SQLProdutosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutosPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutosPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLProdutos: TDataSource
    DataSet = SQLProdutos
    Left = 72
    Top = 344
  end
  object SQLPedidoItens: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From PEDIDOVENDAITEM '
      'Where PDVDA13ID = :PDVDA13ID ')
    Macros = <>
    Left = 193
    Top = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
  end
  object ppPedidoKrustallos: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppPedidoKrustallosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 68
    Top = 496
    Version = '10.06'
    mmColumnWidth = 139000
    DataPipelineName = 'ppBDEPipe'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 109009
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pic-Nic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7479
        mmLeft = 2117
        mmTop = 6879
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6562
        mmLeft = 51858
        mmTop = 7144
        mmWidth = 17216
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDA13ID'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 6615
        mmLeft = 79375
        mmTop = 7144
        mmWidth = 45773
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '"Lembre-se de expor os produtos aos olhos do consumidor. '#201' lucro' +
          ' certo!"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9313
        mmLeft = 1852
        mmTop = 16933
        mmWidth = 67381
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 43392
        mmWidth = 125000
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 30163
        mmWidth = 16051
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDEMISSAO'
        DataPipeline = ppBDEPipe
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 18521
        mmTop = 30163
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 40481
        mmTop = 30163
        mmWidth = 15522
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDENTREGA'
        DataPipeline = ppBDEPipe
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 56886
        mmTop = 30163
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 77877
        mmTop = 30163
        mmWidth = 9701
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vend.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 35190
        mmWidth = 11818
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VendedorLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 16669
        mmTop = 35190
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 76376
        mmTop = 35190
        mmWidth = 11289
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PlanoRecebimentoLookUp'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 89429
        mmTop = 35190
        mmWidth = 35719
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 98425
        mmWidth = 125000
        BandType = 0
      end
      object LBCli: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 1852
        mmTop = 45508
        mmWidth = 123296
        BandType = 0
      end
      object LBEnd: TppLabel
        UserName = 'LBEnd'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'END:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 54769
        mmWidth = 9172
        BandType = 0
      end
      object LBCidade: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 59002
        mmWidth = 15522
        BandType = 0
      end
      object LBBairro: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 63236
        mmWidth = 15699
        BandType = 0
      end
      object LBCep: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 116417
        mmTop = 63236
        mmWidth = 8467
        BandType = 0
      end
      object LBUF: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 118534
        mmTop = 67469
        mmWidth = 6350
        BandType = 0
      end
      object lbCNPJ: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 67469
        mmWidth = 10407
        BandType = 0
      end
      object LBFone: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 113506
        mmTop = 71702
        mmWidth = 11465
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 103452
        mmWidth = 125000
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 98954
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 12700
        mmTop = 98954
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 23548
        mmTop = 98954
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 109715
        mmTop = 98954
        mmWidth = 15169
        BandType = 0
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 103717
        mmWidth = 216000
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = PipeItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItens'
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText37: TppDBText
              UserName = 'DBText16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PRODICOD'
              DataPipeline = PipeItens
              DisplayFormat = '####0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'MS Reference Sans Serif'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 4657
              mmLeft = 2381
              mmTop = 265
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN3QUANT'
              DataPipeline = PipeItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'MS Reference Sans Serif'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 4657
              mmLeft = 12965
              mmTop = 265
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DescricaoProduto'
              DataPipeline = PipeItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'MS Reference Sans Serif'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 4657
              mmLeft = 23283
              mmTop = 265
              mmWidth = 72496
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN2VLRUNIT'
              DataPipeline = PipeItens
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'MS Reference Sans Serif'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 4657
              mmLeft = 96044
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN3TOTVENDITEM'
              DataPipeline = PipeItens
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'MS Reference Sans Serif'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 4657
              mmLeft = 110861
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
          end
        end
      end
      object LBObs: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Obs.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1588
        mmTop = 79111
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 95865
        mmTop = 98954
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gilberto - Supervisor 8128.6421'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8636
        mmLeft = 83895
        mmTop = 16404
        mmWidth = 36999
        BandType = 0
      end
      object LBIE: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 71702
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Comprador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 1323
        mmTop = 90488
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDA30COMPRADOR'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 23283
        mmTop = 90488
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ROTAICOD'
        DataPipeline = ppBDEPipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipe'
        mmHeight = 4657
        mmLeft = 89429
        mmTop = 30163
        mmWidth = 18521
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = PipeItens
        DisplayFormat = '####0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITN3QUANT'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4763
        mmLeft = 12700
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DescricaoProduto'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4657
        mmLeft = 23548
        mmTop = 265
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITN2VLRUNIT'
        DataPipeline = PipeItens
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4763
        mmLeft = 95515
        mmTop = 265
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITN3TOTVENDITEM'
        DataPipeline = PipeItens
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Reference Sans Serif'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4763
        mmLeft = 110861
        mmTop = 265
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'PDVDA13ID'
      DataPipeline = ppBDEPipe
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipe'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel48: TppLabel
          UserName = 'Label20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Vlr.Total R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'MS Reference Sans Serif'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 72496
          mmTop = 265
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBText42: TppDBText
          UserName = 'DBText201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PDVDN2TOTPROD'
          DataPipeline = ppBDEPipe
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'MS Reference Sans Serif'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipe'
          mmHeight = 4763
          mmLeft = 95515
          mmTop = 265
          mmWidth = 29369
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Serie')
    Macros = <>
    Left = 1
    Top = 400
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 29
    Top = 400
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Transportadora')
    Macros = <>
    Left = 1
    Top = 428
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
  end
  object DSSQLTransportadora: TDataSource
    DataSet = SQLTransportadora
    Left = 29
    Top = 428
  end
  object SQLVeiculo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Veiculo')
    Macros = <>
    Left = 1
    Top = 456
    object SQLVeiculoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.VEICULO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVeiculoVEICA7PLACA: TStringField
      FieldName = 'VEICA7PLACA'
      Origin = 'DB.VEICULO.VEICA7PLACA'
      FixedChar = True
      Size = 7
    end
    object SQLVeiculoVEICA60DESCR: TStringField
      FieldName = 'VEICA60DESCR'
      Origin = 'DB.VEICULO.VEICA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVeiculoVEICA3OMOTORISTA: TStringField
      FieldName = 'VEICA3OMOTORISTA'
      Origin = 'DB.VEICULO.VEICA3OMOTORISTA'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLVeiculo: TDataSource
    DataSet = SQLVeiculo
    Left = 29
    Top = 456
  end
  object SQLNumerarioVista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'V'#39
      'order by NUMEA30DESCR'
      '')
    Macros = <>
    Left = 233
    Top = 474
  end
  object DSSQLNumerarioVista: TDataSource
    DataSet = SQLNumerarioVista
    Left = 261
    Top = 474
  end
  object SQLNumerarioPrazo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'P'#39
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 289
    Top = 474
  end
  object DSSQLNumerarioPrazo: TDataSource
    DataSet = SQLNumerarioPrazo
    Left = 317
    Top = 474
  end
  object DSSQLHistoricoPadrao: TDataSource
    DataSet = SQLHistoricoPadrao
    Left = 373
    Top = 474
  end
  object SQLHistoricoPadrao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM HISTORICOPADRAO'
      'WHERE HTPDCTIPO = '#39'C'#39
      'ORDER BY HTPDA100HISTORICO')
    Macros = <>
    Left = 345
    Top = 474
    object SQLHistoricoPadraoHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.HISTORICOPADRAO.HTPDICOD'
    end
    object SQLHistoricoPadraoHTPDA100HISTORICO: TStringField
      FieldName = 'HTPDA100HISTORICO'
      Origin = 'DB.HISTORICOPADRAO.HTPDA100HISTORICO'
      FixedChar = True
      Size = 100
    end
    object SQLHistoricoPadraoHTPDCTIPO: TStringField
      FieldName = 'HTPDCTIPO'
      Origin = 'DB.HISTORICOPADRAO.HTPDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLHistoricoPadraoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.HISTORICOPADRAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLHistoricoPadraoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.HISTORICOPADRAO.REGISTRO'
    end
  end
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTO'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 409
    Top = 474
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
    object SQLPlanoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoPLRCN2TXJURO: TBCDField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2TXMULTA: TBCDField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2TXCRED: TBCDField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2PERCDESC: TBCDField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPLRCN2PERCENTR: TBCDField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2DESC: TBCDField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoPLRCN2PERCACRESC: TBCDField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
      Precision = 15
      Size = 3
    end
  end
  object SQLPlanoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTOPARCELA'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 437
    Top = 474
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnNewRecord = SQLContasReceberNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      'PDVDA13ID = :PDVDA13ID'
      'order by'
      'CTRCICOD ')
    Macros = <>
    Left = 473
    Top = 473
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      DisplayLabel = 'Conta Cr'#233'dito'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Hist. Padr'#227'o'
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberPLCTA15CODDEBITO: TStringField
      DisplayLabel = 'Conta Debito'
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPortadorLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PortadorLookup'
      LookupDataSet = SQLPortador
      LookupKeyFields = 'PORTICOD'
      LookupResultField = 'PORTA60DESCR'
      KeyFields = 'PORTICOD'
      Size = 60
      Lookup = True
    end
    object SQLContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
    object SQLContasReceberCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO ')
    Macros = <>
    Left = 147
    Top = 474
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PORTADOR'
      'ORDER BY PORTA60DESCR')
    Macros = <>
    Left = 181
    Top = 474
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
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 501
    Top = 473
  end
  object SQLTipoDoc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TipoDocumento'
      'Order by TPDCA60DESCR')
    Macros = <>
    Left = 65
    Top = 400
    object SQLTipoDocTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoDoc: TDataSource
    DataSet = SQLTipoDoc
    Left = 93
    Top = 400
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 209
    Top = 474
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 581
    Top = 474
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    Macros = <>
    Left = 553
    Top = 474
    object SQLParcelasPrazoVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TERMICOD'
    end
    object SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField
      FieldName = 'DATAVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.DATAVENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NROPARCELA'
      DisplayFormat = '000'
    end
    object SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField
      FieldName = 'VALORVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.VALORVENCTO'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempTipoPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoPadrao'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA5TIPO'
      KeyFields = 'NUMEICOD'
      Size = 5
      Lookup = True
    end
  end
  object DSSQLObsNota: TDataSource
    DataSet = SQLObsNota
    Left = 164
    Top = 406
  end
  object SQLObsNota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From OBSNF')
    Macros = <>
    Left = 136
    Top = 406
    object SQLObsNotaOBSNICOD: TIntegerField
      FieldName = 'OBSNICOD'
      Origin = 'DB.OBSNF.OBSNICOD'
    end
    object SQLObsNotaNOFIA50DESC: TStringField
      FieldName = 'NOFIA50DESC'
      Origin = 'DB.OBSNF.NOFIA50DESC'
      Size = 50
    end
    object SQLObsNotaOBSNA255DESC: TMemoField
      FieldName = 'OBSNA255DESC'
      Origin = 'DB.OBSNF.OBSNA255DESC'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 227
    Top = 407
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From CFOP'
      'ORDER BY'
      'CFOPA5COD')
    Macros = <>
    Left = 199
    Top = 407
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      Origin = 'DB.CFOP.CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CFOP.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CFOP.REGISTRO'
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From OperacaoEstoque'
      'Where OPESCORIGEMDESTINO = "C"'
      'Order by OPESA60DESCR')
    Macros = <>
    Left = 263
    Top = 407
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
    object SQLOperacaoEstoqueSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOESTOQUE.REGISTRO'
    end
    object SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField
      FieldName = 'OPESA18CAMPOIMP'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLOperacaoEstoqueOPESCCALCIPI: TStringField
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.OPERACAOESTOQUE.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueACUMICOD: TIntegerField
      FieldName = 'ACUMICOD'
      Origin = 'DB.OPERACAOESTOQUE.ACUMICOD'
    end
    object SQLOperacaoEstoquePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLOperacaoEstoquePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 291
    Top = 407
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 528
    Top = 2
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 567
    Top = 2
  end
  object PipeItens: TppBDEPipeline
    DataSource = DSSQLPedidoVendaItem
    UserName = 'PipeItens'
    Left = 72
    Top = 470
    object PipeItensppField1: TppField
      FieldAlias = 'PDVDA13ID'
      FieldName = 'PDVDA13ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITIITEM'
      FieldName = 'PVITIITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PipeItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipeItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN3QUANT'
      FieldName = 'PVITN3QUANT'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object PipeItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN2VLRUNIT'
      FieldName = 'PVITN2VLRUNIT'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object PipeItensppField6: TppField
      FieldAlias = 'DescricaoProduto'
      FieldName = 'DescricaoProduto'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object PipeItensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN2PERCDESC'
      FieldName = 'PVITN2PERCDESC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object PipeItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN2VLRDESC'
      FieldName = 'PVITN2VLRDESC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object PipeItensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN3QUANTVEND'
      FieldName = 'PVITN3QUANTVEND'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object PipeItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN2PERCCOMIS'
      FieldName = 'PVITN2PERCCOMIS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object PipeItensppField11: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object PipeItensppField12: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object PipeItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PVITN3TOTVENDITEM'
      FieldName = 'PVITN3TOTVENDITEM'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
  end
  object RDprint: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Impressao Pedido'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Setup'
    TitulodoRelatorio = 'Impressao Prevenda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 100
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 103
    Top = 496
  end
end
