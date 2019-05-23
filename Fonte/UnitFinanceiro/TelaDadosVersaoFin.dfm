inherited FormTelaDadosVersaoFin: TFormTelaDadosVersaoFin
  Top = 106
  Caption = 'Dados da Vers'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object RichEdit1: TRxRichEdit
        Left = 130
        Top = 0
        Width = 627
        Height = 368
        Align = alClient
        BorderStyle = bsNone
        Color = 15461355
        Lines.Strings = (
          #9#9#9'Altera'#231#245'es / Problemas Solucionados'
          ''
          ''
          ''
          'V E R S '#195' O   1.23'
          ''
          '01/02/2002'
          
            '- Foi corrigido o problema de desbloquear clientes que tinham ou' +
            'tros cheques'
          
            'com Situa'#231#227'o que bloqueia quando se alterava um cheque para uma ' +
            'Situa'#231#227'o que'
          'desbloqueava;'
          
            '- Foi corrigido o problema de n'#227'o conseguir emitir o relat'#39'porio' +
            ' de cheques por'
          'situa'#231#227'o;'
          ''
          'V E R S '#195' O   1.20a'
          ''
          '12/12/2001'
          
            '- Foi corrigido o problema de n'#227'o conseguir dar baixa nas conta ' +
            'a pagar;'
          ''
          'V E R S '#195' O   1.20'
          ''
          '17/11/2001'
          
            '- Foi criada a op'#231#227'o de poder informar se a coluna Baixar da tel' +
            'a Baixa de Documentos'
          #224' pagar deve ter como padr'#227'o Marcada ou Desmarcada;')
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
end
