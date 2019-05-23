inherited CadastroConhecimentos: TCadastroConhecimentos
  Left = 338
  Top = 10
  Caption = 'CadastroConhecimentos'
  ClientHeight = 696
  ClientWidth = 905
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 905
    Height = 696
    inherited PanelCabecalho: TPanel
      Width = 903
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 903
        inherited Panel1: TPanel
          Width = 901
          inherited PanelNavigator: TPanel
            Width = 901
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 901
            end
          end
          inherited PanelLeft: TPanel
            Left = 444
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 903
      Height = 622
      inherited PanelBarra: TPanel
        Height = 622
      end
      inherited PanelFundoDados: TPanel
        Width = 773
        Height = 622
        inherited Panel5: TPanel
          Width = 773
          Height = 622
          inherited PagePrincipal: TPageControl
            Width = 773
            Height = 540
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 765
                Height = 467
              end
              inherited PanelProcura: TPanel
                Width = 765
                inherited PanelBetween: TPanel
                  Width = 371
                  inherited AdvPanel1: TAdvPanel
                    Width = 371
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 371
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 371
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label42: TLabel
                Left = 4
                Top = 4
                Width = 81
                Height = 13
                Caption = 'Tipo Opera'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 147
                Top = 4
                Width = 131
                Height = 13
                Caption = 'Emiss'#227'o do Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 4
                Top = 98
                Width = 218
                Height = 13
                Caption = 'C'#243'digo do Modelo de Documento Fiscal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 4
                Top = 133
                Width = 134
                Height = 13
                Caption = 'Situa'#231#227'o do Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 3
                Top = 170
                Width = 29
                Height = 13
                Caption = 'S'#233'rie'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 107
                Top = 170
                Width = 53
                Height = 13
                Caption = 'Sub S'#233'rie'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 191
                Top = 170
                Width = 112
                Height = 13
                Caption = 'N'#250'mero Documento'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 347
                Top = 170
                Width = 76
                Height = 13
                Caption = 'Data Emiss'#227'o'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 487
                Top = 170
                Width = 84
                Height = 13
                Caption = 'Data Aquisi'#231#227'o'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 3
                Top = 210
                Width = 64
                Height = 13
                Caption = 'Chave CT-e'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 4
                Top = 251
                Width = 89
                Height = 13
                Caption = 'Chave CT-e Ref.'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 583
                Top = 210
                Width = 53
                Height = 13
                Caption = 'Tipo CT-e'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 4
                Top = 291
                Width = 274
                Height = 13
                Caption = 'Frete Por Conta (ver mudan'#231'a a partir de 01/07)'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 286
                Top = 289
                Width = 83
                Height = 13
                Caption = 'R$ Documento'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 450
                Top = 289
                Width = 60
                Height = 13
                Caption = 'R$ Servi'#231'o'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 312
                Top = 331
                Width = 77
                Height = 13
                Caption = 'R$ Base ICMS'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 471
                Top = 331
                Width = 47
                Height = 13
                Caption = 'R$ ICMS'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 557
                Top = 331
                Width = 79
                Height = 13
                Caption = 'R$ N'#227'o Tribut.'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label18: TLabel
                Left = 4
                Top = 373
                Width = 302
                Height = 13
                Caption = 'C'#243'digo da conta anal'#237'tica cont'#225'bil debitada/creditada'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 4
                Top = 409
                Width = 172
                Height = 13
                Caption = 'Informa'#231#245'es Complementares'
                FocusControl = DBMemo1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 260
                Top = 331
                Width = 45
                Height = 13
                Caption = '% ICMS'
                FocusControl = DBEdit16
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 403
                Top = 331
                Width = 58
                Height = 13
                Caption = '% Red. BC'
                FocusControl = DBEdit17
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 310
                Top = 5
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
              object Label43: TLabel
                Left = 5
                Top = 331
                Width = 108
                Height = 13
                Caption = 'Situa'#231#227'o Tribut'#225'ria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label27: TLabel
                Left = 3
                Top = 54
                Width = 181
                Height = 13
                Caption = 'Prestador / Tomador do Servi'#231'o'
                FocusControl = EditCdTransp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnTransportadora: TSpeedButton
                Left = 618
                Top = 70
                Width = 22
                Height = 20
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
              object RxDBComboBox3: TRxDBComboBox
                Left = 5
                Top = 21
                Width = 136
                Height = 21
                Style = csDropDownList
                DataField = 'IND_OPER'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '0- Aquisi'#231#227'o'
                  '1- Presta'#231#227'o')
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1')
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 145
                Top = 21
                Width = 156
                Height = 21
                Style = csDropDownList
                DataField = 'IND_EMIT'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '0- Emiss'#227'o pr'#243'pria'
                  '1- Terceiros')
                ParentFont = False
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1')
              end
              object RxDBComboBox8: TRxDBComboBox
                Left = 4
                Top = 112
                Width = 636
                Height = 21
                Style = csDropDownList
                DataField = 'COD_MOD'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '07 Nota Fiscal de Servi'#231'o de Transporte'
                  '08 Conhecimento de Transporte Rodovi'#225'rio de Cargas '
                  '8B Conhecimento de Transporte de Cargas Avulso '
                  '09 Conhecimento de Transporte Aquavi'#225'rio de Cargas '
                  '10 Conhecimento A'#233'reo '
                  '11 Conhecimento de Transporte Ferrovi'#225'rio de Cargas '
                  '26 Conhecimento de Transporte Multimodal de Carga'
                  '27 Nota Fiscal De Transporte Ferrovi'#225'rio De Carga'
                  '57 Conhecimento de Transporte Eletr'#244'nico - CT-e')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 6
                Values.Strings = (
                  '07'
                  '08'
                  '8B'
                  '09'
                  '10'
                  '11'
                  '26'
                  '27'
                  '57')
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 3
                Top = 147
                Width = 637
                Height = 21
                Style = csDropDownList
                DataField = 'COD_SIT'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '00 - Documento Regular'
                  '01 - Documento Regular Extempor'#226'neo'
                  '02 - Documento Cancelado'
                  '03 - Documento Cancelado Extempor'#226'neo'
                  '06 - Documento Fiscal Complementar'
                  '07 - Documento Fiscal Complementar Extempor'#226'neo'
                  
                    '08 - Documento Emitido com Base em Regime Especial ou Norma Espe' +
                    'c'#237'fica')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 7
                Values.Strings = (
                  '00'
                  '01'
                  '02'
                  '03'
                  '06'
                  '07'
                  '08')
              end
              object DBEdit1: TDBEdit
                Left = 3
                Top = 186
                Width = 97
                Height = 21
                DataField = 'SERIE_DOC'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit2: TDBEdit
                Left = 107
                Top = 186
                Width = 77
                Height = 21
                DataField = 'SUBSERIE'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit3: TDBEdit
                Left = 191
                Top = 186
                Width = 149
                Height = 21
                DataField = 'NUM_DOC'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit4: TDBEdit
                Left = 347
                Top = 186
                Width = 130
                Height = 21
                DataField = 'DT_DOC'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBEdit5: TDBEdit
                Left = 486
                Top = 186
                Width = 154
                Height = 21
                DataField = 'DT_AQUIS'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit7: TDBEdit
                Left = 3
                Top = 226
                Width = 576
                Height = 21
                DataField = 'CHV_CTE'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit8: TDBEdit
                Left = 3
                Top = 267
                Width = 637
                Height = 21
                DataField = 'CHV_CTE_REF'
                DataSource = DSTemplate
                TabOrder = 15
              end
              object DBEdit9: TDBEdit
                Left = 583
                Top = 226
                Width = 57
                Height = 21
                Hint = 
                  '0 - CT-e Normal'#13#10'1 - CT-e de Complemento de Valores'#13#10'2 - CT-e de' +
                  ' Anula'#231#227'o de Valores'#13#10'3 - CT-e Substituto'
                DataField = 'TP_CT_E'
                DataSource = DSTemplate
                ParentShowHint = False
                ShowHint = True
                TabOrder = 14
              end
              object RxDBComboBox4: TRxDBComboBox
                Left = 4
                Top = 305
                Width = 276
                Height = 21
                Style = csDropDownList
                DataField = 'IND_FRT'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '0- Por conta de terceiros'
                  '1- Por conta do emitente'
                  '2- Por conta do destinat'#225'rio'
                  '9- Sem cobran'#231'a de frete')
                ParentFont = False
                TabOrder = 16
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '9')
              end
              object DBEdit10: TDBEdit
                Left = 286
                Top = 305
                Width = 157
                Height = 21
                DataField = 'VL_DOC'
                DataSource = DSTemplate
                TabOrder = 17
              end
              object DBEdit11: TDBEdit
                Left = 448
                Top = 305
                Width = 192
                Height = 21
                DataField = 'VL_SERV'
                DataSource = DSTemplate
                TabOrder = 18
              end
              object DBEdit12: TDBEdit
                Left = 312
                Top = 347
                Width = 88
                Height = 21
                DataField = 'VL_BC_ICMS'
                DataSource = DSTemplate
                TabOrder = 21
              end
              object DBEdit13: TDBEdit
                Left = 471
                Top = 347
                Width = 79
                Height = 21
                DataField = 'VL_ICMS'
                DataSource = DSTemplate
                TabOrder = 23
                OnEnter = DBEdit13Enter
              end
              object DBEdit14: TDBEdit
                Left = 557
                Top = 347
                Width = 83
                Height = 21
                DataField = 'VL_NAOTRIBUT'
                DataSource = DSTemplate
                TabOrder = 24
              end
              object DBEdit15: TDBEdit
                Left = 4
                Top = 389
                Width = 302
                Height = 21
                DataField = 'COD_CTA'
                DataSource = DSTemplate
                TabOrder = 25
              end
              object DBMemo1: TDBMemo
                Left = 3
                Top = 425
                Width = 637
                Height = 60
                DataField = 'INFORMACAO'
                DataSource = DSTemplate
                TabOrder = 26
              end
              object DBEdit16: TDBEdit
                Left = 260
                Top = 347
                Width = 47
                Height = 21
                DataField = 'ALIQ_ICMS'
                DataSource = DSTemplate
                TabOrder = 20
              end
              object DBEdit17: TDBEdit
                Left = 406
                Top = 347
                Width = 58
                Height = 21
                DataField = 'RED_BC_ICMS'
                DataSource = DSTemplate
                TabOrder = 22
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 308
                Top = 20
                Width = 73
                Height = 21
                DataField = 'CON_CFOP'
                DataSource = DSTemplate
                KeyField = 'CFOPA5COD'
                ListField = 'CFOPA5COD'
                ListSource = dsSQLCFOP
                TabOrder = 2
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 385
                Top = 20
                Width = 255
                Height = 21
                DataField = 'CON_CFOP'
                DataSource = DSTemplate
                KeyField = 'CFOPA5COD'
                ListField = 'CFOPA60DESCR'
                ListSource = dsSQLCFOP
                TabOrder = 3
              end
              object ComboSitTrib: TRxDBComboBox
                Left = 4
                Top = 347
                Width = 250
                Height = 21
                Style = csDropDownList
                DataField = 'CST_ICMS'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '000   - Tributada integralmente'
                  
                    '010   - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut' +
                    #225'ria'
                  '020   - Com redu'#231#227'o de base de c'#225'lculo'
                  
                    '030   - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por subst' +
                    'itui'#231#227'o tribut'#225'ria'
                  '040   - Isenta'
                  '041   - N'#227'o tributada'
                  '050   - Suspens'#227'o'
                  '051   - Diferimento'
                  '060   - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                  
                    '070   - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por su' +
                    'bstitui'#231#227'o tribut'#225'ria'
                  '090   - Outros ')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 19
                Values.Strings = (
                  '000'
                  '010'
                  '020'
                  '030'
                  '040'
                  '041'
                  '050'
                  '051'
                  '060'
                  '070'
                  '090')
              end
              object EditCdTransp: TDBEdit
                Left = 3
                Top = 71
                Width = 62
                Height = 21
                Ctl3D = True
                DataField = 'COD_PART'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object ComboTransp: TRxDBLookupCombo
                Left = 70
                Top = 71
                Width = 544
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'COD_PART'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                LookupField = 'TRANICOD'
                LookupDisplay = 'TRANA60RAZAOSOC'
                LookupSource = DSSQLTransportadora
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 773
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 773
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From CONHECIMENTOS Where (%MFiltro)')
    object SQLTemplateIDCON: TIntegerField
      Tag = 1
      FieldName = 'IDCON'
      Origin = 'DB.CONHECIMENTOS.IDCON'
    end
    object SQLTemplateIND_OPER: TStringField
      DisplayLabel = 'Ind. da Opera'#231#227'o'
      FieldName = 'IND_OPER'
      Origin = 'DB.CONHECIMENTOS.IND_OPER'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateIND_EMIT: TStringField
      DisplayLabel = 'Ind. Emitente'
      FieldName = 'IND_EMIT'
      Origin = 'DB.CONHECIMENTOS.IND_EMIT'
      OnChange = SQLTemplateIND_EMITChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'DB.CONHECIMENTOS.COD_MOD'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Origin = 'DB.CONHECIMENTOS.COD_SIT'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateSERIE_DOC: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE_DOC'
      Origin = 'DB.CONHECIMENTOS.SERIE_DOC'
      Size = 4
    end
    object SQLTemplateSUBSERIE: TStringField
      DisplayLabel = 'Sub S'#233'rie'
      FieldName = 'SUBSERIE'
      Origin = 'DB.CONHECIMENTOS.SUBSERIE'
      Size = 3
    end
    object SQLTemplateNUM_DOC: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUM_DOC'
      Origin = 'DB.CONHECIMENTOS.NUM_DOC'
    end
    object SQLTemplateCHV_CTE: TStringField
      DisplayLabel = 'Chave CT-e'
      FieldName = 'CHV_CTE'
      Origin = 'DB.CONHECIMENTOS.CHV_CTE'
      Size = 44
    end
    object SQLTemplateDT_DOC: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_DOC'
      Origin = 'DB.CONHECIMENTOS.DT_DOC'
      OnChange = SQLTemplateDT_DOCChange
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateDT_AQUIS: TDateTimeField
      DisplayLabel = 'Data Aquisi'#231#227'o'
      FieldName = 'DT_AQUIS'
      Origin = 'DB.CONHECIMENTOS.DT_AQUIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateTP_CT_E: TIntegerField
      FieldName = 'TP_CT_E'
      Origin = 'DB.CONHECIMENTOS.TP_CT_E'
    end
    object SQLTemplateCHV_CTE_REF: TStringField
      DisplayLabel = 'Chave CT-e Ref.'
      FieldName = 'CHV_CTE_REF'
      Origin = 'DB.CONHECIMENTOS.CHV_CTE_REF'
      Size = 44
    end
    object SQLTemplateVL_DOC: TBCDField
      DisplayLabel = 'R$ Documento'
      FieldName = 'VL_DOC'
      Origin = 'DB.CONHECIMENTOS.VL_DOC'
      OnChange = SQLTemplateVL_DOCChange
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVL_DESC: TBCDField
      DisplayLabel = 'R$ Descto'
      FieldName = 'VL_DESC'
      Origin = 'DB.CONHECIMENTOS.VL_DESC'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVL_SERV: TBCDField
      DisplayLabel = 'R$ Servi'#231'o'
      FieldName = 'VL_SERV'
      Origin = 'DB.CONHECIMENTOS.VL_SERV'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateIND_FRT: TStringField
      FieldName = 'IND_FRT'
      Origin = 'DB.CONHECIMENTOS.IND_FRT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVL_BC_ICMS: TBCDField
      DisplayLabel = 'R$ Base ICMS'
      FieldName = 'VL_BC_ICMS'
      Origin = 'DB.CONHECIMENTOS.VL_BC_ICMS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVL_ICMS: TBCDField
      DisplayLabel = 'R$ ICMS'
      FieldName = 'VL_ICMS'
      Origin = 'DB.CONHECIMENTOS.VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVL_NAOTRIBUT: TBCDField
      DisplayLabel = 'R$ N'#227'o Tribut.'
      FieldName = 'VL_NAOTRIBUT'
      Origin = 'DB.CONHECIMENTOS.VL_NAOTRIBUT'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFORMACAO: TMemoField
      FieldName = 'INFORMACAO'
      Origin = 'DB.CONHECIMENTOS.INFORMACAO'
      BlobType = ftMemo
      Size = 256
    end
    object SQLTemplateCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'DB.CONHECIMENTOS.COD_CTA'
      Size = 60
    end
    object SQLTemplateCON_CFOP: TStringField
      FieldName = 'CON_CFOP'
      Origin = 'DB.CONHECIMENTOS.CON_CFOP'
      Size = 5
    end
    object SQLTemplateRED_BC_ICMS: TBCDField
      FieldName = 'RED_BC_ICMS'
      Origin = 'DB.CONHECIMENTOS.RED_BC_ICMS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateALIQ_ICMS: TBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'DB.CONHECIMENTOS.ALIQ_ICMS'
      Precision = 9
      Size = 2
    end
    object SQLTemplateCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'DB.CONHECIMENTOS.CST_ICMS'
      Size = 3
    end
    object SQLTemplateCOD_PART: TIntegerField
      FieldName = 'COD_PART'
      Origin = 'DB.CONHECIMENTOS.COD_PART'
    end
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT* FROM CFOP'
      'WHERE '
      'CFOPA5COD STARTING WITH "1" OR '
      'CFOPA5COD STARTING WITH "2"  OR '
      'CFOPA5COD STARTING WITH "3"'
      'Order by CFOPA5COD')
    Macros = <>
    Left = 20
    Top = 321
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLCFOPCFOPCDESTVLRNTRIB: TStringField
      FieldName = 'CFOPCDESTVLRNTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object dsSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 48
    Top = 321
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora order by TRANA60RAZAOSOC')
    Macros = <>
    Left = 20
    Top = 286
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
    object SQLTransportadoraTRANA11CPF: TStringField
      FieldName = 'TRANA11CPF'
      Origin = 'DB.TRANSPORTADORA.TRANA11CPF'
      FixedChar = True
      Size = 11
    end
  end
  object DSSQLTransportadora: TDataSource
    DataSet = SQLTransportadora
    Left = 48
    Top = 286
  end
  object SQLPesquisa: TRxQuery
    BeforeOpen = SQLCountBeforeOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select * from CONHECIMENTOS Where COD_PART = :xPart and NUM_DOC ' +
        '= :xNum')
    Macros = <>
    Left = 21
    Top = 253
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xPart'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xNum'
        ParamType = ptUnknown
      end>
  end
end
