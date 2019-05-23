object FormBalancaFilizola: TFormBalancaFilizola
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Leitura de Balan'#231'as Checkout'
  ClientHeight = 152
  ClientWidth = 792
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 11
    Top = 80
    Width = 102
    Height = 29
    Caption = 'P.L'#237'quido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 167
    Top = 81
    Width = 233
    Height = 29
    Caption = 'Descri'#231#227'o do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 624
    Top = 35
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object lblModelo: TLabel
    Tag = 1
    Left = 667
    Top = 36
    Width = 121
    Height = 13
    Caption = '------------------------------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 699
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Porta serial:'
  end
  object lblSerial: TLabel
    Tag = 1
    Left = 755
    Top = 65
    Width = 33
    Height = 13
    Caption = '--------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 703
    Top = 51
    Width = 51
    Height = 13
    Caption = 'BaudRate:'
  end
  object lblBaudRate: TLabel
    Tag = 1
    Left = 755
    Top = 52
    Width = 33
    Height = 13
    Caption = '--------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 13
    Top = 7
    Width = 137
    Height = 29
    Caption = 'C'#243'd.Balan'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblStatus: TLabel
    Left = 157
    Top = 42
    Width = 450
    Height = 29
    AutoSize = False
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlLiquido: TPanel
    Left = 6
    Top = 110
    Width = 147
    Height = 37
    Caption = '--------'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object PnDescrProd: TPanel
    Left = 163
    Top = 110
    Width = 620
    Height = 37
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btnConfigura: TBitBtn
    Left = 623
    Top = 2
    Width = 80
    Height = 25
    Hint = 
      'Inicia a tela de par'#226'metros de comunica'#231#227'o com a balan'#231'a/indicad' +
      'or.'
    Caption = 'Configura'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnConfiguraClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
  end
  object btnPara: TBitBtn
    Left = 705
    Top = 2
    Width = 86
    Height = 25
    Hint = 'Inicia o teste de leitura da balan'#231'a.'
    Caption = 'Reset'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnParaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
      3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
      700077337F3333373777887007333337007733F773F333337733700070333333
      077037773733333F7F37703707333300080737F373333377737F003333333307
      78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
      078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
      70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
      3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
      33337F73FF737773333307800077033333337337773373333333}
    NumGlyphs = 2
  end
  object BTEsc: TBitBtn
    Left = 208
    Top = 10
    Width = 39
    Height = 25
    Cancel = True
    Caption = 'ESC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = BTEscClick
  end
  object EditProduto: TMaskEdit
    Left = 8
    Top = 37
    Width = 143
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnKeyDown = EditProdutoKeyDown
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 173
    Top = 9
  end
end
