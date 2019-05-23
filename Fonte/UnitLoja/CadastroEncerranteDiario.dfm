inherited FormCadastroEncerranteDiario: TFormCadastroEncerranteDiario
  Left = 258
  Top = 135
  Caption = 'Digitacao Encerrantes Diarios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
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
                Left = 11
                Top = 38
                Width = 39
                Height = 13
                Caption = 'Bomba'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 11
                Top = 80
                Width = 120
                Height = 13
                Caption = 'Descricao do Produto'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 11
                Top = 136
                Width = 93
                Height = 13
                Caption = 'Nro Inicial do dia'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 12
                Top = 184
                Width = 86
                Height = 13
                Caption = 'Nro Final do Dia'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 348
                Top = 184
                Width = 110
                Height = 13
                Caption = 'Quant.Total Vendas'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 234
                Top = 184
                Width = 47
                Height = 13
                Caption = 'Afericao'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 481
                Top = 185
                Width = 105
                Height = 13
                Caption = 'Valor Total Vendas'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 216
                Top = 194
                Width = 9
                Height = 25
                Caption = '-'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 318
                Top = 194
                Width = 17
                Height = 25
                Caption = '='
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 8
                Top = 52
                Width = 75
                Height = 21
                DataField = 'BOMBICOD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 93
                Width = 75
                Height = 21
                TabStop = False
                Color = 12572888
                DataField = 'PRODICOD'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 8
                Top = 149
                Width = 200
                Height = 21
                TabStop = False
                Color = 12572888
                DataField = 'INICIO'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 9
                Top = 197
                Width = 200
                Height = 21
                DataField = 'FINAL'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 30
                Align = alTop
                Alignment = taLeftJustify
                BevelInner = bvLowered
                BevelOuter = bvNone
                BevelWidth = 2
                Caption = ' Movimentacao Diaria '
                Color = 10053171
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit12: TDBEdit
                Left = 345
                Top = 198
                Width = 121
                Height = 21
                Ctl3D = True
                DataField = 'QTDEVENDA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit6: TDBEdit
                Left = 231
                Top = 198
                Width = 81
                Height = 21
                Ctl3D = True
                DataField = 'AFERICAO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit7: TDBEdit
                Left = 478
                Top = 199
                Width = 131
                Height = 21
                Ctl3D = True
                DataField = 'VLRTOTVENDAS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
              end
              object ComboBomba: TRxDBLookupCombo
                Left = 91
                Top = 52
                Width = 522
                Height = 21
                DropDownCount = 8
                DataField = 'BombaLookup'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                TabOrder = 1
              end
              object DBEdit8: TDBEdit
                Left = 91
                Top = 93
                Width = 519
                Height = 21
                TabStop = False
                Color = 12572888
                DataField = 'ProdutoLookup'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 9
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 8
              Top = 4
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label77: TLabel
              Left = 99
              Top = 4
              Width = 94
              Height = 13
              Caption = 'Data Movimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label69: TLabel
              Left = 217
              Top = 4
              Width = 53
              Height = 13
              Caption = 'Operador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 469
              Top = 4
              Width = 54
              Height = 13
              Caption = 'Conclu'#237'do'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 17
              Width = 85
              Height = 21
              Color = 12572888
              DataField = 'ENCEA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBDateEdit8: TDBDateEdit
              Left = 95
              Top = 17
              Width = 111
              Height = 21
              DataField = 'DATA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 1
            end
            object ComboUsuario: TRxDBLookupCombo
              Left = 212
              Top = 17
              Width = 238
              Height = 20
              DropDownCount = 8
              DataField = 'USUAICOD'
              DataSource = DSTemplate
              LookupField = 'USUAICOD'
              LookupDisplay = 'USUAA60LOGIN'
              LookupSource = DSSQLUsuario
              TabOrder = 2
            end
            object ComboConcluido: TRxDBComboBox
              Left = 465
              Top = 17
              Width = 112
              Height = 21
              Style = csDropDownList
              DataField = 'CONCLUIDO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 3
              Values.Strings = (
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From ENCERRANTEDIARIO Where (%MFiltro)')
    object SQLTemplateENCEA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'ENCEA13ID'
      Origin = 'DB.ENCERRANTE.ENCEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Cod.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.ENCERRANTE.EMPRICOD'
    end
    object SQLTemplateENCEICOD: TIntegerField
      Tag = 1
      FieldName = 'ENCEICOD'
      Origin = 'DB.ENCERRANTE.ENCEICOD'
    end
    object SQLTemplateDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'DB.ENCERRANTE.DATA'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Cod.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.ENCERRANTE.TERMICOD'
    end
    object SQLTemplateUSUAICOD: TIntegerField
      DisplayLabel = 'Cod.Usuario'
      FieldName = 'USUAICOD'
      Origin = 'DB.ENCERRANTE.USUAICOD'
    end
    object SQLTemplateBOMBICOD: TIntegerField
      DisplayLabel = 'Cod.Bomba/Bico'
      FieldName = 'BOMBICOD'
      Origin = 'DB.ENCERRANTE.BOMBICOD'
      OnChange = SQLTemplateBOMBICODChange
    end
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.ENCERRANTE.PRODICOD'
    end
    object SQLTemplateINICIO: TBCDField
      FieldName = 'INICIO'
      Origin = 'DB.ENCERRANTE.INICIO'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFINAL: TBCDField
      FieldName = 'FINAL'
      Origin = 'DB.ENCERRANTE.FINAL'
      OnChange = SQLTemplateFINALChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateAFERICAO: TBCDField
      FieldName = 'AFERICAO'
      Origin = 'DB.ENCERRANTE.AFERICAO'
      OnChange = SQLTemplateAFERICAOChange
      Precision = 15
      Size = 3
    end
    object SQLTemplateQTDEVENDA: TBCDField
      FieldName = 'QTDEVENDA'
      Origin = 'DB.ENCERRANTE.QTDEVENDA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVLRTOTVENDAS: TBCDField
      FieldName = 'VLRTOTVENDAS'
      Origin = 'DB.ENCERRANTE.VLRTOTVENDAS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCONCLUIDO: TStringField
      DisplayLabel = 'Concluido(SN)'
      FieldName = 'CONCLUIDO'
      Origin = 'DB.ENCERRANTE.CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ENCERRANTE.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ENCERRANTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateProdutoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ProdutoLookup'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateBombaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'BombaLookup'
      LookupDataSet = SQLBomba
      LookupKeyFields = 'BOMBICOD'
      LookupResultField = 'BOMBA30DESCR'
      KeyFields = 'BOMBICOD'
      Size = 30
      Lookup = True
    end
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  USUAICOD,'
      '  USUAA60LOGIN'
      'FROM USUARIO'
      'ORDER BY'
      '  USUAA60LOGIN')
    Macros = <>
    Left = 37
    Top = 323
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLUsuario: TDataSource
    DataSet = SQLUsuario
    Left = 65
    Top = 323
  end
  object SQLBomba: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM BOMBA ORDER BY BOMBICOD')
    Macros = <>
    Left = 37
    Top = 290
    object SQLBombaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.BOMBA.EMPRICOD'
    end
    object SQLBombaBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.BOMBA.BOMBICOD'
    end
    object SQLBombaTANQICOD: TIntegerField
      FieldName = 'TANQICOD'
      Origin = 'DB.BOMBA.TANQICOD'
    end
    object SQLBombaBOMBA30DESCR: TStringField
      FieldName = 'BOMBA30DESCR'
      Origin = 'DB.BOMBA.BOMBA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLBombaBOMBN2CONT: TBCDField
      FieldName = 'BOMBN2CONT'
      Origin = 'DB.BOMBA.BOMBN2CONT'
      Precision = 15
      Size = 2
    end
    object SQLBombaBOMBN3VLRVISTA: TBCDField
      FieldName = 'BOMBN3VLRVISTA'
      Origin = 'DB.BOMBA.BOMBN3VLRVISTA'
      Precision = 15
      Size = 3
    end
    object SQLBombaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.BOMBA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLBombaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.BOMBA.REGISTRO'
    end
    object SQLBombaCONVERTER: TStringField
      FieldName = 'CONVERTER'
      Origin = 'DB.BOMBA.CONVERTER'
      FixedChar = True
      Size = 2
    end
    object SQLBombaPOINT: TIntegerField
      FieldName = 'POINT'
      Origin = 'DB.BOMBA.POINT'
    end
    object SQLBombaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'DB.BOMBA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLBombaBOMBN3ENCERRANTE: TBCDField
      FieldName = 'BOMBN3ENCERRANTE'
      Origin = 'DB.BOMBA.BOMBN3ENCERRANTE'
      Precision = 15
      Size = 3
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD, PRODA60DESCR, PRODN3VLRVENDA FROM PRODUTO'
      'ORDER BY PRODA60DESCR')
    Macros = <>
    Left = 37
    Top = 258
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '##0.000'
      Precision = 15
      Size = 3
    end
  end
end
