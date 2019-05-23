inherited FormCadastroFrete: TFormCadastroFrete
  Left = 164
  Top = 123
  Caption = 'Cadastro de Fretes'
  ClientHeight = 521
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 521
    inherited PanelCentral: TPanel
      Height = 447
      inherited PanelBarra: TPanel
        Height = 447
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
          Top = 83
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
          OnClick = ButtonFinanceiroClick
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 447
        inherited Panel5: TPanel
          Height = 447
          inherited PagePrincipal: TPageControl
            Top = 89
            Height = 358
            inherited TabSheetConsulta: TTabSheet
              object Splitter1: TSplitter [0]
                Left = 0
                Top = 168
                Width = 749
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Beveled = True
              end
              inherited DBGridLista: TDBGrid
                Height = 121
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
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
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
                Top = 173
                Width = 749
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
              object Label1: TLabel
                Left = 2
                Top = 275
                Width = 27
                Height = 13
                Caption = 'Obs.:'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 2
                Top = -1
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
              object Label10: TLabel
                Left = 2
                Top = 76
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
              object Label11: TLabel
                Left = 2
                Top = 155
                Width = 78
                Height = 13
                Caption = 'Consignat'#225'rio'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 2
                Top = 38
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
              object Label13: TLabel
                Left = 2
                Top = 116
                Width = 93
                Height = 13
                Caption = 'Local de Entrega'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCadastroRemetente: TSpeedButton
                Left = 103
                Top = 15
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
              object ButtonCadastroDestinatario: TSpeedButton
                Left = 103
                Top = 92
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
              object ButtonCadastroConsignatario: TSpeedButton
                Left = 103
                Top = 171
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
              object Label15: TLabel
                Left = 2
                Top = 196
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
                Left = 103
                Top = 211
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
                Left = 2
                Top = 236
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
                Left = 103
                Top = 251
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
              object DBEdit1: TDBEdit
                Left = 2
                Top = 291
                Width = 647
                Height = 21
                DataField = 'FRETTOBS'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit9: TDBEdit
                Left = 2
                Top = 15
                Width = 100
                Height = 21
                DataField = 'CLIEA13IDREMETE'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit9KeyDown
              end
              object DBEdit10: TDBEdit
                Left = 2
                Top = 92
                Width = 100
                Height = 21
                DataField = 'CLIEA13IDDESTINO'
                DataSource = DSTemplate
                TabOrder = 1
                OnKeyDown = DBEdit10KeyDown
              end
              object DBEdit11: TDBEdit
                Left = 2
                Top = 171
                Width = 100
                Height = 21
                DataField = 'CLIEA13IDCONSIG'
                DataSource = DSTemplate
                TabOrder = 2
                OnKeyDown = DBEdit11KeyDown
              end
              object DBEdit12: TDBEdit
                Left = 2
                Top = 54
                Width = 399
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60ENDCOLETA'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 6
              end
              object DBEdit13: TDBEdit
                Left = 2
                Top = 132
                Width = 647
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60ENDENTREGA'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 7
              end
              object DBEdit14: TDBEdit
                Left = 128
                Top = 15
                Width = 520
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60REMENOME'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 8
              end
              object DBEdit15: TDBEdit
                Left = 128
                Top = 92
                Width = 521
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60DESTNOME'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 9
              end
              object DBEdit16: TDBEdit
                Left = 128
                Top = 171
                Width = 521
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60CONSNOME'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 10
              end
              object DBEdit19: TDBEdit
                Left = 2
                Top = 212
                Width = 100
                Height = 21
                DataField = 'FUNCA13ID'
                DataSource = DSTemplate
                TabOrder = 3
                OnKeyDown = DBEdit19KeyDown
              end
              object DBEdit20: TDBEdit
                Left = 128
                Top = 212
                Width = 520
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'FUNCA60NOME'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 11
              end
              object DBEdit21: TDBEdit
                Left = 403
                Top = 54
                Width = 246
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'CLIEA60REMECID'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 12
              end
              object DBEdit22: TDBEdit
                Left = 2
                Top = 252
                Width = 100
                Height = 21
                DataField = 'VEICA13ID'
                DataSource = DSTemplate
                TabOrder = 4
                OnKeyDown = DBEdit22KeyDown
              end
              object DBEdit23: TDBEdit
                Left = 128
                Top = 252
                Width = 520
                Height = 21
                TabStop = False
                Color = 14737632
                DataField = 'VEICA60DESCR'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 13
              end
            end
            object TabSheetFinanceiro: TTabSheet
              ImageIndex = 2
              object PanelPlano: TPanel
                Left = 0
                Top = 0
                Width = 749
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
                Width = 749
                Height = 253
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Panel8: TPanel
                  Left = 1
                  Top = 47
                  Width = 747
                  Height = 205
                  Align = alClient
                  Caption = 'Panel8'
                  ParentColor = True
                  TabOrder = 0
                  object DBGrid2: TDBGrid
                    Left = 1
                    Top = 1
                    Width = 648
                    Height = 203
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
                  Width = 747
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
            Top = 81
            Height = 8
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 81
            object Label4: TLabel
              Left = 205
              Top = 5
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
              Left = 279
              Top = 5
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
              Left = 101
              Top = 5
              Width = 97
              Height = 13
              Caption = 'Quantidade Total'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 5
              Top = 44
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
              Left = 104
              Top = 44
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
              Left = 8
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Status'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 382
              Top = 5
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
            object Label18: TLabel
              Left = 209
              Top = 44
              Width = 28
              Height = 13
              Caption = 'CFOP'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              Left = 203
              Top = 18
              Width = 70
              Height = 21
              DataField = 'FRETN2VLR'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 277
              Top = 18
              Width = 100
              Height = 21
              DataField = 'FRETN2VLRTOTAL'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 103
              Top = 18
              Width = 95
              Height = 21
              DataField = 'FRETN3QTDETOTAL'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 57
              Width = 96
              Height = 21
              DataField = 'FRETN2BASECALCULO'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object DBEdit8: TDBEdit
              Left = 103
              Top = 57
              Width = 95
              Height = 21
              DataField = 'FRETN2ICMS'
              DataSource = DSTemplate
              TabOrder = 7
            end
            object RadioPago: TDBRadioGroup
              Left = 482
              Top = 10
              Width = 94
              Height = 30
              Caption = 'Pago'
              Columns = 2
              DataField = 'FRETCPAGO'
              DataSource = DSTemplate
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 5
              Values.Strings = (
                'S'
                'N')
            end
            object ComboStatus: TRxDBComboBox
              Left = 5
              Top = 18
              Width = 95
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
              TabOrder = 0
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object DBEdit24: TDBEdit
              Left = 380
              Top = 18
              Width = 100
              Height = 21
              DataField = 'FRETN2VLRCOMISSAO'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object ComboCFOP: TRxDBLookupCombo
              Left = 201
              Top = 57
              Width = 414
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
              TabOrder = 8
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
    end
    object SQLTemplateMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'DB.FRETE.MOTORISTA'
      Size = 30
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
    Export.Excel.Constant = 9.000000000000000000
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
end
