inherited FormCadastroInstrucaoBanco: TFormCadastroInstrucaoBanco
  Left = 224
  Top = 81
  Caption = 'Cadastro Instru'#231#227'o Banco'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BANCA5COD'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 375
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UTEIS_CORRIDO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GERA_NOSSONUMERO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GERA_BOLETO'
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
              object Label1: TLabel
                Left = 16
                Top = 16
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
                FocusControl = DBEdit1
              end
              object Label2: TLabel
                Left = 16
                Top = 56
                Width = 46
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit2
              end
              object Label3: TLabel
                Left = 16
                Top = 96
                Width = 20
                Height = 13
                Caption = 'Dias'
              end
              object Label6: TLabel
                Left = 16
                Top = 240
                Width = 29
                Height = 13
                Caption = 'Banco'
              end
              object RetornaBanco: TSpeedButton
                Left = 104
                Top = 255
                Width = 21
                Height = 20
                Hint = 'Acessa Plano de Contas'
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
              object DBEdit1: TDBEdit
                Left = 16
                Top = 32
                Width = 105
                Height = 21
                DataField = 'CODIGO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 72
                Width = 433
                Height = 21
                DataField = 'DESCRICAO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 16
                Top = 112
                Width = 145
                Height = 21
                DataField = 'UTEIS_CORRIDO'
                DataSource = DSTemplate
                EnableValues = False
                ItemHeight = 13
                Items.Strings = (
                  'Corrido'
                  #218'teis')
                TabOrder = 2
                Values.Strings = (
                  'C'
                  'U')
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 16
                Top = 144
                Width = 144
                Height = 41
                Caption = 'Gerar Nosso N'#250'mero'
                Columns = 2
                DataField = 'GERA_NOSSONUMERO'
                DataSource = DSTemplate
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 3
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 16
                Top = 192
                Width = 144
                Height = 41
                Caption = 'Gerar Boleto'
                Columns = 2
                DataField = 'GERA_BOLETO'
                DataSource = DSTemplate
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit9: TDBEdit
                Left = 15
                Top = 255
                Width = 88
                Height = 21
                DataField = 'BANCA5COD'
                DataSource = DSTemplate
                TabOrder = 5
                OnKeyDown = DBEdit9KeyDown
              end
              object DBEdit10: TDBEdit
                Left = 127
                Top = 256
                Width = 482
                Height = 18
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'NomeBancoCalcFields'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 6
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From INSTRUCAO_BANCO Where (%MFiltro)')
    object SQLTemplateCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'DB.INSTRUCAO_BANCO.CODIGO'
      Size = 10
    end
    object SQLTemplateDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DB.INSTRUCAO_BANCO.DESCRICAO'
      Size = 100
    end
    object SQLTemplateUTEIS_CORRIDO: TStringField
      DisplayLabel = 'Dias '#218'teis ou Corrido'
      FieldName = 'UTEIS_CORRIDO'
      Origin = 'DB.INSTRUCAO_BANCO.UTEIS_CORRIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateGERA_NOSSONUMERO: TStringField
      DisplayLabel = 'Gerar Nosso N'#250'mero'
      FieldName = 'GERA_NOSSONUMERO'
      Origin = 'DB.INSTRUCAO_BANCO.GERA_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateGERA_BOLETO: TStringField
      DisplayLabel = 'Gerar Boleto'
      FieldName = 'GERA_BOLETO'
      Origin = 'DB.INSTRUCAO_BANCO.GERA_BOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateBANCA5COD: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.INSTRUCAO_BANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNomeBancoCalcFields: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeBancoCalcFields'
      Size = 40
      Calculated = True
    end
  end
end
