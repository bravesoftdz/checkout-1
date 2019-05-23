inherited FormTelaDadosVersaoCompras: TFormTelaDadosVersaoCompras
  Left = 246
  Top = 105
  Caption = 'Dados da Vers'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 0
      end
      object RichEdit1: TRxRichEdit
        Left = 0
        Top = 0
        Width = 626
        Height = 337
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          #9#9#9'Altera'#231#245'es / Problemas Solucionados'
          'V E R S '#195' O   1.35a'
          ''
          '22/11/2001'
          
            '- Corre'#231#227'o do problema de n'#227'o mostrar o Tamanho na p'#225'gina consul' +
            'ta do '
          '  castro  de produtos;'
          ''
          'V E R S '#195' O   1.35'
          ''
          '22/11/2001'
          
            '- Foi criada a op'#231#227'o para informar se deseja que o sistema alter' +
            'e os campos'
          '  valor de Compra, Custo e % IPI na digita'#231#227'o da nota de compra;'
          '')
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
