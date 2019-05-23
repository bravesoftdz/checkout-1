inherited FormTelaDadosVersaoCrediario: TFormTelaDadosVersaoCrediario
  Left = 246
  Top = 105
  Caption = 'Dados da Vers'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object RichEdit1: TRxRichEdit
        Left = 130
        Top = 0
        Width = 669
        Height = 268
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Lines.Strings = (
          #9#9#9'Altera'#231#245'es / Problemas Solucionados'
          'V E R S '#195' O   1.20b'
          ''
          '12/12/2001'
          
            '- Foi criada a possibilidade de bloquear a venda para clientes q' +
            'ue estiverem em'
          '  aviso de atraso;'
          ''
          'V E R S '#195' O   1.20a'
          ''
          '13/11/2001'
          
            '- Foi criada a possibilidade de alterar a data base de c'#225'lculo d' +
            'e Juro, Multa e'
          'Desconto nos dados de compra do Cadastro de Cliente;'
          
            '- Os valores est'#227'o saindo diferentes nos dados de compra e no re' +
            'lat'#243'riode extrato de cliente;'
          
            '- Quando se altera o SEXO ou o ESTADO CIVIL no cliente e grava u' +
            'm dos dois fica '
          'em branco;'
          ''
          'V E R S '#195' O   1.20'
          ''
          '08/11/2001'
          
            '- Est'#225' imprimir a coluna Reab. = "Sim" no relat'#243'rio de reabilita' +
            #231#245'es de SPC mesmo para clientes '
          'que tem'
          'outra(s) parcela(s) em SPC;'
          ''
          '07/11/2001'
          '- Foi inclu'#237'da o controle de acesso;'
          
            '- Foi inclu'#237'da a rotina p/poder ver somente documentos enviados ' +
            'ou n'#227'o enviados'
          '  na tela de Envio de Cartas de Aviso;')
        TabOrder = 1
      end
    end
  end
end
