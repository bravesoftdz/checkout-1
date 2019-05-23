inherited FormTelaCotacaoCompraItemFiltro: TFormTelaCotacaoCompraItemFiltro
  Left = 62
  Top = 82
  Caption = 'Assistente para Compras'
  ClientHeight = 581
  ClientWidth = 942
  OldCreateOrder = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 58
    Width = 942
    Height = 523
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 942
      Height = 95
      Align = alTop
      Color = 12572888
      TabOrder = 0
      object GroupFiltro: TGroupBox
        Left = 1
        Top = 1
        Width = 940
        Height = 93
        Align = alClient
        Color = 16249066
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 163
          Top = 53
          Width = 34
          Height = 13
          Caption = 'Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 316
          Top = 53
          Width = 55
          Height = 13
          Caption = 'SubGrupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 10
          Top = 53
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 392
          Top = 17
          Width = 154
          Height = 13
          Caption = 'Descri'#231#227'o Principal Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 601
          Top = 30
          Width = 13
          Height = 19
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 617
          Top = 17
          Width = 63
          Height = 13
          Caption = 'Ref.F'#225'brica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 159
          Top = 66
          Width = 150
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          ParentFont = False
          TabOrder = 4
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 312
          Top = 66
          Width = 150
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          ParentFont = False
          TabOrder = 5
          OnKeyDown = ComboSubGrupoKeyDown
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 6
          Top = 66
          Width = 150
          Height = 21
          DropDownCount = 8
          FieldsDelimiter = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLMarca
          ParentFont = False
          TabOrder = 3
          OnKeyDown = ComboMarcaKeyDown
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 7
          Width = 375
          Height = 44
          Caption = ' Vendidos entre '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label12: TLabel
            Left = 97
            Top = 20
            Width = 19
            Height = 13
            Caption = 'a&t'#233
            FocusControl = ATE
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DE: TDateEdit
            Left = 5
            Top = 16
            Width = 87
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object ATE: TDateEdit
            Left = 119
            Top = 16
            Width = 87
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 1
          end
          object CkPeriodo: TCheckBox
            Left = 217
            Top = 19
            Width = 148
            Height = 17
            Caption = 'N'#227'o Totalizar Vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object EditProduto: TEdit
          Left = 388
          Top = 30
          Width = 213
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object EditReferencia: TEdit
          Left = 613
          Top = 30
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CKNegativo: TCheckBox
          Left = 478
          Top = 68
          Width = 284
          Height = 17
          Caption = 'Mostrar Apenas com Saldo igual a Zero ou Neg'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 95
      Width = 942
      Height = 428
      Align = alClient
      Color = 16249066
      TabOrder = 1
      object GroupProdComprados: TGroupBox
        Left = 1
        Top = 218
        Width = 940
        Height = 168
        Align = alClient
        Caption = '  Produtos Escolhidos para Compra '
        Color = 16249066
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object GridProdutosFiltrados: TDBGrid
          Left = 2
          Top = 15
          Width = 936
          Height = 151
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblTempComprados
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = GridProdutosFiltradosDrawColumnCell
          OnEnter = GridProdutosFiltradosEnter
          OnExit = GridProdutosFiltradosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 307
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAULTCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'U.Compra'
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEULTCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Q.U.Comp'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODDULTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'U.Venda'
              Width = 48
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDETOTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Q.T.Venda'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Venda Atual'
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEMBAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Embal.'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDECOMPRADO'
              Title.Caption = 'Qtde.Ped'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPIPERC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Estoque'
              Width = 49
              Visible = True
            end>
        end
      end
      object GroupProdFiltrados: TGroupBox
        Left = 1
        Top = 1
        Width = 940
        Height = 175
        Align = alTop
        Caption = ' Produtos Filtrados '
        Color = 16249066
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 936
          Height = 158
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblTemporaria
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnEnter = GridProdutosFiltradosEnter
          OnExit = GridProdutosFiltradosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 307
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATAULTCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'U.Compra'
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEULTCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Q.U.Comp'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODDULTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'U.Venda'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDETOTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Q.T.Venda'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Venda Atual'
              Width = 70
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEMBAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Embal'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDECOMPRADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Qtde.Ped'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPIPERC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SALDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Estoque'
              Width = 50
              Visible = True
            end>
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 386
        Width = 940
        Height = 41
        Align = alBottom
        Color = 16249066
        TabOrder = 2
        object Label16: TLabel
          Left = 9
          Top = 1
          Width = 106
          Height = 13
          Caption = 'Descri'#231#227'o Principal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 356
          Top = 3
          Width = 61
          Height = 13
          Caption = 'Referencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 601
          Top = 3
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 460
          Top = 3
          Width = 19
          Height = 13
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 815
          Top = 2
          Width = 45
          Height = 13
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 738
          Top = 2
          Width = 60
          Height = 13
          Caption = 'V.Custo Un'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit8: TDBEdit
          Left = 9
          Top = 15
          Width = 339
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PRODA60DESCR'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit14: TDBEdit
          Left = 354
          Top = 16
          Width = 100
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Ref'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 599
          Top = 16
          Width = 132
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Marca'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 459
          Top = 16
          Width = 135
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Cor'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 814
          Top = 15
          Width = 90
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'SALDO'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 736
          Top = 16
          Width = 74
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'UltVlrCusto'
          DataSource = DSTblTempComprados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 176
        Width = 940
        Height = 42
        Align = alTop
        Color = 16249066
        TabOrder = 3
        object Label1: TLabel
          Left = 9
          Top = 1
          Width = 106
          Height = 13
          Caption = 'Descri'#231#227'o Principal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 684
          Top = 1
          Width = 34
          Height = 13
          Caption = 'Embal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 320
          Top = 1
          Width = 61
          Height = 13
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 419
          Top = 1
          Width = 19
          Height = 13
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 547
          Top = 1
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 729
          Top = 1
          Width = 68
          Height = 13
          Caption = 'Vlr.Custo Un'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 806
          Top = 2
          Width = 45
          Height = 13
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit30: TDBEdit
          Left = 6
          Top = 15
          Width = 308
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PRODA60DESCR'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 684
          Top = 15
          Width = 38
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'QTDEMBAL'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 319
          Top = 15
          Width = 95
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Referencia'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 419
          Top = 15
          Width = 124
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Cor'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 547
          Top = 15
          Width = 132
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Marca'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 728
          Top = 15
          Width = 71
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'UltVlrCusto'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 805
          Top = 15
          Width = 90
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'SALDO'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 942
    Height = 58
    inherited PanelCabecalho: TPanel
      Width = 942
      Height = 57
      inherited LabelTitulo: TLabel
        Left = 6
        Top = 1
      end
      object Label19: TLabel [1]
        Left = 525
        Top = 1
        Width = 60
        Height = 24
        Caption = 'Total...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelNavigator: TPanel
        Top = 25
        Width = 942
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 942
          inherited BtnFecharTela: TSpeedButton
            Left = 828
          end
          object BTFiltrar: TSpeedButton
            Tag = 3
            Left = 4
            Top = 3
            Width = 124
            Height = 25
            Cursor = crHandPoint
            Caption = '&1 Filtrar Produtos'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              96040000424D9604000000000000360000002800000012000000140000000100
              18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
              B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
              0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
              A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
              00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
              9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
              E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
              B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
              0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
              86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
              B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
              000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
              9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
              E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
              B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
              9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
              A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
              869000000084A8B469869000000084A8B4698690000000698690546B73000000
              000000000000000000000000000000000000000099B7C069869000000084A8B4
              546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
              000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
              86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000AAC3CA698690000000000000
              0000000000000000000000000000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
              E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            Spacing = 10
            OnClick = BTFiltrarClick
          end
          object BtSugestao: TSpeedButton
            Tag = 3
            Left = 132
            Top = 3
            Width = 124
            Height = 25
            Cursor = crHandPoint
            Caption = '&2 Sugest'#227'o'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777777774F77777700000007777
              7777444F77777000000077777774444F777770000000700000444F44F7777000
              000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
              74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
              8777F07777774000000070FFFF00007777777000000070F88707077777777000
              000070FFFF007777777770000000700000077777777770000000777777777777
              777770000000}
            ParentFont = False
            Spacing = 3
            OnClick = BtSugestaoClick
          end
        end
        object BTGravar: TBitBtn
          Left = 281
          Top = 3
          Width = 124
          Height = 25
          Caption = '&Gravar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ModalResult = 1
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBEdit3: TDBEdit
        Left = 666
        Top = 2
        Width = 123
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBlack
        DataField = 'ValorTotal'
        DataSource = DSSQLTotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA'
      'order by MARCA60DESCR')
    Macros = <>
    Left = 602
    Top = 5
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'UNITGESTAO.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'UNITGESTAO.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 574
    Top = 5
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select FORNICOD, FORNA60RAZAOSOC, FORNCSIMPLES from Fornecedor'
      'Order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 544
    Top = 5
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNCSIMPLES: TStringField
      FieldName = 'FORNCSIMPLES'
      Origin = 'DB.FORNECEDOR.FORNCSIMPLES'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 516
    Top = 5
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'select * from SUBGRUPO Where GRUPICOD = :GRUPICOD'
      'order by SUBGA60DESCR')
    Macros = <>
    Left = 486
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 458
    Top = 5
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO Where (%MFiltro)'
      'order by GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 428
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'UNITGESTAO.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 400
    Top = 5
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 342
    Top = 5
  end
  object TblTemporaria: TTable
    AutoCalcFields = False
    AfterPost = TblTemporariaAfterPost
    OnNewRecord = TblTemporariaNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoCompraProdutosFiltrados.DB'
    Left = 314
    Top = 5
    object TblTemporariaPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaQTDEMBAL: TIntegerField
      DisplayLabel = 'Cap.Embal'
      FieldName = 'QTDEMBAL'
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      DisplayLabel = 'Vlr.Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      DisplayLabel = 'Vlr.Venda'
      FieldName = 'PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object TblTemporariaQTDECOMPRADO: TBCDField
      DisplayLabel = 'Qtde.Pedido'
      FieldName = 'QTDECOMPRADO'
      Size = 3
    end
    object TblTemporariaSALDO: TBCDField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaDATAULTCOMPRA: TDateField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'DATAULTCOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTemporariaIPIPERC: TBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'IPIPERC'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Size = 2
    end
    object TblTemporariaQTDEULTCOMPRA: TBCDField
      DisplayLabel = 'Q.Compra'
      FieldName = 'QTDEULTCOMPRA'
      Size = 3
    end
    object TblTemporariaQTDETOTVENDA: TBCDField
      DisplayLabel = 'Q.Venda'
      FieldName = 'QTDETOTVENDA'
      Size = 3
    end
    object TblTemporariaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object TblTemporariaCor: TStringField
      FieldName = 'Cor'
    end
    object TblTemporariaMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object TblTemporariaUltVlrCusto: TFloatField
      FieldName = 'UltVlrCusto'
    end
    object TblTemporariaPRODDULTVENDA: TDateField
      DisplayLabel = 'Ult.Venda'
      FieldName = 'PRODDULTVENDA'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object SQLProdutos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODA60REFER,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.PRODN3VLRCOMPRA,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3CAPACEMBAL,'
      '  PRODUTO.PRODN3PERCIPI,'
      '  PRODUTO.PRODDULTCOMPRA,'
      '  PRODUTO.PRODDULTVENDA,'
      '  PRODUTO.PRODN3QTDULTCOMPRA,'
      '  PRODUTO.CORICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  COR.CORA30DESCR,'
      '  MARCA.MARCA60DESCR'
      'From'
      
        '  PRODUTO left outer join MARCA    on PRODUTO.MARCICOD = MARCA.M' +
        'ARCICOD'
      
        '          left outer join COR      on PRODUTO.CORICOD  = COR.COR' +
        'ICOD'
      'where'
      '  PRODCATIVO = '#39'S'#39' and'
      '  (%MProduto)      and'
      '  (%MProdutoRef)   and'
      '  (%MGrupo)        and'
      '  (%MSubGrupo)     and'
      '  (%MMarca)        and'
      '  (%MSaldo)'
      'order by'
      '  PRODUTO.PRODA60DESCR, PRODUTO.PRODA60REFER')
    Macros = <
      item
        DataType = ftString
        Name = 'MProduto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProdutoRef'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSaldo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 266
    Top = 5
    object SQLProdutosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLProdutosPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3CAPACEMBAL: TBCDField
      FieldName = 'PRODN3CAPACEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3PERCIPI: TBCDField
      FieldName = 'PRODN3PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
    end
    object SQLProdutosPRODN3QTDULTCOMPRA: TBCDField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutosCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLProdutosMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object SQLProdutosGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLProdutosSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object SQLProdutosVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object SQLProdutosCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLProdutosMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODDULTVENDA: TDateTimeField
      FieldName = 'PRODDULTVENDA'
    end
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'UnitGestao_Temp'
    SQL.Strings = (
      'select '
      '  Sum(QTDECOMPRADO*PRODN3VLRCOMPRA) as ValorTotal'
      'from '
      '  PedidoCompraProdutosFiltradosComprados'
      '')
    Macros = <>
    Left = 857
    Top = 3
    object SQLTotalValorTotal: TFloatField
      FieldName = 'ValorTotal'
      DisplayFormat = 'R$ ##0.00'
      EditFormat = '##0.00'
    end
  end
  object DSSQLTotal: TDataSource
    AutoEdit = False
    DataSet = SQLTotal
    Left = 829
    Top = 3
  end
  object TblTempComprados: TTable
    AutoCalcFields = False
    AfterPost = TblTempCompradosAfterPost
    AfterDelete = TblTempCompradosAfterDelete
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoCompraProdutosFiltradosComprados.DB'
    Left = 314
    Top = 36
    object TblTempCompradosPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTempCompradosPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTempCompradosQTDEMBAL: TIntegerField
      DisplayLabel = 'Cap.Embal'
      FieldName = 'QTDEMBAL'
    end
    object TblTempCompradosPRODN3VLRCOMPRA: TBCDField
      DisplayLabel = 'Vlr.Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object TblTempCompradosPRODN3VLRVENDA: TBCDField
      DisplayLabel = 'Vlr.Venda'
      FieldName = 'PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object TblTempCompradosQTDECOMPRADO: TBCDField
      DisplayLabel = 'Qtde.Pedido'
      FieldName = 'QTDECOMPRADO'
      Size = 3
    end
    object TblTempCompradosIPIPERC: TBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'IPIPERC'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Size = 2
    end
    object TblTempCompradosCor: TStringField
      FieldName = 'Cor'
    end
    object TblTempCompradosRef: TStringField
      FieldName = 'Ref'
      Size = 30
    end
    object TblTempCompradosMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object TblTempCompradosUltVlrCusto: TFloatField
      FieldName = 'UltVlrCusto'
    end
    object TblTempCompradosSALDO: TBCDField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object TblTempCompradosQTDETOTVENDA: TBCDField
      DisplayLabel = 'Q.Venda'
      FieldName = 'QTDETOTVENDA'
      Size = 3
    end
    object TblTempCompradosQTDEULTCOMPRA: TBCDField
      DisplayLabel = 'Q.Compra'
      FieldName = 'QTDEULTCOMPRA'
      Size = 3
    end
    object TblTempCompradosDATAULTCOMPRA: TDateField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'DATAULTCOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTempCompradosPRODDULTVENDA: TDateField
      DisplayLabel = 'Ult.Venda'
      FieldName = 'PRODDULTVENDA'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object DSTblTempComprados: TDataSource
    DataSet = TblTempComprados
    Left = 342
    Top = 36
  end
  object SQLMarcaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Marca')
    Macros = <>
    Left = 401
    Top = 36
    object SQLMarcaAuxMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaAuxMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCorAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cor')
    Macros = <>
    Left = 429
    Top = 36
    object SQLCorAuxCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorAuxCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLUnidadeAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade')
    Macros = <>
    Left = 457
    Top = 36
    object SQLUnidadeAuxUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeAuxUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadeAuxPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.UNIDADE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUnidadeAuxREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.UNIDADE.REGISTRO'
    end
    object SQLUnidadeAuxUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidadeAuxUNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CkPeriodo.Checked')
    StoredValues = <>
    Left = 24
    Top = 552
  end
end
