inherited FormTelaImportacaoPedidoCompra: TFormTelaImportacaoPedidoCompra
  Left = 198
  Top = 105
  Width = 821
  Height = 608
  Caption = 'Importa'#231#227'o Pedido de Compra'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 8
    Top = 9
    Width = 79
    Height = 16
    Caption = 'Refer'#234'ncia :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited ScrollBoxFundo: TScrollBox
    Width = 805
    Height = 570
    inherited PanelCentral: TPanel
      Width = 801
      Height = 486
      BorderWidth = 10
      Color = clSilver
      inherited PanelBarra: TPanel
        Left = 10
        Top = 10
        Width = 0
        Height = 466
      end
      object DBGridLista: TDBGrid
        Left = 1
        Top = 88
        Width = 800
        Height = 359
        BorderStyle = bsNone
        Color = 12572888
        DataSource = DSTblQtde
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgEditing, dgColLines, dgRowLines, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 22
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = '11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q12'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '12'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q13'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = '13'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q14'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = '14'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'Q15'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = '15'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Color = 14737632
            Expanded = False
            FieldName = 'QTotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taRightJustify
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 48
            Visible = True
          end>
      end
      object PanelCab: TPanel
        Left = -1
        Top = 73
        Width = 789
        Height = 15
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        DesignSize = (
          789
          15)
        object L1: TLabel
          Left = 1
          Top = 0
          Width = 43
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L2: TLabel
          Left = 49
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L3: TLabel
          Left = 93
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L4: TLabel
          Left = 137
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L5: TLabel
          Left = 183
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L6: TLabel
          Left = 227
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L7: TLabel
          Left = 270
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L8: TLabel
          Left = 315
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L9: TLabel
          Left = 359
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L10: TLabel
          Left = 404
          Top = 0
          Width = 39
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L11: TLabel
          Left = 448
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L12: TLabel
          Left = 491
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L13: TLabel
          Left = 534
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L14: TLabel
          Left = 580
          Top = 0
          Width = 40
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L15: TLabel
          Left = 625
          Top = 0
          Width = 38
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LTotP: TLabel
          Left = 666
          Top = 0
          Width = 44
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Caption = 'Tot. Ped'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LTotN: TLabel
          Left = 713
          Top = 0
          Width = 51
          Height = 15
          Alignment = taCenter
          Anchors = []
          AutoSize = False
          Caption = 'Tot. NF '
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape1: TShape
          Left = 44
          Top = 0
          Width = 4
          Height = 15
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape2: TShape
          Left = 89
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape3: TShape
          Left = 133
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape4: TShape
          Left = 178
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape5: TShape
          Left = 222
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape6: TShape
          Left = 265
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape7: TShape
          Left = 310
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape8: TShape
          Left = 354
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape9: TShape
          Left = 399
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape10: TShape
          Left = 443
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape11: TShape
          Left = 486
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape12: TShape
          Left = 529
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape13: TShape
          Left = 574
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape14: TShape
          Left = 619
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape15: TShape
          Left = 662
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape16: TShape
          Left = 711
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
        object Shape18: TShape
          Left = 759
          Top = -1
          Width = 4
          Height = 16
          Brush.Color = clBlack
          Pen.Style = psClear
        end
      end
      object PanelLegenda: TPanel
        Left = -4
        Top = 1
        Width = 805
        Height = 71
        Color = 12572888
        TabOrder = 3
        object DBText1: TDBText
          Left = 84
          Top = 6
          Width = 56
          Height = 18
          DataField = 'PRODICOD'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelProd: TLabel
          Left = 16
          Top = 6
          Width = 61
          Height = 18
          AutoSize = False
          Caption = 'Produto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 340
          Top = 6
          Width = 421
          Height = 18
          DataField = 'PRODA60DESCR'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 228
          Top = 6
          Width = 104
          Height = 16
          DataField = 'Referencia'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 144
          Top = 6
          Width = 79
          Height = 16
          AutoSize = False
          Caption = 'Refer'#234'ncia :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 197
          Top = 30
          Width = 31
          Height = 16
          AutoSize = False
          Caption = 'Cor :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 197
          Top = 45
          Width = 208
          Height = 16
          DataField = 'Cor'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 15
          Top = 30
          Width = 52
          Height = 16
          AutoSize = False
          Caption = 'Grade :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 15
          Top = 45
          Width = 174
          Height = 16
          DataField = 'Grade'
          DataSource = DSTblQtde
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 435
          Top = 32
          Width = 58
          Height = 13
          Caption = 'Cap.Embal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 505
          Top = 32
          Width = 62
          Height = 13
          Caption = 'Vlr Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 592
          Top = 32
          Width = 33
          Height = 13
          Caption = '% IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbCapEmbal: TEvDBNumEdit
          Left = 434
          Top = 45
          Width = 58
          Height = 21
          AutoHideCalculator = False
          DataField = 'PCITN3CAPEMBAL'
          DataSource = DSTblQtde
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
          TabOrder = 0
        end
        object dbIpi: TEvDBNumEdit
          Left = 590
          Top = 45
          Width = 53
          Height = 21
          AutoHideCalculator = False
          DataField = 'PCITN3PERVIPI'
          DataSource = DSTblQtde
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
          TabOrder = 2
        end
        object dbCompra: TEvDBNumEdit
          Left = 504
          Top = 45
          Width = 76
          Height = 21
          AutoHideCalculator = False
          DataField = 'PCITN3VLRUNIT'
          DataSource = DSTblQtde
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
          TabOrder = 1
        end
      end
      object ProgressBar: TProgressBar
        Left = 10
        Top = 451
        Width = 776
        Height = 33
        TabOrder = 4
        Visible = False
      end
      object Panel4: TPanel
        Left = 760
        Top = 72
        Width = 41
        Height = 16
        BevelOuter = bvNone
        Color = clInfoBk
        TabOrder = 5
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 801
      inherited PanelCabecalho: TPanel
        Width = 801
        inherited PanelNavigator: TPanel
          Width = 801
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 801
            object BtnOk: TSpeedButton
              Left = 5
              Top = 4
              Width = 75
              Height = 25
              Caption = '&OK'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                DE040000424DDE0400000000000036040000280000000C0000000E0000000100
                080000000000A8000000130B0000130B0000000100000001000000000000A7C2
                B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
                88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000111111111100
                11111111111111111111000B0011111111111111110009090011111111111111
                1100090F10001111111111110009090D0E0011111111110009090B000C060011
                11111100090800000A0200111111000909000011000206001111000708001111
                0003020011111100001111111100030600111111111111111100050200111111
                1111111111110003040011111111111111110001020011111111111111111100
                0011}
              ParentFont = False
              OnClick = BtnOkClick
            end
            object Label1: TLabel
              Left = 197
              Top = 9
              Width = 123
              Height = 13
              Caption = 'Quantidade do Pedido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 359
              Top = 9
              Width = 71
              Height = 13
              Caption = '<- Legenda ->'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 473
              Top = 9
              Width = 111
              Height = 13
              Caption = 'Quantidade da Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
          end
        end
        object ListBoxGrade: TDBListBox
          Left = 424
          Top = 11
          Width = 121
          Height = 28
          ItemHeight = 13
          TabOrder = 1
          Visible = False
        end
      end
    end
  end
  object SQLTemplate: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    DataSource = FormCadastroNotaCompra.DSTemplate
    SQL.Strings = (
      'Select '
      
        '    C.*,P.PRODA60DESCR,P.PRODIAGRUPGRADE,P.CORICOD,P.GRADICOD,P.' +
        'GRTMICOD,P.PRODA60REFER'
      'From '
      '    PedidoCompraItem C, Produto P'
      'Where '
      '    P.PRODICOD = C.PRODICOD AND'
      '    PDCPA13ID=:PDCPA13ID AND '
      '    (%MFiltro)'
      'order by'
      '   P.PRODIAGRUPGRADE, P.CORICOD, P.GRTMICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 61
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDCPA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLTemplatePDCPA13ID: TStringField
      Tag = 1
      DisplayLabel = 'C'#243'd.Pedido'
      FieldName = 'PDCPA13ID'
      Origin = 'DB.PEDIDOCOMPRAITEM.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePCITIPOS: TIntegerField
      Tag = 1
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'PCITIPOS'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITIPOS'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOCOMPRAITEM.PRODICOD'
    end
    object SQLTemplatePCITN3QTDBONIF: TBCDField
      DisplayLabel = 'Qtde.Bonifica'#231#227'o'
      FieldName = 'PCITN3QTDBONIF'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3QTDBONIF'
      Size = 3
    end
    object SQLTemplatePCITN3CAPEMBAL: TBCDField
      DisplayLabel = 'Cap.Embalagem'
      FieldName = 'PCITN3CAPEMBAL'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3CAPEMBAL'
      Size = 3
    end
    object SQLTemplatePCITN3QTDEMBAL: TBCDField
      DisplayLabel = 'Qtde.Embalagem'
      FieldName = 'PCITN3QTDEMBAL'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3QTDEMBAL'
      Size = 3
    end
    object SQLTemplatePCITN3QTDENTR: TBCDField
      DisplayLabel = 'Qtde.Entrada'
      FieldName = 'PCITN3QTDENTR'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3QTDENTR'
      Size = 3
    end
    object SQLTemplatePCITN3VLREMBAL: TBCDField
      DisplayLabel = 'Valor Embalagem'
      FieldName = 'PCITN3VLREMBAL'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3VLREMBAL'
      Size = 3
    end
    object SQLTemplatePCITN3VLRUNIT: TBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'PCITN3VLRUNIT'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3VLRUNIT'
      Size = 3
    end
    object SQLTemplatePCITN3PERVIPI: TBCDField
      DisplayLabel = '% IPI'
      FieldName = 'PCITN3PERVIPI'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3PERVIPI'
      Size = 3
    end
    object SQLTemplatePCITN3VLRIPI: TBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'PCITN3VLRIPI'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3VLRIPI'
      Size = 3
    end
    object SQLTemplatePCITN3VLRICM: TBCDField
      DisplayLabel = 'Valor ICM'
      FieldName = 'PCITN3VLRICM'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3VLRICM'
      Visible = False
      Size = 3
    end
    object SQLTemplatePCITN3PERICM: TBCDField
      DisplayLabel = '% ICM'
      FieldName = 'PCITN3PERICM'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3PERICM'
      Visible = False
      Size = 3
    end
    object SQLTemplatePCITN3PERCDESC: TBCDField
      FieldName = 'PCITN3PERCDESC'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePCITN3VLRDESC: TBCDField
      FieldName = 'PCITN3VLRDESC'
      Origin = 'DB.PEDIDOCOMPRAITEM.PCITN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOCOMPRAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOCOMPRAITEM.REGISTRO'
    end
    object SQLTemplatePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLTemplateCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLTemplateGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLTemplateGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLTemplatePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookUp'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
  end
  object TblQtde: TMemoryTable
    BeforeInsert = TblQtdeBeforeInsert
    BeforeDelete = TblQtdeBeforeDelete
    OnNewRecord = TblQtdeNewRecord
    TableName = 'TblQtde'
    Left = 89
    Top = 2
    object TblQtdePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblQtdePDCPA13ID: TStringField
      Tag = 1
      DisplayLabel = 'C'#243'd.Pedido'
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblQtdePCITIPOS: TIntegerField
      Tag = 1
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'PCITIPOS'
    end
    object TblQtdePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblQtdePCITN3QTDBONIF: TBCDField
      DisplayLabel = 'Qtde.Bonifica'#231#227'o'
      FieldName = 'PCITN3QTDBONIF'
      Visible = False
      Size = 3
    end
    object TblQtdePCITN3PERICM: TBCDField
      DisplayLabel = '% ICM'
      FieldName = 'PCITN3PERICM'
      Visible = False
      Size = 3
    end
    object TblQtdeBCDField1: TBCDField
      FieldName = '1'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField2: TBCDField
      FieldName = '2'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField3: TBCDField
      FieldName = '3'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField4: TBCDField
      FieldName = '4'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField5: TBCDField
      FieldName = '5'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField6: TBCDField
      FieldName = '6'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField7: TBCDField
      FieldName = '7'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField8: TBCDField
      FieldName = '8'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField9: TBCDField
      FieldName = '9'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField10: TBCDField
      FieldName = '10'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField11: TBCDField
      FieldName = '11'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField12: TBCDField
      FieldName = '12'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField13: TBCDField
      FieldName = '13'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField14: TBCDField
      FieldName = '14'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeBCDField15: TBCDField
      FieldName = '15'
      Visible = False
      OnChange = TblQtdeBCDField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeTotal: TBCDField
      FieldName = 'Total'
      OnChange = TblQtdeTotalChange
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Size = 3
    end
    object TblQtdeQ1: TBCDField
      FieldName = 'Q1'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ2: TBCDField
      FieldName = 'Q2'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ3: TBCDField
      FieldName = 'Q3'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ4: TBCDField
      FieldName = 'Q4'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ5: TBCDField
      FieldName = 'Q5'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ6: TBCDField
      FieldName = 'Q6'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ7: TBCDField
      FieldName = 'Q7'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ8: TBCDField
      FieldName = 'Q8'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ9: TBCDField
      FieldName = 'Q9'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ10: TBCDField
      FieldName = 'Q10'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ11: TBCDField
      FieldName = 'Q11'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ12: TBCDField
      FieldName = 'Q12'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ13: TBCDField
      FieldName = 'Q13'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ14: TBCDField
      FieldName = 'Q14'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQ15: TBCDField
      FieldName = 'Q15'
      Visible = False
      DisplayFormat = '#,###'
      EditFormat = '#,###'
      Size = 3
    end
    object TblQtdeQTotal: TBCDField
      FieldName = 'QTotal'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Size = 3
    end
    object TblQtdeCod1: TIntegerField
      FieldName = 'Cod1'
      Visible = False
    end
    object TblQtdeCod2: TIntegerField
      FieldName = 'Cod2'
      Visible = False
    end
    object TblQtdeCod3: TIntegerField
      FieldName = 'Cod3'
      Visible = False
    end
    object TblQtdeCod4: TIntegerField
      FieldName = 'Cod4'
      Visible = False
    end
    object TblQtdeCod5: TIntegerField
      FieldName = 'Cod5'
      Visible = False
    end
    object TblQtdeCod6: TIntegerField
      FieldName = 'Cod6'
      Visible = False
    end
    object TblQtdeCod7: TIntegerField
      FieldName = 'Cod7'
      Visible = False
    end
    object TblQtdeCod8: TIntegerField
      FieldName = 'Cod8'
      Visible = False
    end
    object TblQtdeCod9: TIntegerField
      FieldName = 'Cod9'
      Visible = False
    end
    object TblQtdeCod10: TIntegerField
      FieldName = 'Cod10'
      Visible = False
    end
    object TblQtdeCod11: TIntegerField
      FieldName = 'Cod11'
      Visible = False
    end
    object TblQtdeCod12: TIntegerField
      FieldName = 'Cod12'
      Visible = False
    end
    object TblQtdeCod13: TIntegerField
      FieldName = 'Cod13'
      Visible = False
    end
    object TblQtdeCod14: TIntegerField
      FieldName = 'Cod14'
      Visible = False
    end
    object TblQtdeCod15: TIntegerField
      FieldName = 'Cod15'
      Visible = False
    end
    object TblQtdeCodTotal: TIntegerField
      FieldName = 'CodTotal'
    end
    object TblQtdeP1: TIntegerField
      FieldName = 'P1'
      Visible = False
    end
    object TblQtdeP2: TIntegerField
      FieldName = 'P2'
      Visible = False
    end
    object TblQtdeP3: TIntegerField
      FieldName = 'P3'
      Visible = False
    end
    object TblQtdeP4: TIntegerField
      FieldName = 'P4'
      Visible = False
    end
    object TblQtdeP5: TIntegerField
      FieldName = 'P5'
      Visible = False
    end
    object TblQtdeP6: TIntegerField
      FieldName = 'P6'
      Visible = False
    end
    object TblQtdeP7: TIntegerField
      FieldName = 'P7'
      Visible = False
    end
    object TblQtdeP8: TIntegerField
      FieldName = 'P8'
      Visible = False
    end
    object TblQtdeP9: TIntegerField
      FieldName = 'P9'
      Visible = False
    end
    object TblQtdeP10: TIntegerField
      FieldName = 'P10'
      Visible = False
    end
    object TblQtdeP11: TIntegerField
      FieldName = 'P11'
      Visible = False
    end
    object TblQtdeP12: TIntegerField
      FieldName = 'P12'
      Visible = False
    end
    object TblQtdeP13: TIntegerField
      FieldName = 'P13'
      Visible = False
    end
    object TblQtdeP14: TIntegerField
      FieldName = 'P14'
      Visible = False
    end
    object TblQtdeP15: TIntegerField
      FieldName = 'P15'
      Visible = False
    end
    object TblQtdePTotal: TIntegerField
      FieldName = 'PTotal'
      Visible = False
    end
    object TblQtdeCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblQtdeReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object TblQtdeGrade: TIntegerField
      FieldName = 'Grade'
      DisplayFormat = '#'
      EditFormat = '#'
    end
    object TblQtdeLegValor: TStringField
      FieldName = 'LegValor'
      Size = 5
    end
    object TblQtdeLegDesc: TStringField
      FieldName = 'LegDesc'
      Size = 5
    end
    object TblQtdePCITN3PERCDESC: TBCDField
      DisplayLabel = 'Perc. Desc.'
      FieldName = 'PCITN3PERCDESC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object TblQtdePCITN3CAPEMBAL: TFloatField
      FieldName = 'PCITN3CAPEMBAL'
      Precision = 3
    end
    object TblQtdePCITN3PERVIPI: TFloatField
      FieldName = 'PCITN3PERVIPI'
      Precision = 3
    end
    object TblQtdePCITN3VLRUNIT: TFloatField
      FieldName = 'PCITN3VLRUNIT'
      Precision = 5
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 89
    Top = 30
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GradeTamanho'
      'Where '
      '    GRADICOD=:GRADICOD'
      'order by'
      '    GRTMICOD')
    Macros = <>
    Left = 61
    Top = 30
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From COR')
    Macros = <>
    Left = 125
    Top = 26
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSNotaCompraItem: TDataSource
    DataSet = FormCadastroNotaCompraItem.SQLTemplate
    Left = 224
    Top = 8
  end
end
