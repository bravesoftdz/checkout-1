inherited FormPrincipal: TFormPrincipal
  Tag = 3
  Left = 232
  Top = 104
  Width = 746
  Height = 566
  Caption = 'Financeiro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RodapePrincipal: TStatusBar
    Top = 520
    Width = 738
  end
  inherited PanelCabecalho: TPanel
    Width = 738
    inherited Cabecalho: TCoolBar
      Width = 738
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 21
          Width = 532
        end
        item
          Break = False
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 21
          Width = 198
        end>
      inherited ToolBar1: TToolBar [0]
        Left = 541
      end
      inherited ToolBar3: TToolBar [1]
        Width = 519
        ButtonWidth = 60
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = '&Cadastros'
          MenuItem = MnFINCadastros
        end
        object ToolButton2: TToolButton
          Left = 60
          Top = 0
          Caption = '&Pagar'
          MenuItem = MnFINPagar
        end
        object ToolButton4: TToolButton
          Left = 120
          Top = 0
          Caption = 'Rec&eber'
          MenuItem = MnFINReceber
        end
        object ToolButton8: TToolButton
          Left = 180
          Top = 0
          Caption = 'Che&ques'
          MenuItem = MnFINCheques
        end
        object ToolButton5: TToolButton
          Left = 240
          Top = 0
          Caption = '&Bancos'
          MenuItem = MNFINBancos
        end
        object ButtonTesouraria: TToolButton
          Left = 300
          Top = 0
          Caption = 'Cai&xa'
          MenuItem = MnFINTesouraria
        end
        object ToolButton7: TToolButton
          Left = 360
          Top = 0
          Caption = '&Utilit'#225'rios'
          MenuItem = MNFINUtilitarios
        end
        object ToolButton3: TToolButton
          Left = 420
          Top = 0
          Caption = '&Relat'#243'rios'
          MenuItem = MNFINRelatorios
        end
      end
    end
  end
  inherited MainMenu: TMainMenu
    AutoMerge = True
    Left = 4
    Top = 39
    object MnFINCadastros: TMenuItem
      Caption = '&Cadastros'
      object MnFINCadastroClientes: TMenuItem
        Caption = '&Clientes'
        object MnFINCadastroClientesCadastro: TMenuItem
          Caption = '&Cadastro'
          OnClick = MnFINCadastroClientesCadastroClick
        end
        object MnFINCadastroClientesTipodeCliente: TMenuItem
          Caption = '&Tipos de Cliente'
          OnClick = MnFINCadastroClientesTipodeClienteClick
        end
        object MnFINCadastroClientesProfissoes: TMenuItem
          Caption = '&Profiss'#245'es / Atividade'
        end
        object MnFINCadastroClientesMotivoBloquerio: TMenuItem
          Caption = '&Motivos de Bloquerio'
        end
        object MnFINCadCliExtras: TMenuItem
          Caption = 'Extras'
          object MnFINCadCliExtrasCredito: TMenuItem
            Caption = 'Cr'#233'dito'
            OnClick = MnFINCadCliExtrasCreditoClick
          end
          object MnFINCadCliExtrasDebito: TMenuItem
            Caption = 'D'#233'bito'
            OnClick = MnFINCadCliExtrasDebitoClick
          end
        end
      end
      object MnFINCadastroFornecedor: TMenuItem
        Caption = '&Fornecedor'
        OnClick = MnFINCadastroFornecedorClick
      end
      object MnFINTipoFornecedor: TMenuItem
        Caption = 'Tipo de Fornecedores'
        OnClick = MnFINTipoFornecedorClick
      end
      object MnFINFuncionario: TMenuItem
        Caption = 'Funcion'#225'rios'
        Visible = False
        OnClick = MnFINFuncionarioClick
      end
      object MnFINRamoSubRamo: TMenuItem
        Caption = 'Ramos e SubRamos'
        OnClick = MnFINRamoSubRamoClick
      end
      object N3: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object MnFINCadastroTiposDocumentos: TMenuItem
        Caption = '&Tipos de Documentos'
        OnClick = MnFINCadastroTiposDocumentosClick
      end
      object FINAMnCadastroPortadores: TMenuItem
        Caption = 'Portador&es'
        OnClick = FINAMnCadastroPortadoresClick
      end
      object MnFINCadTipoLiquidacao: TMenuItem
        Caption = 'Tipos de Liquida'#231#227'o'
        OnClick = MnFINCadTipoLiquidacaoClick
      end
      object MnFINCadHistoricoPadrao: TMenuItem
        Caption = 'Hist'#243'rico Padr'#227'o'
        OnClick = MnFINCadHistoricoPadraoClick
      end
      object N4: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object MnFINCadastroBancos: TMenuItem
        Caption = '&Bancos'
        OnClick = MnFINCadastroBancosClick
      end
      object MnFINCadastroOperacoesBancarias: TMenuItem
        Caption = '&Opera'#231#245'es Banc'#225'rias'
        OnClick = MnFINCadastroOperacoesBancariasClick
      end
      object MnFINCadastroSituacoesCheques: TMenuItem
        Caption = '&Situa'#231#245'es de Cheques'
        OnClick = MnFINCadastroSituacoesChequesClick
      end
      object N1: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object MnOperacaoTesouraria: TMenuItem
        Caption = 'Opera'#231#245'es Tesouraria'
        OnClick = MnOperacaoTesourariaClick
      end
      object MnFINCadastroPlanoContas: TMenuItem
        Caption = '&Plano de Contas'
        OnClick = MnFINCadastroPlanoContasClick
      end
      object N2: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object MnFINSairdoSistema: TMenuItem
        Caption = '&Sair do Sistema'
        OnClick = MnFINSairdoSistemaClick
      end
    end
    object MnFINPagar: TMenuItem
      Caption = '&Pagar'
      object MnFINPagarLancamentos: TMenuItem
        Caption = '&Lan'#231'amentos de Contas '#224' Pagar'
        OnClick = MnFINPagarLancamentosClick
      end
      object MnFINPagarBaixarDocumentos: TMenuItem
        Caption = '&Baixa Documentos '#224' Pagar'
        OnClick = MnFINPagarBaixarDocumentosClick
      end
      object MnFINFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
        Visible = False
        object MnFINPAGBaixarDocumentosFunc: TMenuItem
          Caption = 'Baixar Documentos'
          OnClick = MnFINPAGBaixarDocumentosFuncClick
        end
      end
    end
    object MnFINReceber: TMenuItem
      Caption = 'Rec&eber'
      object MnFINReceberLancamentos: TMenuItem
        Caption = '&Lan'#231'amentos de Contas '#224' Receber'
        OnClick = MnFINReceberLancamentosClick
      end
      object MnCartoesCreditoManual: TMenuItem
        Caption = 'Cart'#245'es de Cr'#233'dito/Credi'#225'rio Manual'
        OnClick = MnCartoesCreditoManualClick
      end
      object MnFINReceberBaixarDocumentos: TMenuItem
        Caption = '&Baixa de Documentos '#224' Receber'
        OnClick = MnFINReceberBaixarDocumentosClick
      end
      object MnFINReceberEmissaoBoletosDuplicatas: TMenuItem
        Caption = 'Emiss'#227'o de Boletos/Duplicatas'
        OnClick = MnFINReceberEmissaoBoletosDuplicatasClick
      end
    end
    object MnFINCheques: TMenuItem
      Caption = 'Che&ques'
      object MnFINRecebidos: TMenuItem
        Caption = 'Recebidos'
        object MnFINChequesRecebidosLancamentos: TMenuItem
          Caption = 'Lan'#231'amentos de Cheques Recebidos'
          OnClick = MnFINChequesRecebidosLancamentosClick
        end
        object MnFINCheRecebidosBaixaChequesRecebidos: TMenuItem
          Caption = 'Baixa Cheques Recebidos'
          OnClick = MnFINCheRecebidosBaixaChequesRecebidosClick
        end
      end
      object MnChequesEmitidos: TMenuItem
        Caption = 'Emitidos'
        object MnChqEmitidosLancamentosCheuqesEmitidos: TMenuItem
          Caption = 'Lan'#231'amentos de Cheques Emitidos'
          OnClick = MnChqEmitidosLancamentosCheuqesEmitidosClick
        end
        object MnFINChqEmitidosBaixaChequesEmitidos: TMenuItem
          Caption = 'Baixa de Cheques Emitidos'
          OnClick = FormPrincipalB1Click
        end
      end
    end
    object MNFINBancos: TMenuItem
      Caption = '&Bancos'
      object MnFINBancosLancarMovimentaco: TMenuItem
        Caption = '&Movimenta'#231#227'o Banc'#225'ria'
        OnClick = MnFINBancosLancarMovimentacoClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MnFINBancosContaCorrente: TMenuItem
        Caption = 'Conta Corrente'
        OnClick = MnFINBancosContaCorrenteClick
      end
      object MnFINBancosIntegracao: TMenuItem
        Caption = 'Integra'#231#227'o'
        object MnFINBancosRemessaArquivo: TMenuItem
          Caption = 'Envio/Recebimento de Arquivo'
          OnClick = MnFINBancosRemessaArquivoClick
        end
      end
    end
    object MnFINTesouraria: TMenuItem
      Caption = 'Cai&xa'
      object MnFINTesLancamentos: TMenuItem
        Caption = 'Lan'#231'amentos de Caixa'
        OnClick = MnFINTesLancamentosClick
      end
      object MnFINTesEmisscaodeRecibos: TMenuItem
        Caption = 'Emiss'#227'o de Recibos'
        OnClick = MnFINTesEmisscaodeRecibosClick
      end
    end
    object MNFINUtilitarios: TMenuItem
      Caption = '&Utilit'#225'rios'
      object MnFINUtilitariosCadastroControleAcesso: TMenuItem
        Caption = 'Controle de Acesso'
        OnClick = MnFINUtilitariosCadastroControleAcessoClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object MnFINUtilitariosDadosVersao: TMenuItem
        Caption = '&Dados da Vers'#227'o'
      end
    end
    object MNFINRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object MnFINRelatoriosPagar: TMenuItem
        Caption = '&Contas '#224' Pagar'
        object MnFINRelPagarEmitidas: TMenuItem
          Caption = 'Emitidas'
          OnClick = MnFINRelPagarEmitidasClick
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object MnFINRelContasPagarVencidas: TMenuItem
          Caption = '&Vencidas'
          OnClick = MnFINRelContasPagarVencidasClick
        end
        object N12: TMenuItem
          Caption = '-'
        end
        object MnFINRelContasPagarPagas: TMenuItem
          Caption = '&Pagas'
          OnClick = MnFINRelContasPagarPagasClick
        end
        object PagasPorOrigem1: TMenuItem
          Caption = 'Pagas Por Origem'
          OnClick = PagasPorOrigem1Click
        end
        object MnFINRELContasPagasPorTipodeLiquidcao: TMenuItem
          Caption = 'Pagas Por Tipo de Liquida'#231#227'o'
          OnClick = MnFINRELContasPagasPorTipodeLiquidcaoClick
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object MnFINRelContasPagarAPagar: TMenuItem
          Caption = #192' Pagar'
          OnClick = MnFINRelContasPagarAPagarClick
        end
      end
      object MnFINRelatoriosReceber: TMenuItem
        Caption = '&Contas '#224' Receber'
        object MnFINRelReceberEmitidas: TMenuItem
          Caption = 'Emitidas'
          OnClick = MnFINRelReceberEmitidasClick
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object MnFINRelReceberRecebidas: TMenuItem
          Caption = 'Recebidas'
          OnClick = MnFINRelReceberRecebidasClick
        end
        object MnFINRELRecebidasPorSetor: TMenuItem
          Caption = 'Recebidas Por Origem'
          OnClick = MnFINRELRecebidasPorSetorClick
        end
        object MnFINRELRecebidasPorTipodeLiquidacao: TMenuItem
          Caption = 'Recebidas Por Tipo de Liquida'#231#227'o'
          OnClick = MnFINRELRecebidasPorTipodeLiquidacaoClick
        end
        object MnFINRELRecebidasPorEmpresaOrigemRecebto: TMenuItem
          Caption = 'Recebidas Por Empresa (Origem X Recebimento)'
          OnClick = MnFINRELRecebidasPorEmpresaOrigemRecebtoClick
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object MnFINRelReceberVencidas: TMenuItem
          Caption = 'Vencidas'
          OnClick = MnFINRelReceberVencidasClick
        end
        object MnFINRELContasReceberVencidasAvalista: TMenuItem
          Caption = 'Vencidas Com Avalista'
          OnClick = MnFINRELContasReceberVencidasAvalistaClick
        end
        object N10: TMenuItem
          Caption = '-'
        end
        object MnFINRelReceberAReceber: TMenuItem
          Caption = #192' Receber'
          OnClick = MnFINRelReceberAReceberClick
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object AnlisedeRecebimentos1: TMenuItem
          Caption = 'An'#225'lise de Recebimentos'
          OnClick = AnlisedeRecebimentos1Click
        end
      end
      object MnFINRelCheques: TMenuItem
        Caption = '&Cheques'
        object MnFINRelChequesEmitidos: TMenuItem
          Caption = 'Emitidos'
          OnClick = MnFINRelChequesEmitidosClick
        end
        object MnFINRelChequesRecebidos: TMenuItem
          Caption = '&Recebidos'
          OnClick = MnFINRelChequesRecebidosClick
        end
      end
      object MnFINRelBancos: TMenuItem
        Caption = '&Bancos'
        object MNFINRelBancoExtratoBancario: TMenuItem
          Caption = '&Extrato Bancario'
          OnClick = MNFINRelBancoExtratoBancarioClick
        end
      end
      object NnFINRelCaixa: TMenuItem
        Caption = 'Cai&xa'
        object MnFINRelCaixaBoletimdeCaixa: TMenuItem
          Caption = 'Boletim de Caixa'
          OnClick = MnFINRelCaixaBoletimdeCaixaClick
        end
        object MnFINRelCaixaMovimentacaodeCaixa: TMenuItem
          Caption = 'Movimenta'#231#227'o de Caixa'
          OnClick = MnFINRelCaixaMovimentacaodeCaixaClick
        end
      end
      object MnFINRelTesouraria: TMenuItem
        Caption = 'Tesouraria'
        object MnFINRelTesourariaSaldoDiarioConsolidado: TMenuItem
          Caption = 'Saldo Di'#225'rio Consolidado'
          OnClick = MnFINRelTesourariaSaldoDiarioConsolidadoClick
        end
      end
      object MnFINRelClientes: TMenuItem
        Caption = 'Clientes'
        object MnFINRelClientesCreditoDebito: TMenuItem
          Caption = 'Cr'#233'ditos / D'#233'bitos Extras'
          OnClick = MnFINRelClientesCreditoDebitoClick
        end
        object MnFINRelClientesExtrato: TMenuItem
          Caption = 'Extrato de Cliente'
          OnClick = MnFINRelClientesExtratoClick
        end
      end
      object MnFINRelFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
        object MnFINRelFunExtrato: TMenuItem
          Caption = 'Extrato'
          OnClick = MnFINRelFunExtratoClick
        end
      end
      object MnFinRelContabilidade: TMenuItem
        Caption = 'Contabilidade'
        object MnFINRelContSaldodeContasReceber: TMenuItem
          Caption = 'Saldo de Contas '#224' Receber'
          OnClick = MnFINRelContSaldodeContasReceberClick
        end
        object MnFINRelPagContSaldodeContasaPagar: TMenuItem
          Caption = 'Saldo de Contas '#224' Pagar'
          OnClick = MnFINRelPagContSaldodeContasaPagarClick
        end
        object MnFINRelContAuxiliarParaLivroCaixa: TMenuItem
          Caption = 'Auxiliar Para Livro Caixa'
          OnClick = MnFINRelContAuxiliarParaLivroCaixaClick
        end
      end
      object MnFINRelPlanodeContas: TMenuItem
        Caption = 'Plano de Contas'
        OnClick = MnFINRelPlanodeContasClick
      end
      object MnFINRelFluxodeCaixaDiario: TMenuItem
        Caption = 'Fluxo de Caixa Di'#225'rio'
        OnClick = MnFINRelFluxodeCaixaDiarioClick
      end
      object MnFINRelPosicaoFinanceiraConsolidada: TMenuItem
        Caption = 'Posi'#231#227'o Financeira Consolidada'
        OnClick = MnFINRelPosicaoFinanceiraConsolidadaClick
      end
    end
  end
  inherited ListaJanelas: TPopupMenu
    Left = 60
    Top = 39
  end
  inherited BackGround: TEvWallPaper
    Left = 88
    Top = 39
  end
end
