inherited FormCadastroTipoTarefa: TFormCadastroTipoTarefa
  Left = 207
  Top = 141
  Caption = 'Cadastro de Tipo de Tarefas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 41
            Height = 408
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 335
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TPTAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPTAA30DESCRICAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPTACINTEXT'
                    Width = 112
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPTACCHECKLIST'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPTAA13PRAZOMAX'
                    Width = 101
                    Visible = True
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'TPTAA1000CHECKLIST'
                    Width = 257
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
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 38
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label5: TLabel
                  Left = 0
                  Top = 0
                  Width = 749
                  Height = 13
                  Align = alTop
                  Caption = 'Prazo M'#225'ximo para Retorno'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox2: TRxDBComboBox
                  Left = 2
                  Top = 13
                  Width = 156
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TPTAA13PRAZOMAX'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Imediato'
                    '12 H'
                    '24 H'
                    '36 H'
                    '48 H'
                    '60 H'
                    'Indeterminado')
                  TabOrder = 0
                  Values.Strings = (
                    '1'
                    '12'
                    '24'
                    '36'
                    '48'
                    '60'
                    '0')
                end
              end
              object pnCheckList: TPanel
                Left = 0
                Top = 38
                Width = 749
                Height = 248
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Label4: TLabel
                  Left = 0
                  Top = 0
                  Width = 54
                  Height = 13
                  Align = alTop
                  Caption = 'CheckList'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object mmCheckList: TDBMemo
                  Left = 1
                  Top = 14
                  Width = 385
                  Height = 225
                  DataField = 'TPTAA1000CHECKLIST'
                  DataSource = DSTemplate
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 3
              Top = 2
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 67
              Top = 2
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 384
              Top = 2
              Width = 99
              Height = 13
              Caption = 'Interna / Externa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 15
              Width = 62
              Height = 21
              DataField = 'TPTAICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 67
              Top = 15
              Width = 310
              Height = 21
              DataField = 'TPTAA30DESCRICAO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 383
              Top = 15
              Width = 145
              Height = 21
              Cursor = crHandPoint
              Style = csDropDownList
              DataField = 'TPTACINTEXT'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Interna'
                'Externa')
              TabOrder = 2
              Values.Strings = (
                'I'
                'E')
            end
            object chkCheckList: TDBCheckBox
              Left = 536
              Top = 16
              Width = 78
              Height = 17
              Cursor = crHandPoint
              Caption = 'CheckList'
              DataField = 'TPTACCHECKLIST'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = chkCheckListClick
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From tipotarefa Where (%MFiltro)')
    object SQLTemplateTPTAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPTAICOD'
      Origin = 'DB.TIPOTAREFA.TPTAICOD'
      Visible = False
    end
    object SQLTemplateTPTAA30DESCRICAO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPTAA30DESCRICAO'
      Origin = 'DB.TIPOTAREFA.TPTAA30DESCRICAO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTPTACINTEXT: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Interna / Externa'
      FieldName = 'TPTACINTEXT'
      Origin = 'DB.TIPOTAREFA.TPTACINTEXT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTPTACCHECKLIST: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'CheckList'
      FieldName = 'TPTACCHECKLIST'
      Origin = 'DB.TIPOTAREFA.TPTACCHECKLIST'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTPTAA13PRAZOMAX: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Prazo Retorno'
      FieldName = 'TPTAA13PRAZOMAX'
      Origin = 'DB.TIPOTAREFA.TPTAA13PRAZOMAX'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTPTAA1000CHECKLIST: TMemoField
      DisplayLabel = 'CheckList'
      FieldName = 'TPTAA1000CHECKLIST'
      Origin = 'DB.TIPOTAREFA.TPTAA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1002
    end
  end
end
