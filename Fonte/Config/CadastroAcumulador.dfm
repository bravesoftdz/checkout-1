inherited FormCadastroAcumulador: TFormCadastroAcumulador
  Left = -3
  Top = 12
  Caption = 'Cadastro de Acumuladores Cont'#225'beis'
  ClientHeight = 544
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 544
    inherited PanelCentral: TPanel
      Height = 470
      inherited PanelBarra: TPanel
        Height = 470
      end
      inherited PanelFundoDados: TPanel
        Height = 470
        inherited Panel5: TPanel
          Height = 470
          inherited PagePrincipal: TPageControl
            Height = 388
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 315
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ACUMICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMICODASSOC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMCICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMCIPI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMCISSQN'
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
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 4
                Top = 3
                Width = 84
                Height = 13
                Caption = 'C'#243'd. Associado'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 0
                Top = 16
                Width = 134
                Height = 21
                DataField = 'ACUMICODASSOC'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBCheckBox1: TDBCheckBox
                Left = 137
                Top = 18
                Width = 78
                Height = 17
                Caption = 'Gera CIMS'
                DataField = 'ACUMCICMS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox2: TDBCheckBox
                Left = 223
                Top = 18
                Width = 70
                Height = 17
                Caption = 'Gera IPI'
                DataField = 'ACUMCIPI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 296
                Top = 18
                Width = 97
                Height = 17
                Caption = 'Gera ISSQN'
                DataField = 'ACUMCISSQN'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object Panel4: TPanel
                Left = 0
                Top = 100
                Width = 749
                Height = 262
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                ParentColor = True
                TabOrder = 4
                object Label4: TLabel
                  Left = 2
                  Top = 2
                  Width = 745
                  Height = 19
                  Align = alTop
                  Caption = 'Opera'#231#245'es de Estoque Associadas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 21
                  Width = 745
                  Height = 239
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLOperacaoEstoque
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDblClick = DBGridListaDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'OPESICOD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESA60DESCR'
                      Width = 264
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERIA5COD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CFOPA5CODDENTROUF'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CFOPA5CODFORAUF'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESCENTRADASAIDA'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESCORIGEMDESTINO'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESCCALCIPI'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESCCALCICMS'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OPESCGERAFINANCEIRO'
                      Visible = True
                    end>
                end
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 3
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 83
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 75
              Height = 21
              DataField = 'ACUMICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 80
              Top = 16
              Width = 540
              Height = 21
              DataField = 'ACUMA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From ACUMULADOR Where (%MFiltro)')
    object SQLTemplateACUMICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ACUMICOD'
      Origin = 'DB.ACUMULADOR.ACUMICOD'
      Visible = False
    end
    object SQLTemplateACUMA60DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ACUMA60DESCR'
      Origin = 'DB.ACUMULADOR.ACUMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateACUMICODASSOC: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd. Associado'
      FieldName = 'ACUMICODASSOC'
      Origin = 'DB.ACUMULADOR.ACUMICODASSOC'
    end
    object SQLTemplateACUMCICMS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Gera ICMS'
      FieldName = 'ACUMCICMS'
      Origin = 'DB.ACUMULADOR.ACUMCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateACUMCIPI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Gera IPI'
      FieldName = 'ACUMCIPI'
      Origin = 'DB.ACUMULADOR.ACUMCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateACUMCISSQN: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Gera ISSQN'
      FieldName = 'ACUMCISSQN'
      Origin = 'DB.ACUMULADOR.ACUMCISSQN'
      FixedChar = True
      Size = 1
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT * FROM OPERACAOESTOQUE'
      'WHERE'
      'ACUMICOD = :ACUMICOD')
    Macros = <>
    Left = 216
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ACUMICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoEstoqueSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField
      DisplayLabel = 'CFOP Dent. UF'
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField
      DisplayLabel = 'CFOP Fora UF'
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      DisplayLabel = 'Ent./Sa'#237'da'
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      DisplayLabel = 'Origem/Destino'
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCCALCIPI: TStringField
      DisplayLabel = 'Calc. IPI'
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCCALCICMS: TStringField
      DisplayLabel = 'Calc. ICMS'
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField
      DisplayLabel = 'Gera Financeiro'
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueACUMICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Acumulador'
      FieldName = 'ACUMICOD'
      Origin = 'DB.OPERACAOESTOQUE.ACUMICOD'
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 244
    Top = 392
  end
end
