inherited FormCadastroBomba: TFormCadastroBomba
  Left = 269
  Top = 3
  Caption = 'Cadastro de Bombas / Bicos'
  ClientHeight = 638
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 638
    inherited PanelCentral: TPanel
      Height = 564
      inherited PanelBarra: TPanel
        Height = 564
      end
      inherited PanelFundoDados: TPanel
        Height = 564
        inherited Panel5: TPanel
          Height = 564
          inherited PagePrincipal: TPageControl
            Top = 53
            Height = 511
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 438
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
              object Label1: TLabel
                Left = 11
                Top = 122
                Width = 57
                Height = 13
                Caption = 'Converter'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 212
                Top = 122
                Width = 125
                Height = 13
                Caption = 'Valor de Venda a Vista'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 10
                Top = 45
                Width = 42
                Height = 13
                Caption = 'Tanque'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 11
                Top = 6
                Width = 23
                Height = 13
                Caption = 'Bico'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 75
                Top = 6
                Width = 55
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 10
                Top = 80
                Width = 45
                Height = 13
                Caption = 'Produto'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 342
                Top = 122
                Width = 129
                Height = 13
                Caption = 'Valor de Venda a Prazo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 10
                Top = 387
                Width = 501
                Height = 26
                Caption = 
                  'Obs. O Converter(Nro Logico) serve para identificar o nro do bic' +
                  'o que vem da automa'#231#227'o.'#13#10'        Apresentado atraves do programa' +
                  ' CBCManager.exe.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 76
                Top = 122
                Width = 29
                Height = 13
                Caption = 'Point'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 8
                Top = 417
                Width = 566
                Height = 26
                Caption = 
                  '         O Point serve para identificar a posi'#231#227'o do bico na str' +
                  'ing de retorno do comando Status Bomba..'#13#10'         apresentado a' +
                  'traves do programa DLL_Test.exe'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 10
                Top = 58
                Width = 60
                Height = 21
                DataField = 'TANQICOD'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit1: TDBEdit
                Left = 9
                Top = 19
                Width = 60
                Height = 21
                DataField = 'BOMBICOD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit6: TDBEdit
                Left = 74
                Top = 19
                Width = 394
                Height = 21
                DataField = 'BOMBA30DESCR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object ComboTanque: TRxDBLookupCombo
                Left = 75
                Top = 57
                Width = 394
                Height = 21
                DropDownCount = 8
                DataField = 'TANQICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'TANQICOD'
                LookupDisplay = 'TANQA30DESCR'
                LookupSource = DSSQLTanque
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 10
                Top = 93
                Width = 62
                Height = 21
                DataField = 'PRODICOD'
                DataSource = DSSQLTanque
                TabOrder = 4
              end
              object ComboProduto: TRxDBLookupCombo
                Left = 76
                Top = 92
                Width = 394
                Height = 21
                DropDownCount = 8
                DataField = 'PRODICOD'
                DataSource = DSSQLTanque
                DisplayEmpty = '...'
                LookupField = 'PRODICOD'
                LookupDisplay = 'PRODA60DESCR'
                LookupSource = DSSQLProduto
                TabOrder = 5
              end
              object DBEditVlrVenda: TEvDBNumEdit
                Left = 215
                Top = 135
                Width = 120
                Height = 21
                AutoHideCalculator = False
                DataField = 'BOMBN3VLRVISTA'
                DataSource = DSTemplate
                Decimals = 3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                TabOrder = 8
              end
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 349
                Top = 135
                Width = 120
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 12572888
                DataField = 'PRODN3VLRVENDA'
                DataSource = DSSQLProduto
                Decimals = 3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
              end
              object DBEdit3: TDBEdit
                Left = 9
                Top = 135
                Width = 60
                Height = 21
                DataField = 'CONVERTER'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit5: TDBEdit
                Left = 74
                Top = 135
                Width = 60
                Height = 21
                DataField = 'POINT'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object Panel4: TPanel
                Left = 8
                Top = 164
                Width = 465
                Height = 209
                ParentColor = True
                TabOrder = 10
                object Label12: TLabel
                  Left = 8
                  Top = 32
                  Width = 113
                  Height = 13
                  Caption = 'Nro. S'#233'rie da Bomba'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 8
                  Top = 76
                  Width = 119
                  Height = 13
                  Caption = 'Fabricante da Bomba'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 8
                  Top = 116
                  Width = 41
                  Height = 13
                  Caption = 'Modelo'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 312
                  Top = 115
                  Width = 91
                  Height = 13
                  Caption = 'Tipo de Medi'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 8
                  Top = 156
                  Width = 73
                  Height = 13
                  Caption = 'Nro. do Lacre'
                  FocusControl = DBEdit12
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 312
                  Top = 156
                  Width = 135
                  Height = 13
                  Caption = 'Data Aplica'#231#227'o do Lacre'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 8
                  Top = 8
                  Width = 131
                  Height = 13
                  Caption = 'Informa'#231#245'es da Bomba'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit8: TDBEdit
                  Left = 8
                  Top = 48
                  Width = 450
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'BOMBA50NROSERIE'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit9: TDBEdit
                  Left = 8
                  Top = 92
                  Width = 450
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'BOMBA60FABRICANTE'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit10: TDBEdit
                  Left = 8
                  Top = 132
                  Width = 299
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'BOMBA20MODELO'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
                object DBEdit12: TDBEdit
                  Left = 8
                  Top = 172
                  Width = 299
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'BOMBA20LACRE'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 313
                  Top = 171
                  Width = 143
                  Height = 21
                  DataField = 'BOMBDDATALACRE'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 5
                  YearDigits = dyFour
                end
                object ComboTipoBomba: TRxDBComboBox
                  Left = 312
                  Top = 131
                  Width = 141
                  Height = 21
                  Style = csDropDownList
                  DataField = 'BOMBA1TIPO'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    '0 - Analogico'
                    '1 - Digital')
                  ParentFont = False
                  TabOrder = 3
                  Values.Strings = (
                    '0'
                    '1')
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 45
            Height = 8
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 45
            object Label4: TLabel
              Left = 14
              Top = 4
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              Left = 11
              Top = 17
              Width = 60
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 77
              Top = 16
              Width = 392
              Height = 21
              DropDownCount = 8
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Bomba Where (%MFiltro)')
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.BOMBA.EMPRICOD'
    end
    object SQLTemplateBOMBICOD: TIntegerField
      DisplayLabel = 'C'#243'd Bomba'
      FieldName = 'BOMBICOD'
      Origin = 'DB.BOMBA.BOMBICOD'
    end
    object SQLTemplateTANQICOD: TIntegerField
      DisplayLabel = 'C'#243'd Tanque'
      FieldName = 'TANQICOD'
      Origin = 'DB.BOMBA.TANQICOD'
    end
    object SQLTemplateBOMBA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BOMBA30DESCR'
      Origin = 'DB.BOMBA.BOMBA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateBOMBN3VLRVISTA: TBCDField
      DisplayLabel = 'Vlr. A Vista'
      FieldName = 'BOMBN3VLRVISTA'
      Origin = 'DB.BOMBA.BOMBN3VLRVISTA'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
      Precision = 15
      Size = 3
    end
    object SQLTemplateBOMBN2CONT: TBCDField
      FieldName = 'BOMBN2CONT'
      Origin = 'DB.BOMBA.BOMBN2CONT'
      Precision = 15
      Size = 2
    end
    object SQLTemplateCONVERTER: TStringField
      FieldName = 'CONVERTER'
      Origin = 'DB.BOMBA.CONVERTER'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'DB.BOMBA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePOINT: TIntegerField
      FieldName = 'POINT'
      Origin = 'DB.BOMBA.POINT'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.BOMBA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.BOMBA.REGISTRO'
    end
    object SQLTemplateCOMANDO: TStringField
      FieldName = 'COMANDO'
      Origin = 'DB.BOMBA.COMANDO'
      Size = 60
    end
    object SQLTemplateBOMBA50NROSERIE: TStringField
      FieldName = 'BOMBA50NROSERIE'
      Origin = 'DB.BOMBA.BOMBA50NROSERIE'
      Size = 50
    end
    object SQLTemplateBOMBA60FABRICANTE: TStringField
      FieldName = 'BOMBA60FABRICANTE'
      Origin = 'DB.BOMBA.BOMBA60FABRICANTE'
      Size = 60
    end
    object SQLTemplateBOMBA20MODELO: TStringField
      FieldName = 'BOMBA20MODELO'
      Origin = 'DB.BOMBA.BOMBA20MODELO'
    end
    object SQLTemplateBOMBA1TIPO: TStringField
      FieldName = 'BOMBA1TIPO'
      Origin = 'DB.BOMBA.BOMBA1TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateBOMBA20LACRE: TStringField
      FieldName = 'BOMBA20LACRE'
      Origin = 'DB.BOMBA.BOMBA20LACRE'
    end
    object SQLTemplateBOMBDDATALACRE: TDateTimeField
      FieldName = 'BOMBDDATALACRE'
      Origin = 'DB.BOMBA.BOMBDDATALACRE'
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT EMPRICOD, EMPRA60RAZAOSOC, EMPRA14CGC, EMPRA20IE FROM EMP' +
        'RESA'
      'ORDER BY EMPRA60RAZAOSOC')
    Macros = <>
    Left = 463
    Top = 2
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 491
    Top = 2
  end
  object DSSQLTanque: TDataSource
    DataSet = SQLTanque
    Left = 551
    Top = 2
  end
  object SQLTanque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TANQUE ORDER BY TANQICOD')
    Macros = <>
    Left = 524
    Top = 2
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 620
    Top = 2
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD, PRODA60DESCR, PRODN3VLRVENDA FROM PRODUTO'
      'ORDER BY PRODA60DESCR')
    Macros = <>
    Left = 592
    Top = 2
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
