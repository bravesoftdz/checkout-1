inherited FormCadastroBalanca: TFormCadastroBalanca
  Left = -10
  Top = 55
  Caption = 'Balan'#231'as'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Lay-Out TXT'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CFBLICOD'
                    Width = 44
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLA60DESCR'
                    Width = 257
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIDECIMAIS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLCUSASEPAR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLA1TIPOSEPAR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLA254NOMEARQTXT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLA10BALID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIBALIDPOS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIBALIDTAM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIBALCODPOS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIBALCODTAM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIVLRPOS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFBLIVLRTAM'
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
              object GroupBox1: TGroupBox
                Left = 4
                Top = 3
                Width = 208
                Height = 64
                Caption = ' Identificador '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label3: TLabel
                  Left = 160
                  Top = 104
                  Width = 60
                  Height = 13
                  Caption = 'ID Balan'#231'a'
                end
                object Label4: TLabel
                  Left = 5
                  Top = 16
                  Width = 33
                  Height = 13
                  Caption = 'Texto'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 72
                  Top = 16
                  Width = 43
                  Height = 13
                  Caption = 'Posi'#231#227'o'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 139
                  Top = 16
                  Width = 53
                  Height = 13
                  Caption = 'Tamanho'
                  FocusControl = DBEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit4: TDBEdit
                  Left = 5
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLA10BALID'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit5: TDBEdit
                  Left = 72
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIBALIDPOS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit6: TDBEdit
                  Left = 139
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIBALIDTAM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object GroupBox2: TGroupBox
                Left = 214
                Top = 3
                Width = 142
                Height = 64
                Caption = ' C'#243'digo '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label7: TLabel
                  Left = 160
                  Top = 104
                  Width = 60
                  Height = 13
                  Caption = 'ID Balan'#231'a'
                end
                object Label8: TLabel
                  Left = 5
                  Top = 16
                  Width = 43
                  Height = 13
                  Caption = 'Posi'#231#227'o'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 72
                  Top = 16
                  Width = 53
                  Height = 13
                  Caption = 'Tamanho'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit8: TDBEdit
                  Left = 5
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIBALCODPOS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit9: TDBEdit
                  Left = 72
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIBALCODTAM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox3: TGroupBox
                Left = 359
                Top = 3
                Width = 282
                Height = 64
                Caption = ' Valor '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object Label9: TLabel
                  Left = 160
                  Top = 104
                  Width = 60
                  Height = 13
                  Caption = 'ID Balan'#231'a'
                end
                object Label11: TLabel
                  Left = 5
                  Top = 16
                  Width = 43
                  Height = 13
                  Caption = 'Posi'#231#227'o'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 71
                  Top = 16
                  Width = 53
                  Height = 13
                  Caption = 'Tamanho'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 138
                  Top = 16
                  Width = 136
                  Height = 13
                  Caption = 'Valor que ser'#225' impresso'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit11: TDBEdit
                  Left = 5
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIVLRPOS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit12: TDBEdit
                  Left = 71
                  Top = 31
                  Width = 63
                  Height = 21
                  DataField = 'CFBLIVLRTAM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object ComboTipoPreco: TRxDBComboBox
                  Left = 137
                  Top = 31
                  Width = 141
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CFBLCTIPOPRECO'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Valor Do Produto Por KG/UN'
                    'Peso do Produto')
                  ParentFont = False
                  TabOrder = 2
                  Values.Strings = (
                    'V'
                    'P')
                end
              end
              object GroupBox4: TGroupBox
                Left = 4
                Top = 75
                Width = 260
                Height = 64
                Caption = ' Campos Decimais '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object Label13: TLabel
                  Left = 160
                  Top = 104
                  Width = 60
                  Height = 13
                  Caption = 'ID Balan'#231'a'
                end
                object Label14: TLabel
                  Left = 5
                  Top = 16
                  Width = 51
                  Height = 13
                  Caption = 'Decimais'
                  FocusControl = DBEdit14
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 88
                  Top = 16
                  Width = 83
                  Height = 13
                  Caption = 'Usa Separador'
                  FocusControl = DBEdit15
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 173
                  Top = 16
                  Width = 78
                  Height = 13
                  Caption = 'Ponto/V'#237'rgula'
                  FocusControl = DBEdit16
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit14: TDBEdit
                  Left = 5
                  Top = 31
                  Width = 78
                  Height = 21
                  DataField = 'CFBLIDECIMAIS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit15: TRxDBComboBox
                  Left = 88
                  Top = 31
                  Width = 78
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CFBLCUSASEPAR'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 1
                  Values.Strings = (
                    'S'
                    'N')
                end
                object DBEdit16: TDBEdit
                  Left = 173
                  Top = 31
                  Width = 78
                  Height = 21
                  DataField = 'CFBLA1TIPOSEPAR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object GroupBox5: TGroupBox
                Left = 270
                Top = 75
                Width = 371
                Height = 64
                Caption = ' Local/Nome arquivo gerado para balan'#231'a '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object Label17: TLabel
                  Left = 160
                  Top = 104
                  Width = 60
                  Height = 13
                  Caption = 'ID Balan'#231'a'
                end
                object DBEdit18: TDBEdit
                  Left = 5
                  Top = 31
                  Width = 340
                  Height = 21
                  DataField = 'CFBLA254NOMEARQTXT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object FilePath: TDirectoryEdit
                  Left = 346
                  Top = 31
                  Width = 21
                  Height = 21
                  DialogKind = dkWin32
                  BorderStyle = bsNone
                  NumGlyphs = 1
                  TabOrder = 1
                  OnChange = FilePathChange
                end
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 11
              Top = 4
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
            object Label2: TLabel
              Left = 59
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 17
              Width = 43
              Height = 21
              DataField = 'CFBLICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 56
              Top = 17
              Width = 281
              Height = 21
              DataField = 'CFBLA60DESCR'
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
      'Select * From CONFIGBALANCA Where (%MFiltro)')
    object SQLTemplateCFBLICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFBLICOD'
      Origin = 'DB.CONFIGBALANCA.CFBLICOD'
      Visible = False
    end
    object SQLTemplateCFBLA60DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFBLA60DESCR'
      Origin = 'DB.CONFIGBALANCA.CFBLA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFBLIDECIMAIS: TIntegerField
      DisplayLabel = 'Decimais'
      FieldName = 'CFBLIDECIMAIS'
      Origin = 'DB.CONFIGBALANCA.CFBLIDECIMAIS'
    end
    object SQLTemplateCFBLCUSASEPAR: TStringField
      DisplayLabel = 'Usa Separador Dec.'
      FieldName = 'CFBLCUSASEPAR'
      Origin = 'DB.CONFIGBALANCA.CFBLCUSASEPAR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFBLA1TIPOSEPAR: TStringField
      DisplayLabel = 'Separador Dec.'
      FieldName = 'CFBLA1TIPOSEPAR'
      Origin = 'DB.CONFIGBALANCA.CFBLA1TIPOSEPAR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFBLA254NOMEARQTXT: TStringField
      DisplayLabel = 'Arq.Exporta'#231#227'o'
      FieldName = 'CFBLA254NOMEARQTXT'
      Origin = 'DB.CONFIGBALANCA.CFBLA254NOMEARQTXT'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCFBLA10BALID: TStringField
      DisplayLabel = 'ID Balan'#231'a'
      FieldName = 'CFBLA10BALID'
      Origin = 'DB.CONFIGBALANCA.CFBLA10BALID'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCFBLIBALIDPOS: TIntegerField
      DisplayLabel = 'Posi'#231#227'o ID Bal.'
      FieldName = 'CFBLIBALIDPOS'
      Origin = 'DB.CONFIGBALANCA.CFBLIBALIDPOS'
    end
    object SQLTemplateCFBLIBALIDTAM: TIntegerField
      DisplayLabel = 'Tam.ID Bal.'
      FieldName = 'CFBLIBALIDTAM'
      Origin = 'DB.CONFIGBALANCA.CFBLIBALIDTAM'
    end
    object SQLTemplateCFBLIBALCODPOS: TIntegerField
      DisplayLabel = 'Pos.C'#243'digo'
      FieldName = 'CFBLIBALCODPOS'
      Origin = 'DB.CONFIGBALANCA.CFBLIBALCODPOS'
    end
    object SQLTemplateCFBLIBALCODTAM: TIntegerField
      DisplayLabel = 'Tam.C'#243'digo'
      FieldName = 'CFBLIBALCODTAM'
      Origin = 'DB.CONFIGBALANCA.CFBLIBALCODTAM'
    end
    object SQLTemplateCFBLIVLRPOS: TIntegerField
      DisplayLabel = 'Pos.Valor'
      FieldName = 'CFBLIVLRPOS'
      Origin = 'DB.CONFIGBALANCA.CFBLIVLRPOS'
    end
    object SQLTemplateCFBLIVLRTAM: TIntegerField
      DisplayLabel = 'Tam.Valor'
      FieldName = 'CFBLIVLRTAM'
      Origin = 'DB.CONFIGBALANCA.CFBLIVLRTAM'
    end
    object SQLTemplateCFBLCTIPOPRECO: TStringField
      DisplayLabel = 'Vlr. Impresso'
      FieldName = 'CFBLCTIPOPRECO'
      Origin = 'DB.CONFIGBALANCA.CFBLCTIPOPRECO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO where PRODICODBALANCA > 0')
    Macros = <>
    Left = 446
    Top = 1
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
  end
end
