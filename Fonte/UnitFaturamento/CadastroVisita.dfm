inherited FormCadastroVisita: TFormCadastroVisita
  Caption = 'Cadastro de Visitas'
  ClientWidth = 791
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 791
    inherited PanelCabecalho: TPanel
      Width = 789
      inherited PanelNavigator: TPanel
        Width = 789
      end
      inherited Panel2: TPanel
        Width = 789
        inherited Panel3: TPanel
          Left = 437
        end
        inherited Panel1: TPanel
          Width = 789
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 789
      inherited PanelBarra: TPanel
        object RadioConsultaCodigo: TRadioGroup
          Left = 3
          Top = 107
          Width = 125
          Height = 62
          Caption = ' Consultar por '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'ID Cliente'
            'C'#243'd.Antigo')
          ParentFont = False
          TabOrder = 0
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 659
        inherited Panel5: TPanel
          Width = 659
          inherited PagePrincipal: TPageControl
            Width = 659
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 651
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VISIICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VISIDDATAHORAINI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VISIDDATAHORAFIM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VISICSTATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ROTAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MTNFICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VISIA100COMPLMOTIVO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 651
                inherited PanelBetween: TPanel
                  Width = 257
                end
                inherited PanelEditProcura: TPanel
                  Width = 257
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label2: TLabel
                Left = 11
                Top = 78
                Width = 101
                Height = 13
                Caption = 'Data e Hora Inicio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 158
                Top = 78
                Width = 117
                Height = 13
                Caption = 'Data e Hora T'#233'rmino'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 11
                Top = 118
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
              object Label14: TLabel
                Left = 11
                Top = 158
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
              object Label15: TLabel
                Left = 11
                Top = 241
                Width = 79
                Height = 13
                Caption = 'Complemento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 11
                Top = 198
                Width = 191
                Height = 13
                Caption = 'Motivo N'#227'o Fechamento da Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 14
                Top = 3
                Width = 94
                Height = 13
                Caption = 'Dados do Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 11
                Top = 131
                Width = 37
                Height = 19
                Ctl3D = False
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 4
              end
              object ComboRota: TRxDBLookupCombo
                Left = 53
                Top = 131
                Width = 398
                Height = 19
                DropDownCount = 8
                Ctl3D = False
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                LookupField = 'ROTAICOD'
                LookupDisplay = 'ROTAA60NOME'
                LookupSource = DSSQLRota
                ParentCtl3D = False
                TabOrder = 5
              end
              object DBEdit15: TDBEdit
                Left = 11
                Top = 171
                Width = 37
                Height = 19
                Ctl3D = False
                DataField = 'VENDICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 6
              end
              object ComboVendedor: TRxDBLookupCombo
                Left = 52
                Top = 171
                Width = 399
                Height = 19
                DropDownCount = 8
                Ctl3D = False
                DataField = 'VENDICOD'
                DataSource = DSTemplate
                LookupField = 'VENDICOD'
                LookupDisplay = 'VENDA60NOME'
                LookupSource = DSSQLVendedor
                ParentCtl3D = False
                TabOrder = 7
              end
              object DBEdit13: TDBMemo
                Left = 11
                Top = 256
                Width = 593
                Height = 50
                BevelWidth = 0
                Ctl3D = False
                DataField = 'VISIA100COMPLMOTIVO'
                DataSource = DSTemplate
                ParentCtl3D = False
                ScrollBars = ssVertical
                TabOrder = 10
              end
              object DBEdit3: TDBEdit
                Left = 11
                Top = 211
                Width = 37
                Height = 19
                Ctl3D = False
                DataField = 'MTNFICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 8
              end
              object ComboMotNFechamento: TRxDBLookupCombo
                Left = 52
                Top = 211
                Width = 399
                Height = 19
                DropDownCount = 8
                Ctl3D = False
                DataField = 'MTNFICOD'
                DataSource = DSTemplate
                LookupField = 'MTNFICOD'
                LookupDisplay = 'MTNFA60DESCR'
                LookupSource = DSSQLMotNfech
                ParentCtl3D = False
                TabOrder = 9
              end
              object DBEditCGCCPF: TDBEdit
                Left = 13
                Top = 23
                Width = 183
                Height = 19
                TabStop = False
                Color = 12572888
                Ctl3D = False
                DataField = 'ClienteCGC'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit19: TDBEdit
                Left = 200
                Top = 23
                Width = 409
                Height = 19
                TabStop = False
                Color = 12572888
                Ctl3D = False
                DataField = 'ClienteCidadeLookUp'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 11
                Top = 93
                Width = 138
                Height = 19
                Ctl3D = False
                DataField = 'VISIDDATAHORAINI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 158
                Top = 93
                Width = 138
                Height = 19
                Ctl3D = False
                DataField = 'VISIDDATAHORAFIM'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 659
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 659
            object Label1: TLabel
              Left = 9
              Top = 2
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 194
              Top = 3
              Width = 55
              Height = 13
              Caption = 'ID Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 91
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
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 79
              Height = 19
              Ctl3D = False
              DataField = 'VISIICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit16: TDBEdit
              Left = 191
              Top = 16
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnExit = DBEdit16Exit
            end
            object Combostatus: TRxDBComboBox
              Left = 88
              Top = 15
              Width = 100
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'VISICSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Positiva'
                'Negativa')
              ParentCtl3D = False
              TabOrder = 1
              Values.Strings = (
                'P'
                'N')
            end
            object DBEdit17: TDBEdit
              Left = 290
              Top = 16
              Width = 325
              Height = 19
              TabStop = False
              Color = 12572888
              Ctl3D = False
              DataField = 'ClienteLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From VISITAS Where (%MFiltro)')
    object SQLTemplateVISIICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VISIICOD'
      Origin = 'DB.VISITAS.VISIICOD'
      Visible = False
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VISITAS.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVISIDDATAHORAINI: TDateTimeField
      DisplayLabel = 'Data e Hora Inicial'
      FieldName = 'VISIDDATAHORAINI'
      Origin = 'DB.VISITAS.VISIDDATAHORAINI'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
      EditMask = '!99/99/0000 00:00 ;1;_'
    end
    object SQLTemplateVISIDDATAHORAFIM: TDateTimeField
      DisplayLabel = 'Data e Hora Final'
      FieldName = 'VISIDDATAHORAFIM'
      Origin = 'DB.VISITAS.VISIDDATAHORAFIM'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
      EditMask = '!99/99/0000 00:00 ;1;_'
    end
    object SQLTemplateVISICSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'VISICSTATUS'
      Origin = 'DB.VISITAS.VISICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateMTNFICOD: TIntegerField
      DisplayLabel = 'Motivo N Fech Venda'
      FieldName = 'MTNFICOD'
      Origin = 'DB.VISITAS.MTNFICOD'
    end
    object SQLTemplateVISIA100COMPLMOTIVO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'VISIA100COMPLMOTIVO'
      Origin = 'DB.VISITAS.VISIA100COMPLMOTIVO'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateROTAICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Rota'
      FieldName = 'ROTAICOD'
      Origin = 'DB.VISITAS.ROTAICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.VISITAS.VENDICOD'
    end
    object SQLTemplateClienteLookUp: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'ClienteLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60NOMEFANT'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCGC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13ID'
      EditMask = '00.000.000/0000-00;0;_'
      Size = 14
      Lookup = True
    end
    object SQLTemplateClienteCPF: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCPF'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA11CPF'
      KeyFields = 'CLIEA13ID'
      Size = 11
      Lookup = True
    end
    object SQLTemplateClienteIE: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteIE'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object SQLTemplateClienteRG: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteRG'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA10RG'
      KeyFields = 'CLIEA13ID'
      Size = 10
      Lookup = True
    end
    object SQLTemplateClienteEnderecoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEnderecoLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteEstadoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEstadoLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13ID'
      Size = 2
      Lookup = True
    end
    object SQLTemplateClienteBairroLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteBairroLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60BAIRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteCEPLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCEPLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA8CEPRES'
      KeyFields = 'CLIEA13ID'
      Size = 8
      Lookup = True
    end
    object SQLTemplateClienteCidadeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCidadeLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteFoneLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFoneLookUp'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA15FONE1'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object SQLTemplateClienteCodAntigo: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCodAntigo'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA10CODANT'
      KeyFields = 'CLIEA13ID'
      Size = 10
      Lookup = True
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 37
    Top = 217
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CLIENTE'
      'ORDER BY'
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 9
    Top = 217
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2RENDA: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEN2LIMITECRED: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLClienteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2CONJUGERENDA: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEDNASCCONJUGE: TDateTimeField
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object SQLClienteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEDAMISEMPRESA: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
    end
    object SQLClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
    object SQLClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object SQLClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object SQLClienteCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLClienteCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLClienteCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object SQLClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECRECEBECARTAO: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      Origin = 'DB.CLIENTE.CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEDENVCARTIMP: TDateTimeField
      FieldName = 'CLIEDENVCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDENVCARTIMP'
    end
    object SQLClienteCLIEDRETCARTIMP: TDateTimeField
      FieldName = 'CLIEDRETCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDRETCARTIMP'
    end
    object SQLClienteCLIEDENVCARTCLI: TDateTimeField
      FieldName = 'CLIEDENVCARTCLI'
      Origin = 'DB.CLIENTE.CLIEDENVCARTCLI'
    end
    object SQLClienteCLIEA10CODCONV: TStringField
      FieldName = 'CLIEA10CODCONV'
      Origin = 'DB.CLIENTE.CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DB.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object SQLClientePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLClienteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTE.REGISTRO'
    end
    object SQLClienteCLIEA35NROCARTCRED: TStringField
      FieldName = 'CLIEA35NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object SQLClienteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      Origin = 'DB.CLIENTE.CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDCASAMENTO: TDateTimeField
      FieldName = 'CLIEDCASAMENTO'
      Origin = 'DB.CLIENTE.CLIEDCASAMENTO'
    end
    object SQLClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object SQLClienteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
    object SQLClienteCLIEA30TEMPOMORADIA: TStringField
      FieldName = 'CLIEA30TEMPOMORADIA'
      Origin = 'DB.CLIENTE.CLIEA30TEMPOMORADIA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECCASAPROPRIA: TStringField
      FieldName = 'CLIECCASAPROPRIA'
      Origin = 'DB.CLIENTE.CLIECCASAPROPRIA'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA30LOCALIMOV1: TStringField
      FieldName = 'CLIEA30LOCALIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV1'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30LOCALIMOV2: TStringField
      FieldName = 'CLIEA30LOCALIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV2'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30MODVEICULO: TStringField
      FieldName = 'CLIEA30MODVEICULO'
      Origin = 'DB.CLIENTE.CLIEA30MODVEICULO'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30TIPOIMOV1: TStringField
      FieldName = 'CLIEA30TIPOIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV1'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30TIPOIMOV2: TStringField
      FieldName = 'CLIEA30TIPOIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV2'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA4ANOVEICULO: TStringField
      FieldName = 'CLIEA4ANOVEICULO'
      Origin = 'DB.CLIENTE.CLIEA4ANOVEICULO'
      FixedChar = True
      Size = 4
    end
    object SQLClienteCLIEA60IMOB: TStringField
      FieldName = 'CLIEA60IMOB'
      Origin = 'DB.CLIENTE.CLIEA60IMOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA8PLACAVEICULO: TStringField
      FieldName = 'CLIEA8PLACAVEICULO'
      Origin = 'DB.CLIENTE.CLIEA8PLACAVEICULO'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIECSTATUSIMOV1: TStringField
      FieldName = 'CLIECSTATUSIMOV1'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV1'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIECSTATUSIMOV2: TStringField
      FieldName = 'CLIECSTATUSIMOV2'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV2'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEN2VLRALUGUEL: TBCDField
      FieldName = 'CLIEN2VLRALUGUEL'
      Origin = 'DB.CLIENTE.CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
      Origin = 'DB.CLIENTE.CLIEIDIAVCTOCARTAO'
    end
    object SQLClienteROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.CLIENTE.ROTAICOD'
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 93
    Top = 217
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'Vendedor')
    Macros = <>
    Left = 65
    Top = 217
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
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ROTA'
      'Order by ROTAA60NOME')
    Macros = <>
    Left = 9
    Top = 252
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
    Left = 37
    Top = 252
  end
  object SQLMotNfech: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from MOTIVONFECHAVENDA'
      'Order by MTNFA60DESCR')
    Macros = <>
    Left = 65
    Top = 252
    object SQLMotNfechMTNFICOD: TIntegerField
      FieldName = 'MTNFICOD'
      Origin = 'DB.MOTIVONFECHAVENDA.MTNFICOD'
    end
    object SQLMotNfechMTNFA60DESCR: TStringField
      FieldName = 'MTNFA60DESCR'
      Origin = 'DB.MOTIVONFECHAVENDA.MTNFA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMotNfech: TDataSource
    DataSet = SQLMotNfech
    Left = 93
    Top = 252
  end
end
