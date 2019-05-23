inherited FormCadastroFreteSimples: TFormCadastroFreteSimples
  Left = 267
  Top = 104
  Caption = 'Cadastro de Fretes'
  ClientHeight = 521
  ClientWidth = 758
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 758
    Height = 521
    inherited PanelCabecalho: TPanel
      Width = 756
      inherited PanelNavigator: TPanel
        Width = 756
      end
      inherited Panel2: TPanel
        Width = 756
        inherited Panel3: TPanel
          Left = 404
        end
        inherited Panel1: TPanel
          Width = 756
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 756
      Height = 447
      inherited PanelBarra: TPanel
        Height = 447
        inherited Button3: TRxSpeedButton
          Top = 61
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button1Click
        end
        object ButtonFinanceiro: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 84
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Financeiro'
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
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 626
        Height = 447
        inherited Panel5: TPanel
          Width = 626
          Height = 447
          inherited PagePrincipal: TPageControl
            Top = 78
            Width = 626
            Height = 369
            inherited TabSheetConsulta: TTabSheet
              OnShow = TabSheetConsultaShow
              object Splitter1: TSplitter [0]
                Left = 0
                Top = 179
                Width = 618
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Beveled = True
              end
              inherited DBGridLista: TDBGrid
                Width = 618
                Height = 132
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
                Width = 618
                inherited PanelBetween: TPanel
                  Width = 224
                end
                inherited PanelEditProcura: TPanel
                  Width = 224
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 357
                Top = 79
                Width = 188
                Height = 42
                Lines.Strings = (
                  'FRETEITEM'
                  'CONTASRECEBER')
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 184
                Width = 618
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
                    Width = 150
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITICOD'
                    Title.Caption = 'Item'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODN2VLR'
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
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              OnShow = TabSheetDadosPrincipaisShow
              object Label1: TLabel
                Left = 7
                Top = 230
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
                Left = 7
                Top = 196
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
              object ButtonCadastroFuncionario: TSpeedButton
                Left = 285
                Top = 209
                Width = 24
                Height = 20
                Cursor = crHandPoint
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
                Left = 320
                Top = 196
                Width = 40
                Height = 13
                Caption = 'Ve'#237'culo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCadastroVeiculo: TSpeedButton
                Left = 605
                Top = 209
                Width = 24
                Height = 20
                Cursor = crHandPoint
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
              object RxDBLookupCombo6: TRxDBLookupCombo
                Left = 7
                Top = 209
                Width = 282
                Height = 21
                Cursor = crHandPoint
                DropDownCount = 8
                DataField = 'FUNCA13ID'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                EmptyValue = 'null'
                LookupField = 'FUNCA13ID'
                LookupDisplay = 'FUNCA60NOME'
                LookupSource = DSQueryFuncionario
                TabOrder = 4
                OnKeyDown = RxDBLookupCombo6KeyDown
              end
              object RxDBLookupCombo7: TRxDBLookupCombo
                Left = 319
                Top = 209
                Width = 290
                Height = 21
                Cursor = crHandPoint
                DropDownCount = 8
                DataField = 'VEICA13ID'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                EmptyValue = 'null'
                LookupField = 'VEICA13ID'
                LookupDisplay = 'VEICA60DESCR'
                LookupSource = DSQueryVeiculo
                TabOrder = 5
                OnKeyDown = RxDBLookupCombo7KeyDown
              end
              object GroupBox4: TGroupBox
                Left = 1
                Top = -1
                Width = 312
                Height = 98
                Caption = 'Remetente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object ButtonCadastroRemetente: TSpeedButton
                  Left = 285
                  Top = 13
                  Width = 24
                  Height = 20
                  Cursor = crHandPoint
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
                object Label12: TLabel
                  Left = 8
                  Top = 34
                  Width = 85
                  Height = 13
                  Caption = 'Local de Coleta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBLookupCombo3: TRxDBLookupCombo
                  Left = 7
                  Top = 13
                  Width = 282
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'CLIEA13IDREMETE'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
                  LookupDisplayIndex = 1
                  LookupSource = DSQueryCliente
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = RxDBLookupCombo3KeyDown
                end
                object DBEdit12: TDBEdit
                  Left = 8
                  Top = 47
                  Width = 282
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60ENDCOLETA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit21: TDBEdit
                  Left = 9
                  Top = 71
                  Width = 232
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60REMECID'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit14: TDBEdit
                  Left = 248
                  Top = 71
                  Width = 39
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA2REMEUF'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
              end
              object GroupBox5: TGroupBox
                Left = 316
                Top = -1
                Width = 312
                Height = 98
                Caption = 'Destinat'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object ButtonCadastroDestinatario: TSpeedButton
                  Left = 285
                  Top = 13
                  Width = 24
                  Height = 20
                  Cursor = crHandPoint
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
                object Label13: TLabel
                  Left = 8
                  Top = 33
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
                object RxDBLookupCombo4: TRxDBLookupCombo
                  Left = 7
                  Top = 13
                  Width = 282
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'CLIEA13IDDESTINO'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
                  LookupDisplayIndex = 1
                  LookupSource = DSQueryCliente
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = RxDBLookupCombo4KeyDown
                end
                object DBEdit13: TDBEdit
                  Left = 7
                  Top = 47
                  Width = 282
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60ENDENTREGA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit20: TDBEdit
                  Left = 7
                  Top = 70
                  Width = 232
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60CIDENTR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit16: TDBEdit
                  Left = 248
                  Top = 69
                  Width = 39
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA2DESTUF'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
              end
              object GroupBox6: TGroupBox
                Left = 0
                Top = 99
                Width = 312
                Height = 98
                Caption = 'Consignat'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object ButtonCadastroConsignatario: TSpeedButton
                  Left = 285
                  Top = 12
                  Width = 26
                  Height = 20
                  Cursor = crHandPoint
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
                object Label9: TLabel
                  Left = 8
                  Top = 34
                  Width = 52
                  Height = 13
                  Caption = 'Endere'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBLookupCombo5: TRxDBLookupCombo
                  Left = 6
                  Top = 12
                  Width = 282
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'CLIEA13IDCONSIG'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
                  LookupDisplayIndex = 1
                  LookupSource = DSQueryCliente
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = RxDBLookupCombo5KeyDown
                end
                object DBEdit1: TDBEdit
                  Left = 8
                  Top = 49
                  Width = 282
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60CONSEND'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit9: TDBEdit
                  Left = 8
                  Top = 73
                  Width = 232
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60CONSCIDADE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit15: TDBEdit
                  Left = 248
                  Top = 73
                  Width = 39
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA2CONSUF'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
              end
              object GroupBox7: TGroupBox
                Left = 316
                Top = 99
                Width = 312
                Height = 97
                Caption = 'Redespacho'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object ButtonCadastroRedespacho: TSpeedButton
                  Left = 285
                  Top = 12
                  Width = 26
                  Height = 20
                  Cursor = crHandPoint
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
                object Label10: TLabel
                  Left = 8
                  Top = 34
                  Width = 52
                  Height = 13
                  Caption = 'Endere'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBLookupCombo8: TRxDBLookupCombo
                  Left = 7
                  Top = 12
                  Width = 282
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'CLIEA13IDREDESPACH'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
                  LookupDisplayIndex = 1
                  LookupSource = DSQueryCliente
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = RxDBLookupCombo8KeyDown
                end
                object DBEdit10: TDBEdit
                  Left = 8
                  Top = 48
                  Width = 282
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60ENDREDESP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit11: TDBEdit
                  Left = 8
                  Top = 72
                  Width = 232
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA60CIDREDESP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit19: TDBEdit
                  Left = 248
                  Top = 72
                  Width = 39
                  Height = 21
                  TabStop = False
                  BorderStyle = bsNone
                  Color = 14737632
                  DataField = 'CLIEA2UFREDESP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
              end
              object DBMemo3: TDBMemo
                Left = 8
                Top = 248
                Width = 617
                Height = 63
                DataField = 'FRETTOBS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 6
                WordWrap = False
              end
            end
            object TabSheetFinanceiro: TTabSheet
              ImageIndex = 2
              OnShow = TabSheetFinanceiroShow
              object PanelPlano: TPanel
                Left = 0
                Top = 0
                Width = 618
                Height = 79
                Align = alTop
                BevelOuter = bvNone
                Color = 12572888
                TabOrder = 0
                object Label2: TLabel
                  Left = 2
                  Top = -1
                  Width = 90
                  Height = 13
                  Caption = 'Plano de Contas'
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
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ButtonCadastroPlanoConta: TSpeedButton
                  Left = 584
                  Top = 14
                  Width = 21
                  Height = 20
                  Cursor = crHandPoint
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
                  OnClick = ButtonCadastroPlanoContaClick
                end
                object ButtonCadastroPlanoPagto: TSpeedButton
                  Left = 583
                  Top = 51
                  Width = 21
                  Height = 20
                  Cursor = crHandPoint
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
                object cblPlanoConta: TRxDBLookupCombo
                  Left = 0
                  Top = 14
                  Width = 585
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'PLCTA15COD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  LookupField = 'PLCTA15COD'
                  LookupDisplay = 'PLCTA15COD;PLCTA60DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = dsQueryPlanoConta
                  TabOrder = 0
                  OnKeyDown = cblPlanoContaKeyDown
                end
                object cblPlanoPgto: TRxDBLookupCombo
                  Left = 0
                  Top = 50
                  Width = 585
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'PLRCICOD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  LookupField = 'PLRCICOD'
                  LookupDisplay = 'PLRCICOD;PLRCA60DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = dsQueryPlanoRecebimento
                  TabOrder = 1
                  OnKeyDown = cblPlanoPgtoKeyDown
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 79
                Width = 618
                Height = 264
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Panel8: TPanel
                  Left = 1
                  Top = 47
                  Width = 616
                  Height = 216
                  Align = alClient
                  Caption = 'Panel8'
                  ParentColor = True
                  TabOrder = 0
                  object DBGrid2: TDBGrid
                    Left = 1
                    Top = 1
                    Width = 614
                    Height = 214
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
                        Width = 86
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
                  Width = 616
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
                    Left = 404
                    Top = 5
                    Width = 88
                    Height = 13
                    Caption = 'Numer'#225'rio '#224' Prazo'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label28: TLabel
                    Left = 175
                    Top = 5
                    Width = 84
                    Height = 13
                    Caption = 'Numer'#225'rio '#224' Vista'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object ComboNumerarioPrazo: TRxDBLookupCombo
                    Left = 404
                    Top = 18
                    Width = 211
                    Height = 20
                    Cursor = crHandPoint
                    DropDownCount = 8
                    DisplayEmpty = '...'
                    EmptyValue = '0'
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
                    Left = 175
                    Top = 18
                    Width = 226
                    Height = 20
                    Cursor = crHandPoint
                    DropDownCount = 8
                    DisplayEmpty = '...'
                    EmptyValue = '0'
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
            object TabSheetItem: TTabSheet
              ImageIndex = 3
              OnShow = TabSheetItemShow
              object pnItens: TPanel
                Left = 0
                Top = 0
                Width = 618
                Height = 343
                Align = alClient
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label21: TLabel
                  Left = 421
                  Top = 119
                  Width = 47
                  Height = 13
                  Caption = 'Valorem'
                  FocusControl = DBEdit29
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 1
                  Top = 1
                  Width = 79
                  Height = 13
                  Caption = 'Nat. Opera'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 2
                  Top = 37
                  Width = 88
                  Height = 13
                  Caption = 'Tabela de Frete'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit29: TDBEdit
                  Left = 421
                  Top = 132
                  Width = 107
                  Height = 21
                  TabStop = False
                  Color = 14737632
                  DataField = 'FRITN2VLRVALOREM'
                  DataSource = DSSQLItens
                  ReadOnly = True
                  TabOrder = 7
                end
                object RxDBLookupCombo2: TRxDBLookupCombo
                  Left = 1
                  Top = 15
                  Width = 296
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'CFOPA5COD'
                  DataSource = DSSQLItens
                  DisplayEmpty = '...'
                  EmptyValue = 'null'
                  LookupField = 'CFOPA5COD'
                  LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = DSSQLCFOP
                  TabOrder = 0
                end
                object GroupBox1: TGroupBox
                  Left = 0
                  Top = 75
                  Width = 297
                  Height = 137
                  Caption = 'Dados Notas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                  object Label19: TLabel
                    Left = 9
                    Top = 11
                    Width = 60
                    Height = 13
                    Caption = 'Nota Fiscal'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label20: TLabel
                    Left = 10
                    Top = 84
                    Width = 50
                    Height = 13
                    Caption = 'Vlr Notas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label30: TLabel
                    Left = 95
                    Top = 83
                    Width = 59
                    Height = 13
                    Caption = 'Peso Total'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label34: TLabel
                    Left = 182
                    Top = 83
                    Width = 48
                    Height = 13
                    Caption = 'Volumes'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBMemo1: TDBMemo
                    Left = 8
                    Top = 25
                    Width = 273
                    Height = 56
                    DataField = 'FRITINOTAFISCAL'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object edPeso: TDBEdit
                    Left = 95
                    Top = 98
                    Width = 82
                    Height = 21
                    DataField = 'FRITN3PESO'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object DBEdit26: TDBEdit
                    Left = 182
                    Top = 98
                    Width = 82
                    Height = 21
                    DataField = 'FRITN2VOLUMES'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                  end
                  object DBEdit28: TDBEdit
                    Left = 8
                    Top = 98
                    Width = 84
                    Height = 21
                    DataField = 'FRITN2VLRNOTA'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                end
                object GroupBox2: TGroupBox
                  Left = 0
                  Top = 212
                  Width = 297
                  Height = 99
                  Caption = 'Outros Dados'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 6
                  object Label22: TLabel
                    Left = 7
                    Top = 53
                    Width = 42
                    Height = 13
                    Caption = 'Esp'#233'cie'
                    FocusControl = DBEdit30
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label23: TLabel
                    Left = 136
                    Top = 53
                    Width = 35
                    Height = 13
                    Caption = 'Marca'
                    FocusControl = DBEdit31
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label29: TLabel
                    Left = 8
                    Top = 14
                    Width = 87
                    Height = 13
                    Caption = 'Natureza Carga'
                    FocusControl = DBEdit36
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit30: TDBEdit
                    Left = 6
                    Top = 69
                    Width = 125
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'FRITA30ESPECIE'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit31: TDBEdit
                    Left = 134
                    Top = 69
                    Width = 149
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'FRITA30MARCA'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBEdit36: TDBEdit
                    Left = 7
                    Top = 30
                    Width = 276
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'FRITANATCARGA'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object GroupBox3: TGroupBox
                  Left = 304
                  Top = 76
                  Width = 305
                  Height = 165
                  Caption = 'Valores'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 5
                  object Label26: TLabel
                    Left = 7
                    Top = 12
                    Width = 57
                    Height = 13
                    Caption = 'Vlr. Coleta'
                    FocusControl = dbeColeta
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label27: TLabel
                    Left = 89
                    Top = 12
                    Width = 65
                    Height = 13
                    Caption = 'Vlr. Entrega'
                    FocusControl = dbeEntrega
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label31: TLabel
                    Left = 89
                    Top = 123
                    Width = 62
                    Height = 13
                    Caption = 'Valor Frete'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 6
                    Top = 51
                    Width = 45
                    Height = 13
                    Caption = 'ICMS %'
                    FocusControl = DBEdit32
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label32: TLabel
                    Left = 89
                    Top = 51
                    Width = 67
                    Height = 13
                    Caption = 'Descr. ICMS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label25: TLabel
                    Left = 182
                    Top = 123
                    Width = 78
                    Height = 13
                    Caption = 'Valor de ICMS'
                    FocusControl = DBEdit33
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label35: TLabel
                    Left = 6
                    Top = 88
                    Width = 45
                    Height = 13
                    Caption = 'Ped'#225'gio'
                    FocusControl = DBEdit27
                  end
                  object Label36: TLabel
                    Left = 182
                    Top = 88
                    Width = 65
                    Height = 13
                    Caption = 'Vlr Valorem'
                    FocusControl = DBEdit39
                  end
                  object Label37: TLabel
                    Left = 89
                    Top = 89
                    Width = 77
                    Height = 13
                    Caption = 'Base Valorem'
                    FocusControl = DBEdit40
                  end
                  object Label38: TLabel
                    Left = 6
                    Top = 123
                    Width = 59
                    Height = 13
                    Caption = 'Valor Peso'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label4: TLabel
                    Left = 184
                    Top = 12
                    Width = 95
                    Height = 13
                    Caption = 'Outras Despesas'
                    FocusControl = DBEdit3
                  end
                  object dbeColeta: TDBEdit
                    Left = 4
                    Top = 27
                    Width = 84
                    Height = 21
                    DataField = 'FRITN3CAT'
                    DataSource = DSSQLItens
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object dbeEntrega: TDBEdit
                    Left = 89
                    Top = 27
                    Width = 88
                    Height = 21
                    DataField = 'FRITN3OUTROS'
                    DataSource = DSSQLItens
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object DBEdit32: TDBEdit
                    Left = 4
                    Top = 65
                    Width = 84
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'FRITN2ICMS'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 2
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object DBEdit25: TDBEdit
                    Left = 89
                    Top = 65
                    Width = 187
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'DescrIcms'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object DBEdit33: TDBEdit
                    Left = 182
                    Top = 135
                    Width = 91
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'FRITN2VLRICMS'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object DBEdit27: TDBEdit
                    Left = 5
                    Top = 102
                    Width = 81
                    Height = 21
                    DataField = 'FRITN2PEDAGIO'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object DBEdit39: TDBEdit
                    Left = 182
                    Top = 102
                    Width = 91
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'FRITN2VLRVALOREM'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object DBEdit40: TDBEdit
                    Left = 89
                    Top = 102
                    Width = 88
                    Height = 21
                    DataField = 'FRITN4PERCVALOREM'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                  object DBEdit38: TDBEdit
                    Left = 89
                    Top = 135
                    Width = 88
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'PRODN2VLR'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 9
                  end
                  object DBEdit22: TDBEdit
                    Left = 5
                    Top = 135
                    Width = 81
                    Height = 21
                    TabStop = False
                    Color = 14737632
                    DataField = 'FRITN2PESOVLR'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object DBEdit3: TDBEdit
                    Left = 184
                    Top = 27
                    Width = 92
                    Height = 21
                    DataField = 'FRITN2OUTRASDESP'
                    DataSource = DSSQLItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 10
                    OnEnter = edPesoEnter
                    OnExit = edPesoExit
                  end
                end
                object cblTabelaFrete: TRxDBLookupCombo
                  Left = 1
                  Top = 52
                  Width = 295
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'TBFTICOD'
                  DataSource = DSSQLItens
                  DisplayEmpty = '...'
                  EmptyValue = '0'
                  LookupField = 'TBFTICOD'
                  LookupDisplay = 'TBFTICOD;TBFTA60DESCRICAO'
                  LookupDisplayIndex = 1
                  LookupSource = dsSQLTabelaFreteLookUp
                  TabOrder = 2
                  OnChange = edPesoExit
                end
                object chkColeta: TDBCheckBox
                  Left = 315
                  Top = 19
                  Width = 97
                  Height = 17
                  Cursor = crHandPoint
                  Caption = 'Coleta'
                  DataField = 'FRITCCOLETA'
                  DataSource = DSSQLItens
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnClick = chkColetaClick
                end
                object chkEntrega: TDBCheckBox
                  Left = 315
                  Top = 52
                  Width = 97
                  Height = 17
                  Cursor = crHandPoint
                  Caption = 'Entrega'
                  DataField = 'FRITCENTREGA'
                  DataSource = DSSQLItens
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnClick = chkColetaClick
                end
                object DBGrid3: TDBGrid
                  Left = 304
                  Top = 243
                  Width = 312
                  Height = 88
                  DataSource = DataSource1
                  TabOrder = 8
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'TBFTICOD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TFFVICOD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TBFCICOD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TFFVN2PESOMIN'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TFFVN2PESOMAX'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TFFVN2PESOVLR'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CIDAICOD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ICMUA2UF'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TBFCCCALCULOPESO'
                      Visible = True
                    end>
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 78
            Width = 626
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 626
            Height = 78
            object Label5: TLabel
              Left = 229
              Top = 42
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
            object Label7: TLabel
              Left = 7
              Top = 42
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
              Left = 129
              Top = 42
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
            object Label14: TLabel
              Left = 128
              Top = 2
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
            object Label17: TLabel
              Left = 229
              Top = 2
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
            object Label39: TLabel
              Left = 6
              Top = 2
              Width = 108
              Height = 13
              Caption = 'N'#250'mero Formul'#225'rio'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 228
              Top = 56
              Width = 116
              Height = 17
              BorderStyle = bsNone
              DataField = 'FRETN2VLRTOTAL'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 56
              Width = 117
              Height = 17
              BorderStyle = bsNone
              DataField = 'FRETN2BASECALCULO'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit8: TDBEdit
              Left = 127
              Top = 56
              Width = 94
              Height = 17
              BorderStyle = bsNone
              DataField = 'FRETN2ICMS'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object RadioPago: TDBRadioGroup
              Left = 356
              Top = 5
              Width = 181
              Height = 33
              Cursor = crHandPoint
              Columns = 2
              DataField = 'FRETCPAGO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'Cif - Pago'
                'Fob - Pagar')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
              OnChange = RadioPagoChange
            end
            object ComboStatus: TRxDBComboBox
              Left = 128
              Top = 16
              Width = 90
              Height = 21
              Cursor = crHandPoint
              Style = csDropDownList
              DataField = 'FRETCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado')
              TabOrder = 0
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object DBEdit24: TDBEdit
              Left = 229
              Top = 16
              Width = 116
              Height = 21
              DataField = 'FRETN2VLRCOMISSAO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 3
              Top = 16
              Width = 118
              Height = 21
              TabStop = False
              DataField = 'FRETINROFORM'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 6
            end
            object gboFaixaDif: TGroupBox
              Left = 357
              Top = 40
              Width = 182
              Height = 35
              Caption = 'Faixa Peso da Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 136
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              object edCidDiferente: TEdit
                Left = 4
                Top = 14
                Width = 173
                Height = 17
                TabStop = False
                BorderStyle = bsNone
                Color = 14737632
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnConhecimentodeFrete: TMenuItem
      Caption = 'Conhecimento de Frete'
      OnClick = MnConhecimentodeFreteClick
    end
    object mnRomaneiodeFrete: TMenuItem
      Caption = 'Romaneio de Frete'
      Visible = False
      OnClick = mnRomaneiodeFreteClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    AfterInsert = SQLTemplateAfterInsert
    BeforeCancel = SQLTemplateBeforeCancel
    AfterCancel = SQLTemplateAfterCancel
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
      ConstraintErrorMessage = '1'
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
      Visible = False
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
      Visible = False
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA20REMEIE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20REMEIE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDREMETE'
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
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60REMECID: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60REMECID'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDREMETE'
      Visible = False
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
      Visible = False
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA13IDDESTINO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'CLIEA13IDDESTINO'
      Origin = 'DB.FRETE.CLIEA13IDDESTINO'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60CIDENTR: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CIDENTR'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60DESTNOME: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldKind = fkLookup
      FieldName = 'CLIEA60DESTNOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDDESTINO'
      Visible = False
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
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2DESTUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2DESTUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Visible = False
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEADESTCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEADESTCIDADE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDDESTINO'
      Visible = False
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
      Visible = False
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA20DESTIE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20DESTIE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDDESTINO'
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
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60CONSCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CONSCIDADE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60CONSEND: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CONSEND'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2CONSUF: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2CONSUF'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDCONSIG'
      Visible = False
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA14CONSCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14CONSCNPJ'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDCONSIG'
      Size = 14
      Lookup = True
    end
    object SQLTemplateCLIEA20CONSIE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20CONSIE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13IDCONSIG'
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
      Visible = False
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN3QTDETOTAL: TBCDField
      DisplayLabel = 'Quantidade Total'
      FieldName = 'FRETN3QTDETOTAL'
      Origin = 'DB.FRETE.FRETN3QTDETOTAL'
      Visible = False
      EditFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN2BASECALCULO: TBCDField
      DisplayLabel = 'Base de C'#225'lculo'
      FieldName = 'FRETN2BASECALCULO'
      Origin = 'DB.FRETE.FRETN2BASECALCULO'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRETN2ICMS: TBCDField
      DisplayLabel = 'ICMS'
      FieldName = 'FRETN2ICMS'
      Origin = 'DB.FRETE.FRETN2ICMS'
      Visible = False
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
      Lookup = True
    end
    object SQLTemplateCLIEA13IDREDESPACH: TStringField
      FieldName = 'CLIEA13IDREDESPACH'
      Origin = 'DB.FRETE.CLIEA13IDREDESPACH'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60RESDENOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60RESDENOME'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13IDREDESPACH'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60ENDREDESP: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60ENDREDESP'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13IDREDESPACH'
      Visible = False
      Lookup = True
    end
    object SQLTemplateCLIEA60CIDREDESP: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CIDREDESP'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13IDREDESPACH'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2UFREDESP: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2UFREDESP'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13IDREDESPACH'
      Visible = False
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA14CNPJREDES: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA14CNPJREDES'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13IDREDESPACH'
      Visible = False
      Lookup = True
    end
    object SQLTemplateCLIEA20REDESIE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA20REDESIE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'CLIEA20IE'
      LookupResultField = 'CLIEA13ID'
      KeyFields = 'CLIEA13IDREDESPACH'
      Lookup = True
    end
    object SQLTemplateFRETINROFORM: TIntegerField
      FieldName = 'FRETINROFORM'
      Origin = 'DB.FRETE.FRETINROFORM'
    end
    object SQLTemplateFRETTOBS: TStringField
      DisplayLabel = 'Obs.:'
      FieldName = 'FRETTOBS'
      Origin = 'DB.FRETE.FRETTOBS'
      Size = 255
    end
  end
  inherited ActionList1: TActionList
    inherited actAnterior: TDataSetPrior
      Enabled = False
    end
    inherited actNovo: TDataSetInsert
      Enabled = False
    end
    inherited actAlterar: TDataSetEdit
      Enabled = False
    end
    inherited actGravar: TDataSetPost
      Enabled = False
    end
    inherited actCancelar: TDataSetCancel
      Enabled = False
    end
    inherited actExcluir: TDataSetDelete
      Enabled = False
    end
    inherited actProximo: TDataSetNext
      Enabled = False
    end
    inherited actLookup: TAction
      Enabled = False
    end
  end
  object QueryCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'CLIEA13ID,'
      'CLIEA60ENDRES,'
      'CLIEA60RAZAOSOC,'
      'CLIEA60CIDRES, '
      'CLIEA14CGC,'
      'CLIEA2UFRES,'
      'CLIEA20IE'
      'from'
      'CLIENTE'
      'order by'
      'CLIEA60RAZAOSOC')
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
      'SELECT '
      'PLANORECEBIMENTO.PLRCICOD,'
      'PLANORECEBIMENTO.PLRCA60DESCR,'
      'max(PLANORECEBIMENTOPARCELA.PLRPINRODIAS) as PrazoMax'
      'FROM '
      'PLANORECEBIMENTO'
      'left outer join PLANORECEBIMENTOPARCELA on '
      'PLANORECEBIMENTOPARCELA.PLRCICOD = PLANORECEBIMENTO.PLRCICOD'
      'group by'
      'PLANORECEBIMENTO.PLRCICOD,'
      'PLANORECEBIMENTO.PLRCA60DESCR')
    Left = 465
    object QueryPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object QueryPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object QueryPlanoRecebimentoPRAZOMAX: TIntegerField
      FieldName = 'PRAZOMAX'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINRODIAS'
    end
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
      DisplayWidth = 10
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
    Left = 36
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
      DisplayWidth = 10
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
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
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
    object TblFreteRemeIE: TStringField
      FieldName = 'RemeIE'
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
    object TblFreteDestIE: TStringField
      FieldName = 'DestIE'
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
    object TblFreteConsCNPJ: TStringField
      FieldName = 'ConsCNPJ'
      Size = 14
    end
    object TblFreteConsIE: TStringField
      FieldName = 'ConsIE'
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
    object TblFreteVlrColeta: TFloatField
      FieldName = 'VlrColeta'
    end
    object TblFreteVlrEntrega: TFloatField
      FieldName = 'VlrEntrega'
    end
    object TblFreteNaturezaCarga: TStringField
      FieldName = 'NaturezaCarga'
    end
    object TblFretePeso: TFloatField
      FieldName = 'Peso'
    end
    object TblFreteBaseCalculoIcms: TFloatField
      FieldName = 'BaseCalculoIcms'
    end
    object TblFreteIcms: TFloatField
      FieldName = 'Icms'
    end
    object TblFretePercIcms: TFloatField
      FieldName = 'PercIcms'
    end
    object TblFreteDescrIcms: TStringField
      FieldName = 'DescrIcms'
    end
    object TblFretePesoTotal: TFloatField
      FieldName = 'PesoTotal'
    end
    object TblFreteNotasTotalVlr: TFloatField
      DisplayWidth = 30
      FieldName = 'NotasTotalVlr'
    end
    object TblFreteNatOperacao: TStringField
      FieldName = 'NatOperacao'
    end
    object TblFreteCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object TblFreteQtdeVolumes: TFloatField
      FieldName = 'QtdeVolumes'
    end
    object TblFreteFreteValorem: TFloatField
      FieldName = 'FreteValorem'
    end
    object TblFreteFretePedagio: TFloatField
      FieldName = 'FretePedagio'
    end
    object TblFreteRedespCNPJ: TStringField
      FieldName = 'RedespCNPJ'
      Size = 14
    end
    object TblFreteRedesNome: TStringField
      FieldName = 'RedesNome'
      Size = 60
    end
    object TblFreteResdepEnd: TStringField
      FieldName = 'ResdepEnd'
      Size = 60
    end
    object TblFreteRedespCidade: TStringField
      FieldName = 'RedespCidade'
      Size = 60
    end
    object TblFreteRedespUF: TStringField
      FieldName = 'RedespUF'
      Size = 2
    end
    object TblFreteRedespIE: TStringField
      FieldName = 'RedespIE'
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
    Left = 294
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
    AutoCalcFields = False
    BeforeEdit = SQLItensBeforeEdit
    BeforePost = SQLItensBeforePost
    AfterPost = SQLItensAfterPost
    OnCalcFields = SQLItensCalcFields
    OnNewRecord = SQLItensNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From FreteItem '
      'Where'
      '(%MFrete)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFrete'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 64
    Top = 472
    object SQLItensFRETA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETEITEM.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensFRITICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd. Frete'
      FieldName = 'FRITICOD'
      Origin = 'DB.FRETEITEM.FRITICOD'
    end
    object SQLItensPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.FRETEITEM.PRODICOD'
    end
    object SQLItensPRODN2VLR: TBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'PRODN2VLR'
      Origin = 'DB.FRETEITEM.PRODN2VLR'
      OnChange = SQLItensFRITN2VLRNOTAChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN2ICMS: TBCDField
      DisplayLabel = '% ICMS'
      FieldName = 'FRITN2ICMS'
      Origin = 'DB.FRETEITEM.FRITN2ICMS'
      OnChange = SQLItensFRITN2VLRNOTAChange
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN2VLRICMS: TBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'FRITN2VLRICMS'
      Origin = 'DB.FRETEITEM.FRITN2VLRICMS'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLItensUNIDICOD: TIntegerField
      DisplayLabel = 'C'#243'd Unidade'
      FieldName = 'UNIDICOD'
      Origin = 'DB.FRETEITEM.UNIDICOD'
    end
    object SQLItensFRITN3QTDE: TBCDField
      Tag = 1
      DisplayLabel = 'Qtde'
      FieldName = 'FRITN3QTDE'
      Origin = 'DB.FRETEITEM.FRITN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITA30ESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'FRITA30ESPECIE'
      Origin = 'DB.FRETEITEM.FRITA30ESPECIE'
      FixedChar = True
      Size = 30
    end
    object SQLItensFRITA30MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'FRITA30MARCA'
      Origin = 'DB.FRETEITEM.FRITA30MARCA'
      FixedChar = True
      Size = 30
    end
    object SQLItensREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.FRETEITEM.REGISTRO'
    end
    object SQLItensPENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.FRETEITEM.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLItensPRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = QueryProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLItensUNIDA5DESCR: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkLookup
      FieldName = 'UNIDA5DESCR'
      LookupDataSet = QueryUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 10
      Lookup = True
    end
    object SQLItensFRITN3OUTROS: TBCDField
      DisplayLabel = 'Vlr. Entrega'
      FieldName = 'FRITN3OUTROS'
      Origin = 'DB.FRETEITEM.FRITN3OUTROS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITANATCARGA: TStringField
      DisplayLabel = 'Nat. Carga'
      FieldName = 'FRITANATCARGA'
      Origin = 'DB.FRETEITEM.FRITANATCARGA'
      FixedChar = True
      Size = 30
    end
    object SQLItensFRITN3PESO: TBCDField
      Tag = 1
      DisplayLabel = 'Peso Total'
      FieldName = 'FRITN3PESO'
      Origin = 'DB.FRETEITEM.FRITN3PESO'
      OnChange = SQLItensFRITN2VLRNOTAChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN2VLRNOTA: TBCDField
      Tag = 1
      DisplayLabel = 'Total Nota'
      FieldName = 'FRITN2VLRNOTA'
      Origin = 'DB.FRETEITEM.FRITN2VLRNOTA'
      OnChange = SQLItensFRITN2VLRNOTAChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITINOTAFISCAL: TStringField
      Tag = 1
      DisplayLabel = 'Notas Fiscais'
      FieldName = 'FRITINOTAFISCAL'
      Origin = 'DB.FRETEITEM.FRITINOTAFISCAL'
      FixedChar = True
      Size = 254
    end
    object SQLItensFRITN2VLRVALOREM: TBCDField
      DisplayLabel = 'Vlr Total Valorem'
      FieldName = 'FRITN2VLRVALOREM'
      Origin = 'DB.FRETEITEM.FRITN2VLRVALOREM'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensCFOPA5COD: TStringField
      Tag = 1
      FieldName = 'CFOPA5COD'
      Origin = 'DB.FRETEITEM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLItensFRITN2VOLUMES: TBCDField
      FieldName = 'FRITN2VOLUMES'
      Origin = 'DB.FRETEITEM.FRITN2VOLUMES'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN2PEDAGIO: TBCDField
      FieldName = 'FRITN2PEDAGIO'
      Origin = 'DB.FRETEITEM.FRITN2PEDAGIO'
      OnChange = SQLItensFRITN2VLRNOTAChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITN4PERCVALOREM: TBCDField
      Tag = 1
      DisplayWidth = 16
      FieldName = 'FRITN4PERCVALOREM'
      Origin = 'DB.FRETEITEM.FRITN4PERCVALOREM'
      OnChange = SQLItensFRITN2VLRNOTAChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SQLItensFRITN2PESOVLR: TBCDField
      DisplayLabel = 'Valor Peso'
      FieldName = 'FRITN2PESOVLR'
      Origin = 'DB.FRETEITEM.FRITN2PESOVLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLItensFRITCCOLETA: TStringField
      FieldName = 'FRITCCOLETA'
      Origin = 'DB.FRETEITEM.FRITCCOLETA'
      FixedChar = True
      Size = 1
    end
    object SQLItensFRITCENTREGA: TStringField
      FieldName = 'FRITCENTREGA'
      Origin = 'DB.FRETEITEM.FRITCENTREGA'
      FixedChar = True
      Size = 1
    end
    object SQLItensTBFTICOD: TIntegerField
      FieldName = 'TBFTICOD'
      Origin = 'DB.FRETEITEM.TBFTICOD'
    end
    object SQLItensDescrIcms: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescrIcms'
      Calculated = True
    end
    object SQLItensCIDAICOD: TIntegerField
      FieldName = 'CIDAICOD'
      Origin = 'DB.FRETEITEM.CIDAICOD'
    end
    object SQLItensFRITN3CAT: TBCDField
      DisplayLabel = 'Vlr Coleta'
      FieldName = 'FRITN3CAT'
      Origin = 'DB.FRETEITEM.FRITN3CAT'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLItensFRITN2OUTRASDESP: TBCDField
      DisplayLabel = 'Outras Despesas'
      FieldName = 'FRITN2OUTRASDESP'
      Origin = 'DB.FRETEITEM.FRITN2OUTRASDESP'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLItens: TDataSource
    DataSet = SQLItens
    OnDataChange = DSSQLItensDataChange
    Left = 97
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
  object QueryProduto: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT '
      'PRODICOD,'
      'PRODA60DESCR,'
      'PRODN3VLRVENDA,'
      'ICMSICOD'
      'FROM PRODUTO')
    Left = 573
    Top = 1
    object QueryProdutoPRODICOD: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object QueryProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object QueryProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object QueryProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object QueryProdutoICMSN2ALIQUOTA: TStringField
      FieldKind = fkLookup
      FieldName = 'ICMSN2ALIQUOTA'
      LookupDataSet = QueryIcms
      LookupKeyFields = 'ICMSICOD'
      LookupResultField = 'ICMSN2ALIQUOTA'
      KeyFields = 'ICMSICOD'
      Size = 60
      Lookup = True
    end
    object QueryProdutoICMSA60DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'ICMSA60DESCR '
      LookupDataSet = QueryIcms
      LookupKeyFields = 'ICMSICOD'
      LookupResultField = 'ICMSA60DESCR'
      KeyFields = 'ICMSICOD'
      Lookup = True
    end
  end
  object QueryUnidade: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT UNIDICOD, UNIDA5DESCR FROM UNIDADE')
    Left = 601
    Top = 1
  end
  object QueryIcms: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'ICMSICOD,'
      'ICMSN2ALIQUOTA,'
      'ICMSA60DESCR  '
      'FROM'
      'ICMS')
    Left = 629
    Top = 1
    object QueryIcmsICMSICOD: TIntegerField
      DisplayWidth = 10
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
    end
    object QueryIcmsICMSN2ALIQUOTA: TBCDField
      FieldName = 'ICMSN2ALIQUOTA'
      Origin = 'DB.ICMS.ICMSN2ALIQUOTA'
      Precision = 15
      Size = 3
    end
    object QueryIcmsICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = QueryProduto
    OnDataChange = DSSQLProdutoDataChange
    Left = 657
    Top = 1
  end
  object DSQueryUnidade: TDataSource
    DataSet = QueryUnidade
    Left = 685
    Top = 1
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CFOP')
    Macros = <>
    Left = 56
    Top = 192
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
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 88
    Top = 192
  end
  object DSQueryCliente: TDataSource
    DataSet = QueryCliente
    Left = 437
    Top = 29
  end
  object DSQueryFuncionario: TDataSource
    DataSet = QueryFuncionario
    Left = 520
    Top = 29
  end
  object DSQueryVeiculo: TDataSource
    DataSet = QueryVeiculo
    Left = 548
    Top = 29
  end
  object SQLTabelaFreteLookUp: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct * from TABELAFRETE')
    Macros = <>
    Left = 672
    Top = 88
    object SQLTabelaFreteLookUpTBFTICOD: TIntegerField
      FieldName = 'TBFTICOD'
    end
    object SQLTabelaFreteLookUpTBFTA60DESCRICAO: TStringField
      FieldName = 'TBFTA60DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object SQLTabelaFreteLookUpTBFTA60ORIGEM: TStringField
      FieldName = 'TBFTA60ORIGEM'
      FixedChar = True
      Size = 60
    end
    object SQLTabelaFreteLookUpTBFTA1000OBS: TMemoField
      FieldName = 'TBFTA1000OBS'
      BlobType = ftMemo
      Size = 1000
    end
  end
  object dsSQLTabelaFreteLookUp: TDataSource
    DataSet = SQLTabelaFreteLookUp
    Left = 672
    Top = 116
  end
  object SQLTabelaFreteFaixaPeso: TRxQuery
    DatabaseName = 'DB'
    DataSource = dsSQLTabelFrete
    SQL.Strings = (
      'select '
      'TABELAFRETEFAIXAVLR.*,'
      'TABELAFRETECIDADE.CIDAICOD,'
      'TABELAFRETECIDADE.ICMUA2UF ,'
      'TABELAFRETECIDADE.TBFCCCALCULOPESO '
      'from '
      'TABELAFRETEFAIXAVLR '
      
        'left outer join TABELAFRETECIDADE on TABELAFRETECIDADE.TBFCICOD ' +
        '= TABELAFRETEFAIXAVLR.TBFCICOD'
      'where'
      'TABELAFRETEFAIXAVLR.TBFTICOD = :TBFTICOD '
      'and'
      'TABELAFRETEFAIXAVLR.TBFCICOD = :TBFCICOD'
      'and'
      ' (%Mfiltro)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Mfiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 737
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TBFTICOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'TBFCICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLTabelaFreteFaixaPesoTBFTICOD: TIntegerField
      FieldName = 'TBFTICOD'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TBFTICOD'
    end
    object SQLTabelaFreteFaixaPesoTFFVICOD: TIntegerField
      FieldName = 'TFFVICOD'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TFFVICOD'
    end
    object SQLTabelaFreteFaixaPesoTBFCICOD: TIntegerField
      FieldName = 'TBFCICOD'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TBFCICOD'
    end
    object SQLTabelaFreteFaixaPesoTFFVN2PESOMIN: TBCDField
      FieldName = 'TFFVN2PESOMIN'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TFFVN2PESOMIN'
      Precision = 15
      Size = 2
    end
    object SQLTabelaFreteFaixaPesoTFFVN2PESOMAX: TBCDField
      FieldName = 'TFFVN2PESOMAX'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TFFVN2PESOMAX'
      Precision = 15
      Size = 2
    end
    object SQLTabelaFreteFaixaPesoTFFVN2PESOVLR: TBCDField
      FieldName = 'TFFVN2PESOVLR'
      Origin = 'DB.TABELAFRETEFAIXAVLR.TFFVN2PESOVLR'
      Precision = 15
      Size = 2
    end
    object SQLTabelaFreteFaixaPesoCIDAICOD: TIntegerField
      FieldName = 'CIDAICOD'
      Origin = 'DB.TABELAFRETECIDADE.CIDAICOD'
    end
    object SQLTabelaFreteFaixaPesoICMUA2UF: TStringField
      FieldName = 'ICMUA2UF'
      Origin = 'DB.TABELAFRETECIDADE.ICMUA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTabelaFreteFaixaPesoTBFCCCALCULOPESO: TStringField
      FieldName = 'TBFCCCALCULOPESO'
      Origin = 'DB.TABELAFRETECIDADE.TBFCCCALCULOPESO'
      FixedChar = True
      Size = 1
    end
  end
  object dsQueryPlanoRecebimento: TDataSource
    DataSet = QueryPlanoRecebimento
    Left = 465
    Top = 29
  end
  object dsQueryPlanoConta: TDataSource
    DataSet = QueryPlanoConta
    Left = 493
    Top = 29
  end
  object SQLTabelFrete: TRxQuery
    DatabaseName = 'DB'
    DataSource = dsSQLTabelaFreteLookUp
    SQL.Strings = (
      'select'
      'distinct'
      'TABELAFRETE.TBFTICOD,'
      'TABELAFRETE.TBFTA60DESCRICAO,'
      'TABELAFRETECIDADE.TBFCICOD,'
      'TABELAFRETECIDADE.CIDAICOD,'
      'TABELAFRETECIDADE.TBFCCCALCULOPESO,'
      'TABELAFRETECIDADE.TBFCCCOLETA,'
      'TABELAFRETECIDADE.TBFCCENTREGA,'
      'TABELAFRETECIDADE.TBFCN2COLETAVLR,'
      'TABELAFRETECIDADE.TBFCN2COLETAEXCVLR,'
      'TABELAFRETECIDADE.TBFCN2COLETAPESOMX,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAVLR,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAEXCVLR,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAPESOMX,'
      'TABELAFRETECIDADE.TBFCN2TARIFAMINIMA,'
      'TABELAFRETECIDADE.TBFCN2VALORPESOEXEC,'
      ''
      'max(TABELAFRETEFAIXAVLR.TFFVN2PESOMAX) as PesoMax'
      'from TABELAFRETE'
      'left outer join TABELAFRETECIDADE on'
      '(TABELAFRETECIDADE.TBFTICOD = TABELAFRETE.TBFTICOD)'
      'left outer join TABELAFRETEFAIXAVLR on'
      '(TABELAFRETEFAIXAVLR.TBFCICOD = TABELAFRETECIDADE.TBFCICOD)'
      'and'
      '(TABELAFRETEFAIXAVLR.TBFTICOD = TABELAFRETECIDADE.TBFTICOD)'
      'where'
      'TABELAFRETE.TBFTICOD = :TBFTICOD'
      'and'
      '(%MCidade)'
      'group by'
      'TABELAFRETE.TBFTICOD,'
      'TABELAFRETE.TBFTA60DESCRICAO,'
      'TABELAFRETECIDADE.TBFCICOD,'
      'TABELAFRETECIDADE.CIDAICOD,'
      'TABELAFRETECIDADE.TBFCCCALCULOPESO,'
      'TABELAFRETECIDADE.TBFCCCOLETA,'
      'TABELAFRETECIDADE.TBFCCENTREGA,'
      'TABELAFRETECIDADE.TBFCN2COLETAVLR,'
      'TABELAFRETECIDADE.TBFCN2COLETAEXCVLR,'
      'TABELAFRETECIDADE.TBFCN2COLETAPESOMX,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAVLR,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAEXCVLR,'
      'TABELAFRETECIDADE.TBFCN2ENTREGAPESOMX,'
      'TABELAFRETECIDADE.TBFCN2TARIFAMINIMA,'
      'TABELAFRETECIDADE.TBFCN2VALORPESOEXEC')
    Macros = <
      item
        DataType = ftString
        Name = 'MCidade'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 704
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TBFTICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLTabelFreteTBFTICOD: TIntegerField
      FieldName = 'TBFTICOD'
    end
    object SQLTabelFreteTBFTA60DESCRICAO: TStringField
      FieldName = 'TBFTA60DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object SQLTabelFreteCIDAICOD: TIntegerField
      FieldName = 'CIDAICOD'
    end
    object SQLTabelFreteTBFCCCALCULOPESO: TStringField
      FieldName = 'TBFCCCALCULOPESO'
      FixedChar = True
      Size = 1
    end
    object SQLTabelFreteTBFCCCOLETA: TStringField
      FieldName = 'TBFCCCOLETA'
      FixedChar = True
      Size = 1
    end
    object SQLTabelFreteTBFCCENTREGA: TStringField
      FieldName = 'TBFCCENTREGA'
      FixedChar = True
      Size = 1
    end
    object SQLTabelFreteTBFCN2COLETAVLR: TBCDField
      FieldName = 'TBFCN2COLETAVLR'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2COLETAEXCVLR: TBCDField
      FieldName = 'TBFCN2COLETAEXCVLR'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2COLETAPESOMX: TBCDField
      FieldName = 'TBFCN2COLETAPESOMX'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2ENTREGAVLR: TBCDField
      FieldName = 'TBFCN2ENTREGAVLR'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2ENTREGAEXCVLR: TBCDField
      FieldName = 'TBFCN2ENTREGAEXCVLR'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2ENTREGAPESOMX: TBCDField
      FieldName = 'TBFCN2ENTREGAPESOMX'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2TARIFAMINIMA: TBCDField
      FieldName = 'TBFCN2TARIFAMINIMA'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCN2VALORPESOEXEC: TBCDField
      FieldName = 'TBFCN2VALORPESOEXEC'
      Precision = 15
      Size = 2
    end
    object SQLTabelFretePESOMAX: TBCDField
      FieldName = 'PESOMAX'
      Precision = 15
      Size = 2
    end
    object SQLTabelFreteTBFCICOD: TIntegerField
      FieldName = 'TBFCICOD'
    end
  end
  object dsSQLTabelFrete: TDataSource
    DataSet = SQLTabelFrete
    Left = 704
    Top = 116
  end
  object DataSource1: TDataSource
    DataSet = SQLTabelaFreteFaixaPeso
    Left = 736
    Top = 112
  end
end
