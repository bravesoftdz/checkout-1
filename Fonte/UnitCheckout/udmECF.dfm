object dmECF: TdmECF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 442
  Top = 125
  Height = 492
  Width = 622
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'procurar'
    ReTentar = False
    DescricaoGrande = True
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 850
    OnMsgPoucoPapel = ACBrECF1MsgPoucoPapel
    OnErrorCancelaCupom = ACBrECF1ErrorCancelaCupom
    DecimaisPreco = 2
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ''
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO     DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ''
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ''
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=4'
      'HTML_Font=<font size="5" face="Lucida Console">')
    ArqLOG = 'acbrlog.txt'
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 3
    ConfigBarras.Altura = 10
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 128
    Top = 317
  end
end
