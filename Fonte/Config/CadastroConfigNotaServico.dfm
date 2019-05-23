inherited FormCadastroNotaServico: TFormCadastroNotaServico
  Left = 324
  Top = 105
  Caption = 'Configura'#231#227'o Nota de Servi'#231'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 62
            Height = 387
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 314
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
              object Label6: TLabel
                Left = 4
                Top = 6
                Width = 49
                Height = 13
                Caption = 'Empresa'
                FocusControl = DBEditEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaEmpresa: TSpeedButton
                Left = 88
                Top = 18
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
                Flat = True
                Glyph.Data = {
                  CA010000424DCA0100000000000042000000280000000E0000000E0000000100
                  1000030000008801000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000001F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7CF45E272100000000E71C
                  AD35000000001F7C1F7C1F7C1F7C1F7CF45AC5140E42714E4F46CC3500000000
                  1F7C1F7C1F7C1F7C1F7C1F7C07214F46F45AB256714E2F46CC3528211F7C1F7C
                  1F7C1F7C1F7C1F7C00003663796FD45AB252704A2F4600001F7C1F7C1F7C1F7C
                  1F7C1F7C0000576BFE7B155FD35A9252504A00001F7C1F7C1F7C1F7C1F7C1F7C
                  0721714E996FBC77F55ED3560E3E27211F7C1F7C1F7C1F7C1F7C1F7CB356C514
                  714E366715632F46C518155F1F7C1F7C1F7C1F7C1F7C1F7C1F7CD35A07210000
                  00002721F55E1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
                OnClick = RetornaEmpresaClick
              end
              object Label7: TLabel
                Left = 111
                Top = 44
                Width = 91
                Height = 13
                Caption = 'Tributa'#231#227'o NFSe'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 2
                Top = 44
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
              object AcessaSeries: TSpeedButton
                Left = 80
                Top = 58
                Width = 22
                Height = 21
                Hint = 'Acessa Cadastro de Series'
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
                OnClick = AcessaSeriesClick
              end
              object Label1: TLabel
                Left = 296
                Top = 44
                Width = 93
                Height = 13
                Caption = 'Local Tributa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEditEmpresa: TDBEdit
                Left = 2
                Top = 19
                Width = 86
                Height = 19
                Ctl3D = False
                DataField = 'EMPRICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 0
              end
              object DBEdit6: TDBEdit
                Left = 111
                Top = 19
                Width = 354
                Height = 19
                BevelInner = bvNone
                BevelOuter = bvNone
                Ctl3D = False
                DataField = 'EmpresaLOOKUP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
              end
              object ComboSerie: TRxDBLookupCombo
                Tag = 1
                Left = 2
                Top = 58
                Width = 77
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'SERIA5COD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'SERIA5COD'
                LookupDisplay = 'SERIA5COD'
                LookupSource = DSSQLSerie
                TabOrder = 2
              end
              object RxDBLookupCombo1: TRxDBLookupCombo
                Tag = 1
                Left = 111
                Top = 58
                Width = 180
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'ID_TRIBUTACAO'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'ID'
                LookupDisplay = 'CODIGO_TRIBUTACAO'
                LookupSource = DSSQLTributacaoNFSE
                TabOrder = 3
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 296
                Top = 58
                Width = 171
                Height = 21
                Style = csDropDownList
                DataField = 'LOCAL_TRIBUTACAO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '1 - Tributa'#231#227'o no munic'#237'pio'
                  '2 - Tributa'#231#227'o fora do munic'#237'pio'
                  '3 - Isen'#231#227'o'
                  '4 - Imune'
                  '5 - Exigibilidade suspensa por decis'#227'o judicial'
                  '6 - Exigilibidade suspensa por procedimento adm')
                TabOrder = 4
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6')
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 21
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'SELECT * FROM CONFIG_SERVICO Where (%MFiltro)')
    object SQLTemplateID: TIntegerField
      Tag = 1
      FieldName = 'ID'
      Origin = 'DB.CONFIG_SERVICO.ID'
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONFIG_SERVICO.EMPRICOD'
    end
    object SQLTemplateSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.CONFIG_SERVICO.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateID_TRIBUTACAO: TIntegerField
      FieldName = 'ID_TRIBUTACAO'
      Origin = 'DB.CONFIG_SERVICO.ID_TRIBUTACAO'
    end
    object SQLTemplateLOCAL_TRIBUTACAO: TIntegerField
      FieldName = 'LOCAL_TRIBUTACAO'
      Origin = 'DB.CONFIG_SERVICO.LOCAL_TRIBUTACAO'
    end
    object SQLTemplateEmpresaLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLOOKUP'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Size = 100
      Lookup = True
    end
  end
  object TblEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 14
    Top = 261
    object TblEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Required = True
    end
    object TblEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM SERIE WHERE SERIA2TIPONOTA = '#39'S'#39)
    Macros = <>
    Left = 14
    Top = 234
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
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
    object SQLSerieSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 42
    Top = 234
  end
  object SQLTributacaoNFSE: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ID, SUBITEM || '#39' - '#39' || CODIGO_TRIBUTACAO CODIGO_TRIBUTAC' +
        'AO'
      'from TRIBUTACAO_NFSE   ')
    Macros = <>
    Left = 14
    Top = 204
    object SQLTributacaoNFSEID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.TRIBUTACAO_NFSE.ID'
    end
    object SQLTributacaoNFSECODIGO_TRIBUTACAO: TStringField
      FieldName = 'CODIGO_TRIBUTACAO'
      Origin = 'DB.TRIBUTACAO_NFSE.SUBITEM'
      Size = 28
    end
  end
  object DSSQLTributacaoNFSE: TDataSource
    DataSet = SQLTributacaoNFSE
    Left = 42
    Top = 204
  end
end
