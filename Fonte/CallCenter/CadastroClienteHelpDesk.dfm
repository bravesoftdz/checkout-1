inherited FormCadastroClienteHelpDesk: TFormCadastroClienteHelpDesk
  Left = 201
  Top = 117
  Caption = 'Cadastro Cliente Help-Desk'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Produtos'
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 145
            Height = 304
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 231
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60RAZAOSOC'
                    Width = 231
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPDCADASTRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPDFIRSTHELP'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPDLASTHELP'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPINROHELP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPDFIRSTRESET'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPDLASTRESET'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLHPINRORESETS'
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
                Top = 192
                Height = 64
                Lines.Strings = (
                  'CLIENTEHELPDESKPRODUTO ')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 652
                Height = 279
                Align = alClient
                TabOrder = 0
                object Label9: TLabel
                  Left = 2
                  Top = 95
                  Width = 87
                  Height = 13
                  Align = alTop
                  Caption = 'Dados T'#233'cnicos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBMemo1: TDBMemo
                  Left = 2
                  Top = 108
                  Width = 648
                  Height = 169
                  Align = alClient
                  DataField = 'CLHPTDADOSTEC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  MaxLength = 1000
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object Panel4: TPanel
                  Left = 2
                  Top = 15
                  Width = 648
                  Height = 80
                  Align = alTop
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  TabStop = True
                  object Label6: TLabel
                    Left = 6
                    Top = 41
                    Width = 103
                    Height = 13
                    Caption = 'Dt. Primeiro Reset'
                    FocusControl = DBEdit5
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label3: TLabel
                    Left = 129
                    Top = 2
                    Width = 95
                    Height = 13
                    Caption = 'Dt. Primeiro Help'
                    FocusControl = DBEdit2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label2: TLabel
                    Left = 6
                    Top = 2
                    Width = 70
                    Height = 13
                    Caption = 'Dt. Cadastro'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label4: TLabel
                    Left = 250
                    Top = 2
                    Width = 83
                    Height = 13
                    Caption = 'Ct. '#218'ltimo Help'
                    FocusControl = DBEdit3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 129
                    Top = 41
                    Width = 92
                    Height = 13
                    Caption = 'Dt. '#218'ltimo Reset'
                    FocusControl = DBEdit6
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label8: TLabel
                    Left = 250
                    Top = 41
                    Width = 64
                    Height = 13
                    Caption = 'Nro. Resets'
                    FocusControl = DBEdit7
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 400
                    Top = 2
                    Width = 50
                    Height = 13
                    Caption = 'Nro. Help'
                    FocusControl = DBEdit4
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit5: TDBEdit
                    Left = 6
                    Top = 55
                    Width = 115
                    Height = 21
                    DataField = 'CLHPDFIRSTRESET'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object DBEdit2: TDBEdit
                    Left = 129
                    Top = 17
                    Width = 115
                    Height = 21
                    DataField = 'CLHPDFIRSTHELP'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit1: TDBEdit
                    Left = 6
                    Top = 17
                    Width = 115
                    Height = 21
                    DataField = 'CLHPDCADASTRO'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBEdit3: TDBEdit
                    Left = 250
                    Top = 17
                    Width = 145
                    Height = 21
                    DataField = 'CLHPDLASTHELP'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                  end
                  object DBEdit6: TDBEdit
                    Left = 129
                    Top = 55
                    Width = 115
                    Height = 21
                    DataField = 'CLHPDLASTRESET'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 4
                  end
                  object DBEdit7: TDBEdit
                    Left = 250
                    Top = 55
                    Width = 55
                    Height = 21
                    DataField = 'CLHPINRORESETS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                  end
                  object DBEdit4: TDBEdit
                    Left = 400
                    Top = 17
                    Width = 57
                    Height = 21
                    DataField = 'CLHPINROHELP'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 145
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 145
            object Label1: TLabel
              Left = 6
              Top = 3
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object AcessaCliente: TSpeedButton
              Left = 583
              Top = 18
              Width = 21
              Height = 21
              Hint = 'Acessa Clientes'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = AcessaClienteClick
            end
            object Label10: TLabel
              Left = 7
              Top = 41
              Width = 21
              Height = 13
              Caption = 'Obs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboCliente: TRxDBLookupCombo
              Left = 4
              Top = 18
              Width = 576
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              EmptyValue = 'null'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'CLIEA13ID'
              LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
              LookupSource = DSSQLCliente
              ParentFont = False
              TabOrder = 0
              OnKeyDown = ComboClienteKeyDown
            end
            object DBMemo2: TDBMemo
              Left = 5
              Top = 54
              Width = 572
              Height = 83
              Color = 15461355
              DataField = 'CLIETOBS'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CLIENTEHELPDESK Where (%MFiltro)')
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEHELPDESK.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTEHELPDESK.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CLIENTEHELPDESK.TERMICOD'
    end
    object SQLTemplateCLHPDCADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'CLHPDCADASTRO'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDCADASTRO'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    end
    object SQLTemplateCLHPDFIRSTHELP: TDateTimeField
      DisplayLabel = 'Dt. Primeiro Help'
      FieldName = 'CLHPDFIRSTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTHELP'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object SQLTemplateCLHPDLASTHELP: TDateTimeField
      DisplayLabel = 'Dt. Ult. Help'
      FieldName = 'CLHPDLASTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTHELP'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object SQLTemplateCLHPINROHELP: TIntegerField
      DisplayLabel = 'Nro. Help'
      FieldName = 'CLHPINROHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINROHELP'
      Visible = False
    end
    object SQLTemplateCLHPDFIRSTRESET: TDateTimeField
      DisplayLabel = 'Dt. Primeiro Reset'
      FieldName = 'CLHPDFIRSTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTRESET'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object SQLTemplateCLHPDLASTRESET: TDateTimeField
      DisplayLabel = 'Dt. Ult. Reset'
      FieldName = 'CLHPDLASTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTRESET'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object SQLTemplateCLHPINRORESETS: TIntegerField
      DisplayLabel = 'Nro. Resets'
      FieldName = 'CLHPINRORESETS'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINRORESETS'
      Visible = False
    end
    object SQLTemplateCLHPTDADOSTEC: TMemoField
      FieldName = 'CLHPTDADOSTEC'
      Origin = 'DB.CLIENTEHELPDESK.CLHPTDADOSTEC'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEHELPDESK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEHELPDESK.REGISTRO'
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIETOBS: TStringField
      DisplayLabel = 'Obs'
      FieldKind = fkLookup
      FieldName = 'CLIETOBS'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIETOBS'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 254
      Lookup = True
    end
  end
  inherited ActionList1: TActionList
    inherited actAlterar: TDataSetEdit
      OnUpdate = nil
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'CLIEA13ID, '
      'CLIEA60RAZAOSOC,'
      'CLIETOBS '
      'from '
      'CLIENTE'
      'order by'
      'CLIEA60RAZAOSOC ')
    Macros = <>
    Left = 64
    Top = 192
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIETOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'CLIETOBS'
      Origin = 'DB.CLIENTE.CLIETOBS'
      FixedChar = True
      Size = 254
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 36
    Top = 192
  end
end
