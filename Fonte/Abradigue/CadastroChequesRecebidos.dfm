inherited FormCadastroChequesRecebidos: TFormCadastroChequesRecebidos
  Left = 69
  Top = 41
  Caption = 'Cheques Recebidos'
  ClientHeight = 585
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 585
    inherited PanelCentral: TPanel
      Height = 511
      inherited PanelBarra: TPanel
        Height = 511
        inherited Button3: TRxSpeedButton
          Top = 86
          Height = 30
          Caption = '&4 Altera'#231#245'es de Vencimento'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 3
          Left = 1
          Top = 117
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Hist'#243'rico'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button1Click
        end
        object Button5: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 62
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&3 Recebimentos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 511
        inherited Panel5: TPanel
          Height = 511
          inherited PagePrincipal: TPageControl
            Top = 237
            Height = 274
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 159
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'BANCA5CODCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA10AGENCIACHQ'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA15CONTACHQ'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA15NROCHQ'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA60TITULARCHQ'
                    Width = 263
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2VLR'
                    Width = 84
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA20CGCCPFCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCINROPARC'
                    Width = 24
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDEMIS'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDVENC'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDDEPOSCHQ'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EmpresaLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BancoLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AlineaLookup'
                    Width = 217
                    Visible = True
                  end>
              end
              inherited MemoDetalhes: TMemo
                Top = 143
                Lines.Strings = (
                  'RECEBIMENTO'
                  'CHEQUERECEBIDOALTERACAO')
              end
              object Panel4: TPanel
                Left = 0
                Top = 206
                Width = 652
                Height = 42
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 3
                object Label20: TLabel
                  Left = 1
                  Top = 3
                  Width = 49
                  Height = 13
                  Caption = 'Situa'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 328
                  Top = 3
                  Width = 50
                  Height = 13
                  Caption = 'Portador'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit6: TDBEdit
                  Left = 1
                  Top = 18
                  Width = 325
                  Height = 21
                  TabStop = False
                  Color = 14737632
                  DataField = 'AlineaLookup'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit22: TDBEdit
                  Left = 328
                  Top = 18
                  Width = 325
                  Height = 21
                  TabStop = False
                  Color = 14737632
                  DataField = 'PortadorLookup'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label7: TLabel
                Left = 8
                Top = 3
                Width = 40
                Height = 13
                Caption = 'Bancos'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaBanco: TSpeedButton
                Left = 93
                Top = 16
                Width = 21
                Height = 21
                Hint = 'Acessa Bancos'
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
              object Label8: TLabel
                Left = 8
                Top = 39
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 122
                Top = 40
                Width = 55
                Height = 13
                Caption = 'Nro.Conta'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 238
                Top = 40
                Width = 64
                Height = 13
                Caption = 'Nro.Cheque'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 353
                Top = 40
                Width = 80
                Height = 13
                Caption = 'Data Dep'#243'sito'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 8
                Top = 77
                Width = 50
                Height = 13
                Caption = 'Portador'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaPortador: TSpeedButton
                Left = 93
                Top = 90
                Width = 21
                Height = 21
                Hint = 'Acessa Portador'
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
              object Label17: TLabel
                Left = 8
                Top = 114
                Width = 49
                Height = 13
                Caption = 'Situa'#231#227'o'
                FocusControl = DBEdit17
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaAlinea: TSpeedButton
                Left = 93
                Top = 127
                Width = 21
                Height = 21
                Hint = 'Acessa Situa'#231#227'o'
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
                OnClick = RetornaAlineaClick
              end
              object DBEdit7: TDBEdit
                Left = 5
                Top = 16
                Width = 88
                Height = 21
                DataField = 'BANCA5CODCHQ'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit7KeyDown
              end
              object DBEdit8: TDBEdit
                Left = 116
                Top = 16
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'BancoLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit9: TDBEdit
                Left = 5
                Top = 53
                Width = 109
                Height = 21
                DataField = 'CTRCA10AGENCIACHQ'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 118
                Top = 53
                Width = 112
                Height = 21
                DataField = 'CTRCA15CONTACHQ'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit11: TDBEdit
                Left = 234
                Top = 53
                Width = 112
                Height = 21
                DataField = 'CTRCA15NROCHQ'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit14: TDBEdit
                Left = 350
                Top = 53
                Width = 112
                Height = 21
                DataField = 'CTRCDDEPOSCHQ'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit15: TDBEdit
                Left = 5
                Top = 90
                Width = 88
                Height = 21
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                TabOrder = 5
                OnKeyDown = DBEdit15KeyDown
              end
              object DBEdit16: TDBEdit
                Left = 116
                Top = 90
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'PortadorLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit17: TDBEdit
                Left = 5
                Top = 127
                Width = 88
                Height = 21
                DataField = 'ALINICOD'
                DataSource = DSTemplate
                TabOrder = 6
                OnKeyDown = DBEdit17KeyDown
              end
              object DBEdit18: TDBEdit
                Left = 116
                Top = 127
                Width = 383
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'AlineaLookup'
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
            end
            object TabSheetAlteracaoCheque: TTabSheet
              Caption = 'Altera'#231#245'es de Vencimento'
              ImageIndex = 2
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 652
                Height = 248
                Align = alClient
                BorderStyle = bsNone
                DataSource = DSSQLChequeRecebidoAlteracao
                FixedColor = 16767449
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
                ParentColor = True
                ParentFont = False
                ReadOnly = True
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
                    FieldName = 'CHRADLANC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CHRADVENCANT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CHRADVENCNOVO'
                    Visible = True
                  end>
              end
            end
            object TabRecebimentos: TTabSheet
              Caption = 'Recebimentos'
              ImageIndex = 3
              object DBGrid2: TDBGrid
                Left = 0
                Top = 0
                Width = 652
                Height = 248
                Align = alClient
                BorderStyle = bsNone
                DataSource = DSSQLRecebimento
                FixedColor = 16767449
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
                ParentColor = True
                ParentFont = False
                ReadOnly = True
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
                    FieldName = 'CTRCA13ID'
                    Visible = True
                  end
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
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RECEN2VLRMULTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RECEN2DESC'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 196
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 196
            object Label1: TLabel
              Left = 11
              Top = 2
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
            object RetornaEmpresa: TSpeedButton
              Left = 97
              Top = 16
              Width = 21
              Height = 21
              Hint = 'Acessa Empresas'
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
            object Label2: TLabel
              Left = 11
              Top = 42
              Width = 55
              Height = 13
              Caption = 'ID Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaCliente: TSpeedButton
              Left = 97
              Top = 55
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
              OnClick = RetornaClienteClick
            end
            object Label3: TLabel
              Left = 353
              Top = 153
              Width = 65
              Height = 13
              Caption = 'Nro.Interno'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 12
              Top = 153
              Width = 53
              Height = 13
              Caption = 'Digita'#231#227'o'
              FocusControl = DBDateEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 125
              Top = 153
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
              Left = 239
              Top = 153
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
            object Label6: TLabel
              Left = 11
              Top = 78
              Width = 90
              Height = 13
              Caption = 'Titular da Conta'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 352
              Top = 78
              Width = 48
              Height = 13
              Caption = 'CPF/CGC'
              FocusControl = DBEdit12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 11
              Top = 115
              Width = 77
              Height = 13
              Caption = 'Cupom Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 124
              Top = 115
              Width = 71
              Height = 13
              Caption = 'Valor Cupom'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaDocOrigem: TSpeedButton
              Left = 97
              Top = 128
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
              OnClick = RetornaDocOrigemClick
            end
            object Label19: TLabel
              Left = 238
              Top = 114
              Width = 42
              Height = 13
              Caption = 'Parcela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 16
              Width = 90
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit33: TDBEdit
              Left = 120
              Top = 16
              Width = 383
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'EmpresaLookup'
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
            object DBEdit3: TDBEdit
              Left = 349
              Top = 167
              Width = 112
              Height = 21
              DataField = 'CTRCA13ID'
              DataSource = DSTemplate
              TabOrder = 10
            end
            object DBDateEdit1: TDBDateEdit
              Left = 8
              Top = 167
              Width = 111
              Height = 21
              DataField = 'CTRCDEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 7
            end
            object DBEdit4: TDBDateEdit
              Left = 121
              Top = 167
              Width = 112
              Height = 21
              DataField = 'CTRCDVENC'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 8
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 235
              Top = 167
              Width = 112
              Height = 21
              DataField = 'CTRCN2VLR'
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
              TabOrder = 9
            end
            object DBEdit5: TDBEdit
              Left = 8
              Top = 91
              Width = 340
              Height = 21
              DataField = 'CTRCA60TITULARCHQ'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit12: TDBEdit
              Left = 349
              Top = 91
              Width = 112
              Height = 21
              DataField = 'CTRCA20CGCCPFCHQ'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 55
              Width = 90
              Height = 21
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit2KeyDown
            end
            object IDCupom: TDBEdit
              Left = 8
              Top = 128
              Width = 90
              Height = 21
              DataField = 'CUPOA13ID'
              DataSource = DSTemplate
              TabOrder = 4
              OnKeyDown = IDCupomKeyDown
            end
            object DBEdit19: TDBEdit
              Left = 120
              Top = 55
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
              TabOrder = 12
            end
            object DBEdit20: TDBEdit
              Left = 121
              Top = 128
              Width = 112
              Height = 21
              DataField = 'ValorCupom'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object DBEdit21: TDBEdit
              Left = 235
              Top = 127
              Width = 112
              Height = 21
              DataField = 'CTRCINROPARC'
              DataSource = DSTemplate
              TabOrder = 6
            end
          end
        end
      end
    end
  end
  inherited DSTemplate: TDataSource
    Top = 2
  end
  inherited PopupMenuDiversos: TPopupMenu
    Top = 2
    object Geraroutrodocumento1: TMenuItem
      Caption = 'Gerar outro documento a partir do atual'
      OnClick = Geraroutrodocumento1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    Top = 2
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    BeforeScroll = SQLTemplateBeforeScroll
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASRECEBER '
      'Where '
      '  (%MFiltro) and '
      '  (CTRCA5TIPOPADRAO = "CHQV" or '
      '   CTRCA5TIPOPADRAO = "CHQP" or '
      '   CTRCA5TIPOPADRAO = "CHQ") '
      'and (%MEmpresa)'
      ''
      '')
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
    Top = 2
    object SQLTemplateCTRCA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Cheque'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLTemplateCTRCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
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
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      OnChange = SQLTemplateCLIEA13IDChange
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
    object SQLTemplateEmpresaLookup: TStringField
      DisplayLabel = 'Empresa Destino'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCTRCINROPARC: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Prc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLTemplateCTRCDVENC: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2VLR: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePORTICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLTemplatePortadorLookup: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkLookup
      FieldName = 'PortadorLookup'
      LookupDataSet = SQLPortador
      LookupKeyFields = 'PORTICOD'
      LookupResultField = 'PORTA60DESCR'
      KeyFields = 'PORTICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCTRCA5TIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateBANCA5CODCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateBancoLookup: TStringField
      DisplayLabel = 'Nome Banco'
      FieldKind = fkLookup
      FieldName = 'BancoLookup'
      LookupDataSet = SQLBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5CODCHQ'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCTRCA10AGENCIACHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCTRCA15CONTACHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nro.Conta'
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA15NROCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA60TITULARCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Titular'
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCTRCA20CGCCPFCHQ: TStringField
      DisplayLabel = 'CPF/CGC Titular'
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLTemplateCTRCDDEPOSCHQ: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateALINICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Al'#237'nea'
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLTemplateAlineaLookup: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'AlineaLookup'
      LookupDataSet = SQLAlinea
      LookupKeyFields = 'ALINICOD'
      LookupResultField = 'ALINA30DESCR'
      KeyFields = 'ALINICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateValorCupom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorCupom'
      ReadOnly = True
      Visible = False
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLTemplateCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
  end
  inherited SQLCount: TRxQuery
    Top = 2
  end
  inherited DSMasterTemplate: TDataSource
    Top = 2
  end
  inherited SQLExcluiDetalhes: TRxQuery
    Left = 409
    Top = 2
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASRECEBER'
      'set'
      '  CTRCA13ID = :CTRCA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  CTRCICOD = :CTRCICOD,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CTRCCSTATUS = :CTRCCSTATUS,'
      '  CTRCINROPARC = :CTRCINROPARC,'
      '  CTRCDVENC = :CTRCDVENC,'
      '  CTRCN2VLR = :CTRCN2VLR,'
      '  CTRCN2DESCFIN = :CTRCN2DESCFIN,'
      '  NUMEICOD = :NUMEICOD,'
      '  PORTICOD = :PORTICOD,'
      '  CTRCN2TXJURO = :CTRCN2TXJURO,'
      '  CTRCN2TXMULTA = :CTRCN2TXMULTA,'
      '  CTRCA5TIPOPADRAO = :CTRCA5TIPOPADRAO,'
      '  CTRCDULTREC = :CTRCDULTREC,'
      '  CTRCN2TOTREC = :CTRCN2TOTREC,'
      '  CTRCN2TOTJUROREC = :CTRCN2TOTJUROREC,'
      '  CTRCN2TOTMULTAREC = :CTRCN2TOTMULTAREC,'
      '  CTRCN2TOTDESCREC = :CTRCN2TOTDESCREC,'
      '  EMPRICODULTREC = :EMPRICODULTREC,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  TPDCICOD = :TPDCICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTRCA30NRODUPLICBANCO = :CTRCA30NRODUPLICBANCO,'
      '  NOFIA13ID = :NOFIA13ID,'
      '  CTRCDEMIS = :CTRCDEMIS,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTRCDREABILSPC = :CTRCDREABILSPC,'
      '  CTRCN2TOTMULTACOBR = :CTRCN2TOTMULTACOBR'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID')
    InsertSQL.Strings = (
      'insert into CONTASRECEBER'
      
        '  (CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CLIEA13ID, CTRCCSTAT' +
        'US, CTRCINROPARC, '
      
        '   CTRCDVENC, CTRCN2VLR, CTRCN2DESCFIN, NUMEICOD, PORTICOD, CTRC' +
        'N2TXJURO, '
      
        '   CTRCN2TXMULTA, CTRCA5TIPOPADRAO, CTRCDULTREC, CTRCN2TOTREC, C' +
        'TRCN2TOTJUROREC, '
      
        '   CTRCN2TOTMULTAREC, CTRCN2TOTDESCREC, EMPRICODULTREC, CUPOA13I' +
        'D, TPDCICOD, '
      
        '   PLCTA15COD, CTRCA30NRODUPLICBANCO, NOFIA13ID, CTRCDEMIS, PEND' +
        'ENTE, REGISTRO, '
      '   CTRCDREABILSPC, CTRCN2TOTMULTACOBR)'
      'values'
      
        '  (:CTRCA13ID, :EMPRICOD, :TERMICOD, :CTRCICOD, :CLIEA13ID, :CTR' +
        'CCSTATUS, '
      
        '   :CTRCINROPARC, :CTRCDVENC, :CTRCN2VLR, :CTRCN2DESCFIN, :NUMEI' +
        'COD, :PORTICOD, '
      
        '   :CTRCN2TXJURO, :CTRCN2TXMULTA, :CTRCA5TIPOPADRAO, :CTRCDULTRE' +
        'C, :CTRCN2TOTREC, '
      
        '   :CTRCN2TOTJUROREC, :CTRCN2TOTMULTAREC, :CTRCN2TOTDESCREC, :EM' +
        'PRICODULTREC, '
      
        '   :CUPOA13ID, :TPDCICOD, :PLCTA15COD, :CTRCA30NRODUPLICBANCO, :' +
        'NOFIA13ID, '
      
        '   :CTRCDEMIS, :PENDENTE, :REGISTRO, :CTRCDREABILSPC, :CTRCN2TOT' +
        'MULTACOBR)')
    DeleteSQL.Strings = (
      'delete from CONTASRECEBER'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID')
    Top = 2
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 16
    Top = 400
  end
  object SQLBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BANCO')
    Macros = <>
    Left = 16
    Top = 428
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PORTADOR')
    Macros = <>
    Left = 16
    Top = 456
  end
  object SQLAlinea: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ALINEA')
    Macros = <>
    Left = 16
    Top = 484
  end
  object SQLSaldoConsig: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CTRCA13ID,'
      '  CUPOA13ID,'
      '  CTRCN2VLR,'
      '  CTRCN2TOTREC,'
      '  CTRCN2VLR - CTRCN2TOTREC AS SALDO'
      'from'
      '  CONTASRECEBER'
      'where'
      '  %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 440
    Top = 2
    object SQLSaldoConsigCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLSaldoConsigCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLSaldoConsigCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLSaldoConsigCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLSaldoConsigSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where CTRCA13ID = :CTRCA13ID')
    Macros = <>
    Left = 585
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
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
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECEBIMENTO.REGISTRO'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TBCDField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'DB.RECEBIMENTO.RECEN2MULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEA30HIST: TStringField
      FieldName = 'RECEA30HIST'
      Origin = 'DB.RECEBIMENTO.RECEA30HIST'
      FixedChar = True
      Size = 30
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CLIENTE'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 499
    Top = 2
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
  end
  object SQLCheques: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where '
      '  (CTRCA5TIPOPADRAO = '#39'CHQ'#39' or '
      '   CTRCA5TIPOPADRAO = '#39'CHQV'#39' or '
      '   CTRCA5TIPOPADRAO = '#39'CHQP'#39') and'
      '  %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 529
    Top = 2
    object SQLChequesCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLChequesCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
  end
  object SQLChequeRecebidoAlteracao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select * from CHEQUERECEBIDOALTERACAO'
      'where CTRCA13ID = :CTRCA13ID')
    Macros = <>
    Left = 16
    Top = 512
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLChequeRecebidoAlteracaoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequeRecebidoAlteracaoCHRAICOD: TIntegerField
      FieldName = 'CHRAICOD'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.CHRAICOD'
    end
    object SQLChequeRecebidoAlteracaoCHRADLANC: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'CHRADLANC'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.CHRADLANC'
    end
    object SQLChequeRecebidoAlteracaoCHRADVENCANT: TDateTimeField
      DisplayLabel = 'Vencto.Anterior'
      FieldName = 'CHRADVENCANT'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.CHRADVENCANT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequeRecebidoAlteracaoCHRADVENCNOVO: TDateTimeField
      DisplayLabel = 'Novo Vencto.'
      FieldName = 'CHRADVENCNOVO'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.CHRADVENCNOVO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequeRecebidoAlteracaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLChequeRecebidoAlteracaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CHEQUERECEBIDOALTERACAO.REGISTRO'
    end
  end
  object DSSQLChequeRecebidoAlteracao: TDataSource
    DataSet = SQLChequeRecebidoAlteracao
    Left = 44
    Top = 512
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 557
    Top = 2
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 624
    Top = 1
    object SQLEspelhoNovoLancCTRCA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Cheque'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLEspelhoNovoLancTERMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLEspelhoNovoLancCTRCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLEspelhoNovoLancCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      OnChange = SQLTemplateCLIEA13IDChange
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCINROPARC: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Prc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLEspelhoNovoLancCTRCDVENC: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLEspelhoNovoLancCTRCN2VLR: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancPORTICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
    end
    object SQLEspelhoNovoLancCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLEspelhoNovoLancCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLEspelhoNovoLancBANCA5CODCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLEspelhoNovoLancCTRCA10AGENCIACHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLEspelhoNovoLancCTRCA15CONTACHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nro.Conta'
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancCTRCA15NROCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancCTRCA60TITULARCHQ: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Titular'
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLEspelhoNovoLancCTRCA20CGCCPFCHQ: TStringField
      DisplayLabel = 'CGC/CPF Tit.'
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLEspelhoNovoLancCTRCDDEPOSCHQ: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLEspelhoNovoLancALINICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Al'#237'nea'
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLEspelhoNovoLancCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancValorCupom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorCupom'
      ReadOnly = True
      Visible = False
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLEspelhoNovoLancPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
  end
end
