object FormTelaFechamentoVenda: TFormTelaFechamentoVenda
  Left = 300
  Top = 116
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 560
  ClientWidth = 799
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblInstrucoes: TRxLabel
    Left = 246
    Top = 450
    Width = 538
    Height = 48
    AutoSize = False
    Caption = 'Instrucoes'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
    WordWrap = True
  end
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 793
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Fechamento da Venda'
    Color = 10567680
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblValorDescontoAcrescimo: TRxLabel
    Left = 30
    Top = 145
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'DESCONTO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblEntrada: TRxLabel
    Left = 30
    Top = 201
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'ENTRADA'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblRecebido: TRxLabel
    Left = 30
    Top = 260
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'RECEBIDO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTroco: TRxLabel
    Left = 34
    Top = 381
    Width = 179
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'TROCO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTotalVenda: TRxLabel
    Left = 427
    Top = 381
    Width = 139
    Height = 23
    Alignment = taCenter
    Caption = 'TOTAL VENDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel1: TRxLabel
    Left = 30
    Top = 324
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'TOTAL VENDA'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 32
    Top = 257
    Width = 183
    Height = 1
  end
  object Bevel2: TBevel
    Left = -43
    Top = 42
    Width = 841
    Height = 1
    Shape = bsBottomLine
  end
  object Bevel3: TBevel
    Left = -45
    Top = 126
    Width = 841
    Height = 1
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 32
    Top = 199
    Width = 183
    Height = 1
  end
  object Bevel5: TBevel
    Left = 32
    Top = 317
    Width = 183
    Height = 1
  end
  object Bevel6: TBevel
    Left = 31
    Top = 377
    Width = 183
    Height = 1
  end
  object Bevel7: TBevel
    Left = 32
    Top = 445
    Width = 183
    Height = 1
  end
  object Bevel8: TBevel
    Left = -3
    Top = 502
    Width = 800
    Height = 1
  end
  object MemoRetorno: TMemo
    Left = 713
    Top = 507
    Width = 79
    Height = 41
    Lines.Strings = (
      'MemoRetorno')
    TabOrder = 2
    Visible = False
  end
  object Panel1: TPanel
    Left = 248
    Top = 128
    Width = 538
    Height = 324
    BevelOuter = bvNone
    Color = 14731440
    TabOrder = 3
    object LblListaParcelasPrazo: TRxLabel
      Left = 0
      Top = 112
      Width = 538
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'Parcela(s) '#224' prazo'
      Color = 14731440
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowPos = spRightBottom
    end
    object LblListaParcelasVista: TRxLabel
      Left = 0
      Top = 0
      Width = 538
      Height = 23
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Parcela(s) '#224' vista'
      Color = 14731440
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowPos = spRightBottom
    end
    object ListaParcelasVista: TDBGrid
      Left = 0
      Top = 23
      Width = 538
      Height = 90
      Align = alTop
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSSQLParcelasVistaVendaTemp
      FixedColor = 16380658
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnEnter = ListaParcelasVistaEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'NROITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'PARC.'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPARC'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 7
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumerarioLookup'
          Title.Caption = 'NUMER'#193'RIO'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 264
          Visible = True
        end>
    end
    object ListaParcelasPrazo: TDBGrid
      Left = 0
      Top = 135
      Width = 538
      Height = 189
      Align = alBottom
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSSQLParcelasPrazoVendaTemp
      FixedColor = 14731440
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnEnter = ListaParcelasVistaEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'NROPARCELA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Verdana'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'PARC.'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAVENCTO'
          Title.Alignment = taCenter
          Title.Caption = 'VENCIMENTO'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORVENCTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumerarioLookup'
          Title.Caption = 'NUMER'#193'RIO'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 241
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 520
      Top = 22
      Width = 18
      Height = 305
      BevelOuter = bvNone
      Color = 14731440
      TabOrder = 2
    end
  end
  object ValorDescontoAcrescimo: TCurrencyEdit
    Left = 35
    Top = 167
    Width = 179
    Height = 32
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 14731440
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    OnEnter = ValorAcrescimoEnter
  end
  object ValorEntrada: TCurrencyEdit
    Left = 35
    Top = 224
    Width = 178
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 14731440
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    OnEnter = ValorEntradaEnter
  end
  object ValorRecebido: TCurrencyEdit
    Left = 34
    Top = 284
    Width = 180
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 14731440
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    OnEnter = ValorAcrescimoEnter
  end
  object ValorTroco: TCurrencyEdit
    Left = 24
    Top = 403
    Width = 201
    Height = 38
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 14731440
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnEnter = ValorAcrescimoEnter
  end
  object ValorTotalVenda: TCurrencyEdit
    Left = 33
    Top = 346
    Width = 180
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 14731440
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    OnEnter = ValorAcrescimoEnter
  end
  object EntradaDados: TEdit
    Left = 24
    Top = 451
    Width = 201
    Height = 29
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    OnKeyDown = EntradaDadosKeyDown
  end
  object MemoCartao: TMemo
    Left = 578
    Top = 508
    Width = 132
    Height = 25
    Color = 14731440
    Lines.Strings = (
      'MemoCartao')
    ScrollBars = ssHorizontal
    TabOrder = 0
    Visible = False
  end
  object MemoImpressao: TMemo
    Left = 578
    Top = 524
    Width = 132
    Height = 25
    Color = 14731440
    Lines.Strings = (
      'MemoImpressao')
    ScrollBars = ssHorizontal
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 8
    Top = 44
    Width = 781
    Height = 81
    Color = 10567680
    TabOrder = 10
    object LblCLiente: TRxLabel
      Left = 31
      Top = 8
      Width = 70
      Height = 20
      Caption = 'Cliente:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblCodigoCliente: TRxLabel
      Left = 103
      Top = 8
      Width = 121
      Height = 20
      Caption = 'CodigoCliente'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblNomeCliente: TRxLabel
      Left = 257
      Top = 8
      Width = 514
      Height = 20
      AutoSize = False
      Caption = 'NomeCliente'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblVendedor: TRxLabel
      Left = 10
      Top = 57
      Width = 92
      Height = 20
      Caption = 'Vendedor:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblNomeVendedor: TRxLabel
      Left = 104
      Top = 57
      Width = 301
      Height = 20
      AutoSize = False
      Caption = 'NomeVendedor'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblRetorno: TRxLabel
      Left = 618
      Top = 32
      Width = 66
      Height = 20
      Alignment = taRightJustify
      Caption = 'Acr'#233'sc:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblCaderno: TRxLabel
      Left = 603
      Top = 8
      Width = 81
      Height = 20
      Caption = 'Caderno:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
      Visible = False
    end
    object LblPlano: TRxLabel
      Left = 4
      Top = 31
      Width = 98
      Height = 20
      Caption = 'Cond.Pgto:'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblNomePlano: TRxLabel
      Left = 104
      Top = 31
      Width = 483
      Height = 20
      AutoSize = False
      Caption = 'NomePlano'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object LblTxCrediario: TRxLabel
      Left = 417
      Top = 57
      Width = 76
      Height = 20
      Alignment = taRightJustify
      Caption = 'Tx.Cred:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
      Visible = False
    end
    object LblBonusTroca: TRxLabel
      Left = 569
      Top = 57
      Width = 115
      Height = 20
      Caption = 'B'#244'nus Troca:'
      Color = 10567680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
      Visible = False
    end
    object VlrRetornoCliente: TCurrencyEdit
      Left = 687
      Top = 32
      Width = 80
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Color = 10567680
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object VlrCadernoCliente: TCurrencyEdit
      Left = 686
      Top = 8
      Width = 88
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Color = 10567680
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object VlrTxCrediario: TCurrencyEdit
      Left = 491
      Top = 57
      Width = 62
      Height = 21
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10567680
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Visible = False
      OnEnter = ValorAcrescimoEnter
    end
    object ValorBonusTroca: TCurrencyEdit
      Left = 686
      Top = 57
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10567680
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Visible = False
      OnEnter = ValorAcrescimoEnter
    end
    object LBTotalJuroDia: TCurrencyEdit
      Left = 688
      Top = 34
      Width = 88
      Height = 21
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10567680
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object BtnF1: TConerBtn
    Left = 3
    Top = 505
    Width = 100
    Height = 48
    Cursor = crHandPoint
    Caption = 'F1 Ajuda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnF1Click
    Glyph.Data = {
      B60B0000424DB60B00000000000036000000280000001E000000200000000100
      180000000000800B0000130B0000130B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF0000000000000000500000700000B00000B00000B0
      000000000000FFFFFF0000000000004000004000004000005000005000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF0000000000000000500000700000800000800000B00000B00000A000008000
      0070000000400000400000500000500000700000700000700000500000400000
      000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000000000000050
      0000700000800000800000A00000A00000B00000B00000800000700000704000
      0050000050000070000070000070000070000070000070000070000070000000
      0000000000FFFFFF0000FFFFFF00000000000000005000007000008000008000
      00A00000A00000A00000A00000B00000A0000080000070400000500000700000
      70000070000070000070000070000070000070000070000070000070000000C8
      FF00000000000000000000500000500000700000800000800000A00000A00000
      A00000A00000A00000B000008000007000007040000070000070000070000070
      000070000090000090000090000090000090000070000070000000C8FF000000
      00000000000000500000700000800000800000A00000A00000A00000A00000A0
      0000A00000B00000800000704000005000007000007000007000009000009000
      0090000090000090000090000090000090000070000070000000000000000000
      000000500000700000800000A00000A00000A00000A00000A00000A00000A000
      00B0000080000070400000700000700000700000900000900000900000900000
      9000009000009000009000009000009000007000000000000000000000000070
      0000700000800000A00000A00000A00000A00000A00000A00000A00000B00000
      A0000070400000700000700000700000900000900000900000CF0000CF0000CF
      0000CF0000900000900000900000700000000000000000000000007000008000
      00A00000A00000800000A00000A00000A00000A00000A00000DF0000A0000080
      500000700000700000900000900000900000CF0000CF0000CF0000CF0000CF00
      00CF000090000090000090000000000000000000000000700000800000A00000
      A00000700000800000A00000A00000A00000A00000FF0000B00000A050000070
      0000700000900000900000CF0000CF0000CF0000CF0000CF0000CF0000CF0000
      CF000090000090000000000000000000000000700000800000A0000080000070
      0000700000A00000A00000A00000A00000FF0000DF0000B00000805000007000
      00900000900000CF0000CF0000CF0000CF0000CF0000CF0000CF0000CF000090
      000000C8FF00000000000000000000700000800000A000008000007000007000
      00800000A00000A00000A00000FF0000DF0000DF0000A0500000700000700000
      900000900000CF0000CF0000CF0000CF0000FF0000FF0000CF0000CF000000C8
      FF00000000000000000000700000800000A00000700000700000700000700000
      800000A00000A00000FF0000DF0000DF0000DF0000DF50000070000090000090
      0000CF0000CF0000CF0000FF0000FF0000CF0000CF00000090FF00C8FF000000
      00000000000000700000800000800000700000700000700000700000700000FF
      0000FF0000FF2F30FF2F30FF0000FF0000DF0000DF5000007000009000009000
      00CF0000CF0000CF0000CF0000CF00000090FF00C8FF00C8FF00000000000000
      000000700000800000700000700000700000700000800000800000800000B000
      00DF0000DF0000FF2F30FF2F30FF0000DF0000DF0000DF500000700000900000
      9000009000000060FF0060FF0090FF0090FF00C8FF0000000000000000000080
      0000A00000700000700000800000800000802F002F6000606000600000800000
      B00000DF0000FF0000FF2F30FF2F30FF0000FF0000DF0000DF0000FF0060FF00
      60FF0060FF0090FF0090FF00C8FF00C8FF00000000000000000000800000B000
      00800000800000802F002F2F002F600060900090900090CF00CFFF30CF0000A0
      0000FF0000FF0000FF0000FF2F30FF2F30FF0000FF0000FF0030FF0060FF0060
      FF0060FF0090FF0090FF00C8FF00000000000000000000800000DF0000B00000
      802F002F600060600060900090900090900090FF30CFFF30CFFF60CF0000FF00
      00FF0000FF0000FF0000FF0000FF2F30FF2F30FF0060FF0060FF0060FF0090FF
      0090FF00C8FF00C8FF0000000000FFFFFF0000000000000000DF0000DF2F002F
      600060600060900090900090900090FF30CFFF30CFFF60CF0000FF0000FF0000
      FF0000FF2F30FF2F30FF0000FF0030FF0030FF0060FF0060FF0060FF0090FF00
      90FF00C8FF0000000000FFFFFFFFFFFFFFFFFF0000000000000000FF2F002F60
      0060900090900090900090FF30CFFF60CF0000FF0000FF0000FF2F30FF2F30FF
      0000000000FF0000FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF00C8
      FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F6000606000
      60900090900090FF30CFFF60CF2F30FF2F30FF2F30FF00000000000000000000
      00FF0000FF0030FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060600060900090
      CF00CFFF30CFFF60CF000000000000000000FFFFFFFFFFFF0000000000FF0030
      FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF00C8FF0000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060900090CF00CFFF
      30CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0030FF0030FF
      0030FF0060FF0060FF0060FF0090FF0090FF00C8FF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060900090FF30CFFF60CF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0030FF0060FF0060FF00
      60FF0060FF0090FF0090FF00C8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000002F002F600060900090FF30CFFF60CF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0060FF00F8FF00F8FF00F8FF00F8
      FF00F8FF00F8FF00C8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000600060900090FF30CF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000000060FF00F8FF00F8FF00F8FF00F8FF00F8FF00F8FF
      00F8FF00F8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000600060900090FF60CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000C8FF00F8FF00F8FF00F8FF00F8FF00F8FF00F8FF00
      C8FF000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000600060900090FF60CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF000000FFFF
      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF30CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF30CF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object BtnF11: TConerBtn
    Left = 203
    Top = 505
    Width = 100
    Height = 48
    Cursor = crHandPoint
    Caption = 'F11 Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Visible = False
    OnClick = BtnF1Click
    Glyph.Data = {
      9E0D0000424D9E0D000000000000360000002800000022000000210000000100
      180000000000680D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000000000000C0C7C0BFBF
      BFB0B8B0B0B0B0AFAFAFA0A8A0A0A8A06F6F6F5057006F6F005F5F005057004F
      50004F4F004F4F000000000000000000000000000000006F706FD0D8D0000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000000
      000000CFCFCFC0C8C0C0C0C0BFBFBFB0B7B0AFAFAFAFA8AF5F60008088007078
      006F6F006067005058004F50004F4F000000000000000000000000002F2F2F7F
      807FB0B7B0D0D8D0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFF000000000000D0D7D0D0D7D0CFCFCFC0C8C0C0C0C0BFB8BFB0B7B0
      5F60009097008088007F78006F70006067005058004F50000000000000000000
      003F3F3F5057508F8F8FA0A7A0D0D8D0000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFF000000000000DFDFDFD0D8D0D0D7D0D0D0D0CF
      CFCFC0C8C0C0C7C06F6F009F9F009097008088007F78006F70006067005F5800
      0000000000002027204F4F4F7070708F908F909890B0B7B0EFF0EF0000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000000000000DFE0DFDFDF
      DFDFD8DFD0D8D0D0D0C0CFC8AFC0C7A05F6000AFAF009F9F009097008088007F
      78006F70006F68000000000000003F3F3F5F5F5F8087808F908F909090A0A8A0
      EFF0EF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000000
      000000E0E0E0DFE0DFDFDFDFDFDFDFD0D7B05F60005F60005F6000B0B700AFAF
      009F9F009097008088007F78007070000000000000004F4F4F6F686F8F8F8F8F
      908F8F908F9F989FB0B7B0EFF0EF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFF000000000000E0E7E0E0E7E0E0E0E0DFE0DFDFD8BF808800BFB80F
      BFBF00BFBF00B0B700AFAF009FA0009098008F88007F7F000000000000005057
      507078708F908F8F908F8F908F909090A0A8A0EFF0EF000000000000FFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFF000000000000EFE8EFE0E8E0DFDFDFCFCFCFCF
      C8C0D0D0A0808800CFCF0FCFCF00BFB800A0A0009F9F00A0A0009F9F008F8F00
      0000000000005F605F7F807F8F908F8F908F8F908F8F908F9F989FB0B7B0EFF0
      EF000000000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000000000EFF0EFEFEF
      EFD0D7D06F6F6F6F6F6FCFCFC0A0A71FB0B710DFD800B0B8004F4F004F4F009F
      A000AFAF009FA0000000000000006F706F8087808F908F8F908F8F908F8F908F
      909090909790EFF0EF000000000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000
      000000F0F8F0F0F7F0DFD8DF6F6F6F6F6F6FD0D8D0AFA8AF808800E0E710C0C0
      004F4F004F4F00AFAF00BFB800B0B0000000000000007F7F7F8F8F8F8F908F8F
      908F8F908F8F908F8F908F8F908FB0B7B0EFF0EF000000000000FFFFFFFFFFFF
      0000FFFFFF000000000000FFFFFFFFF8FFEFF0EFDFE0DFDFE0DFEFF0EFAFA8AF
      AFAF10F0F02FDFDF10C0C80FC0C70FCFCF00CFCF00C0C0000000000000008087
      808F908F8F908F8F908F8F908F8F908F9097909F9F9FD0D8D000000000000000
      0000000000FFFFFF0000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF6F6F6FFFF83FF0F730F0F730EFEF20DFE00FD0D700D0D000
      0000000000008F8F8F8F908F8F908F8F908F8F908F909790909890D0D8D00000
      006F7000FFFF60000000000000FFFFFF0000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F908F8F908F8F908F8F908F9097908F908F
      D0D8D00000006F7000DFD800000000000000000000FFFFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009090908F908F8F908F90
      97908F908FD0D8D00000006F7000DFD800000000000000000000FFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000808780
      9FA09FBFBFBFB0B8B0B0B7B0AFAFAFAFA8AFA0A7A09FA09F9F9F9F9098909097
      908F908F9097908F908FD0D8D00000006F7000DFD800000000000000000000FF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000008F908FBFB8BFBFB8BFB0B7B0AFB0AFAFAFAFA0A8A0A0A0A0
      9F9F9F9F989F9097909097908F908FD0D8D00000006F7000DFD8000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000808780AFAFAFBFBFBFB0B8B0B0B7B0AF
      AFAFAFA8AFA0A7A09FA09F9F9F9F9F9F9F8F908FD0D8D00000006F7000DFD800
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000008F908FBFB8
      BFBFB8BFB0B7B0AFB0AFAFAFAFA0A8A0A0A0A09FA09F9F9F9FD0D8D00000006F
      7000DFD800000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000808780AFAFAFBFBFBFB0B8B0B0B7B0AFAFAFAFA8AFA0A8A09F9F9FD0D8
      D00000006F7000DFD800000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000000000008F908FBFB8BFBFB8BFB0B7B0AFB0AFAFAFAF
      A0A8A0D0D8D00000006F7000DFD800000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000808780AFAFAFBFBFBFB0
      B8B0B0B7B0B0B7B0D0D8D00000006F7000DFD800000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
      008F908FBFB8BFBFBFBFB0B7B0D0D8D00000006F7000DFD80000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000000000808780B0B7B0BFC0BFD0D8D00000006F7000909700FFFF
      60000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000808780D0D8D0000000909700
      909700909700FFFF60000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000080878000
      0000909700909700909700B0B700FFFF60000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000000000909700909700909700B0B700FFFF60000000000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000006F7000909700909700DFD8000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object BtnSair: TConerBtn
    Left = 303
    Top = 505
    Width = 100
    Height = 48
    Cursor = crHandPoint
    Caption = 'CTRL + S'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = BtnF1Click
    Glyph.Data = {
      B2050000424DB2050000000000004200000028000000170000001D0000000100
      1000030000007005000000000000000000000000000000000000007C0000E003
      00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D
      EF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6500FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FEF3DEF3D00000000EF3DFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FE200FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DEF3D00000000EF3D
      0000EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6901FF7FFF7FFF7FFF7FFF7F
      FF7FEF3DEF3D00000000EF3DEF3DEF3D0000EF3DFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F8900FF7FFF7FFF7FFF7FEF3DEF3D00000000EF3DEF3D18631863EF3D
      0000EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F9700FF7FFF7FEF3DEF3D0000
      0000EF3DEF3D1863186318631863EF3D0000EF3DFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0200FF7FEF3D00000000EF3DEF3D186318631863186318631863EF3D
      0000EF3D000000000000FF7FFF7FFF7FFF7FFF7F0400FF7FEF3D0000EF3D1863
      1863186318631863186318631863EF3D0000EF3DEF3DEF3D0000FF7FFF7FFF7F
      FF7FFF7FFE03FF7FEF3D0000F07F18631863186318631863186318631863EF3D
      0000EF3DEF3DEF3D0000FF7FFF7FFF7FFF7FFF7FFE03FF7FEF3D0000F07F1863
      1863186318631863186318631863EF3D0000EF3DEF3DEF3D0000FF7FFF7FFF7F
      FF7FFF7F0200FF7FEF3D0000F07F18631863186318631863EF3DEF3D1863EF3D
      0000EF3DEF3DEF3D0000FF7FFF7FFF7FFF7FFF7FFFFFFF7FEF3D0000F07F1863
      186318631863F07FE03D0000EF3DEF3D0000EF3DEF3DF07F0000FF7FFF7FFF7F
      FF7FFF7F0300FF7FEF3D0000F07F1863186318631863F07F0000E03DEF3DEF3D
      0000EF3DF07F007CEF3DFF7FFF7FFF7FFF7FFF7F0000FF7FEF3D0000F07F1863
      1863186318631863F07FF07F1863EF3D0000F07F007C007CFF7FFF7FFF7FFF7F
      FF7FFF7F0000FF7FEF3D0000F07F18631863186318631863186318631863EF3D
      0000007C007C007C007C007CFF7FFF7FFF7FFF7F2E07FF7FEF3D0000F07F1863
      1863186318631863186318631863EF3D0000007C007C007C007C007C007C007C
      FF7FFF7F0000FF7FEF3D0000F07F18631863186318631863186318631863EF3D
      0000007C007C007C007C007C007C007CFF7FFF7F0800FF7FEF3D0000F07F1863
      1863186318631863186318631863EF3D0000F07F007C007CFF7FFF7F007C007C
      007CFF7F0000FF7FEF3D0000F07F18631863186318631863186318631863EF3D
      0000EF3DF07F007CEF3DFF7FFF7F007C007CFF7F0000FF7FEF3D0000F07F1863
      1863186318631863186318631863EF3D0000EF3DEF3DF07F0000FF7FFF7F007C
      007CFF7F00A0FF7FEF3D0000F07F186318631863186318631863F07FF07F0000
      0000EF3DEF3DEF3D0000FF7FFF7FFF7F007CFF7F8B00FF7FEF3D0000F07F1863
      186318631863F07FF07F00000000EF3DEF3DEF3DEF3DEF3D0000FF7FFF7FFF7F
      007CFF7FBE81FF7FEF3D0000F07F18631863F07FF07F00000000EF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000FF7FFF7FFF7F007CFF7F7900FF7FEF3D0000F07FF07F
      F07F00000000EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000FF7FFF7F007C
      FF7FFF7F0004FF7FEF3D0000F07F00000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000FF7FFF7F007CFF7FFF7F0200FF7FEF3D00000000EF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000FF7FFF7FFF7F
      FF7FFF7FC101FF7FEF3D00000000000000000000000000000000000000000000
      00000000000000000000FF7FFF7FFF7FFF7FFF7FC081FF7FEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7FFF7FFF7F
      FF7FFF7F0200FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FC081}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object LedGPAtivo: TRxSwitch
    Left = 25
    Top = 483
    Width = 199
    Height = 18
    Caption = 'Cart'#245'es Cr'#233'dito OnLine'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    GlyphOff.Data = {
      B6040000424DB604000000000000B60000002800000010000000100000000100
      2000000000000004000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000C0C0C000C0C0C00080808000808080008080
      8000000000000000000000808000008080000080800000808000008080000080
      800000000000C0C0C000C0C0C000808080000000000000000000000000008080
      8000808080008080800000000000008080000080800000808000008080000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000080800000808000008080000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000000000008080000080800000000000C0C0
      C000808080000000000000000000000000000000800000008000000080000000
      000000000000000000008080800080808000000000000080800000000000C0C0
      C000000000000000000000000000000080000000800000008000000080000000
      800000000000000000000000000080808000000000000080800000000000FFFF
      FF00000000000000000000000000000080000000800000008000000080000000
      800000000000000000000000000080808000000000000080800000000000FFFF
      FF00000000000000000000000000C0C0C0000000800000008000000080000000
      8000000000000000000000000000C0C0C000000000000080800000000000FFFF
      FF0080808000000000000000000000000000C0C0C000C0C0C000000080000000
      0000000000000000000080808000C0C0C0000000000000808000008080000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000080800000808000008080000000
      0000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000080800000808000008080000080
      800000000000FFFFFF00C0C0C000808080000000000000000000000000008080
      8000C0C0C000C0C0C00000000000008080000080800000808000008080000080
      8000008080000000000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000}
    GlyphOn.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333000003333333330077888003333330778000888033330770FAFAF08
      80333070F00000F08033078F00A2200F8803070A0A2A220A08030F0F0AAAA20F
      08030F0A0FAA2A0A07030F8F00FFA00F87033070F00000F0703330F70FAFAF07
      7033330F78000877033333300FFF770033333333300000333333}
    ParentFont = False
    ShowFocus = False
    TabOrder = 14
    TabStop = False
    TextPosition = tpRight
    Data = {03}
  end
  object ConerBtn1: TConerBtn
    Left = 103
    Top = 505
    Width = 100
    Height = 48
    Cursor = crHandPoint
    Caption = 'F7 Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = BtnF1Click
    Glyph.Data = {
      360F0000424D360F0000000000003600000028000000200000001E0000000100
      200000000000000F000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E93D4FF0E93D493139DE8D40E93D49D0E93
      D4D4FFFFFF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0E93D4FF112360D40F57A323FFFFFFA315397FFF1539
      7F7FFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF1B6DB8FF15397FB80E89BC3915397FBC15397F391539
      7F7F15397F391B6DB87FFFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0F57A3FF112360A31B6DB82318BDE8B818BDE8BD18BDE8E8139DE8BD0E93
      D4E81B6DB8930F57A3B80B0012570E89BC12FFFFFF89FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF139DE8FF0F57
      A3E822D9F45722D9F4F40F57A3D90E93D4A318BDE89315397FE80D18343922D9
      F4340F57A3D90E89BCA30F57A3890F57A3A311236057FFFFFF60FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F57A3FF34FC
      FCA30E93D4FC15397FD40E93D439139DE8D418BDE89DFFFFFFE8112360FF22D9
      F4600E89BCD90F57A3BC0E89BC570F57A3BC15397F570E89BC7FFFFFFF89FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D1834FF22D9F4181539
      7FF41B6DB839FFFFFFB8139DE8FF139DE8E818BDE89DFFFFFFE8112360FF22D9
      F4600E93D4D91B6DB8D418BDE86D0E89BCE81B6DB8890B0012B8FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F364AFF0F36
      4A4AFFFFFF36FFFFFFFFFFFFFFFF0E93D4FF18BDE893FFFFFFE8112360FF34FC
      FC60FFFFFFFC15397FFF22D9F4390E93D4F41B6DB8930D1834B8FFFFFF18FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E93D4FF18BDE893FFFFFFE80D1834FF34FC
      FC3415397FFC0E89BC7F18BDE8890E89BCE81B6DB8890B0012B8FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1B6DB8FF18BDE86DFFFFFFE80B0012FF34FC
      FC1222D9F4FC22D9F4F418BDE8D9559CB5E815397F9C0F57A37FFFFFFF57FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF559CB5FF559CB5B50D18349C559CB53434FCFC9C86FDFCFC86FDFCFD34FC
      FCFC34FCFCFC22D9F4FC0F57A3D90B0012A31B6DB800FFFFFFB8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF559CB5FF0D5B599C1539
      7F5915397F391B6DB87FB0C3E86D86FDFCE886FDFCFD112360FC1123602386FD
      FC60112360FD0F57A3600F57A357FFFFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF168899FF4E5198999582C5519582
      C5C59582C5828DA7DBC515397FA767BEE87F67BEE8BE4E5198E80B001251C9FB
      FB120D1834FBFFFFFF34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF168899FF4E5198889582C5989582C5829582
      C5C58DA7DB820D1834DB0D183418C9FBFB348DA7DBFB6ABEBDDB0B0012BEC9FB
      FB120D1834FBFFFFFF340E93D4FF0E89BCD4FFFFFF89FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D1834FF9582C5189582C5C59582C5829582
      C5C5636AAC82636AACAC636AAC6AC9FBFBAC8DA7DBFB559CB5DB0B00129CC9FB
      FB12112360FB0E93D4600F57A3930D1834A30F364A18139DE84AFFFFFF9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF112360FF8DA7DB608DA7DBA7559CB5DB8DA7DB9CB0C3
      E8DB0B0012C36ABEBD124E5198BEC9FBFB98559CB5FB559CB5B50B00129CB0C3
      E8124E5198C30F57A39815397F574E51987F4E5198510B00129811236000FFFF
      FF60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF15397FFFFFFFFF7FFFFFFFFF8DA7DBFFFFFFFFA7B0C3
      E8FF0D1834C36ABEBD3415397FBEFFFFFF7F559CB5FF559CB5B50B00129C8DA7
      DB12636AACA70D1834AC112360184E5198604E5198514E5198980B001251FFFF
      FF12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4E5198FF86FDFC9886FDFCFD86FDFCFC34FCFCFD86FD
      FCFC0D1834FD6ABEBD340F364ABE67BEE84A1B6DB8BE559CB5B80B00129C8DA7
      DB12559CB5A70B0012B515397F004E51987F4E5198514E5198980B001251FFFF
      FF12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4E5198FF86FDFC9886FDFCFD86FDFCFC34FCFCFD34FC
      FCFC0F57A3FC237373A30D18347367BEE8341B6DB8BE6ABEBDB80B0012BE8DA7
      DB1222D9F4A70B0012F4559CB5001B6DB8B5636AAC6D0F57A3AC0D183457FFFF
      FF34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF636AACFF86FDFCACC9FBFBFDC9FBFBFB34FCFCFB34FC
      FCFC34FCFCFC0B0012FC0B00120022D9F4121B6DB8D94E5198B80B00125122D9
      F41234FCFCD922D9F4FC559CB5D91B6DB8B51B6DB86D0D1834B80F364A18FFFF
      FF4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB0C3E8FF9582C5E8C9FBFB82C9FBFBFB86FDFCFB34FC
      FCFC34FCFCFC34FCFCFC112360FC34FCFC601B6DB8FC0B0012B80B00120022D9
      F41234FCFCD918BDE8FC0E89BCBD1B6DB8BC15397F6D0B00127FFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8DA7DBFFB0C3E8A7C9FBFBE8C9FBFBFB86FD
      FCFB34FCFCFD34FCFCFC34FCFCFC34FCFCFC34FCFCFC22D9F4FC34FCFCD934FC
      FCFC22D9F4FC0E93D4F40E89BC9315397FBC0B0012390E93D412FFFFFF93FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C3E8FFB0C3E8E8C9FBFBC3C9FB
      FBFBC9FBFBFB86FDFCFB34FCFCFD34FCFCFC34FCFCFC34FCFCFC34FCFCFC22D9
      F4FC139DE8D91B6DB8E80B00126D0D183412139DE818FFFFFFE8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF559CB5FF8DA7DB9C8DA7
      DBDBB0C3E8A7C9FBFBE886FDFCFB86FDFCFC34FCFCFD34FCFCFC1B6DB8FC22D9
      F4B818BDE8D915397FE815397F39FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB0C3E8FF8DA7DBE89582C5A786FDFCC5636AACFD15397FAC1123603922D9
      F46018BDE8D90F57A3E81B6DB857FFFFFFB8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC5559CB5FDFFFFFFB5237373FF18BD
      E87318BDE8BD0E93D4E80F57A393FFFFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC58DA7DBFD139DE8DB2373739D18BD
      E87322D9F4BD0E93D4F415397F93FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC567BEE8FD139DE8E82373739D1B6D
      B873139DE86D1B6DB8E81123606DFFFFFF60FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF636AACFF636AACAC4E51986A0E93D49867BEE8931539
      7FE8112360390D1834600D183418FFFFFF34FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO '
      'where %MFiltro and PLRCFATCASH <> '#39'F'#39)
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 246
    Top = 317
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2TXMULTA: TBCDField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2TXCRED: TBCDField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCN2PERCDESC: TBCDField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN2PERCENTR: TBCDField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanoRecebimentoPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPlanoRecebimentoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTOPARCELA'
      'where'
      '  %MFiltro'
      'order by '
      '  PLRCICOD, PLRPINROPARC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 274
    Top = 317
    object SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRCICOD'
    end
    object SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField
      FieldName = 'PLRPINROPARC'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINROPARC'
    end
    object SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField
      FieldName = 'PLRPINRODIAS'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINRODIAS'
    end
    object SQLPlanoRecebimentoParcelaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.REGISTRO'
    end
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    UpdateObject = UpdateSQLParcelasPrazoVendaTemp
    Macros = <>
    Left = 247
    Top = 345
    object SQLParcelasPrazoVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TERMICOD'
    end
    object SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField
      FieldName = 'DATAVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.DATAVENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NROPARCELA'
      DisplayFormat = '000'
    end
    object SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField
      FieldName = 'VALORVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.VALORVENCTO'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasPrazoVendaTempPRCAA13ID: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA13ID'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'PRCAA13ID'
      KeyFields = 'NUMEICOD'
      Size = 13
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCAA60CARTAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA60CARTAO'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCAA60CARTAO'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCATPATHENVIA: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHENVIA'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHENVIA'
      KeyFields = 'PRCAA13ID'
      Size = 500
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCATPATHRECEBE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHRECEBE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHRECEBE'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCACCONSCHEQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCACCONSCHEQUE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCACCONSCHEQUE'
      KeyFields = 'PRCAA13ID'
      Size = 1
      Lookup = True
    end
  end
  object UpdateSQLParcelasPrazoVendaTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update PARCELASPRAZOVENDATEMP'
      'set'
      '  DATAVENCTO = :DATAVENCTO,'
      '  TERMICOD = :TERMICOD,'
      '  NROPARCELA = :NROPARCELA,'
      '  VALORVENCTO = :VALORVENCTO,'
      '  NUMEICOD = :NUMEICOD'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    InsertSQL.Strings = (
      'insert into PARCELASPRAZOVENDATEMP'
      '  (DATAVENCTO, TERMICOD, NROPARCELA, VALORVENCTO, NUMEICOD)'
      'values'
      '  (:DATAVENCTO, :TERMICOD, :NROPARCELA, :VALORVENCTO, :NUMEICOD)')
    DeleteSQL.Strings = (
      'delete from PARCELASPRAZOVENDATEMP'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    Left = 302
    Top = 345
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 274
    Top = 345
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 330
    Top = 373
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where (%Filtro)'
      'order by NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 303
    Top = 317
  end
  object UpdateSQLParcelasVistaVendaTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update PARCELASPRAZOVENDATEMP'
      'set'
      '  DATAVENCTO = :DATAVENCTO,'
      '  TERMICOD = :TERMICOD,'
      '  NROPARCELA = :NROPARCELA,'
      '  VALORVENCTO = :VALORVENCTO,'
      '  NUMEICOD = :NUMEICOD'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    InsertSQL.Strings = (
      'insert into PARCELASPRAZOVENDATEMP'
      '  (DATAVENCTO, TERMICOD, NROPARCELA, VALORVENCTO, NUMEICOD)'
      'values'
      '  (:DATAVENCTO, :TERMICOD, :NROPARCELA, :VALORVENCTO, :NUMEICOD)')
    DeleteSQL.Strings = (
      'delete from PARCELASPRAZOVENDATEMP'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    Left = 302
    Top = 373
  end
  object DSSQLParcelasVistaVendaTemp: TDataSource
    DataSet = SQLParcelasVistaVendaTemp
    Left = 274
    Top = 373
  end
  object SQLParcelasVistaVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASVISTAVENDATEMP')
    UpdateObject = UpdateSQLParcelasVistaVendaTemp
    Macros = <>
    Left = 246
    Top = 373
    object SQLParcelasVistaVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TERMICOD'
    end
    object SQLParcelasVistaVendaTempNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = 'DB.PARCELASVISTAVENDATEMP.NROITEM'
      DisplayFormat = '000'
    end
    object SQLParcelasVistaVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasVistaVendaTempVALORPARC: TBCDField
      FieldName = 'VALORPARC'
      Origin = 'DB.PARCELASVISTAVENDATEMP.VALORPARC'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object SQLParcelasVistaVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasVistaVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasVistaVendaTempPRCAA13ID: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA13ID'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'PRCAA13ID'
      KeyFields = 'NUMEICOD'
      Size = 13
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCAA60CARTAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA60CARTAO'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCAA60CARTAO'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCATPATHENVIA: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHENVIA'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHENVIA'
      KeyFields = 'PRCAA13ID'
      Size = 500
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCATPATHRECEBE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHRECEBE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHRECEBE'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCACCONSCHEQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCACCONSCHEQUE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCACCONSCHEQUE'
      KeyFields = 'PRCAA13ID'
      Size = 1
      Lookup = True
    end
  end
  object TblCarne: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'Carne.DB'
    Left = 246
    Top = 401
    object TblCarneEmpresaNome: TStringField
      FieldName = 'EmpresaNome'
      Size = 60
    end
    object TblCarneEmpresaEnder: TStringField
      FieldName = 'EmpresaEnder'
      Size = 60
    end
    object TblCarneEmpresaBairro: TStringField
      FieldName = 'EmpresaBairro'
      Size = 60
    end
    object TblCarneEmpresaCidade: TStringField
      FieldName = 'EmpresaCidade'
      Size = 60
    end
    object TblCarneEmpresaUF: TStringField
      FieldName = 'EmpresaUF'
      Size = 2
    end
    object TblCarneEmpresaFone: TStringField
      FieldName = 'EmpresaFone'
      Size = 30
    end
    object TblCarneMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 100
    end
    object TblCarneCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblCarneEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TblCarneBairro: TStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object TblCarneCidade: TStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object TblCarneCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblCarneNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 13
    end
    object TblCarneNumeroParcela: TIntegerField
      FieldName = 'NumeroParcela'
    end
    object TblCarneContadorParcelas: TIntegerField
      FieldName = 'ContadorParcelas'
    end
    object TblCarneDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblCarneValorParcela: TFloatField
      FieldName = 'ValorParcela'
    end
    object TblCarneVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblCarneTotalCupom: TFloatField
      FieldName = 'TotalCupom'
    end
    object TblCarnePlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblCarneDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblCarneNroCupom: TStringField
      FieldName = 'NroCupom'
      Size = 6
    end
    object TblCarneTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblCarneValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
    end
    object TblCarneAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblCarneEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object TblCarneClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
  end
  object SQLCaderno: TRxQuery
    OnNewRecord = SQLCadernoNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CADERNO')
    UpdateObject = UpdateSQLCaderno
    Macros = <>
    Left = 359
    Top = 317
    object SQLCadernoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CADERNO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCadernoCLCADLANC: TDateTimeField
      FieldName = 'CLCADLANC'
      Origin = 'DB.CADERNO.CLCADLANC'
    end
    object SQLCadernoCLCAICOD: TIntegerField
      FieldName = 'CLCAICOD'
      Origin = 'DB.CADERNO.CLCAICOD'
    end
    object SQLCadernoCLCAN2VLRCREDITO: TBCDField
      FieldName = 'CLCAN2VLRCREDITO'
      Origin = 'DB.CADERNO.CLCAN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object SQLCadernoCLCAN2VLRDEBITO: TBCDField
      FieldName = 'CLCAN2VLRDEBITO'
      Origin = 'DB.CADERNO.CLCAN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object SQLCadernoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CADERNO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCadernoCLCAA60HIST: TStringField
      FieldName = 'CLCAA60HIST'
      Origin = 'DB.CADERNO.CLCAA60HIST'
      FixedChar = True
      Size = 60
    end
    object SQLCadernoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CADERNO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCadernoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CADERNO.REGISTRO'
    end
  end
  object UpdateSQLCaderno: TUpdateSQL
    ModifySQL.Strings = (
      'update CADERNO'
      'set'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CLCADLANC = :CLCADLANC,'
      '  CLCAICOD = :CLCAICOD,'
      '  CLCAN2VLRCREDITO = :CLCAN2VLRCREDITO,'
      '  CLCAN2VLRDEBITO = :CLCAN2VLRDEBITO,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  CLCAA60HIST = :CLCAA60HIST'
      'where'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CLCADLANC = :OLD_CLCADLANC and'
      '  CLCAICOD = :OLD_CLCAICOD')
    InsertSQL.Strings = (
      'insert into CADERNO'
      '  (CLIEA13ID, CLCADLANC, CLCAICOD, CLCAN2VLRCREDITO, '
      'CLCAN2VLRDEBITO, CUPOA13ID, '
      '   CLCAA60HIST)'
      'values'
      '  (:CLIEA13ID, :CLCADLANC, :CLCAICOD, :CLCAN2VLRCREDITO, '
      ':CLCAN2VLRDEBITO, '
      '   :CUPOA13ID, :CLCAA60HIST)')
    DeleteSQL.Strings = (
      'delete from CADERNO'
      'where'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CLCADLANC = :OLD_CLCADLANC and'
      '  CLCAICOD = :OLD_CLCAICOD')
    Left = 387
    Top = 317
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 358
    Top = 373
  end
  object DSTblCarne: TDataSource
    DataSet = TblCarne
    Left = 274
    Top = 401
  end
  object TblTicketDadosVenda: TTable
    OnNewRecord = TblTicketDadosVendaNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketDadosVenda.DB'
    Left = 330
    Top = 401
    object TblTicketDadosVendaNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblTicketDadosVendaFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblTicketDadosVendaIDCupom: TStringField
      FieldName = 'IDCupom'
      Size = 13
    end
    object TblTicketDadosVendaDataVenda: TDateField
      FieldName = 'DataVenda'
    end
    object TblTicketDadosVendaCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblTicketDadosVendaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object TblTicketDadosVendaFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblTicketDadosVendaNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblTicketDadosVendaNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblTicketDadosVendaNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 60
    end
    object TblTicketDadosVendaNomePlano: TStringField
      FieldName = 'NomePlano'
      Size = 60
    end
    object TblTicketDadosVendaCodProd: TIntegerField
      FieldName = 'CodProd'
    end
    object TblTicketDadosVendaDescriProd: TStringField
      FieldName = 'DescriProd'
      Size = 60
    end
    object TblTicketDadosVendaMarcaProd: TStringField
      FieldName = 'MarcaProd'
    end
    object TblTicketDadosVendaRefProd: TStringField
      FieldName = 'RefProd'
    end
    object TblTicketDadosVendaQtdeProd: TFloatField
      FieldName = 'QtdeProd'
    end
    object TblTicketDadosVendaPrecoProd: TFloatField
      FieldName = 'PrecoProd'
    end
    object TblTicketDadosVendaTotalProd: TFloatField
      FieldName = 'TotalProd'
    end
    object TblTicketDadosVendaTaxaCred: TFloatField
      FieldName = 'TaxaCred'
    end
    object TblTicketDadosVendaAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblTicketDadosVendaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketDadosVendaMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TblTicketDadosVendaDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblTicketDadosVendaTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
  end
  object SQLPreVendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 386
    Top = 373
    object SQLPreVendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPreVendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPreVendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPreVendaItemPVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN3VLRCUSTUNIT: TBCDField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN2DESC: TBCDField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItemPVITN3VLRUNITLUCR: TBCDField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItemPVITN2ICMSALIQ: TBCDField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItemPVITN3QTDTROCA: TBCDField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
  end
  object SQLCupomNumerarioAut: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CUPOMNUMERARIO'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 413
    Top = 373
    object SQLCupomNumerarioAutCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioAutNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLCupomNumerarioAutCPNMN2VLR: TBCDField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLCupomNumerarioAutCPNMCAUTENT: TStringField
      FieldName = 'CPNMCAUTENT'
      Origin = 'DB.CUPOMNUMERARIO.CPNMCAUTENT'
      FixedChar = True
      Size = 1
    end
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where CTRCA13ID is null')
    Macros = <>
    Left = 330
    Top = 345
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
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TBCDField
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
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
    object SQLRecebimentoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.RECEBIMENTO.NUMEICOD'
    end
  end
  object TblCartaoTemp: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'CartaoVistaTemp.DB'
    Left = 413
    Top = 345
    object TblCartaoTempValor: TFloatField
      FieldName = 'Valor'
    end
    object TblCartaoTempCartao: TStringField
      FieldName = 'Cartao'
      Size = 30
    end
    object TblCartaoTempProvedor: TStringField
      FieldName = 'Provedor'
      Size = 30
    end
  end
  object TimerCartao: TTimer
    Enabled = False
    Left = 440
    Top = 401
  end
  object TextStarFiche: TppTextPipeline
    UserName = 'TextStarFiche'
    Left = 359
    Top = 401
    object TextStarFicheppField1: TppField
      FieldAlias = 'xtStarFicheppField1'
      FieldName = 'xtStarFicheppField1'
      FieldLength = 80
      DisplayWidth = 80
      Position = 0
    end
  end
  object ReportStarFiche: TppReport
    AutoStop = False
    DataPipeline = TextStarFiche
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 100000
    PrinterSetup.mmPaperWidth = 80000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Printer'
    Left = 387
    Top = 401
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'TextStarFiche'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 100000
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        KeepTogether = True
        CharWrap = True
        DataField = 'xtStarFicheppField1'
        DataPipeline = TextStarFiche
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Serif'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'TextStarFiche'
        mmHeight = 100000
        mmLeft = 0
        mmTop = 0
        mmWidth = 67204
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object SQLProvedorCartao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PROVEDORCARTAO')
    Macros = <>
    Left = 415
    Top = 317
    object SQLProvedorCartaoPRCAA13ID: TStringField
      FieldName = 'PRCAA13ID'
      Origin = 'DB.PROVEDORCARTAO.PRCAA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProvedorCartaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PROVEDORCARTAO.EMPRICOD'
    end
    object SQLProvedorCartaoPRCAICOD: TIntegerField
      FieldName = 'PRCAICOD'
      Origin = 'DB.PROVEDORCARTAO.PRCAICOD'
    end
    object SQLProvedorCartaoPRCAA60DESCR: TStringField
      FieldName = 'PRCAA60DESCR'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProvedorCartaoPRCATPATHENVIA: TMemoField
      FieldName = 'PRCATPATHENVIA'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHENVIA'
      BlobType = ftMemo
      Size = 500
    end
    object SQLProvedorCartaoPRCATPATHRECEBE: TMemoField
      FieldName = 'PRCATPATHRECEBE'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHRECEBE'
      BlobType = ftMemo
      Size = 500
    end
    object SQLProvedorCartaoPRCAA60CARTAO: TStringField
      FieldName = 'PRCAA60CARTAO'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60CARTAO'
      FixedChar = True
      Size = 60
    end
    object SQLProvedorCartaoPRCACCONSCHEQUE: TStringField
      FieldName = 'PRCACCONSCHEQUE'
      Origin = 'DB.PROVEDORCARTAO.PRCACCONSCHEQUE'
      FixedChar = True
      Size = 1
    end
    object SQLProvedorCartaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PROVEDORCARTAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProvedorCartaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PROVEDORCARTAO.REGISTRO'
    end
  end
  object SQLConvenio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Convenio'
      'WHERE CONVICOD = :CONVICOD')
    Macros = <>
    Left = 443
    Top = 317
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONVICOD'
        ParamType = ptUnknown
      end>
    object SQLConvenioCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.CONVENIO.CONVICOD'
    end
    object SQLConvenioCONVA60DESCR: TStringField
      FieldName = 'CONVA60DESCR'
      Origin = 'DB.CONVENIO.CONVA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConvenioCONVN2DESC: TBCDField
      FieldName = 'CONVN2DESC'
      Origin = 'DB.CONVENIO.CONVN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLConvenioCONVN2TAXA: TBCDField
      FieldName = 'CONVN2TAXA'
      Origin = 'DB.CONVENIO.CONVN2TAXA'
      Precision = 15
      Size = 3
    end
    object SQLConvenioCONVDVENC: TIntegerField
      FieldName = 'CONVDVENC'
      Origin = 'DB.CONVENIO.CONVDVENC'
    end
    object SQLConvenioCONVDFIMCOMPRA: TDateTimeField
      FieldName = 'CONVDFIMCOMPRA'
      Origin = 'DB.CONVENIO.CONVDFIMCOMPRA'
    end
    object SQLConvenioCONVDINICIOCOMPRA: TDateTimeField
      FieldName = 'CONVDINICIOCOMPRA'
      Origin = 'DB.CONVENIO.CONVDINICIOCOMPRA'
    end
  end
end
