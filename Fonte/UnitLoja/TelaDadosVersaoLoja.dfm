inherited FormTelaDadosVersaoLoja: TFormTelaDadosVersaoLoja
  Left = 141
  Top = 80
  Caption = 'Dados da Vers'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object RichEdit1: TRxRichEdit
        Left = 130
        Top = 0
        Width = 496
        Height = 337
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Lines.Strings = (
          #9#9#9'Altera'#231#245'es / Problemas Solucionados'
          'V E R S '#195' O   1.76j'
          ''
          '22/12/2001'
          
            '- Foi corrigido o problema de n'#227'o listar alguns produtos no Rela' +
            't'#243'rio de Produtos Vendidos'
          
            '  quando o produto estivesse com Valor de Custo estivesse zerado' +
            ';'
          
            '- Foi corrigido o problema de n'#227'o calcular corretamente a comiss' +
            #227'o quando o percentual'
          '  de comiss'#227'o '#224' vista ou '#224' prazo no produto estivesse zerado;'
          ''
          'V E R S '#195' O   1.76h'
          ''
          '20/12/2001'
          
            '- Foi corrigido o problema de n'#227'o listar corretamente os produto' +
            's quando era'
          '  escolhido um vendendor no Relat'#243'rio de Produtos Vendidos;'
          
            '- Foi corrigido o problema de n'#227'o calcular corretamente o n'#250'mero' +
            ' de '#237'tens vendidos na rotina'
          '  de c'#225'lculo de comiss'#227'o;'
          ''
          'V E R S '#195' O   1.76f'
          ''
          '26/11/2001'
          
            '- Foi criada a op'#231#227'o para trocar a mensagem emitida no Pdv quand' +
            'o cliente est'#225' bloqueado'
          'por uma mensagem personalizada ;'
          ''
          '22/11/2001'
          '- Foi criada a op'#231#227'o para entrada ser quitada automaticamente;'
          ''
          '21/11/2001'
          
            '- Foi criada a op'#231#227'o de autenticar opera'#231#227'o de caixa na tela mov' +
            'imenta'#231#227'o de caixa'
          '  do Unit Checkout;'
          ''
          '20/11/2001'
          
            '- Foi criada a op'#231#227'o de trancar exclus'#227'o, inclus'#227'o e altera'#231#227'o n' +
            'a filial em tabelas'
          '  que devem ser manipuladas somente pela matriz;'
          ''
          'V E R S '#195' O   1.76c'
          ''
          '17/11/2001'
          '- Foi criada a op'#231#227'o de informar qual Opera'#231#227'o de Caixa deve'
          
            'solicitar a digita'#231#227'o de valor na Movimenta'#231#227'o do Caixa(F12) no ' +
            'Unit Checkout;'
          
            '- Foi criada a op'#231#227'o de informar se uma Opera'#231#227'o de Caixa deve s' +
            'er ou n'#227'o'
          'impressa no Relat'#243'rio de Movimenta'#231#227'o do Caixa ;'
          ''
          'V E R S '#195' O   1.76b'
          ''
          '14/11/2001'
          
            '- Foi criada a op'#231#227'o para emitir o relat'#243'rio de Movimenta'#231#227'o de ' +
            'Caixa Resumido;'
          ''
          'V E R S '#195' O   1.76a'
          ''
          '13/11/2001'
          
            '- Foi criada a possibilidade de alterar a data base de c'#225'lculo d' +
            'e Juro, Multa e'
          'Desconto nos dados de compra do Cadastro de Cliente;'
          
            '- Quando se altera o SEXO ou o ESTADO CIVIL no cliente e grava u' +
            'm dos dois fica'
          'em branco;'
          ''
          'V E R S '#195' O   1.76'
          ''
          '08/11/2001'
          
            '- Foi criada a possibilidade de informar qual a ordem de impress' +
            #227'o do'
          'Relat'#243'rio de Listagem de Produtos;'
          ''
          '07/11/2001'
          ' - Quando vai cancelar um cupom pela tela de Consulta de Cupons '
          'acontece um erro;'
          '- Relat'#243'rio de Contas a Receber Vencidas est'#225' saindo em branco;')
        TabOrder = 1
      end
    end
  end
end
