inherited FormCadastroMecVeiculosdoCliente: TFormCadastroMecVeiculosdoCliente
  Left = 176
  Top = 138
  Caption = 'FormCadastroMecVeiculosdoCliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 81
            Height = 368
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 295
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
              Font.Style = [fsBold]
              ParentFont = False
              object Label2: TLabel
                Left = 16
                Top = 8
                Width = 30
                Height = 13
                Caption = 'Placa'
                FocusControl = DBEdit1
              end
              object Label3: TLabel
                Left = 119
                Top = 8
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit2
              end
              object Label4: TLabel
                Left = 156
                Top = 8
                Width = 55
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit3
              end
              object Label5: TLabel
                Left = 16
                Top = 48
                Width = 35
                Height = 13
                Caption = 'Marca'
                FocusControl = DBEdit4
              end
              object Label6: TLabel
                Left = 269
                Top = 91
                Width = 107
                Height = 13
                Caption = 'Nome do Motorista'
                FocusControl = DBEdit5
              end
              object Label7: TLabel
                Left = 16
                Top = 132
                Width = 127
                Height = 13
                Caption = 'Observa'#231#245'es Especiais'
                FocusControl = DBEdit6
              end
              object Label8: TLabel
                Left = 268
                Top = 48
                Width = 75
                Height = 13
                Caption = 'Ano / Modelo'
                FocusControl = DBEdit7
              end
              object Label9: TLabel
                Left = 16
                Top = 91
                Width = 102
                Height = 13
                Caption = 'Cor Predominante'
                FocusControl = DBEdit8
              end
              object Label10: TLabel
                Left = 156
                Top = 91
                Width = 70
                Height = 13
                Caption = 'Combust'#237'vel'
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 24
                Width = 95
                Height = 21
                DataField = 'PLACA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 119
                Top = 24
                Width = 30
                Height = 21
                DataField = 'UFPLACA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 156
                Top = 24
                Width = 390
                Height = 21
                DataField = 'VEICULOA50'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 16
                Top = 64
                Width = 250
                Height = 21
                DataField = 'MARCAA20'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 269
                Top = 107
                Width = 268
                Height = 21
                DataField = 'MOTORISTA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit6: TDBEdit
                Left = 16
                Top = 148
                Width = 521
                Height = 21
                DataField = 'OBSERVACOES'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit7: TDBEdit
                Left = 268
                Top = 64
                Width = 134
                Height = 21
                DataField = 'ANOMODELO'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit8: TDBEdit
                Left = 16
                Top = 107
                Width = 134
                Height = 21
                DataField = 'CORA10'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBComboBox1: TDBComboBox
                Left = 156
                Top = 107
                Width = 109
                Height = 21
                Style = csDropDownList
                DataField = 'COMBUSTIVEL'
                DataSource = DSTemplate
                ItemHeight = 13
                Items.Strings = (
                  '1 - Diesel'
                  '2 - Gasolina'
                  '3 - Alcool'
                  '4 - GNV'
                  '5 - TotalFlex'
                  '6 - Ignorado')
                TabOrder = 6
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 56
            Height = 25
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 56
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    DataSource = FormCadastroMecOrdem.DSTemplate
    SQL.Strings = (
      
        'Select * From ORD_MEC_VEICULOS Where CLIEA13ID = :CLIEA13ID AND ' +
        '(%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateIDVEICULO: TIntegerField
      Tag = 1
      FieldName = 'IDVEICULO'
      Origin = 'DB.ORD_MEC_VEICULOS.IDVEICULO'
      Required = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ORD_MEC_VEICULOS.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVEICULOA50: TStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'VEICULOA50'
      Origin = 'DB.ORD_MEC_VEICULOS.VEICULOA50'
      Size = 50
    end
    object SQLTemplatePLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = 'DB.ORD_MEC_VEICULOS.PLACA'
      FixedChar = True
      Size = 7
    end
    object SQLTemplateMARCAA20: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCAA20'
      Origin = 'DB.ORD_MEC_VEICULOS.MARCAA20'
    end
    object SQLTemplateMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'DB.ORD_MEC_VEICULOS.MOTORISTA'
      Size = 40
    end
    object SQLTemplateOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'DB.ORD_MEC_VEICULOS.OBSERVACOES'
      Size = 250
    end
    object SQLTemplateANOMODELO: TStringField
      FieldName = 'ANOMODELO'
      Origin = 'DB.ORD_MEC_VEICULOS.ANOMODELO'
      Size = 10
    end
    object SQLTemplateCORA10: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'CORA10'
      Origin = 'DB.ORD_MEC_VEICULOS.CORA10'
      Size = 10
    end
    object SQLTemplateCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'DB.ORD_MEC_VEICULOS.COMBUSTIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'DB.ORD_MEC_VEICULOS.UFPLACA'
      FixedChar = True
      Size = 2
    end
  end
end
