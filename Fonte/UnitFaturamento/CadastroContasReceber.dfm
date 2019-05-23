inherited FormCadastroContasReceber: TFormCadastroContasReceber
  Left = 72
  Top = 103
  Caption = 'Cadastro de Documentos '#224' Receber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object ActionMainMenuBar1: TActionMainMenuBar
          Left = 0
          Top = 32
          Width = 788
          Height = 29
          Caption = 'ActionMainMenuBar1'
          EdgeOuter = esNone
          Spacing = 0
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 42
            Height = 419
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 344
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTRCA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDVENC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCINROPARC'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2VLR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TerminalCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2DESCFIN'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TXJURO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TXMULTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA5TIPODARAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlanodeContasCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EmpresaUltRecCalcField'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDULTREC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTREC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTJUROREC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTMULTAREC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTDESCREC'
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label6: TLabel
                Left = 8
                Top = 212
                Width = 90
                Height = 13
                Caption = 'Plano de Contas'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaPlanoContas: TSpeedButton
                Left = 96
                Top = 228
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
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
                OnClick = RetornaPlanoContasClick
              end
              object Label7: TLabel
                Left = 8
                Top = 134
                Width = 92
                Height = 13
                Caption = 'Tipo Documento'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaTipoDoc: TSpeedButton
                Left = 96
                Top = 149
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
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
                OnClick = RetornaTipoDocClick
              end
              object Label8: TLabel
                Left = 8
                Top = 173
                Width = 50
                Height = 13
                Caption = 'Portador'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaPortador: TSpeedButton
                Left = 96
                Top = 189
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
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
                OnClick = RetornaPortadorClick
              end
              object Label1: TLabel
                Left = 8
                Top = 17
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
              object Label2: TLabel
                Left = 8
                Top = 56
                Width = 39
                Height = 13
                Caption = 'Cliente'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 8
                Top = 95
                Width = 87
                Height = 13
                Caption = 'Nro.Documento'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 100
                Top = 95
                Width = 67
                Height = 13
                Caption = 'Vencimento'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 214
                Top = 95
                Width = 29
                Height = 13
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaEmpresa: TSpeedButton
                Left = 96
                Top = 33
                Width = 21
                Height = 21
                Hint = 'Acessa Empresa'
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
                OnClick = RetornaEmpresaClick
              end
              object RetornaCliente: TSpeedButton
                Left = 96
                Top = 72
                Width = 21
                Height = 21
                Hint = 'Acessa Cliente'
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
                OnClick = RetornaClienteClick
              end
              object Label9: TLabel
                Left = 317
                Top = 95
                Width = 112
                Height = 13
                Caption = 'Nro.Duplicata Banco'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 8
                Top = 228
                Width = 88
                Height = 21
                DataField = 'PLCTA15COD'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit8: TDBEdit
                Left = 119
                Top = 228
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'PlanodeContasCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 9
              end
              object DBEdit9: TDBEdit
                Left = 8
                Top = 150
                Width = 88
                Height = 21
                DataField = 'TPDCICOD'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit10: TDBEdit
                Left = 119
                Top = 150
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'TipoDocumentoCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit11: TDBEdit
                Left = 8
                Top = 189
                Width = 88
                Height = 21
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit12: TDBEdit
                Left = 119
                Top = 189
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'PortadorCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 12
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 33
                Width = 88
                Height = 21
                DataField = 'EMPRICOD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 8
                Top = 72
                Width = 88
                Height = 21
                DataField = 'CLIEA13ID'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 111
                Width = 88
                Height = 21
                DataField = 'CTRCA13ID'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBDateEdit
                Left = 100
                Top = 111
                Width = 112
                Height = 21
                DataField = 'CTRCDVENC'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 3
              end
              object DBEdit33: TDBEdit
                Left = 119
                Top = 33
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'EmpresaDestCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 14
              end
              object DBEdit6: TDBEdit
                Left = 119
                Top = 72
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'ClienteCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 11
              end
              object DBEdit13: TDBEdit
                Left = 317
                Top = 111
                Width = 184
                Height = 21
                DataField = 'CTRCA30NRODUPLICBANCO'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object GroupBox1: TGroupBox
                Left = 8
                Top = 256
                Width = 633
                Height = 146
                Caption = ' Hist'#243'rico de Recebimentos '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 629
                  Height = 129
                  Align = alClient
                  BorderStyle = bsNone
                  DataSource = DSSQLRecebimento
                  FixedColor = 16767449
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentColor = True
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDblClick = DBGridListaDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'RECEDRECTO'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRRECTO'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRJURO'
                      Width = 55
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRMULTA'
                      Width = 54
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2DESC'
                      Width = 58
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EmpresaUltRecCalcField'
                      Width = 227
                      Visible = True
                    end>
                end
              end
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 214
                Top = 111
                Width = 100
                Height = 21
                DataField = 'CTRCN2VLR'
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Glyph.Data = {
                  DA020000424DDA0200000000000036000000280000001A0000000D0000000100
                  100000000000A402000000000000000000000000000000000000FF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1C
                  EF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF5E
                  FF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7F
                  FF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3D
                  FF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3D
                  FF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2C
                  FF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5EFF5EFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5E
                  FF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C070007000700070007000700
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3DEF3DEF3DEF3DFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF02FF02FF02
                  FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                  FF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E}
                ShowButton = False
                ShowSeparator = True
                TabOrder = 4
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 1
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASRECEBER Where (%MFiltro)')
    object SQLTemplateCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLTemplateCTRCICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLTemplateEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Empr.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLTemplateEmpresaUltRecCalcField: TStringField
      DisplayLabel = 'Empresa Ult.Rec.'
      FieldKind = fkCalculated
      FieldName = 'EmpresaUltRecCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLTemplateTerminalCalcField: TStringField
      DisplayLabel = 'Terminal'
      FieldKind = fkCalculated
      FieldName = 'TerminalCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateClienteCalcField: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLTemplateCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2DESCFIN: TBCDField
      DisplayLabel = 'Desc.Fin.'
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLTemplateNumerarioCalcField: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'NumerarioCalcField'
      Visible = False
      Size = 30
      Calculated = True
    end
    object SQLTemplatePORTICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLTemplatePortadorCalcField: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'PortadorCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCN2TXJURO: TBCDField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TXMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCA5TIPODARAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CTRCA5TIPODARAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.'#218'lt.Rec.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Total Rectos.'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTJUROREC: TBCDField
      DisplayLabel = 'Juro Rectos.'
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTMULTAREC: TBCDField
      DisplayLabel = 'Multa Rectos.'
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTDESCREC: TBCDField
      DisplayLabel = 'Desc.Rectos.'
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTPDCICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Tipo Doc.'
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLTemplateTipoDocumentoCalcField: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldKind = fkCalculated
      FieldName = 'TipoDocumentoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'C'#243'd.Plano Contas'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePlanodeContasCalcField: TStringField
      DisplayLabel = 'Plano de Contas'
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEmpresaDestCalcField: TStringField
      DisplayLabel = 'Empresa Destino'
      FieldKind = fkCalculated
      FieldName = 'EmpresaDestCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Nro.Duplic.Bancos'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLRecebimento: TQuery
    OnCalcFields = SQLRecebimentoCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where CTRCA13ID = :CTRCA13ID')
    Left = 414
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa Recto.'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoEmpresaUltRecCalcField: TStringField
      DisplayLabel = 'Empresa Recto.'
      FieldKind = fkCalculated
      FieldName = 'EmpresaUltRecCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLRecebimentoSaldoCalcField: TBCDField
      FieldKind = fkCalculated
      FieldName = 'SaldoCalcField'
      Size = 0
      Calculated = True
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 442
    Top = 1
  end
end
