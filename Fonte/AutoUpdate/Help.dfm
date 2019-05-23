object FormHelp: TFormHelp
  Left = 261
  Top = 147
  BorderStyle = bsNone
  Caption = 'FormHelp'
  ClientHeight = 348
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MemoHelp: TMemo
    Left = 0
    Top = 0
    Width = 536
    Height = 317
    TabStop = False
    Align = alClient
    Lines.Strings = (
      'Ajuda do AutoUpdate:'
      ''
      'Objetivo:'
      ''
      
        '  Facilitar, agilizar e assegurar as atualiza'#231#245'es das vers'#245'es do' +
        's sistemas nos clientes da ATW.'
      ''
      'Configura'#231#227'o:'
      ''
      
        '  O AutoUpdate possui uma tela configura'#231#227'o onde ser'#225' informado ' +
        'o caminho da'
      '  pasta de local(Backup) e o caminho da pasta remota.'
      ''
      
        '  Quando o AutoUpdate '#233' executado pela primeira vez ele tenta en' +
        'contrar automaticamente'
      
        '  a pasta remota atrav'#233's do caminho do banco de dados configurad' +
        'o no BDE.'
      ''
      
        '  Se o sistema encontra a pasta remota ele cria automaticamente ' +
        'uma pasta chamada'
      
        '  "UPDATE" no servidor do banco de dados e tamb'#233'm uma pasta "BAC' +
        'KUP" no computador local.'
      ''
      
        '  Os caminhos "LOCAL" e "REMOTO" poder'#227'o ser configurados manual' +
        'mente caso seja necess'#225'rio ou'
      '  o usu'#225'rio tenha alguma prefer'#234'ncia.'
      ''
      
        '  Toda vez que o usu'#225'rio alterar umas das configura'#231#245'es dever'#225' c' +
        'onfirmar clicando no bot'#227'o gravar.'
      ''
      
        '  Todas as informa'#231#245'es salvas no AutoUpdate ficam gravadas em um' +
        ' arquivo chamado AutoUpdate.ini.'
      ''
      'Como Funciona a Atualiza'#231#227'o:'
      ''
      
        '  Toda vez que o usu'#225'rio acessa um dos m'#243'dulos do sistema o Auto' +
        'Update '#233' executado em background '
      'sem'
      
        '  que o usu'#225'rio perceba, o mesmo verifica se existe alguma confi' +
        'gura'#231#227'o para atualiza'#231#227'o de vers'#227'o'
      '  autom'#225'tica atrav'#233's do arquivo AutoUpdate.ini.'
      ''
      
        '  Uma vez que o arquivo de configura'#231#227'o exista e seja v'#225'lido, o ' +
        'AutoUpdate procura na pasta remota'
      
        '  configurada se existe alguma atualiza'#231#227'o de vers'#227'o para o m'#243'du' +
        'lo que foi requisitado pelo usu'#225'rio.'
      ''
      
        '  Se a vers'#227'o do m'#243'dulo existente na pasta remota for mais nova ' +
        'do que a atual, ent'#227'o o AutoUpdate'
      
        '  faz uma c'#243'pia de seguran'#231'a compactada da vers'#227'o atual no diret' +
        #243'rio configurado como "LOCAL",'
      '  e em seguida copia a vers'#227'o nova para a m'#225'quina local.'
      ''
      
        '  A vers'#227'o do sistema '#233' gravada no pr'#243'prio arquivo execut'#225'vel fo' +
        'rnecido pela ATW, portanto n'#227'o'
      '  corremos o risco de haver uma engano no n'#250'mero da vers'#227'o.'
      ''
      'Como Funciona o Restore:'
      ''
      
        '  Para voltar '#224' uma vers'#227'o anterior do sistema basta clicar no b' +
        'ot'#227'o "RESTORE".'
      ''
      
        '  Como o sistema sempre faz uma c'#243'pia de seguran'#231'a antes de atua' +
        'lizar uma vers'#227'o, ele tamb'#233'm'
      
        '  grava neste arquivo a vers'#227'o que esta sendo substituida, porta' +
        'nto isso possibilita retroceder'
      '  uma vers'#227'o.'
      ''
      
        '  Ao clicar no bot'#227'o "RESTORE" o sistema abrir'#225' uma caixa de di'#225 +
        'logo listando todos arquivos de'
      
        '  backup encontrados na pasta "LOCAL", basta voc'#234' selecionar o n' +
        #250'mero da vers'#227'o que deseja'
      '  restaurar.'
      ''
      
        '  Uma vez selecionada a vers'#227'o o sistema ir'#225' descompactar o arqu' +
        'ivo substituir a vers'#227'o atual da'
      
        '  m'#225'quina e fazer uma c'#243'pia da vers'#227'o restaurada para a pasta "R' +
        'EMOTA" para que o todos os '
      'computadores'
      '  fiquem com a mesma vers'#227'o.'
      ''
      'Explica'#231#245'es Gerais:'
      ''
      
        '  Ao atualizar ou restaurar uma vers'#227'o o sistema grava no campo ' +
        '"Vers'#227'o atual", o n'#250'mero da vers'#227'o'
      '  que est'#225' sendo utilizada.'
      ''
      
        '  Se o sistema n'#227'o encotrar a pasta "REMOTA" ou a pasta "LOCAL" ' +
        'ele exibir'#225' uma mensgem informando'
      
        '  qual pasta que n'#227'o foi encontrada, isso n'#227'o impedir'#225' o acesso ' +
        'ao sistema, mas n'#227'o ser'#225' poss'#237'vel'
      '  efetuar uma atualiza'#231#227'o ou restaura'#231#227'o de vers'#227'o.')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 317
    Width = 536
    Height = 31
    Align = alBottom
    TabOrder = 1
    object ButtonClose: TSpeedButton
      Left = 441
      Top = 4
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Caption = '&Fechar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = ButtonCloseClick
    end
  end
end
