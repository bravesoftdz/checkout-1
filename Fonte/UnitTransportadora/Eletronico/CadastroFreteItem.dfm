inherited FormCadastroFreteItem: TFormCadastroFreteItem
  Left = 119
  Top = 196
  Caption = 'Cadastro de Itens do Frete'
  ClientHeight = 540
  ClientWidth = 823
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 823
    Height = 540
    inherited PanelCabecalho: TPanel
      Width = 821
      inherited PanelNavigator: TPanel
        Width = 821
      end
      inherited Panel2: TPanel
        Width = 821
        inherited Panel3: TPanel
          Left = 469
        end
        inherited Panel1: TPanel
          Width = 821
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 821
      Height = 466
      inherited PanelBarra: TPanel
        Height = 466
      end
      inherited PanelFundoDados: TPanel
        Width = 691
        Height = 466
        inherited Panel5: TPanel
          Width = 691
          Height = 466
          inherited PagePrincipal: TPageControl
            Top = 169
            Width = 691
            Height = 297
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 683
                Height = 224
              end
              inherited PanelProcura: TPanel
                Width = 683
                inherited PanelBetween: TPanel
                  Width = 289
                end
                inherited PanelEditProcura: TPanel
                  Width = 289
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 199
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 152
            Width = 691
            Height = 17
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 691
            Height = 152
            object PageControl4: TPageControl
              Left = 4
              Top = 7
              Width = 660
              Height = 140
              ActivePage = TabSheet13
              TabIndex = 2
              TabOrder = 0
              object TabSheet11: TTabSheet
                Caption = 'Nota Fiscal'
                object Label69: TLabel
                  Left = 4
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'S'#233'rie'
                  FocusControl = DBEdit1
                end
                object Label70: TLabel
                  Left = 47
                  Top = 8
                  Width = 67
                  Height = 13
                  Caption = 'N'#186' Nota Fiscal'
                  FocusControl = DBEdit52
                end
                object Label71: TLabel
                  Left = 129
                  Top = 8
                  Width = 64
                  Height = 13
                  Caption = 'Data Emiss'#227'o'
                  FocusControl = DBEdit57
                end
                object Label72: TLabel
                  Left = 256
                  Top = 8
                  Width = 27
                  Height = 13
                  Caption = 'CFOP'
                  FocusControl = DBEdit58
                end
                object Label73: TLabel
                  Left = 394
                  Top = 7
                  Width = 51
                  Height = 13
                  Caption = 'Base ICMS'
                  FocusControl = DBEdit59
                end
                object Label74: TLabel
                  Left = 506
                  Top = 8
                  Width = 41
                  Height = 13
                  Caption = 'R$ ICMS'
                  FocusControl = DBEdit60
                end
                object Label75: TLabel
                  Left = 4
                  Top = 48
                  Width = 66
                  Height = 13
                  Caption = 'Base ICMS ST'
                  FocusControl = DBEdit61
                end
                object Label76: TLabel
                  Left = 129
                  Top = 47
                  Width = 56
                  Height = 13
                  Caption = 'R$ ICMS ST'
                  FocusControl = DBEdit62
                end
                object Label77: TLabel
                  Left = 256
                  Top = 48
                  Width = 82
                  Height = 13
                  Caption = 'Peso Total em Kg'
                  FocusControl = DBEdit63
                end
                object Label78: TLabel
                  Left = 394
                  Top = 48
                  Width = 59
                  Height = 13
                  Caption = 'R$ Produtos'
                  FocusControl = DBEdit64
                end
                object Label79: TLabel
                  Left = 507
                  Top = 47
                  Width = 66
                  Height = 13
                  Caption = 'R$ Total Nota'
                  FocusControl = DBEdit65
                end
                object DBEdit1: TDBEdit
                  Left = 4
                  Top = 24
                  Width = 37
                  Height = 21
                  DataField = 'INFOSERIE'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit52: TDBEdit
                  Left = 47
                  Top = 24
                  Width = 78
                  Height = 21
                  DataField = 'INFONOTANUM'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit57: TDBEdit
                  Left = 129
                  Top = 24
                  Width = 125
                  Height = 21
                  DataField = 'INFODATAEMISSAO'
                  DataSource = DSTemplate
                  MaxLength = 10
                  TabOrder = 2
                end
                object DBEdit58: TDBEdit
                  Left = 256
                  Top = 24
                  Width = 134
                  Height = 21
                  DataField = 'INFOCFOP'
                  DataSource = DSTemplate
                  TabOrder = 3
                end
                object DBEdit59: TDBEdit
                  Left = 394
                  Top = 23
                  Width = 110
                  Height = 21
                  DataField = 'INFOBASEICMS'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
                object DBEdit60: TDBEdit
                  Left = 506
                  Top = 24
                  Width = 110
                  Height = 21
                  DataField = 'INFOICMS'
                  DataSource = DSTemplate
                  TabOrder = 5
                end
                object DBEdit61: TDBEdit
                  Left = 4
                  Top = 64
                  Width = 121
                  Height = 21
                  DataField = 'INFOBASEICMSST'
                  DataSource = DSTemplate
                  TabOrder = 6
                end
                object DBEdit62: TDBEdit
                  Left = 129
                  Top = 63
                  Width = 125
                  Height = 21
                  DataField = 'INFOICMSST'
                  DataSource = DSTemplate
                  TabOrder = 7
                end
                object DBEdit63: TDBEdit
                  Left = 256
                  Top = 64
                  Width = 134
                  Height = 21
                  DataField = 'INFOPESO'
                  DataSource = DSTemplate
                  TabOrder = 8
                end
                object DBEdit64: TDBEdit
                  Left = 394
                  Top = 64
                  Width = 110
                  Height = 21
                  DataField = 'INFOVALORPRODUTO'
                  DataSource = DSTemplate
                  TabOrder = 9
                end
                object DBEdit65: TDBEdit
                  Left = 507
                  Top = 63
                  Width = 109
                  Height = 21
                  DataField = 'INFOVALORNOTA'
                  DataSource = DSTemplate
                  TabOrder = 10
                end
              end
              object TabSheet12: TTabSheet
                Caption = 'NF-e'
                ImageIndex = 1
                object Label80: TLabel
                  Left = 8
                  Top = 12
                  Width = 83
                  Height = 13
                  Caption = 'Chave de Acesso'
                  FocusControl = DBEdit66
                end
                object DBEdit66: TDBEdit
                  Left = 8
                  Top = 28
                  Width = 576
                  Height = 21
                  DataField = 'INFOCHAVE'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
              end
              object TabSheet13: TTabSheet
                Caption = 'Outros Docs'
                ImageIndex = 2
                object Label81: TLabel
                  Left = 148
                  Top = 1
                  Width = 118
                  Height = 13
                  Caption = 'Descri'#231#227'o do Documento'
                  FocusControl = DBEdit67
                end
                object Label82: TLabel
                  Left = 1
                  Top = 4
                  Width = 103
                  Height = 13
                  Caption = 'Documento Origin'#225'rio'
                end
                object Label83: TLabel
                  Left = 1
                  Top = 41
                  Width = 69
                  Height = 13
                  Caption = 'N'#186' Documento'
                  FocusControl = DBEdit68
                end
                object Label84: TLabel
                  Left = 148
                  Top = 40
                  Width = 64
                  Height = 13
                  Caption = 'Data Emiss'#227'o'
                  FocusControl = DBEdit69
                end
                object Label85: TLabel
                  Left = 297
                  Top = 39
                  Width = 96
                  Height = 13
                  Caption = 'Valor do Documento'
                  FocusControl = DBEdit70
                end
                object DBEdit67: TDBEdit
                  Left = 148
                  Top = 17
                  Width = 487
                  Height = 21
                  DataField = 'INFOCHAVE'
                  DataSource = DSTemplate
                  Enabled = False
                  TabOrder = 0
                end
                object RxDBComboBox9: TRxDBComboBox
                  Left = 1
                  Top = 18
                  Width = 144
                  Height = 21
                  Style = csDropDownList
                  DataField = 'INFOTIPOOUTROS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Declara'#231#227'o'
                    'Outro')
                  TabOrder = 1
                  Values.Strings = (
                    '0'
                    '9')
                  OnChange = RxDBComboBox9Change
                end
                object DBEdit68: TDBEdit
                  Left = 1
                  Top = 57
                  Width = 142
                  Height = 21
                  DataField = 'INFONOTANUM'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
                object DBEdit69: TDBEdit
                  Left = 148
                  Top = 56
                  Width = 145
                  Height = 21
                  DataField = 'INFODATAEMISSAO'
                  DataSource = DSTemplate
                  MaxLength = 10
                  TabOrder = 3
                end
                object DBEdit70: TDBEdit
                  Left = 297
                  Top = 55
                  Width = 212
                  Height = 21
                  DataField = 'INFOVALORNOTA'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
              end
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    Left = 301
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From FreteINFO Where'
      'FRETA13ID = :FRETA13ID AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'FRETA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateFRETA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETEINFO.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFRITICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FRITICOD'
      Origin = 'DB.FRETEINFO.FRITICOD'
    end
    object SQLTemplateINFOSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'INFOSERIE'
      Origin = 'DB.FRETEINFO.INFOSERIE'
      Size = 10
    end
    object SQLTemplateINFONOTANUM: TIntegerField
      DisplayLabel = 'NumeroNF'
      FieldName = 'INFONOTANUM'
      Origin = 'DB.FRETEINFO.INFONOTANUM'
    end
    object SQLTemplateINFODATAEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'INFODATAEMISSAO'
      Origin = 'DB.FRETEINFO.INFODATAEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateINFOCFOP: TIntegerField
      DisplayLabel = 'CFOP'
      FieldName = 'INFOCFOP'
      Origin = 'DB.FRETEINFO.INFOCFOP'
    end
    object SQLTemplateINFOBASEICMS: TBCDField
      DisplayLabel = 'BaseICMS'
      FieldName = 'INFOBASEICMS'
      Origin = 'DB.FRETEINFO.INFOBASEICMS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOICMS: TBCDField
      DisplayLabel = 'ICMS'
      FieldName = 'INFOICMS'
      Origin = 'DB.FRETEINFO.INFOICMS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOBASEICMSST: TBCDField
      DisplayLabel = 'Base_ICMS_ST'
      FieldName = 'INFOBASEICMSST'
      Origin = 'DB.FRETEINFO.INFOBASEICMSST'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOICMSST: TBCDField
      DisplayLabel = 'ICMS_ST'
      FieldName = 'INFOICMSST'
      Origin = 'DB.FRETEINFO.INFOICMSST'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOPESO: TIntegerField
      DisplayLabel = 'Peso'
      FieldName = 'INFOPESO'
      Origin = 'DB.FRETEINFO.INFOPESO'
    end
    object SQLTemplateINFOVALORPRODUTO: TBCDField
      DisplayLabel = 'Valor Produtos'
      FieldName = 'INFOVALORPRODUTO'
      Origin = 'DB.FRETEINFO.INFOVALORPRODUTO'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOVALORNOTA: TBCDField
      DisplayLabel = 'Total Nota Fiscal'
      FieldName = 'INFOVALORNOTA'
      Origin = 'DB.FRETEINFO.INFOVALORNOTA'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateINFOCHAVE: TStringField
      DisplayLabel = 'Chave Acesso'
      FieldName = 'INFOCHAVE'
      Origin = 'DB.FRETEINFO.INFOCHAVE'
      Size = 44
    end
    object SQLTemplateINFOTIPOOUTROS: TStringField
      DisplayLabel = 'Tipo Outros Documentos'
      FieldName = 'INFOTIPOOUTROS'
      Origin = 'DB.FRETEINFO.INFOTIPOOUTROS'
      FixedChar = True
      Size = 1
    end
  end
  object QueryProduto: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD,PRODA60DESCR,PRODN3VLRVENDA,ICMSICOD '
      'FROM PRODUTO')
    Left = 437
    Top = 1
    object QueryProdutoPRODICOD: TIntegerField
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
  end
  object QueryUnidade: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT UNIDICOD, UNIDA5DESCR FROM UNIDADE')
    Left = 465
    Top = 1
  end
  object QueryIcms: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ICMSICOD,ICMSN2ALIQUOTA FROM'
      'ICMS')
    Left = 493
    Top = 1
  end
end
