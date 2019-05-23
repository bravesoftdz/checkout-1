inherited FormCadastroManutPonto: TFormCadastroManutPonto
  Left = 241
  Top = 114
  Caption = 'Manuten'#231#227'o do Ponto por Funcion'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 75
                Height = 266
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FornecedorNome'
                    Width = 266
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDDATA'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDMANHAENT'
                    Title.Caption = 'E.Manh'#227
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDMANHASAI'
                    Title.Caption = 'S.Manh'#227
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDTARDEENT'
                    Title.Caption = 'E.Tarde'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDTARDESAI'
                    Title.Caption = 'S.Tarde'
                    Width = 47
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDNOITEENT'
                    Title.Caption = 'E.Noite'
                    Width = 47
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PONTDNOITESAI'
                    Title.Caption = 'S.Noite'
                    Width = 47
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Height = 75
                inherited PanelBetween: TPanel
                  Height = 75
                  inherited AdvPanel1: TAdvPanel
                    Height = 75
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Height = 75
                  inherited AdvPanelEditProcura: TAdvPanel
                    Height = 75
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 75
                  object BTNLocalizar: TSpeedButton [0]
                    Left = 294
                    Top = 46
                    Width = 95
                    Height = 22
                    Caption = 'Locali&zar'
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
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 75
                    FullHeight = 0
                  end
                  object ComboConsultaFunc: TRxDBLookupCombo
                    Left = 3
                    Top = 46
                    Width = 284
                    Height = 21
                    Hint = 'Esta '#233' uma pesquisa avan'#231'ada.'
                    DropDownCount = 8
                    DisplayEmpty = 'Procura Funcionario...'
                    LookupField = 'FORNICOD'
                    LookupDisplay = 'FORNA60RAZAOSOC'
                    LookupDisplayIndex = 1
                    LookupSource = DSSQLFunc
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    TabStop = False
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 8
                Top = 229
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 7
                Top = 10
                Width = 108
                Height = 25
                Caption = 'Funcionario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 9
                Top = 208
                Width = 117
                Height = 25
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 7
                Top = 146
                Width = 139
                Height = 25
                Caption = 'Batida Turno 1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 220
                Top = 146
                Width = 139
                Height = 25
                Caption = 'Batida Turno 2'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 432
                Top = 146
                Width = 139
                Height = 25
                Caption = 'Batida Turno 3'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 7
                Top = 72
                Width = 87
                Height = 25
                Caption = 'Data Ref.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 209
                Top = 72
                Width = 142
                Height = 25
                Caption = 'Dia da Semana'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object ComboFuncCadastro: TRxDBLookupCombo
                Left = 4
                Top = 36
                Width = 612
                Height = 30
                Hint = 'Esta '#233' uma pesquisa avan'#231'ada.'
                DropDownCount = 8
                DataField = 'FORNICOD'
                DataSource = DSTemplate
                DisplayEmpty = 'Procura Funcionario...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'FORNICOD'
                LookupDisplay = 'FORNA60RAZAOSOC'
                LookupDisplayIndex = 1
                LookupSource = DSSQLFunc
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                TabStop = False
              end
              object DBEdit4: TDBEdit
                Left = 6
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDMANHAENT'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object MemoOBS: TDBMemo
                Left = 5
                Top = 234
                Width = 611
                Height = 70
                DataField = 'PONTTOBS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 9
              end
              object DBEdit1: TDBEdit
                Left = 101
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDMANHASAI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit2: TDBEdit
                Left = 219
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDTARDEENT'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit3: TDBEdit
                Left = 314
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDTARDESAI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit5: TDBEdit
                Left = 431
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDNOITEENT'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit6: TDBEdit
                Left = 526
                Top = 172
                Width = 90
                Height = 31
                DataField = 'PONTDNOITESAI'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object DBDataRef: TDBDateEdit
                Left = 5
                Top = 98
                Width = 186
                Height = 31
                DataField = 'PONTDDATA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 1
                YearDigits = dyFour
                OnExit = DBDataRefExit
              end
              object DBEdit7: TDBEdit
                Left = 208
                Top = 98
                Width = 169
                Height = 31
                TabStop = False
                Color = 12572888
                DataField = 'PONTDDIASEMANA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From PontoFunc Where (%MFiltro)')
    object SQLTemplatePONTA13ID: TStringField
      Tag = 2
      FieldName = 'PONTA13ID'
      Origin = 'DB.PONTOFUNC.PONTA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PONTOFUNC.EMPRICOD'
    end
    object SQLTemplatePONTICOD: TIntegerField
      Tag = 1
      FieldName = 'PONTICOD'
      Origin = 'DB.PONTOFUNC.PONTICOD'
    end
    object SQLTemplateFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PONTOFUNC.FORNICOD'
    end
    object SQLTemplateFornecedorNome: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'FornecedorNome'
      LookupDataSet = SQLFunc
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA60RAZAOSOC'
      KeyFields = 'FORNICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePONTDDATA: TDateTimeField
      DisplayLabel = 'Data Batida'
      FieldName = 'PONTDDATA'
      Origin = 'DB.PONTOFUNC.PONTDDATA'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLTemplatePONTTOBS: TStringField
      FieldName = 'PONTTOBS'
      Origin = 'DB.PONTOFUNC.PONTTOBS'
      Size = 254
    end
    object SQLTemplatePONTDMANHAENT: TDateTimeField
      FieldName = 'PONTDMANHAENT'
      Origin = 'DB.PONTOFUNC.PONTDMANHAENT'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDMANHASAI: TDateTimeField
      FieldName = 'PONTDMANHASAI'
      Origin = 'DB.PONTOFUNC.PONTDMANHASAI'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDTARDEENT: TDateTimeField
      FieldName = 'PONTDTARDEENT'
      Origin = 'DB.PONTOFUNC.PONTDTARDEENT'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDTARDESAI: TDateTimeField
      FieldName = 'PONTDTARDESAI'
      Origin = 'DB.PONTOFUNC.PONTDTARDESAI'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDNOITEENT: TDateTimeField
      FieldName = 'PONTDNOITEENT'
      Origin = 'DB.PONTOFUNC.PONTDNOITEENT'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDNOITESAI: TDateTimeField
      FieldName = 'PONTDNOITESAI'
      Origin = 'DB.PONTOFUNC.PONTDNOITESAI'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplatePONTDDIASEMANA: TStringField
      FieldName = 'PONTDDIASEMANA'
      Origin = 'DB.PONTOFUNC.PONTDDIASEMANA'
      Size = 3
    end
    object SQLTemplatePONTDATRAZO: TDateTimeField
      FieldName = 'PONTDATRAZO'
      Origin = 'DB.PONTOFUNC.PONTDATRAZO'
    end
    object SQLTemplatePONTDEXTRA: TDateTimeField
      FieldName = 'PONTDEXTRA'
      Origin = 'DB.PONTOFUNC.PONTDEXTRA'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PONTOFUNC.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PONTOFUNC.REGISTRO'
    end
  end
  object SQLFunc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Fornecedor where FORNA13IDCRACHA <> '#39#39)
    Macros = <>
    Left = 477
    Top = 1
    object SQLFuncFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFuncFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.FORNECEDOR.FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLFuncTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.FORNECEDOR.TPFRICOD'
    end
    object SQLFuncFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.FORNECEDOR.FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNCFISJURID: TStringField
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.FORNECEDOR.FORNCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLFuncFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      Origin = 'DB.FORNECEDOR.FORNA20IE'
      FixedChar = True
    end
    object SQLFuncFORNA11CPF: TStringField
      FieldName = 'FORNA11CPF'
      Origin = 'DB.FORNECEDOR.FORNA11CPF'
      FixedChar = True
    end
    object SQLFuncFORNA10RG: TStringField
      FieldName = 'FORNA10RG'
      Origin = 'DB.FORNECEDOR.FORNA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLFuncFORNA60END: TStringField
      FieldName = 'FORNA60END'
      Origin = 'DB.FORNECEDOR.FORNA60END'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      Origin = 'DB.FORNECEDOR.FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      Origin = 'DB.FORNECEDOR.FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLFuncFORNA8CEP: TStringField
      FieldName = 'FORNA8CEP'
      Origin = 'DB.FORNECEDOR.FORNA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLFuncFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.FORNECEDOR.FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.FORNECEDOR.FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      Origin = 'DB.FORNECEDOR.FORNA15FAX'
      FixedChar = True
    end
    object SQLFuncFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.FORNECEDOR.FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNA60URL: TStringField
      FieldName = 'FORNA60URL'
      Origin = 'DB.FORNECEDOR.FORNA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFORNTOBS: TStringField
      FieldName = 'FORNTOBS'
      Origin = 'DB.FORNECEDOR.FORNTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLFuncPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFuncREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDOR.REGISTRO'
    end
    object SQLFuncFORNA30CODCONTABIL: TStringField
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.FORNECEDOR.FORNA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object SQLFuncPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.FORNECEDOR.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLFuncRAMOICOD: TIntegerField
      FieldName = 'RAMOICOD'
      Origin = 'DB.FORNECEDOR.RAMOICOD'
    end
    object SQLFuncSRAMICOD: TIntegerField
      FieldName = 'SRAMICOD'
      Origin = 'DB.FORNECEDOR.SRAMICOD'
    end
    object SQLFuncFORNA15CODNOFORN: TStringField
      FieldName = 'FORNA15CODNOFORN'
      Origin = 'DB.FORNECEDOR.FORNA15CODNOFORN'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFORNA30LOCCATALOG: TStringField
      FieldName = 'FORNA30LOCCATALOG'
      Origin = 'DB.FORNECEDOR.FORNA30LOCCATALOG'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFORNCPERMITETROCA: TStringField
      FieldName = 'FORNCPERMITETROCA'
      Origin = 'DB.FORNECEDOR.FORNCPERMITETROCA'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFORNCTEMCATALOG: TStringField
      FieldName = 'FORNCTEMCATALOG'
      Origin = 'DB.FORNECEDOR.FORNCTEMCATALOG'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFORNDCAD: TDateTimeField
      FieldName = 'FORNDCAD'
      Origin = 'DB.FORNECEDOR.FORNDCAD'
    end
    object SQLFuncREPRICOD: TIntegerField
      FieldName = 'REPRICOD'
      Origin = 'DB.FORNECEDOR.REPRICOD'
    end
    object SQLFuncFORNCSIMPLES: TStringField
      FieldName = 'FORNCSIMPLES'
      Origin = 'DB.FORNECEDOR.FORNCSIMPLES'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFORNA15CXPOSTAL: TStringField
      FieldName = 'FORNA15CXPOSTAL'
      Origin = 'DB.FORNECEDOR.FORNA15CXPOSTAL'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFORNIMUNICODFED: TIntegerField
      FieldName = 'FORNIMUNICODFED'
      Origin = 'DB.FORNECEDOR.FORNIMUNICODFED'
    end
    object SQLFuncFORNBIMAGEM: TBlobField
      FieldName = 'FORNBIMAGEM'
      Origin = 'DB.FORNECEDOR.FORNBIMAGEM'
      Size = 1
    end
    object SQLFuncFORNBDIGITAL1: TBlobField
      FieldName = 'FORNBDIGITAL1'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL1'
      Size = 1
    end
    object SQLFuncFORNBDIGITAL2: TBlobField
      FieldName = 'FORNBDIGITAL2'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL2'
      Size = 1
    end
    object SQLFuncFORNBDIGITAL3: TBlobField
      FieldName = 'FORNBDIGITAL3'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL3'
      Size = 1
    end
    object SQLFuncFORNA13IDCRACHA: TStringField
      FieldName = 'FORNA13IDCRACHA'
      Origin = 'DB.FORNECEDOR.FORNA13IDCRACHA'
      FixedChar = True
      Size = 13
    end
  end
  object DSSQLFunc: TDataSource
    AutoEdit = False
    DataSet = SQLFunc
    OnStateChange = DSTemplateStateChange
    OnDataChange = DSTemplateDataChange
    Left = 505
    Top = 1
  end
end
