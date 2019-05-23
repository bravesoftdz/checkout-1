inherited FormPrincipal: TFormPrincipal
  Tag = 5
  Left = 158
  Top = 160
  Width = 807
  Height = 531
  Caption = 'Compras'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RodapePrincipal: TStatusBar
    Top = 485
    Width = 799
  end
  inherited PanelCabecalho: TPanel
    Width = 799
    inherited Cabecalho: TCoolBar
      Width = 799
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 21
          Width = 432
        end
        item
          Break = False
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 21
          Width = 359
        end>
      inherited ToolBar1: TToolBar [0]
        Left = 441
      end
      inherited ToolBar3: TToolBar [1]
        Width = 419
        ButtonWidth = 60
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = '&Cadastros'
          MenuItem = COMPMNArquivos
        end
        object ToolButton7: TToolButton
          Left = 60
          Top = 0
          Caption = 'Estoque'
          MenuItem = Estoque1
        end
        object ToolButton3: TToolButton
          Left = 120
          Top = 0
          Caption = '&Pedidos'
          MenuItem = COMPMNPedidos
        end
        object ToolButton2: TToolButton
          Left = 180
          Top = 0
          Caption = '&Notas'
          MenuItem = COMPMNNotas
        end
        object ToolButton4: TToolButton
          Left = 240
          Top = 0
          Caption = '&Utilit'#225'rios'
          MenuItem = COMPMNUtilitarios
        end
        object ToolButton5: TToolButton
          Left = 300
          Top = 0
          Caption = '&Relat'#243'rios'
          MenuItem = COMPMNRelatorios
        end
      end
    end
  end
  inherited MainMenu: TMainMenu
    object COMPMNArquivos: TMenuItem
      Caption = '&Cadastros'
      object COMPMnArquivosProdutos: TMenuItem
        Caption = '&Produtos'
        object COMPMnArquivosProdutosCadastro: TMenuItem
          Caption = '&Cadastro'
          OnClick = COMPMnArquivosProdutosCadastroClick
        end
        object COMPMnArquivosProdutosGruposSubgruposVariacoes: TMenuItem
          Caption = 'Grupos / Subgrupos / &Varia'#231#245'es'
          OnClick = COMPMnArquivosProdutosGruposSubgruposVariacoesClick
        end
        object COMPMnArquivosProdutosCores: TMenuItem
          Caption = '&Cores'
          OnClick = COMPMnArquivosProdutosCoresClick
        end
        object COMPMnArquivosProdutosGrades: TMenuItem
          Caption = '&Grades'
          OnClick = COMPMnArquivosProdutosGradesClick
        end
        object COMPMnArquivosProdutosMarcas: TMenuItem
          Caption = '&Marcas'
          OnClick = COMPMnArquivosProdutosMarcasClick
        end
        object MnColecao: TMenuItem
          Caption = 'Cole'#231#227'o'
          OnClick = MnColecaoClick
        end
        object COMPMnArquivosProdutosIcms: TMenuItem
          Caption = '&Icms'
          OnClick = COMPMnArquivosProdutosIcmsClick
        end
        object COMPMnArquivosProdutosIcmsporUF: TMenuItem
          Caption = '&Icm&s por UF'
          OnClick = COMPMnArquivosProdutosIcmsporUFClick
        end
        object COMPMnArquivosProdutosClassificacoesFiscais: TMenuItem
          Caption = 'Classifica'#231#245'es Fiscais'
          OnClick = COMPMnArquivosProdutosClassificacoesFiscaisClick
        end
        object COMPMnArquivosProdutosUnidades: TMenuItem
          Caption = 'Unidades'
          OnClick = COMPMnArquivosProdutosUnidadesClick
        end
        object COMPMnArquivosProdutosDecretos: TMenuItem
          Caption = 'Decretos'
          OnClick = COMPMnArquivosProdutosDecretosClick
        end
        object COMPMnArquivosProdutosTabelaPreco: TMenuItem
          Caption = '&Tabela de Pre'#231'o'
          OnClick = COMPMnArquivosProdutosTabelaPrecoClick
        end
      end
      object COMPMnArquivosFornecedores: TMenuItem
        Caption = '&Fornecedores'
        OnClick = COMPMnArquivosFornecedoresClick
      end
      object COMPMnArquivosTransportadoras: TMenuItem
        Caption = '&Transportadoras'
        OnClick = COMPMnArquivosTransportadorasClick
      end
      object COMPMnArquivosPlanoPagamento: TMenuItem
        Caption = 'Planos de Pagamento'
        OnClick = COMPMnArquivosPlanoPagamentoClick
      end
      object COMPMnTipodeDocumento: TMenuItem
        Caption = 'Tipo de Documento'
        OnClick = COMPMnTipodeDocumentoClick
      end
      object COMPMnPortadores: TMenuItem
        Caption = 'Portadores'
        OnClick = COMPMnPortadoresClick
      end
      object COMPMnArquivosOperacoesdeEstoque: TMenuItem
        Caption = 'Opera'#231#245'es de Estoque'
        OnClick = COMPMnArquivosOperacoesdeEstoqueClick
      end
      object N2: TMenuItem
        Tag = 1
        Caption = '-'
      end
      object COMPMnSairdoSistema: TMenuItem
        Caption = '&Sair do Sistema'
        OnClick = COMPMnSairdoSistemaClick
      end
    end
    object Estoque1: TMenuItem
      Caption = 'Estoque'
      object COMPMnEstoqueMovimentoDiversos: TMenuItem
        Caption = '&Movimenta'#231#245'es Diversas'
        OnClick = COMPMnEstoqueMovimentoDiversosClick
      end
      object COMPMnUtilitariosEmissaoEtiquetasCodigoBarras: TMenuItem
        Caption = 'Emiss'#227'o de Etiquetas'
        OnClick = COMPMnUtilitariosEmissaoEtiquetasCodigoBarrasClick
      end
      object ReajustedePreos1: TMenuItem
        Caption = 'Reajuste de Pre'#231'os'
        OnClick = ReajustedePreos1Click
      end
    end
    object COMPMNPedidos: TMenuItem
      Caption = '&Pedidos'
      object COMPMnPedidosPedidoCompra: TMenuItem
        Caption = 'Pedidos de Compra'
        OnClick = COMPMnPedidosPedidoCompraClick
      end
    end
    object COMPMNNotas: TMenuItem
      Caption = '&Notas'
      object COMPMnNotasNotaCompra: TMenuItem
        Caption = 'Notas de Entrada'
        OnClick = COMPMnNotasNotaCompraClick
      end
    end
    object COMPMNUtilitarios: TMenuItem
      Caption = '&Utilit'#225'rios'
      object COMPMnUtilitariosEspeciais: TMenuItem
        Caption = '&Especiais'
        object COMPMnUtilitariosEspeciaisGerarRegistroSaldo: TMenuItem
          Caption = 'Gerar Registro de Saldo de Produtos'
          OnClick = COMPMnUtilitariosEspeciaisGerarRegistroSaldoClick
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MnCOMUTILProdutos: TMenuItem
        Caption = 'Produtos'
        object RecalcularCustoMdio1: TMenuItem
          Caption = 'Recalcular Custo M'#233'dio'
          OnClick = RecalcularCustoMdio1Click
        end
        object MnCOMUtilCalculaCustoMensal: TMenuItem
          Caption = 'Calcula Custo Mensal'
          OnClick = MnCOMUtilCalculaCustoMensalClick
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object COMPMnUtilitariosControledeAcesso: TMenuItem
        Caption = 'Controle de Acesso'
        OnClick = COMPMnUtilitariosControledeAcessoClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object DadosVerso1: TMenuItem
        Caption = 'Dados Vers'#227'o'
        OnClick = DadosVerso1Click
      end
    end
    object COMPMNRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object COMPMnRelatoriosNotasCompra: TMenuItem
        Caption = 'Notas de Compra'
        OnClick = COMPMnRelatoriosNotasCompraClick
      end
      object MnRelatoriosVendasComprasPorGrupo: TMenuItem
        Caption = 'Vendas/Compras Por Grupo'
        OnClick = MnRelatoriosVendasComprasPorGrupoClick
      end
      object MnCOMRelGirodeEstoque: TMenuItem
        Caption = 'Giro de Estoque'
        Visible = False
        OnClick = MnCOMRelGirodeEstoqueClick
      end
    end
  end
end
