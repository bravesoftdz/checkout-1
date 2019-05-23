inherited FormCadastroFrete: TFormCadastroFrete
  Left = 203
  Top = 0
  Caption = 'Cadastro de Fretes'
  ClientHeight = 680
  ClientWidth = 811
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel [0]
    Left = 2
    Top = 11
    Width = 64
    Height = 13
    Caption = 'Remetente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited ScrollBoxFundo: TScrollBox
    Width = 811
    Height = 680
    inherited PanelCabecalho: TPanel
      Width = 809
      inherited PanelNavigator: TPanel
        Width = 809
      end
      inherited Panel2: TPanel
        Width = 809
        inherited Panel3: TPanel
          Left = 457
        end
        inherited Panel1: TPanel
          Width = 809
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 809
      Height = 606
      inherited PanelBarra: TPanel
        Height = 606
        inherited Button2: TRxSpeedButton
          Top = 37
        end
        inherited Button3: TRxSpeedButton
          Top = 60
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button3Click
        end
        object ButtonFinanceiro: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 107
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Financeiro'
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
          OnClick = ButtonFinanceiroClick
        end
        object RxSpeedButton1: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 84
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Inf. Seguro'
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
          OnClick = RxSpeedButton1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 679
        Height = 606
        inherited Panel5: TPanel
          Width = 679
          Height = 606
          inherited PagePrincipal: TPageControl
            Top = 221
            Width = 679
            Height = 385
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              object Splitter1: TSplitter [0]
                Left = 0
                Top = 195
                Width = 671
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Beveled = True
              end
              inherited DBGridLista: TDBGrid
                Width = 671
                Height = 148
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FRETICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETCSTATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETN2VLRTOTAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETN3QTDETOTAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60REMENOME'
                    Width = 169
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60DESTNOME'
                    Width = 170
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60CONSNOME'
                    Width = 159
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETCPAGO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETN2VLR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETN2BASECALCULO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRETN2ICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCA60DESCR'
                    Width = 206
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 671
                inherited PanelBetween: TPanel
                  Width = 277
                end
                inherited PanelEditProcura: TPanel
                  Width = 277
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 461
                Top = 79
                Width = 108
                Height = 42
                Lines.Strings = (
                  'FRETEITEM'
                  'CONTASRECEBER')
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 200
                Width = 671
                Height = 159
                Align = alBottom
                BorderStyle = bsNone
                DataSource = DSSQLItens
                FixedColor = 16767449
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentColor = True
                ParentFont = False
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDblClick = DBGridListaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FRITINOTAFISCAL'
                    Title.Caption = 'Nota'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITICOD'
                    Title.Caption = 'Item'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Width = 284
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODN2VLR'
                    Title.Caption = 'Valor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UNIDICOD'
                    Title.Caption = 'Uni'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITN3QTDE'
                    Title.Caption = 'Qdte'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITA30MARCA'
                    Title.Caption = 'Marca'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Title.Caption = 'Registro'
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object PageControl1: TPageControl
                Left = 0
                Top = 0
                Width = 671
                Height = 359
                ActivePage = TabSheet1
                Align = alClient
                TabIndex = 0
                TabOrder = 0
                object TabSheet1: TTabSheet
                  Caption = 'Remetente'
                  object Label47: TLabel
                    Left = 2
                    Top = 1
                    Width = 74
                    Height = 13
                    Caption = '* Remetente'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label48: TLabel
                    Left = 328
                    Top = -1
                    Width = 109
                    Height = 13
                    Caption = 'Tipo de Documento'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object RxDBComboBox5: TRxDBComboBox
                    Left = 0
                    Top = 14
                    Width = 325
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA1TEMREMETENTE'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      'Com Remetente'
                      'Sem Remetente - Redespacho Intermedi'#225'rio')
                    TabOrder = 0
                    Values.Strings = (
                      'C'
                      'S')
                  end
                  object RxDBComboBox6: TRxDBComboBox
                    Left = 328
                    Top = 13
                    Width = 325
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA1TIPODOC'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      '0 - Nota Fiscal'
                      '1 - Nota Fiscal Eletr'#244'nica'
                      '2 - Outros Documentos')
                    TabOrder = 1
                    Values.Strings = (
                      '0'
                      '1'
                      '2')
                  end
                  object Panel6: TPanel
                    Left = 0
                    Top = 56
                    Width = 661
                    Height = 229
                    ParentColor = True
                    TabOrder = 2
                    object Label9: TLabel
                      Left = 5
                      Top = 7
                      Width = 64
                      Height = 13
                      Caption = 'Remetente'
                      FocusControl = DBEdit9
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label12: TLabel
                      Left = 5
                      Top = 54
                      Width = 85
                      Height = 13
                      Caption = 'Local de Coleta'
                      FocusControl = DBEdit9
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object ButtonCadastroRemetente: TSpeedButton
                      Left = 106
                      Top = 23
                      Width = 24
                      Height = 23
                      Hint = 'Acessa Cadastro de Clientes'
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
                      OnClick = ButtonCadastroRemetenteClick
                    end
                    object Label29: TLabel
                      Left = 232
                      Top = 94
                      Width = 14
                      Height = 13
                      Caption = 'IE '
                      FocusControl = DBEdit28
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label32: TLabel
                      Left = 380
                      Top = 134
                      Width = 14
                      Height = 13
                      Caption = 'UF'
                      FocusControl = DBEdit31
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label27: TLabel
                      Left = 4
                      Top = 95
                      Width = 30
                      Height = 13
                      Caption = 'CNPJ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label31: TLabel
                      Left = 4
                      Top = 135
                      Width = 38
                      Height = 13
                      Caption = 'Cidade'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit9: TDBEdit
                      Left = 5
                      Top = 23
                      Width = 100
                      Height = 21
                      DataField = 'CLIEA13IDREMETE'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnExit = DBEdit9Exit
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit12: TDBEdit
                      Left = 5
                      Top = 70
                      Width = 548
                      Height = 21
                      TabStop = False
                      Color = 14737632
                      DataField = 'CLIEA60ENDCOLETA'
                      DataSource = DSTemplate
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object DBEdit14: TDBEdit
                      Left = 131
                      Top = 23
                      Width = 520
                      Height = 21
                      TabStop = False
                      Color = 14737632
                      DataField = 'CLIEA60REMENOME'
                      DataSource = DSTemplate
                      ReadOnly = True
                      TabOrder = 2
                    end
                    object DBEdit27: TDBEdit
                      Left = 4
                      Top = 111
                      Width = 223
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA14REMECGC'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 3
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit28: TDBEdit
                      Left = 232
                      Top = 110
                      Width = 172
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA20IEREM'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 4
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit30: TDBEdit
                      Left = 4
                      Top = 151
                      Width = 372
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA60REMECID'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 5
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit31: TDBEdit
                      Left = 380
                      Top = 150
                      Width = 23
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA2REMEUF'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 6
                      OnKeyDown = DBEdit9KeyDown
                    end
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'Destinat'#225'rio'
                  ImageIndex = 1
                  object Label51: TLabel
                    Left = 0
                    Top = 11
                    Width = 80
                    Height = 13
                    Caption = '* Destinat'#225'rio'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object PageControl2: TPageControl
                    Left = 0
                    Top = 56
                    Width = 657
                    Height = 253
                    ActivePage = TabSheet8
                    TabIndex = 0
                    TabOrder = 1
                    object TabSheet8: TTabSheet
                      Caption = 'Destinat'#225'rio'
                      object Label10: TLabel
                        Left = 4
                        Top = 11
                        Width = 70
                        Height = 13
                        Caption = 'Destinat'#225'rio'
                        FocusControl = DBEdit10
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label13: TLabel
                        Left = 4
                        Top = 59
                        Width = 93
                        Height = 13
                        Caption = 'Local de Entrega'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object ButtonCadastroDestinatario: TSpeedButton
                        Left = 105
                        Top = 27
                        Width = 24
                        Height = 23
                        Hint = 'Acessa Cadastro de Clientes'
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
                        OnClick = ButtonCadastroDestinatarioClick
                      end
                      object Label33: TLabel
                        Left = 4
                        Top = 99
                        Width = 30
                        Height = 13
                        Caption = 'CNPJ '
                        FocusControl = DBEdit32
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label34: TLabel
                        Left = 232
                        Top = 98
                        Width = 14
                        Height = 13
                        Caption = 'IE '
                        FocusControl = DBEdit33
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label35: TLabel
                        Left = 4
                        Top = 139
                        Width = 38
                        Height = 13
                        Caption = 'Cidade'
                        FocusControl = DBEdit34
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label36: TLabel
                        Left = 316
                        Top = 139
                        Width = 14
                        Height = 13
                        Caption = 'UF'
                        FocusControl = DBEdit35
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit10: TDBEdit
                        Left = 4
                        Top = 27
                        Width = 100
                        Height = 21
                        DataField = 'CLIEA13IDDESTINO'
                        DataSource = DSTemplate
                        TabOrder = 0
                        OnExit = DBEdit10Exit
                        OnKeyDown = DBEdit10KeyDown
                      end
                      object DBEdit13: TDBEdit
                        Left = 4
                        Top = 75
                        Width = 569
                        Height = 21
                        TabStop = False
                        Color = 14737632
                        DataField = 'CLIEA60ENDENTREGA'
                        DataSource = DSTemplate
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object DBEdit15: TDBEdit
                        Left = 128
                        Top = 27
                        Width = 521
                        Height = 21
                        TabStop = False
                        Color = 14737632
                        DataField = 'CLIEA60DESTNOME'
                        DataSource = DSTemplate
                        ReadOnly = True
                        TabOrder = 2
                      end
                      object DBEdit32: TDBEdit
                        Left = 4
                        Top = 115
                        Width = 223
                        Height = 21
                        Color = 14737632
                        DataField = 'CLIEA14DESTCGC'
                        DataSource = DSTemplate
                        Enabled = False
                        TabOrder = 3
                        OnKeyDown = DBEdit9KeyDown
                      end
                      object DBEdit33: TDBEdit
                        Left = 232
                        Top = 114
                        Width = 107
                        Height = 21
                        Color = 14737632
                        DataField = 'CLIEA20IEDEST'
                        DataSource = DSTemplate
                        Enabled = False
                        TabOrder = 4
                        OnKeyDown = DBEdit9KeyDown
                      end
                      object DBEdit34: TDBEdit
                        Left = 4
                        Top = 155
                        Width = 307
                        Height = 21
                        Color = 14737632
                        DataField = 'CLIEADESTCIDADE'
                        DataSource = DSTemplate
                        Enabled = False
                        TabOrder = 5
                        OnKeyDown = DBEdit9KeyDown
                      end
                      object DBEdit35: TDBEdit
                        Left = 316
                        Top = 155
                        Width = 23
                        Height = 21
                        Color = 14737632
                        DataField = 'CLIEA2DESTUF'
                        DataSource = DSTemplate
                        Enabled = False
                        TabOrder = 6
                        OnKeyDown = DBEdit9KeyDown
                      end
                    end
                    object TabSheet9: TTabSheet
                      Caption = 'Local de Entrega Diferente do Endere'#231'o do Destinat'#225'rio'
                      ImageIndex = 1
                      object CheckBox1: TCheckBox
                        Left = 1
                        Top = 8
                        Width = 433
                        Height = 17
                        Caption = 'O local de Entrega '#233' diferente do Endere'#231'o do Destinat'#225'rio'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = 8404992
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 0
                        OnClick = CheckBox1Click
                      end
                      object Panel4: TPanel
                        Left = 0
                        Top = 29
                        Width = 649
                        Height = 183
                        BevelInner = bvRaised
                        BevelOuter = bvLowered
                        Color = 12572888
                        TabOrder = 1
                        object Label52: TLabel
                          Left = 4
                          Top = 4
                          Width = 51
                          Height = 13
                          Caption = 'Tipo Doc.'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label53: TLabel
                          Left = 82
                          Top = 4
                          Width = 59
                          Height = 13
                          Caption = 'CNPJ / CPF'
                          FocusControl = DBEdit45
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label54: TLabel
                          Left = 4
                          Top = 44
                          Width = 115
                          Height = 13
                          Caption = 'Nome / Raz'#227'o Social'
                          FocusControl = DBEdit46
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label55: TLabel
                          Left = 4
                          Top = 93
                          Width = 116
                          Height = 13
                          Caption = 'Endere'#231'o de Entrega'
                          FocusControl = DBEdit47
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label56: TLabel
                          Left = 441
                          Top = 93
                          Width = 34
                          Height = 13
                          Caption = 'Bairro'
                          FocusControl = DBEdit48
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label57: TLabel
                          Left = 4
                          Top = 137
                          Width = 38
                          Height = 13
                          Caption = 'Cidade'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label58: TLabel
                          Left = 441
                          Top = 135
                          Width = 68
                          Height = 13
                          Caption = 'Cod. Cidade '
                          FocusControl = DBEdit50
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label59: TLabel
                          Left = 399
                          Top = 136
                          Width = 14
                          Height = 13
                          Caption = 'UF'
                          FocusControl = DBEdit51
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object Label69: TLabel
                          Left = 399
                          Top = 93
                          Width = 13
                          Height = 13
                          Caption = 'N'#186
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = 8404992
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object DBEdit45: TDBEdit
                          Left = 82
                          Top = 20
                          Width = 186
                          Height = 21
                          DataField = 'FRETA14ENTREGADOC'
                          DataSource = DSTemplate
                          TabOrder = 1
                        end
                        object DBEdit46: TDBEdit
                          Left = 4
                          Top = 60
                          Width = 637
                          Height = 21
                          DataField = 'FRETA60ENTREGARAZAOSOC'
                          DataSource = DSTemplate
                          TabOrder = 2
                        end
                        object DBEdit47: TDBEdit
                          Left = 4
                          Top = 109
                          Width = 388
                          Height = 21
                          DataField = 'FRETA60ENTREGAEND'
                          DataSource = DSTemplate
                          TabOrder = 3
                        end
                        object DBEdit48: TDBEdit
                          Left = 441
                          Top = 109
                          Width = 197
                          Height = 21
                          DataField = 'FRETA40ENTREGABAIRRO'
                          DataSource = DSTemplate
                          TabOrder = 5
                        end
                        object DBEdit50: TDBEdit
                          Left = 441
                          Top = 151
                          Width = 134
                          Height = 21
                          DataField = 'FRETIENTREGACODCID'
                          DataSource = DSTemplate
                          TabOrder = 8
                        end
                        object DBEdit51: TDBEdit
                          Left = 399
                          Top = 152
                          Width = 38
                          Height = 21
                          DataField = 'FRETA2ENTREGAUF'
                          DataSource = DSTemplate
                          TabOrder = 7
                        end
                        object RxDBComboBox10: TRxDBComboBox
                          Left = 4
                          Top = 20
                          Width = 74
                          Height = 21
                          Style = csDropDownList
                          DataField = 'FRETA1ENTREGATIPODOC'
                          DataSource = DSTemplate
                          EnableValues = True
                          ItemHeight = 13
                          Items.Strings = (
                            '0 - CPF'
                            '1 - CNPJ')
                          TabOrder = 0
                          Values.Strings = (
                            '0'
                            '1')
                        end
                        object DBComboBox1: TDBComboBox
                          Left = 4
                          Top = 152
                          Width = 390
                          Height = 21
                          CharCase = ecUpperCase
                          DataField = 'FRETA60ENTREGACID'
                          DataSource = DSTemplate
                          ItemHeight = 13
                          TabOrder = 6
                          OnEnter = DBComboBox1Enter
                          OnExit = DBComboBox1Exit
                        end
                        object DBEdit1: TDBEdit
                          Left = 399
                          Top = 109
                          Width = 38
                          Height = 21
                          DataField = 'FRETIENTREGANRO'
                          DataSource = DSTemplate
                          TabOrder = 4
                        end
                      end
                    end
                  end
                  object RxDBComboBox14: TRxDBComboBox
                    Left = 4
                    Top = 28
                    Width = 325
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA1TEMDESTINATARIO'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      'Com Destinat'#225'rio'
                      'Sem Destinat'#225'rio - Redespacho Intermedi'#225'rio')
                    TabOrder = 0
                    Values.Strings = (
                      'C'
                      'S')
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Expedidor'
                  ImageIndex = 2
                  object Label49: TLabel
                    Left = 0
                    Top = 11
                    Width = 66
                    Height = 13
                    Caption = '* Expedidor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object RxDBComboBox7: TRxDBComboBox
                    Left = 2
                    Top = 24
                    Width = 325
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA1TEMEXPEDIDOR'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      'Com Expedidor'
                      'Sem Expedidor')
                    TabOrder = 0
                    Values.Strings = (
                      'C'
                      'S')
                    OnExit = RxDBComboBox7Exit
                  end
                  object Panel9: TPanel
                    Left = 0
                    Top = 52
                    Width = 665
                    Height = 229
                    Color = 12572888
                    TabOrder = 1
                    object Label11: TLabel
                      Left = 4
                      Top = 7
                      Width = 56
                      Height = 13
                      Caption = 'Expedidor'
                      FocusControl = DBEdit11
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object ButtonCadastroConsignatario: TSpeedButton
                      Left = 105
                      Top = 23
                      Width = 24
                      Height = 23
                      Hint = 'Acessa Cadastro de Clientes'
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
                      OnClick = ButtonCadastroConsignatarioClick
                    end
                    object Label37: TLabel
                      Left = 4
                      Top = 51
                      Width = 30
                      Height = 13
                      Caption = 'CNPJ '
                      FocusControl = DBEdit21
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label38: TLabel
                      Left = 232
                      Top = 50
                      Width = 14
                      Height = 13
                      Caption = 'IE '
                      FocusControl = DBEdit36
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label39: TLabel
                      Left = 4
                      Top = 91
                      Width = 38
                      Height = 13
                      Caption = 'Cidade'
                      FocusControl = DBEdit37
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label41: TLabel
                      Left = 316
                      Top = 91
                      Width = 14
                      Height = 13
                      Caption = 'UF'
                      FocusControl = DBEdit38
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit11: TDBEdit
                      Left = 4
                      Top = 23
                      Width = 100
                      Height = 21
                      DataField = 'CLIEA13IDCONSIG'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit11KeyDown
                    end
                    object DBEdit16: TDBEdit
                      Left = 130
                      Top = 23
                      Width = 521
                      Height = 21
                      TabStop = False
                      Color = 14737632
                      DataField = 'CLIEA60CONSNOME'
                      DataSource = DSTemplate
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object DBEdit21: TDBEdit
                      Left = 4
                      Top = 67
                      Width = 223
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA14CONSCGC'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 2
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit36: TDBEdit
                      Left = 232
                      Top = 66
                      Width = 107
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA20IECONS'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 3
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit37: TDBEdit
                      Left = 4
                      Top = 107
                      Width = 307
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA60CONSCIDADE'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 4
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit38: TDBEdit
                      Left = 316
                      Top = 107
                      Width = 23
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA2CONSUF'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 5
                      OnKeyDown = DBEdit9KeyDown
                    end
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Recebedor'
                  ImageIndex = 3
                  object Label50: TLabel
                    Left = 0
                    Top = 11
                    Width = 71
                    Height = 13
                    Caption = '* Recebedor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object RxDBComboBox8: TRxDBComboBox
                    Left = 0
                    Top = 24
                    Width = 325
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA1TEMRECEBEDOR'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      'Com Recebedor'
                      'Sem Recebedor')
                    TabOrder = 0
                    Values.Strings = (
                      'C'
                      'S')
                    OnExit = RxDBComboBox8Exit
                  end
                  object Panel10: TPanel
                    Left = 0
                    Top = 56
                    Width = 665
                    Height = 229
                    Color = 12572888
                    TabOrder = 1
                    object Label42: TLabel
                      Left = 4
                      Top = 7
                      Width = 56
                      Height = 13
                      Caption = 'Expedidor'
                      FocusControl = DBEdit29
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton1: TSpeedButton
                      Left = 105
                      Top = 23
                      Width = 24
                      Height = 23
                      Hint = 'Acessa Cadastro de Clientes'
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
                      OnClick = SpeedButton1Click
                    end
                    object Label43: TLabel
                      Left = 4
                      Top = 51
                      Width = 30
                      Height = 13
                      Caption = 'CNPJ '
                      FocusControl = DBEdit40
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label44: TLabel
                      Left = 232
                      Top = 50
                      Width = 14
                      Height = 13
                      Caption = 'IE '
                      FocusControl = DBEdit41
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label45: TLabel
                      Left = 4
                      Top = 91
                      Width = 38
                      Height = 13
                      Caption = 'Cidade'
                      FocusControl = DBEdit42
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label46: TLabel
                      Left = 316
                      Top = 91
                      Width = 14
                      Height = 13
                      Caption = 'UF'
                      FocusControl = DBEdit43
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit29: TDBEdit
                      Left = 4
                      Top = 23
                      Width = 100
                      Height = 21
                      DataField = 'CLIEA13IDRECEBEDOR'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit11KeyDown
                    end
                    object DBEdit39: TDBEdit
                      Left = 130
                      Top = 23
                      Width = 521
                      Height = 21
                      TabStop = False
                      Color = 14737632
                      DataField = 'CLIEA60RECEBEDORNOME'
                      DataSource = DSTemplate
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object DBEdit40: TDBEdit
                      Left = 4
                      Top = 67
                      Width = 223
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA14RECEBCGC'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 2
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit41: TDBEdit
                      Left = 232
                      Top = 66
                      Width = 107
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA20IERECEBEDOR'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 3
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit42: TDBEdit
                      Left = 4
                      Top = 107
                      Width = 307
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA60RECEBCIDADE'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 4
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit43: TDBEdit
                      Left = 316
                      Top = 107
                      Width = 23
                      Height = 21
                      Color = 14737632
                      DataField = 'CLIEA2RECEBUF'
                      DataSource = DSTemplate
                      Enabled = False
                      TabOrder = 5
                      OnKeyDown = DBEdit9KeyDown
                    end
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'Valores e Impostos'
                  ImageIndex = 4
                  object Label4: TLabel
                    Left = 6
                    Top = 15
                    Width = 62
                    Height = 13
                    Caption = 'Valor Frete'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 104
                    Top = 15
                    Width = 94
                    Height = 13
                    Caption = 'Valor Total Frete'
                    FocusControl = DBEdit5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label6: TLabel
                    Left = 5
                    Top = 59
                    Width = 71
                    Height = 13
                    Caption = 'Qtd Volumes'
                    FocusControl = DBEdit6
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 202
                    Top = 175
                    Width = 87
                    Height = 13
                    Caption = 'Base de C'#225'lculo'
                    FocusControl = DBEdit7
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label8: TLabel
                    Left = 301
                    Top = 175
                    Width = 29
                    Height = 13
                    Caption = 'ICMS'
                    FocusControl = DBEdit8
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label17: TLabel
                    Left = 203
                    Top = 15
                    Width = 54
                    Height = 13
                    Caption = 'Comiss'#227'o'
                    FocusControl = DBEdit24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label60: TLabel
                    Left = 380
                    Top = 175
                    Width = 56
                    Height = 13
                    Caption = 'Aliq. ICMS'
                    FocusControl = DBEdit44
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label61: TLabel
                    Left = 5
                    Top = 175
                    Width = 135
                    Height = 13
                    Caption = 'C'#243'd. Situa'#231#227'o Tribut'#225'ria'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label62: TLabel
                    Left = 441
                    Top = 174
                    Width = 74
                    Height = 13
                    Caption = '% Red. Base '
                    FocusControl = DBEdit53
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label63: TLabel
                    Left = 5
                    Top = 212
                    Width = 188
                    Height = 13
                    Caption = 'R$ Cr'#233'dito Outorgado/Presumido'
                    FocusControl = DBEdit54
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label64: TLabel
                    Left = 5
                    Top = 96
                    Width = 131
                    Height = 13
                    Caption = 'R$ Total da Mercadoria'
                    FocusControl = DBEdit55
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label65: TLabel
                    Left = 203
                    Top = 96
                    Width = 128
                    Height = 13
                    Caption = 'Produto Predominante'
                    FocusControl = DBEdit56
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label66: TLabel
                    Left = 105
                    Top = 58
                    Width = 107
                    Height = 13
                    Caption = 'Unidade de Medida'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label67: TLabel
                    Left = 315
                    Top = 59
                    Width = 85
                    Height = 13
                    Caption = 'Tipo da Medida'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label76: TLabel
                    Left = 4
                    Top = 136
                    Width = 179
                    Height = 13
                    Caption = 'Outras Caracteristicas da Carga'
                    FocusControl = DBEdit59
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit4: TDBEdit
                    Left = 4
                    Top = 28
                    Width = 98
                    Height = 21
                    DataField = 'FRETN2VLR'
                    DataSource = DSTemplate
                    TabOrder = 0
                  end
                  object DBEdit5: TDBEdit
                    Left = 104
                    Top = 28
                    Width = 93
                    Height = 21
                    DataField = 'FRETN2VLRTOTAL'
                    DataSource = DSTemplate
                    TabOrder = 1
                  end
                  object DBEdit6: TDBEdit
                    Left = 5
                    Top = 72
                    Width = 95
                    Height = 21
                    DataField = 'FRETN3QTDETOTAL'
                    DataSource = DSTemplate
                    TabOrder = 3
                  end
                  object DBEdit7: TDBEdit
                    Left = 202
                    Top = 188
                    Width = 96
                    Height = 21
                    DataField = 'FRETN2BASECALCULO'
                    DataSource = DSTemplate
                    TabOrder = 10
                  end
                  object DBEdit8: TDBEdit
                    Left = 300
                    Top = 188
                    Width = 77
                    Height = 21
                    DataField = 'FRETN2ICMS'
                    DataSource = DSTemplate
                    TabOrder = 11
                  end
                  object DBEdit24: TDBEdit
                    Left = 201
                    Top = 28
                    Width = 112
                    Height = 21
                    DataField = 'FRETN2VLRCOMISSAO'
                    DataSource = DSTemplate
                    TabOrder = 2
                  end
                  object DBEdit44: TDBEdit
                    Left = 380
                    Top = 188
                    Width = 57
                    Height = 21
                    DataField = 'FRETN2ALIQUOTA'
                    DataSource = DSTemplate
                    TabOrder = 12
                  end
                  object DBEdit53: TDBEdit
                    Left = 440
                    Top = 187
                    Width = 89
                    Height = 21
                    DataField = 'FRETN2PERCREDUZ'
                    DataSource = DSTemplate
                    TabOrder = 13
                  end
                  object DBEdit54: TDBEdit
                    Left = 5
                    Top = 225
                    Width = 193
                    Height = 21
                    DataField = 'FRETN2CREDITO'
                    DataSource = DSTemplate
                    TabOrder = 14
                  end
                  object DBEdit55: TDBEdit
                    Left = 4
                    Top = 109
                    Width = 195
                    Height = 21
                    DataField = 'FRETN2TOTALMERC'
                    DataSource = DSTemplate
                    TabOrder = 6
                  end
                  object DBEdit56: TDBEdit
                    Left = 203
                    Top = 109
                    Width = 326
                    Height = 21
                    DataField = 'FRETA60PRODPREDOMINA'
                    DataSource = DSTemplate
                    TabOrder = 7
                  end
                  object RxDBComboBox11: TRxDBComboBox
                    Left = 103
                    Top = 72
                    Width = 212
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA2CODUNIDADE'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      '00 - Metro C'#250'bico'
                      '01 - Kilograma'
                      '02 - Toneladas'
                      '03 - Unidade'
                      '04 - Litros')
                    TabOrder = 4
                    Values.Strings = (
                      '00'
                      '01'
                      '02'
                      '03'
                      '04')
                  end
                  object RxDBComboBox12: TRxDBComboBox
                    Left = 317
                    Top = 72
                    Width = 212
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA20TIPOMEDIDA'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      'Peso Bruto'
                      'Peso Declarado'
                      'Peso Cubado'
                      'Peso Aforado'
                      'Peso Aferido'
                      'Peso Base de C'#225'lc.'
                      'Litragem'
                      'Caixas'
                      'Sacos'
                      'Outros')
                    TabOrder = 5
                    Values.Strings = (
                      'Peso Bruto'
                      'Peso Declarado'
                      'Peso Cubado'
                      'Peso Aforado'
                      'Peso Aferido'
                      'Peso Base de C'#225'lc.'
                      'Litragem'
                      'Caixas'
                      'Sacos'
                      'Outros')
                  end
                  object RxDBComboBox13: TRxDBComboBox
                    Left = 5
                    Top = 188
                    Width = 196
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FRETA2CST'
                    DataSource = DSTemplate
                    EnableValues = True
                    ItemHeight = 13
                    Items.Strings = (
                      '00 - ICMS NORMAL'
                      '20 - BASE DE C'#193'LCULO REDUZIDA'
                      '40 - ICMS ISENTO'
                      '41 - N'#195'O TRIBUTADO'
                      '51 - DIFERIDO'
                      '80 - ICMS ATRIBUIDO AO TOMADOR/TERCEIROS'
                      '81 - ICMS DEVIDO PARA OUTRAS UF'
                      '90 - ICMS OUTRAS SITUA'#199#213'ES')
                    TabOrder = 9
                    Values.Strings = (
                      '00'
                      '20'
                      '40'
                      '41'
                      '51'
                      '80'
                      '81'
                      '90')
                  end
                  object DBEdit59: TDBEdit
                    Left = 4
                    Top = 149
                    Width = 525
                    Height = 21
                    DataField = 'FRETA60OUTRASCARACT'
                    DataSource = DSTemplate
                    TabOrder = 8
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Observa'#231#245'es'
                  ImageIndex = 6
                  object Label1: TLabel
                    Left = 6
                    Top = 7
                    Width = 27
                    Height = 13
                    Caption = 'Obs.:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label15: TLabel
                    Left = 4
                    Top = 116
                    Width = 65
                    Height = 13
                    Caption = 'Funcion'#225'rio'
                    FocusControl = DBEdit19
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ButtonCadastroFuncionario: TSpeedButton
                    Left = 105
                    Top = 131
                    Width = 24
                    Height = 23
                    Hint = 'Acessa Cadastro de Clientes'
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
                    OnClick = ButtonCadastroFuncionarioClick
                  end
                  object Label16: TLabel
                    Left = 4
                    Top = 156
                    Width = 40
                    Height = 13
                    Caption = 'Ve'#237'culo'
                    FocusControl = DBEdit22
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ButtonCadastroVeiculo: TSpeedButton
                    Left = 105
                    Top = 171
                    Width = 24
                    Height = 23
                    Hint = 'Acessa Cadastro de Ve'#237'culos'
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
                    OnClick = ButtonCadastroVeiculoClick
                  end
                  object DBEdit19: TDBEdit
                    Left = 4
                    Top = 132
                    Width = 100
                    Height = 21
                    DataField = 'FUNCA13ID'
                    DataSource = DSTemplate
                    TabOrder = 1
                    OnKeyDown = DBEdit19KeyDown
                  end
                  object DBEdit20: TDBEdit
                    Left = 130
                    Top = 132
                    Width = 520
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'FUNCA60NOME'
                    DataSource = DSTemplate
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object DBEdit22: TDBEdit
                    Left = 4
                    Top = 172
                    Width = 100
                    Height = 21
                    DataField = 'VEICA13ID'
                    DataSource = DSTemplate
                    TabOrder = 3
                    OnKeyDown = DBEdit22KeyDown
                  end
                  object DBEdit23: TDBEdit
                    Left = 130
                    Top = 172
                    Width = 520
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'VEICA60DESCR'
                    DataSource = DSTemplate
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object DBMemo1: TDBMemo
                    Left = 4
                    Top = 24
                    Width = 649
                    Height = 89
                    DataField = 'FRETTOBS'
                    DataSource = DSTemplate
                    TabOrder = 0
                  end
                end
              end
            end
            object TabSheetFinanceiro: TTabSheet
              ImageIndex = 2
              object PanelPlano: TPanel
                Left = 0
                Top = 0
                Width = 671
                Height = 79
                Align = alTop
                Color = 12572888
                TabOrder = 0
                object Label2: TLabel
                  Left = 2
                  Top = -1
                  Width = 90
                  Height = 13
                  Caption = 'Plano de Contas'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 2
                  Top = 37
                  Width = 87
                  Height = 13
                  Caption = 'Plano de Pagto.'
                  FocusControl = DBEdit3
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ButtonCadastroPlanoConta: TSpeedButton
                  Left = 104
                  Top = 15
                  Width = 23
                  Height = 23
                  Hint = 'Acessa Cadastro de Plano de Contas'
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
                end
                object ButtonCadastroPlanoPagto: TSpeedButton
                  Left = 103
                  Top = 53
                  Width = 24
                  Height = 23
                  Hint = 'Acessa Cadastro de Plano de Pagamento'
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
                  OnClick = ButtonCadastroPlanoPagtoClick
                end
                object DBEdit2: TDBEdit
                  Left = 2
                  Top = 15
                  Width = 100
                  Height = 21
                  DataField = 'PLCTA15COD'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit3: TDBEdit
                  Left = 2
                  Top = 53
                  Width = 100
                  Height = 21
                  DataField = 'PLRCICOD'
                  DataSource = DSTemplate
                  TabOrder = 1
                  OnKeyDown = DBEdit3KeyDown
                end
                object DBEdit17: TDBEdit
                  Left = 129
                  Top = 53
                  Width = 495
                  Height = 21
                  TabStop = False
                  Color = 14737632
                  DataField = 'PLRCA60DESCR'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit18: TDBEdit
                  Left = 129
                  Top = 15
                  Width = 495
                  Height = 21
                  TabStop = False
                  Color = 14737632
                  DataField = 'PLCTA60DESCR'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 3
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 79
                Width = 671
                Height = 280
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Panel8: TPanel
                  Left = 1
                  Top = 47
                  Width = 669
                  Height = 232
                  Align = alClient
                  Caption = 'Panel8'
                  ParentColor = True
                  TabOrder = 0
                  object DBGrid2: TDBGrid
                    Left = 1
                    Top = 1
                    Width = 667
                    Height = 229
                    Align = alClient
                    BorderStyle = bsNone
                    DataSource = DSSQLParcelasPrazoVendaTemp
                    FixedColor = 16767449
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentColor = True
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NROPARCELA'
                        Title.Caption = 'Parcela'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATAVENCTO'
                        Title.Caption = 'Vencimento'
                        Width = 109
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VALORVENCTO'
                        Title.Caption = 'Valor'
                        Width = 108
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NumerarioLookup'
                        Width = 334
                        Visible = True
                      end>
                  end
                end
                object Panel11: TPanel
                  Left = 1
                  Top = 1
                  Width = 669
                  Height = 46
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = '  Dados das Parcelas'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object Label40: TLabel
                    Left = 414
                    Top = 5
                    Width = 104
                    Height = 13
                    Caption = 'Numer'#225'rio '#224' Prazo'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label28: TLabel
                    Left = 185
                    Top = 6
                    Width = 100
                    Height = 13
                    Caption = 'Numer'#225'rio '#224' Vista'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ComboNumerarioPrazo: TRxDBLookupCombo
                    Left = 411
                    Top = 18
                    Width = 211
                    Height = 20
                    DropDownCount = 8
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'NUMEICOD'
                    LookupDisplay = 'NUMEA30DESCR'
                    LookupSource = DSSQLNumerarioPrazo
                    ParentFont = False
                    TabOrder = 0
                    OnChange = ComboNumerarioPrazoChange
                  end
                  object ComboNumerarioVista: TRxDBLookupCombo
                    Left = 182
                    Top = 19
                    Width = 226
                    Height = 20
                    DropDownCount = 8
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    LookupField = 'NUMEICOD'
                    LookupDisplay = 'NUMEA30DESCR'
                    LookupSource = DSSQLNumerarioVista
                    ParentFont = False
                    TabOrder = 1
                    OnChange = ComboNumerarioVistaChange
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 213
            Width = 679
            Height = 8
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 679
            Height = 213
            object Label14: TLabel
              Left = 426
              Top = 118
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
            object Label18: TLabel
              Left = 8
              Top = 47
              Width = 28
              Height = 13
              Caption = 'CFOP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 8
              Top = 5
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
            object Label20: TLabel
              Left = 8
              Top = 83
              Width = 125
              Height = 13
              Caption = 'Tipo do Conhecimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 209
              Top = 81
              Width = 222
              Height = 13
              Caption = 'Chave de  Acesso do CT-e Referenciado'
              FocusControl = DBEdit25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 8
              Top = 118
              Width = 86
              Height = 13
              Caption = 'Tipo do Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 209
              Top = 118
              Width = 113
              Height = 13
              Caption = 'Tomador do Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 104
              Top = 5
              Width = 97
              Height = 13
              Caption = 'N'#186' Conhecimento'
              FocusControl = DBEdit26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 211
              Top = 5
              Width = 76
              Height = 13
              Caption = 'Data Emiss'#227'o'
              FocusControl = DBEdit26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 573
              Top = 118
              Width = 61
              Height = 13
              Caption = 'Frete Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label68: TLabel
              Left = 351
              Top = 5
              Width = 76
              Height = 13
              Caption = 'Prev. Entrega'
              FocusControl = DBEdit26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboStatus: TRxDBComboBox
              Left = 423
              Top = 132
              Width = 142
              Height = 21
              Style = csDropDownList
              DataField = 'FRETCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado')
              TabOrder = 9
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object ComboCFOP: TRxDBLookupCombo
              Left = 8
              Top = 60
              Width = 462
              Height = 20
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'CFOPA5COD'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'CFOPA5COD'
              LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
              LookupSource = DSCFOP
              ParentFont = False
              TabOrder = 4
            end
            object ComboSerie: TRxDBLookupCombo
              Left = 8
              Top = 21
              Width = 94
              Height = 20
              DropDownCount = 8
              Ctl3D = True
              DataField = 'SERIA5COD'
              DataSource = DSTemplate
              LookupField = 'SERIA5COD'
              LookupDisplay = 'SERIA5COD'
              LookupSource = DSSQLSerie
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit25: TDBEdit
              Left = 209
              Top = 95
              Width = 456
              Height = 21
              Color = clGradientInactiveCaption
              DataField = 'FRETA44CHAVE'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 6
            end
            object DBEdit26: TDBEdit
              Left = 104
              Top = 21
              Width = 101
              Height = 21
              Color = cl3DLight
              DataField = 'FRETICOD'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 1
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 570
              Top = 132
              Width = 95
              Height = 21
              Style = csDropDownList
              DataField = 'FRETCPAGO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'SIM'
                'N'#195'O')
              TabOrder = 10
              Values.Strings = (
                'S'
                'N')
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 8
              Top = 132
              Width = 198
              Height = 21
              Style = csDropDownList
              DataField = 'FRETA1TIPOCTE'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '0 - Normal'
                '1 - Subcontrata'#231#227'o'
                '2 - Redespacho'
                '3 - Redespacho Intermedi'#225'rio')
              TabOrder = 7
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
            end
            object RxDBComboBox3: TRxDBComboBox
              Left = 209
              Top = 132
              Width = 212
              Height = 21
              Style = csDropDownList
              DataField = 'FRETA1TOMADOR'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '0 - Remetente'
                '1 - Expedidor'
                '2 - Recebedor'
                '3 - Destinatario')
              TabOrder = 8
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
            end
            object RxDBComboBox4: TRxDBComboBox
              Left = 8
              Top = 96
              Width = 198
              Height = 21
              Style = csDropDownList
              DataField = 'FRETA1TIPOCTE'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '0 - CT-e Normal'
                '1 - CT-e de Complemento Valores'
                '2 - CT-e de Anula'#231#227'o Valores (Entrada)'
                '3 - CT-e Substituto')
              TabOrder = 5
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
              OnExit = RxDBComboBox4Exit
            end
            object DBDateEdit2: TDBDateEdit
              Left = 349
              Top = 20
              Width = 121
              Height = 21
              DataField = 'FRETDPREVENTREGA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 3
            end
            object Panel12: TPanel
              Left = 8
              Top = 158
              Width = 325
              Height = 55
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 12572888
              TabOrder = 11
              object Label70: TLabel
                Left = 4
                Top = 7
                Width = 180
                Height = 13
                Caption = 'Cidade In'#237'cio Presta'#231#227'o Servi'#231'o '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label71: TLabel
                Left = 210
                Top = 9
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit49
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label72: TLabel
                Left = 243
                Top = 7
                Width = 68
                Height = 13
                Caption = 'Cod. Cidade '
                FocusControl = DBEdit52
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBComboBox2: TDBComboBox
                Left = 3
                Top = 23
                Width = 202
                Height = 21
                CharCase = ecUpperCase
                DataField = 'FRETA60CIDINICIO'
                DataSource = DSTemplate
                ItemHeight = 13
                TabOrder = 0
                OnEnter = DBComboBox1Enter
                OnExit = DBComboBox1Exit
              end
              object DBEdit49: TDBEdit
                Left = 210
                Top = 23
                Width = 26
                Height = 21
                DataField = 'FRETA2UFINICIO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit52: TDBEdit
                Left = 241
                Top = 23
                Width = 80
                Height = 21
                DataField = 'FRETA8CODCIDADEINICIO'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
            object Panel13: TPanel
              Left = 340
              Top = 158
              Width = 325
              Height = 55
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 12572888
              TabOrder = 12
              object Label73: TLabel
                Left = 4
                Top = 7
                Width = 166
                Height = 13
                Caption = 'Cidade Fim Presta'#231#227'o Servi'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label74: TLabel
                Left = 210
                Top = 9
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit57
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label75: TLabel
                Left = 243
                Top = 7
                Width = 68
                Height = 13
                Caption = 'Cod. Cidade '
                FocusControl = DBEdit58
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBComboBox3: TDBComboBox
                Left = 3
                Top = 23
                Width = 202
                Height = 21
                CharCase = ecUpperCase
                DataField = 'FRETA60CIDFIM'
                DataSource = DSTemplate
                ItemHeight = 13
                TabOrder = 0
                OnEnter = DBComboBox1Enter
                OnExit = DBComboBox1Exit
              end
              object DBEdit57: TDBEdit
                Left = 210
                Top = 23
                Width = 26
                Height = 21
                DataField = 'FRETA2UFFIM'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit58: TDBEdit
                Left = 241
                Top = 23
                Width = 80
                Height = 21
                DataField = 'FRETA8CODCIDADEFIM'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
            object DBEdit60: TDBEdit
              Left = 208
              Top = 20
              Width = 137
              Height = 21
              DataField = 'FRTDATA'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object AlterarNumerodoConhecimento1: TMenuItem
      Caption = 'Alterar Numero do Conhecimento'
      OnClick = AlterarNumerodoConhecimento1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CancelarConhecimentodeFrete1: TMenuItem
      Caption = 'Cancelar Conhecimento de Frete'
      OnClick = CancelarConhecimentodeFrete1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ConhecimentoEletronico1: TMenuItem
      Caption = 'Conhecimento Eletronico'
      OnClick = ConhecimentoEletronico1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MnConhecimentodeFrete: TMenuItem
      Caption = 'Conhecimento de Frete'
      OnClick = MnConhecimentodeFreteClick
    end
    object mnRomaneiodeFrete: TMenuItem
      Caption = 'Romaneio de Frete'
      OnClick = mnRomaneiodeFreteClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    AfterInsert = SQLTemplateAfterInsert
    SQL.Strings = (
      'Select * From Frete Where (%MFiltro)')
    object SQLTemplateFRETA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETE.FRETA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.FRETE.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.FRETE.TERMICOD'
    end
    object SQLTemplateFRETICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FRETICOD'
      Origin = 'DB.FRETE.FRETICOD'
    end
    object SQLTemplateFRETCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'FRETCSTATUS'
      Origin = 'DB.FRETE.FRETCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIEA13IDREMETE: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'CLIEA13IDREMETE'
      Origin = 'DB.FRETE.CLIEA13IDREMETE'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60REMENOME: TStringField
      DisplayLabel = 'Remetente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60REMENOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDREMETE'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60ENDCOLETA: TStringField
      DisplayLabel = 'Endere'#231'o de Coleta'
      FieldKind = fkLookup
      FieldName = 'CLIEA60ENDCOLETA'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13IDREMETE'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA13IDDESTINO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'CLIEA13IDDESTINO'
      Origin = 'DB.FRETE.CLIEA13IDDESTINO'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60DESTNOME: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldKind = fkLookup
      FieldName = 'CLIEA60DESTNOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDDESTINO'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60ENDENTREGA: TStringField
      DisplayLabel = 'Endere'#231'o de Entrega'
      FieldKind = fkLookup
      FieldName = 'CLIEA60ENDENTREGA'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA13IDCONSIG: TStringField
      DisplayLabel = 'Consignat'#225'rio'
      FieldName = 'CLIEA13IDCONSIG'
      Origin = 'DB.FRETE.CLIEA13IDCONSIG'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60CONSNOME: TStringField
      DisplayLabel = 'Consignat'#225'rio'
      FieldKind = fkLookup
      FieldName = 'CLIEA60CONSNOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 60
      Lookup = True
    end
    object SQLTemplateFRETCPAGO: TStringField
      DisplayLabel = 'Pago / A Pagar'
      FieldName = 'FRETCPAGO'
      Origin = 'DB.FRETE.FRETCPAGO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFUNCA13ID: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FRETE.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFUNCA60NOME: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldKind = fkLookup
      FieldName = 'FUNCA60NOME'
      LookupDataSet = QueryFuncionario
      LookupKeyFields = 'FUNCA13ID'
      LookupResultField = 'FUNCA60NOME'
      KeyFields = 'FUNCA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateFRETTOBS: TStringField
      DisplayLabel = 'Obs.:'
      FieldName = 'FRETTOBS'
      Origin = 'DB.FRETE.FRETTOBS'
      Size = 255
    end
    object SQLTemplateFRETN2VLR: TBCDField
      DisplayLabel = 'Valor Frete'
      FieldName = 'FRETN2VLR'
      Origin = 'DB.FRETE.FRETN2VLR'
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN2VLRTOTAL: TBCDField
      DisplayLabel = 'Valor Total Frete'
      FieldName = 'FRETN2VLRTOTAL'
      Origin = 'DB.FRETE.FRETN2VLRTOTAL'
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN3QTDETOTAL: TBCDField
      DisplayLabel = 'Quantidade Total'
      FieldName = 'FRETN3QTDETOTAL'
      Origin = 'DB.FRETE.FRETN3QTDETOTAL'
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN2BASECALCULO: TBCDField
      DisplayLabel = 'Base de C'#225'lculo'
      FieldName = 'FRETN2BASECALCULO'
      Origin = 'DB.FRETE.FRETN2BASECALCULO'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN2ICMS: TBCDField
      DisplayLabel = 'ICMS'
      FieldName = 'FRETN2ICMS'
      Origin = 'DB.FRETE.FRETN2ICMS'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'Plano de Contas'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.FRETE.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA60DESCR: TStringField
      DisplayLabel = 'Plano de Contas'
      FieldKind = fkLookup
      FieldName = 'PLCTA60DESCR'
      LookupDataSet = QueryPlanoConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15COD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePLRCICOD: TIntegerField
      DisplayLabel = 'Plano de Pagamento'
      FieldName = 'PLRCICOD'
      Origin = 'DB.FRETE.PLRCICOD'
      OnChange = SQLTemplatePLRCICODChange
    end
    object SQLTemplatePLRCA60DESCR: TStringField
      DisplayLabel = 'Plano de Pagamento'
      FieldKind = fkLookup
      FieldName = 'PLRCA60DESCR'
      LookupDataSet = QueryPlanoRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FRETE.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FRETE.REGISTRO'
      Visible = False
    end
    object SQLTemplateCLIEA60REMECID: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60REMECID'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDREMETE'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA14REMECGC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14REMECGC'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDREMETE'
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEADESTCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEADESTCIDADE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA14DESTCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14DESTCGC'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDDESTINO'
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA60CONSCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CONSCIDADE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2REMEUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2REMEUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDREMETE'
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA2DESTUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2DESTUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA2CONSUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2CONSUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA60CONSEND: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CONSEND'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 60
      Lookup = True
    end
    object SQLTemplateVEICA13ID: TStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'VEICA13ID'
      Origin = 'DB.FRETE.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVEICA60DESCR: TStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldKind = fkLookup
      FieldName = 'VEICA60DESCR'
      LookupDataSet = QueryVeiculo
      LookupKeyFields = 'VEICA13ID'
      LookupResultField = 'VEICA60DESCR'
      KeyFields = 'VEICA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateFRETN2VLRCOMISSAO: TBCDField
      ConstraintErrorMessage = '1'
      FieldName = 'FRETN2VLRCOMISSAO'
      Origin = 'DB.FRETE.FRETN2VLRCOMISSAO'
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRITINOTAFISCAL: TStringField
      FieldKind = fkLookup
      FieldName = 'FRITINOTAFISCAL'
      LookupDataSet = SQLItens
      LookupKeyFields = 'FRETA13ID'
      LookupResultField = 'FRITINOTAFISCAL'
      KeyFields = 'FRETA13ID'
      Size = 254
      Lookup = True
    end
    object SQLTemplateCFOPA5COD: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOPA5COD'
      Origin = 'DB.FRETE.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCLIEA20IEDEST: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20IEDEST'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDDESTINO'
      Lookup = True
    end
    object SQLTemplateCLIEA20IEREM: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20IEREM'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDREMETE'
      Lookup = True
    end
    object SQLTemplateCLIEA13IDREDESPACH: TStringField
      FieldName = 'CLIEA13IDREDESPACH'
      Origin = 'DB.FRETE.CLIEA13IDREDESPACH'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFRETINROFORM: TIntegerField
      FieldName = 'FRETINROFORM'
      Origin = 'DB.FRETE.FRETINROFORM'
    end
    object SQLTemplateFRTDATA: TDateTimeField
      FieldName = 'FRTDATA'
      Origin = 'DB.FRETE.FRTDATA'
      DisplayFormat = 'dd/mm/yyyy HH:MM:SS'
    end
    object SQLTemplateMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'DB.FRETE.MOTORISTA'
      Size = 30
    end
    object SQLTemplateFRETA1TOMADOR: TStringField
      FieldName = 'FRETA1TOMADOR'
      Origin = 'DB.FRETE.FRETA1TOMADOR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.FRETE.SERIA5COD'
      Size = 5
    end
    object SQLTemplateFRETA44CHAVE: TStringField
      FieldName = 'FRETA44CHAVE'
      Origin = 'DB.FRETE.FRETA44CHAVE'
      Size = 44
    end
    object SQLTemplateCLIEA14CONSCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14CONSCGC'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA20IECONS: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20IECONS'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDCONSIG'
      Lookup = True
    end
    object SQLTemplateCLIEA13IDRECEBEDOR: TStringField
      FieldName = 'CLIEA13IDRECEBEDOR'
      Origin = 'DB.FRETE.CLIEA13IDRECEBEDOR'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60RECEBEDORNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60RECEBEDORNOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDRECEBEDOR'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA14RECEBCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14RECEBCGC'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDRECEBEDOR'
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA20IERECEBEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20IERECEBEDOR'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDRECEBEDOR'
      Lookup = True
    end
    object SQLTemplateCLIEA60RECEBCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60RECEBCIDADE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDRECEBEDOR'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2RECEBUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2RECEBUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDRECEBEDOR'
      Size = 2
      Lookup = True
    end
    object SQLTemplateFRETA1TIPOCTE: TStringField
      FieldName = 'FRETA1TIPOCTE'
      Origin = 'DB.FRETE.FRETA1TIPOCTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TIPOSERVICO: TStringField
      FieldName = 'FRETA1TIPOSERVICO'
      Origin = 'DB.FRETE.FRETA1TIPOSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TEMREMETENTE: TStringField
      FieldName = 'FRETA1TEMREMETENTE'
      Origin = 'DB.FRETE.FRETA1TEMREMETENTE'
      OnChange = SQLTemplateFRETA1TEMREMETENTEChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TIPODOC: TStringField
      FieldName = 'FRETA1TIPODOC'
      Origin = 'DB.FRETE.FRETA1TIPODOC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TEMDESTINATARIO: TStringField
      FieldName = 'FRETA1TEMDESTINATARIO'
      Origin = 'DB.FRETE.FRETA1TEMDESTINATARIO'
      OnChange = SQLTemplateFRETA1TEMDESTINATARIOChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TEMEXPEDIDOR: TStringField
      FieldName = 'FRETA1TEMEXPEDIDOR'
      Origin = 'DB.FRETE.FRETA1TEMEXPEDIDOR'
      OnChange = SQLTemplateFRETA1TEMEXPEDIDORChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA1TEMRECEBEDOR: TStringField
      FieldName = 'FRETA1TEMRECEBEDOR'
      Origin = 'DB.FRETE.FRETA1TEMRECEBEDOR'
      OnChange = SQLTemplateFRETA1TEMRECEBEDORChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA14ENTREGADOC: TStringField
      FieldName = 'FRETA14ENTREGADOC'
      Origin = 'DB.FRETE.FRETA14ENTREGADOC'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateFRETA1ENTREGATIPODOC: TStringField
      FieldName = 'FRETA1ENTREGATIPODOC'
      Origin = 'DB.FRETE.FRETA1ENTREGATIPODOC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA2ENTREGAUF: TStringField
      FieldName = 'FRETA2ENTREGAUF'
      Origin = 'DB.FRETE.FRETA2ENTREGAUF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETA40ENTREGABAIRRO: TStringField
      FieldName = 'FRETA40ENTREGABAIRRO'
      Origin = 'DB.FRETE.FRETA40ENTREGABAIRRO'
      FixedChar = True
      Size = 40
    end
    object SQLTemplateFRETA60ENTREGACID: TStringField
      FieldName = 'FRETA60ENTREGACID'
      Origin = 'DB.FRETE.FRETA60ENTREGACID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA60ENTREGARAZAOSOC: TStringField
      FieldName = 'FRETA60ENTREGARAZAOSOC'
      Origin = 'DB.FRETE.FRETA60ENTREGARAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETIENTREGACODCID: TIntegerField
      FieldName = 'FRETIENTREGACODCID'
      Origin = 'DB.FRETE.FRETIENTREGACODCID'
    end
    object SQLTemplateFRETA60ENTREGAEND: TStringField
      FieldName = 'FRETA60ENTREGAEND'
      Origin = 'DB.FRETE.FRETA60ENTREGAEND'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETIENTREGANRO: TIntegerField
      FieldName = 'FRETIENTREGANRO'
      Origin = 'DB.FRETE.FRETIENTREGANRO'
    end
    object SQLTemplateFRETA20TIPOMEDIDA: TStringField
      FieldName = 'FRETA20TIPOMEDIDA'
      Origin = 'DB.FRETE.FRETA20TIPOMEDIDA'
      FixedChar = True
    end
    object SQLTemplateFRETA2CODUNIDADE: TStringField
      FieldName = 'FRETA2CODUNIDADE'
      Origin = 'DB.FRETE.FRETA2CODUNIDADE'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETA60OUTRASCARACT: TStringField
      FieldName = 'FRETA60OUTRASCARACT'
      Origin = 'DB.FRETE.FRETA60OUTRASCARACT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA60PRODPREDOMINA: TStringField
      FieldName = 'FRETA60PRODPREDOMINA'
      Origin = 'DB.FRETE.FRETA60PRODPREDOMINA'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETDPREVENTREGA: TDateTimeField
      FieldName = 'FRETDPREVENTREGA'
      Origin = 'DB.FRETE.FRETDPREVENTREGA'
    end
    object SQLTemplateFRETN2ALIQUOTA: TBCDField
      FieldName = 'FRETN2ALIQUOTA'
      Origin = 'DB.FRETE.FRETN2ALIQUOTA'
      Precision = 9
      Size = 2
    end
    object SQLTemplateFRETN2CREDITO: TBCDField
      FieldName = 'FRETN2CREDITO'
      Origin = 'DB.FRETE.FRETN2CREDITO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRETN2PERCREDUZ: TBCDField
      FieldName = 'FRETN2PERCREDUZ'
      Origin = 'DB.FRETE.FRETN2PERCREDUZ'
      Precision = 9
      Size = 2
    end
    object SQLTemplateFRETN2TOTALMERC: TBCDField
      FieldName = 'FRETN2TOTALMERC'
      Origin = 'DB.FRETE.FRETN2TOTALMERC'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRETA2CST: TStringField
      FieldName = 'FRETA2CST'
      Origin = 'DB.FRETE.FRETA2CST'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETICST: TIntegerField
      FieldName = 'FRETICST'
      Origin = 'DB.FRETE.FRETICST'
    end
    object SQLTemplateFRETA1RETIRATIPODOC: TStringField
      FieldName = 'FRETA1RETIRATIPODOC'
      Origin = 'DB.FRETE.FRETA1RETIRATIPODOC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFRETA14RETIRADOC: TStringField
      FieldName = 'FRETA14RETIRADOC'
      Origin = 'DB.FRETE.FRETA14RETIRADOC'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateFRETA60RETIRARAZAOSOC: TStringField
      FieldName = 'FRETA60RETIRARAZAOSOC'
      Origin = 'DB.FRETE.FRETA60RETIRARAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA60RETIRAEND: TStringField
      FieldName = 'FRETA60RETIRAEND'
      Origin = 'DB.FRETE.FRETA60RETIRAEND'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETIRETIRANRO: TIntegerField
      FieldName = 'FRETIRETIRANRO'
      Origin = 'DB.FRETE.FRETIRETIRANRO'
    end
    object SQLTemplateFRETA40RETIRABAIRRO: TStringField
      FieldName = 'FRETA40RETIRABAIRRO'
      Origin = 'DB.FRETE.FRETA40RETIRABAIRRO'
      FixedChar = True
      Size = 40
    end
    object SQLTemplateFRETIRETIRACODCID: TIntegerField
      FieldName = 'FRETIRETIRACODCID'
      Origin = 'DB.FRETE.FRETIRETIRACODCID'
    end
    object SQLTemplateFRETA60RETIRACID: TStringField
      FieldName = 'FRETA60RETIRACID'
      Origin = 'DB.FRETE.FRETA60RETIRACID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA2RETIRAUF: TStringField
      FieldName = 'FRETA2RETIRAUF'
      Origin = 'DB.FRETE.FRETA2RETIRAUF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETA2UFINICIO: TStringField
      FieldName = 'FRETA2UFINICIO'
      Origin = 'DB.FRETE.FRETA2UFINICIO'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETA60CIDFIM: TStringField
      FieldName = 'FRETA60CIDFIM'
      Origin = 'DB.FRETE.FRETA60CIDFIM'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA60CIDINICIO: TStringField
      FieldName = 'FRETA60CIDINICIO'
      Origin = 'DB.FRETE.FRETA60CIDINICIO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFRETA8CODCIDADEINICIO: TStringField
      FieldName = 'FRETA8CODCIDADEINICIO'
      Origin = 'DB.FRETE.FRETA8CODCIDADEINICIO'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateFRETA2UFFIM: TStringField
      FieldName = 'FRETA2UFFIM'
      Origin = 'DB.FRETE.FRETA2UFFIM'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFRETA8CODCIDADEFIM: TStringField
      FieldName = 'FRETA8CODCIDADEFIM'
      Origin = 'DB.FRETE.FRETA8CODCIDADEFIM'
      FixedChar = True
      Size = 8
    end
  end
  object QueryCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'CLIEA13ID,'
      'CLIEA60ENDRES,'
      'CLIEA60RAZAOSOC,'
      'CLIEA60CIDRES, '
      'CLIEA14CGC,'
      'CLIEA2UFRES,'
      'CLIEA20IE'
      'FROM CLIENTE')
    Left = 437
    Top = 1
    object QueryClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object QueryClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object QueryClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object QueryClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object QueryClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object QueryClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
  end
  object QueryPlanoRecebimento: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PLANORECEBIMENTO')
    Left = 465
    Top = 1
  end
  object QueryPlanoConta: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PLCTA15COD,PLCTA60DESCR FROM'
      'PLANODECONTAS')
    Left = 493
    Top = 1
  end
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTO'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 9
    Top = 273
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
      'Select *'
      'From PLANORECEBIMENTOPARCELA'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 37
    Top = 273
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    Macros = <>
    Left = 9
    Top = 301
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
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    AutoEdit = False
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 37
    Top = 301
  end
  object SQLNumerarioVista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'V'#39
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 65
    Top = 329
    object SQLNumerarioVistaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioVistaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioVistaNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioVistaNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioVistaNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
  object SQLNumerarioPrazo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'P'#39
      'and NUMEA5TIPO not in ("CHQP","CHQV")'
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 65
    Top = 301
  end
  object DSSQLNumerarioPrazo: TDataSource
    DataSet = SQLNumerarioPrazo
    Left = 93
    Top = 301
  end
  object DSSQLNumerarioVista: TDataSource
    DataSet = SQLNumerarioVista
    Left = 93
    Top = 329
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO ')
    Macros = <>
    Left = 93
    Top = 273
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnNewRecord = SQLContasReceberNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select * From CONTASRECEBER '
      'Where FRETA13ID=:FRETA13ID')
    Macros = <>
    Left = 326
    Top = 29
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FRETA13ID'
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
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
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
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 355
    Top = 29
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLContasReceber
    RequestLive = True
    SQL.Strings = (
      'Select * From RECEBIMENTO Where '
      'CTRCA13ID= :CTRCA13ID')
    Macros = <>
    Left = 382
    Top = 29
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TBCDField
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECEBIMENTO.REGISTRO'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TBCDField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'DB.RECEBIMENTO.RECEN2MULTACOBR'
      Precision = 15
      Size = 3
    end
  end
  object QueryFuncionario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM'
      'FUNCIONARIO')
    Left = 521
    Top = 1
    object QueryFuncionarioFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryFuncionarioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FUNCIONARIO.EMPRICOD'
    end
    object QueryFuncionarioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FUNCIONARIO.TERMICOD'
    end
    object QueryFuncionarioFUNCICOD: TIntegerField
      FieldName = 'FUNCICOD'
      Origin = 'DB.FUNCIONARIO.FUNCICOD'
    end
    object QueryFuncionarioFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      Origin = 'DB.FUNCIONARIO.FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object QueryFuncionarioFUNCCAUTONOMO: TStringField
      FieldName = 'FUNCCAUTONOMO'
      Origin = 'DB.FUNCIONARIO.FUNCCAUTONOMO'
      FixedChar = True
      Size = 1
    end
    object QueryFuncionarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FUNCIONARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryFuncionarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FUNCIONARIO.REGISTRO'
    end
    object QueryFuncionarioFUNCN2PERCCOMISSAO: TBCDField
      FieldName = 'FUNCN2PERCCOMISSAO'
      Origin = 'DB.FUNCIONARIO.FUNCN2PERCCOMISSAO'
      Precision = 15
      Size = 3
    end
    object QueryFuncionarioFUNCA11CPF: TStringField
      FieldName = 'FUNCA11CPF'
      Origin = 'DB.FUNCIONARIO.FUNCA11CPF'
      FixedChar = True
      Size = 11
    end
    object QueryFuncionarioFUNCA14CNPJ: TStringField
      FieldName = 'FUNCA14CNPJ'
      Origin = 'DB.FUNCIONARIO.FUNCA14CNPJ'
      FixedChar = True
      Size = 14
    end
    object QueryFuncionarioFUNCA15INSS: TStringField
      FieldName = 'FUNCA15INSS'
      Origin = 'DB.FUNCIONARIO.FUNCA15INSS'
      FixedChar = True
      Size = 15
    end
    object QueryFuncionarioFUNCA60ENDRES: TStringField
      FieldName = 'FUNCA60ENDRES'
      Origin = 'DB.FUNCIONARIO.FUNCA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object QueryFuncionarioVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.FUNCIONARIO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object TblFrete: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'Frete.db'
    Left = 410
    Top = 29
    object TblFreteRemeNome: TStringField
      FieldName = 'RemeNome'
      Size = 60
    end
    object TblFreteRemeEnd: TStringField
      FieldName = 'RemeEnd'
      Size = 60
    end
    object TblFreteRemeCidade: TStringField
      FieldName = 'RemeCidade'
      Size = 60
    end
    object TblFreteRemeCnpj: TStringField
      FieldName = 'RemeCnpj'
      Size = 14
    end
    object TblFreteRemeUF: TStringField
      FieldName = 'RemeUF'
      Size = 2
    end
    object TblFreteDestNome: TStringField
      FieldName = 'DestNome'
      Size = 60
    end
    object TblFreteDestEnd: TStringField
      FieldName = 'DestEnd'
      Size = 60
    end
    object TblFreteDestCidade: TStringField
      FieldName = 'DestCidade'
      Size = 60
    end
    object TblFreteDestCnpj: TStringField
      FieldName = 'DestCnpj'
      Size = 14
    end
    object TblFreteDestUf: TStringField
      FieldName = 'DestUf'
      Size = 2
    end
    object TblFreteConsNome: TStringField
      FieldName = 'ConsNome'
      Size = 60
    end
    object TblFreteConsEnd: TStringField
      FieldName = 'ConsEnd'
      Size = 60
    end
    object TblFreteConsCidade: TStringField
      FieldName = 'ConsCidade'
      Size = 60
    end
    object TblFreteConsUf: TStringField
      FieldName = 'ConsUf'
      Size = 2
    end
    object TblFreteProduto: TStringField
      FieldName = 'Produto'
      Size = 30
    end
    object TblFreteNotaFiscal: TStringField
      FieldName = 'NotaFiscal'
      Size = 15
    end
    object TblFreteQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TblFreteUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object TblFreteValorFrete: TFloatField
      FieldName = 'ValorFrete'
    end
    object TblFreteValorTotalFrete: TFloatField
      FieldName = 'ValorTotalFrete'
    end
    object TblFretePagar: TStringField
      FieldName = 'Pagar'
      Size = 1
    end
    object TblFretePago: TStringField
      FieldName = 'Pago'
      Size = 1
    end
    object TblFreteEspecie: TStringField
      FieldName = 'Especie'
      Size = 60
    end
    object TblFreteObservacao: TStringField
      FieldName = 'Observacao'
      Size = 255
    end
    object TblFreteValorMercadoria: TFloatField
      FieldName = 'ValorMercadoria'
    end
    object TblFreteCFOP: TStringField
      DisplayWidth = 50
      FieldName = 'CFOP'
      Size = 50
    end
    object TblFreteIEDEST: TStringField
      FieldName = 'IEDEST'
    end
    object TblFreteIEREM: TStringField
      FieldName = 'IEREM'
    end
    object TblFretevolumes: TFloatField
      FieldName = 'volumes'
    end
    object TblFreteicms: TFloatField
      FieldName = 'icms'
    end
    object TblFretevaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object TblFretenatureza: TStringField
      FieldName = 'natureza'
      Size = 30
    end
    object TblFretefretepeso: TFloatField
      FieldName = 'fretepeso'
    end
    object TblFreteseccat: TFloatField
      FieldName = 'seccat'
    end
    object TblFretePedagio: TFloatField
      FieldName = 'Pedagio'
    end
    object TblFreteoutros: TFloatField
      FieldName = 'outros'
    end
    object TblFretefrtdata: TDateField
      FieldName = 'frtdata'
    end
    object TblFretenumero: TStringField
      FieldName = 'numero'
      Size = 8
    end
    object TblFreteREMECEP: TStringField
      FieldName = 'REMECEP'
      Size = 10
    end
    object TblFreteDESTCEP: TStringField
      FieldName = 'DESTCEP'
      Size = 10
    end
    object TblFreteCONSIGCEP: TStringField
      FieldName = 'CONSIGCEP'
      Size = 10
    end
    object TblFreteveimarca: TStringField
      FieldName = 'veimarca'
      Size = 30
    end
    object TblFreteveiplaca: TStringField
      FieldName = 'veiplaca'
      Size = 7
    end
    object TblFreteveiufplaca: TStringField
      FieldName = 'veiufplaca'
      Size = 2
    end
    object TblFreteveimotorista: TStringField
      FieldName = 'veimotorista'
      Size = 30
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
    OnWindowClose = ReportWindowClose
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
    Left = 438
    Top = 29
  end
  object QueryVeiculo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT VEICA13ID,VEICA60DESCR FROM VEICULO')
    Left = 549
    Top = 1
  end
  object SQLQtdeItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select count(FRETA13ID) from FRETEITEM where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 64
    Top = 368
  end
  object BatchMove: TBatchMove
    Destination = TableItensImpressao
    Mode = batCopy
    Source = SQLRomaneio
    Left = 32
    Top = 400
  end
  object TableItensImpressao: TTable
    DatabaseName = 'unitgestao_temp'
    TableName = 'ConhecimentoItensImpressao.db'
    Left = 64
    Top = 400
  end
  object SQLRomaneio: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      'FUNCIONARIO.FUNCA60NOME,'
      'CLI.CLIEA60RAZAOSOC as Cliente,'
      'DEST.CLIEA60RAZAOSOC as Destino,'
      'CONS.CLIEA60RAZAOSOC as Consig,'
      'FRETEITEM.*,'
      'FRETE.*,'
      'NOTACOMPRA.NOCPDEMISSAO,'
      'PRODUTO.PRODA60DESCR'
      'from'
      'FRETE '
      
        'left outer join FUNCIONARIO on (FRETE.FUNCA13ID = FUNCIONARIO.FU' +
        'NCA13ID)'
      
        'left outer join CLIENTE CLI  on (CLI.CLIEA13ID = FRETE.CLIEA13ID' +
        'REMETE)'
      
        'left outer join CLIENTE DEST on (DEST.CLIEA13ID = FRETE.CLIEA13I' +
        'DDESTINO)'
      
        'left outer join CLIENTE CONS on (CONS.CLIEA13ID = FRETE.CLIEA13I' +
        'DCONSIG)'
      'inner join FRETEITEM on (FRETE.FRETA13ID = FRETEITEM.FRETA13ID)'
      
        'left outer join NOTACOMPRA on (NOTACOMPRA.NOCPA30NRO= FRETEITEM.' +
        'FRITINOTAFISCAL)'
      'inner join PRODUTO on (PRODUTO.PRODICOD = FRETEITEM.PRODICOD)'
      'where'
      'FRETE.FRETA13ID = :FRETA13ID ')
    Macros = <>
    Left = 64
    Top = 432
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FRETA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRomaneioFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLRomaneioCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object SQLRomaneioDESTINO: TStringField
      FieldName = 'DESTINO'
      FixedChar = True
      Size = 60
    end
    object SQLRomaneioCONSIG: TStringField
      FieldName = 'CONSIG'
      FixedChar = True
      Size = 60
    end
    object SQLRomaneioFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioFRITICOD: TIntegerField
      FieldName = 'FRITICOD'
    end
    object SQLRomaneioPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLRomaneioPRODN2VLR: TBCDField
      FieldName = 'PRODN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRITN2ICMS: TBCDField
      FieldName = 'FRITN2ICMS'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRITN2VLRICMS: TBCDField
      FieldName = 'FRITN2VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
    end
    object SQLRomaneioFRITN3QTDE: TBCDField
      FieldName = 'FRITN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRITA30ESPECIE: TStringField
      FieldName = 'FRITA30ESPECIE'
      FixedChar = True
      Size = 30
    end
    object SQLRomaneioFRITA30MARCA: TStringField
      FieldName = 'FRITA30MARCA'
      FixedChar = True
      Size = 30
    end
    object SQLRomaneioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLRomaneioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRomaneioFRETA13ID_1: TStringField
      FieldName = 'FRETA13ID_1'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLRomaneioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLRomaneioFRETICOD: TIntegerField
      FieldName = 'FRETICOD'
    end
    object SQLRomaneioCLIEA13IDREMETE: TStringField
      FieldName = 'CLIEA13IDREMETE'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioCLIEA13IDDESTINO: TStringField
      FieldName = 'CLIEA13IDDESTINO'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioCLIEA13IDCONSIG: TStringField
      FieldName = 'CLIEA13IDCONSIG'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioFRETCPAGO: TStringField
      FieldName = 'FRETCPAGO'
      FixedChar = True
      Size = 1
    end
    object SQLRomaneioFRETTOBS: TStringField
      FieldName = 'FRETTOBS'
      Size = 255
    end
    object SQLRomaneioFRETN2VLR: TBCDField
      FieldName = 'FRETN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRETN2VLRTOTAL: TBCDField
      FieldName = 'FRETN2VLRTOTAL'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRETN3QTDETOTAL: TBCDField
      FieldName = 'FRETN3QTDETOTAL'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRETN2BASECALCULO: TBCDField
      FieldName = 'FRETN2BASECALCULO'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFRETN2ICMS: TBCDField
      FieldName = 'FRETN2ICMS'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLRomaneioPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLRomaneioFRETCSTATUS: TStringField
      FieldName = 'FRETCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLRomaneioREGISTRO_1: TDateTimeField
      FieldName = 'REGISTRO_1'
    end
    object SQLRomaneioPENDENTE_1: TStringField
      FieldName = 'PENDENTE_1'
      FixedChar = True
      Size = 1
    end
    object SQLRomaneioFRETN2VLRCOMISSAO: TBCDField
      FieldName = 'FRETN2VLRCOMISSAO'
      Precision = 15
      Size = 3
    end
    object SQLRomaneioFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRomaneioNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
    end
    object SQLRomaneioPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLRomaneioFRITINOTAFISCAL: TStringField
      FieldName = 'FRITINOTAFISCAL'
      FixedChar = True
      Size = 254
    end
  end
  object DSSQLRomaneio: TDataSource
    DataSet = SQLRomaneio
    Left = 96
    Top = 400
  end
  object SQLItens: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From FreteItem '
      'Where'
      'FRETA13ID = :FRETA13ID')
    Macros = <>
    Left = 64
    Top = 472
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FRETA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLItensFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETEITEM.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensFRITICOD: TIntegerField
      FieldName = 'FRITICOD'
      Origin = 'DB.FRETEITEM.FRITICOD'
    end
    object SQLItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.FRETEITEM.PRODICOD'
    end
    object SQLItensPRODN2VLR: TBCDField
      FieldName = 'PRODN2VLR'
      Origin = 'DB.FRETEITEM.PRODN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN2ICMS: TBCDField
      FieldName = 'FRITN2ICMS'
      Origin = 'DB.FRETEITEM.FRITN2ICMS'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN2VLRICMS: TBCDField
      FieldName = 'FRITN2VLRICMS'
      Origin = 'DB.FRETEITEM.FRITN2VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLItensUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.FRETEITEM.UNIDICOD'
    end
    object SQLItensFRITN3QTDE: TBCDField
      FieldName = 'FRITN3QTDE'
      Origin = 'DB.FRETEITEM.FRITN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITA30ESPECIE: TStringField
      FieldName = 'FRITA30ESPECIE'
      Origin = 'DB.FRETEITEM.FRITA30ESPECIE'
      FixedChar = True
      Size = 30
    end
    object SQLItensFRITA30MARCA: TStringField
      FieldName = 'FRITA30MARCA'
      Origin = 'DB.FRETEITEM.FRITA30MARCA'
      FixedChar = True
      Size = 30
    end
    object SQLItensREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FRETEITEM.REGISTRO'
    end
    object SQLItensPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FRETEITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLItensPRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLItensFRITINOTAFISCAL: TStringField
      DisplayLabel = 'Nota(s)'
      FieldName = 'FRITINOTAFISCAL'
      Origin = 'DB.FRETEITEM.FRITINOTAFISCAL'
      FixedChar = True
      Size = 254
    end
    object SQLItensFRITN2VLRNOTA: TBCDField
      FieldName = 'FRITN2VLRNOTA'
      Origin = 'DB.FRETEITEM.FRITN2VLRNOTA'
      Precision = 15
      Size = 2
    end
    object SQLItensCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.FRETEITEM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLItensFRITANATCARGA: TStringField
      FieldName = 'FRITANATCARGA'
      Origin = 'DB.FRETEITEM.FRITANATCARGA'
      FixedChar = True
      Size = 30
    end
    object SQLItensFRITN2PEDAGIO: TBCDField
      FieldName = 'FRITN2PEDAGIO'
      Origin = 'DB.FRETEITEM.FRITN2PEDAGIO'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN2VLRCAT: TBCDField
      FieldName = 'FRITN2VLRCAT'
      Origin = 'DB.FRETEITEM.FRITN2VLRCAT'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN2VLRVALOREM: TBCDField
      FieldName = 'FRITN2VLRVALOREM'
      Origin = 'DB.FRETEITEM.FRITN2VLRVALOREM'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN2VOLUMES: TBCDField
      FieldName = 'FRITN2VOLUMES'
      Origin = 'DB.FRETEITEM.FRITN2VOLUMES'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN3OUTROS: TBCDField
      FieldName = 'FRITN3OUTROS'
      Origin = 'DB.FRETEITEM.FRITN3OUTROS'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN3PESO: TBCDField
      FieldName = 'FRITN3PESO'
      Origin = 'DB.FRETEITEM.FRITN3PESO'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN4PERCVALOREM: TBCDField
      FieldName = 'FRITN4PERCVALOREM'
      Origin = 'DB.FRETEITEM.FRITN4PERCVALOREM'
      Precision = 15
    end
  end
  object DSSQLItens: TDataSource
    DataSet = SQLItens
    Left = 96
    Top = 472
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Produto')
    Macros = <>
    Left = 32
    Top = 472
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CFOP')
    Macros = <>
    Left = 93
    Top = 240
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
    object SQLCFOPCFOPCDESTVLRNTRIB: TStringField
      FieldName = 'CFOPCDESTVLRNTRIB'
      Origin = 'DB.CFOP.CFOPCDESTVLRNTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object DSCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 93
    Top = 212
  end
  object SQLLocalizar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Macros = <>
    Left = 12
    Top = 212
  end
  object SQLSerie: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Serie'
      'Where (%mEmpresa)')
    Macros = <
      item
        DataType = ftString
        Name = 'mEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 65
    Top = 182
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
    object SQLSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLSerieSERIA100PATHEXEIMP: TStringField
      FieldName = 'SERIA100PATHEXEIMP'
      Origin = 'DB.SERIE.SERIA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 93
    Top = 182
  end
  object SQLCidades: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Distinct  CLIEA60CIDRES '
      'from CLIENTE'
      'order by'
      'CLIEA60CIDRES')
    Macros = <>
    Left = 9
    Top = 330
  end
end
