inherited FormCadastroContaCorrente: TFormCadastroContaCorrente
  Left = 212
  Top = 124
  Caption = 'Contas Correntes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 116
            Height = 325
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 252
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTCRICOD'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BANCA5COD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA15AGENCIA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA15NUMERO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA60TITULAR'
                    Width = 248
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRDABERTURA'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRN2LIMITE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRN2SALDOATUAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRDULTALTSALDO'
                    Visible = True
                  end>
              end
              inherited MemoDetalhes: TMemo
                Top = 187
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 3
                Top = 1
                Width = 37
                Height = 13
                Caption = 'Titular'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 3
                Top = 39
                Width = 35
                Height = 13
                Caption = 'Limite'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 3
                Top = 79
                Width = 64
                Height = 13
                Caption = 'Saldo Atual'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 155
                Top = 79
                Width = 146
                Height = 13
                Caption = #218'ltima Altera'#231#227'o do Saldo'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 155
                Top = 38
                Width = 109
                Height = 13
                Caption = 'C'#243'd. Conta Cont'#225'bil'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 3
                Top = 16
                Width = 494
                Height = 21
                DataField = 'CTCRA60TITULAR'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TEvDBNumEdit
                Left = 3
                Top = 54
                Width = 150
                Height = 21
                DataField = 'CTCRN2LIMITE'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
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
                ShowButton = False
                ShowSeparator = True
                TabOrder = 1
              end
              object EvDBNumEdit1: TDBEdit
                Left = 3
                Top = 94
                Width = 150
                Height = 21
                TabStop = False
                DataField = 'CTCRN2SALDOATUAL'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit6: TDBEdit
                Left = 155
                Top = 94
                Width = 342
                Height = 21
                TabStop = False
                DataField = 'CTCRDULTALTSALDO'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 155
                Top = 54
                Width = 342
                Height = 21
                DataField = 'CTCRA30CODCONTABIL'
                DataSource = DSTemplate
                TabOrder = 4
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 75
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 75
            object Label1: TLabel
              Left = 3
              Top = 37
              Width = 34
              Height = 13
              Caption = 'Banco'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaBanco: TSpeedButton
              Left = 74
              Top = 52
              Width = 21
              Height = 21
              Hint = 'Acessa Banco'
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
              OnClick = RetornaBancoClick
            end
            object Label2: TLabel
              Left = 323
              Top = 37
              Width = 45
              Height = 13
              Caption = 'Ag'#234'ncia'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 395
              Top = 37
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 5
              Top = 1
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 502
              Top = 37
              Width = 98
              Height = 13
              Caption = 'Data de Abertura'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 52
              Width = 69
              Height = 21
              DataField = 'BANCA5COD'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit33: TDBEdit
              Left = 97
              Top = 52
              Width = 222
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'BancoCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 323
              Top = 52
              Width = 69
              Height = 21
              DataField = 'CTCRA15AGENCIA'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 395
              Top = 52
              Width = 102
              Height = 21
              DataField = 'CTCRA15NUMERO'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 3
              Top = 16
              Width = 618
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = 'Selecione uma empresa...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRICOD;EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 0
            end
            object DBDateEdit1: TDBDateEdit
              Left = 500
              Top = 52
              Width = 121
              Height = 21
              DataField = 'CTCRDABERTURA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTACORRENTE Where (%MFiltro) and (%MEmpresa)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    object SQLTemplateCTCRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
      Visible = False
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTACORRENTE.EMPRICOD'
    end
    object SQLTemplateBANCA5COD: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateBancoCalcField: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkCalculated
      FieldName = 'BancoCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTCRA15AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA60TITULAR: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCTCRDABERTURA: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTCRN2LIMITE: TBCDField
      DisplayLabel = 'Limite'
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTCRN2SALDOATUAL: TBCDField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateTMBCICOD: TIntegerField
      FieldName = 'TMBCICOD'
      Origin = 'DB.CONTACORRENTE.TMBCICOD'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTACORRENTE.REGISTRO'
    end
    object SQLTemplateCTCRDULTALTSALDO: TDateTimeField
      DisplayLabel = #218'lt. Alt. Saldo'
      FieldName = 'CTCRDULTALTSALDO'
      Origin = 'DB.CONTACORRENTE.CTCRDULTALTSALDO'
      Visible = False
      DisplayFormat = 'dddddd hh:nn:ss'
    end
    object SQLTemplateCTCRA30CODCONTABIL: TStringField
      DisplayLabel = 'Cod. Conta Cont'#225'bil'
      FieldName = 'CTCRA30CODCONTABIL'
      Origin = 'DB.CONTACORRENTE.CTCRA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT EMPRICOD, EMPRA60RAZAOSOC FROM EMPRESA')
    Macros = <>
    Left = 437
    Top = 1
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
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 465
    Top = 1
  end
end
