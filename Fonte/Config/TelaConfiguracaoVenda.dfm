inherited FormTelaConfiguracaoVenda: TFormTelaConfiguracaoVenda
  Left = 310
  Top = 103
  Width = 812
  Height = 600
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Configura'#231#245'es de Vendas'
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 796
    Height = 562
    inherited PanelCentral: TPanel
      Width = 792
      Height = 478
      inherited PanelBarra: TPanel
        Width = 1
        Height = 478
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 0
        Width = 791
        Height = 478
        ActivePage = TabConfiguracoes
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 1
        object TabConfiguracoes: TTabSheet
          Caption = '&Configura'#231#245'es'
          object GroupBox1: TGroupBox
            Left = 2
            Top = 165
            Width = 551
            Height = 156
            Caption = ' Opera'#231#245'es de Estoque Padronizadas '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label6: TLabel
              Left = 7
              Top = 19
              Width = 133
              Height = 13
              Caption = 'Sa'#237'da por venda Cupom'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 7
              Top = 40
              Width = 207
              Height = 13
              Caption = 'Entrada cancelamento venda Cupom'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 8
              Top = 106
              Width = 163
              Height = 13
              Caption = 'Entrada retorno consigna'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 7
              Top = 85
              Width = 149
              Height = 13
              Caption = 'Sa'#237'da cancelamento Troca'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 7
              Top = 63
              Width = 79
              Height = 13
              Caption = 'Entrada Troca'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 8
              Top = 128
              Width = 105
              Height = 13
              Caption = 'Entrada devolu'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxDBLookupCombo1: TRxDBLookupCombo
              Left = 216
              Top = 15
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODCUPOM'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 0
            end
            object RxDBLookupCombo2: TRxDBLookupCombo
              Left = 216
              Top = 37
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODCANCCUPOM'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 1
            end
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 216
              Top = 102
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODRETORNO'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 4
            end
            object RxDBLookupCombo4: TRxDBLookupCombo
              Left = 216
              Top = 81
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODCANCTROCA'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 3
            end
            object RxDBLookupCombo5: TRxDBLookupCombo
              Left = 216
              Top = 59
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODTROCA'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 2
            end
            object RxDBLookupCombo6: TRxDBLookupCombo
              Left = 216
              Top = 124
              Width = 330
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICODDEVOL'
              DataSource = DSSQLConfigVenda
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESA60DESCR'
              LookupSource = DSSQLOperacaoEstoque
              TabOrder = 5
            end
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 0
            Width = 737
            Height = 163
            Caption = 'Configura'#231#245'es de Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object DBCheckBox4: TDBCheckBox
              Left = 4
              Top = 17
              Width = 233
              Height = 14
              Caption = 'Solicitar dados do cheque no CASH'
              DataField = 'CFVECDADOSCHQPDV'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 4
              Top = 65
              Width = 233
              Height = 14
              Caption = 'Disponibilizar caderno para o cliente'
              DataField = 'CFVECUSADEBCREDCLI'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox8: TDBCheckBox
              Left = 4
              Top = 80
              Width = 233
              Height = 14
              Caption = 'Cheque entra quitado no CASH'
              DataField = 'CFVECQUITARPARCHQ'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox1: TDBCheckBox
              Left = 4
              Top = 32
              Width = 233
              Height = 14
              Caption = 'Solicitar dados da venda no CASH'
              DataField = 'CFVECINFDADOVENDA'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 4
              Top = 95
              Width = 233
              Height = 14
              Caption = 'Quitar entrada automaticamente'
              DataField = 'CFVECPARC0ENTRBAIX'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 268
              Top = 46
              Width = 233
              Height = 14
              Caption = 'Checkout efetua venda consignada'
              DataField = 'CFVECFAZVENDCONSIG'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox9: TDBCheckBox
              Left = 268
              Top = 61
              Width = 233
              Height = 14
              Caption = 'Importar pr'#233'-venda pelo c'#243'digo'
              DataField = 'CFVECIMPPREVDCOD'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox10: TDBCheckBox
              Left = 268
              Top = 76
              Width = 256
              Height = 14
              Caption = 'Finalizar Cupom com dados da pr'#233'-venda '
              DataField = 'CFVECFINVENDADPREVD'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox11: TDBCheckBox
              Left = 268
              Top = 92
              Width = 256
              Height = 14
              Caption = 'Pesquisar produto pela descri'#231'ao no CASH'
              DataField = 'CFVECFINDPRODPORDESCR'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox12: TDBCheckBox
              Left = 268
              Top = 108
              Width = 285
              Height = 14
              Caption = 'Solicitar pre'#231'o de produto automaticamente'
              DataField = 'CFVECPEDEVLRPRODUTO'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox15: TDBCheckBox
              Left = 268
              Top = 14
              Width = 291
              Height = 14
              Caption = 'Quitar parcela(s) de conv'#234'nio automaticamente'
              DataField = 'CFVECQUITAPARCONV'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox17: TDBCheckBox
              Left = 4
              Top = 124
              Width = 257
              Height = 20
              Caption = 'Arredondar valor de venda dos produtos'
              DataField = 'CFVECFARREDVLRVEND'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox18: TDBCheckBox
              Left = 4
              Top = 48
              Width = 229
              Height = 14
              Caption = 'Solicitar libera'#231#227'o de cr'#233'dito no CASH'
              DataField = 'CFVECUSALIBERCRED'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox16: TDBCheckBox
              Left = 4
              Top = 110
              Width = 261
              Height = 14
              Caption = 'Solicitar senha ao alterar valor de produto'
              DataField = 'CFVECSOLSENHAALTVLR'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox19: TDBCheckBox
              Left = 268
              Top = 138
              Width = 463
              Height = 20
              Caption = 
                'Bloquear Venda de Produtos Com Subs. Trib. Junto De Produtos Sem' +
                ' Subs. Trib.'
              DataField = 'CFVECINFPRODSUBTRI'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox20: TDBCheckBox
              Left = 268
              Top = 30
              Width = 291
              Height = 14
              Caption = 'Quitar parcela(s) de cart'#227'o automaticamente'
              DataField = 'CFVECQUITAPARCRT'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox21: TDBCheckBox
              Left = 268
              Top = 124
              Width = 453
              Height = 14
              Caption = 'Solicitar pre'#231'o de produto que deveria ter sido vendido'
              DataField = 'CFVECINFVLRDEVCVEN'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox7: TGroupBox
            Left = 2
            Top = 322
            Width = 551
            Height = 40
            Caption = '  Mensagem personalizada para bloqueio de venda  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 538
              Height = 21
              DataField = 'CFVEA250MSGBLOQ'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            Left = 278
            Top = 363
            Width = 275
            Height = 41
            Caption = ' Tabela de Pre'#231'o Padr'#227'o '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object ComboTabelaPreco: TRxDBLookupCombo
              Left = 3
              Top = 14
              Width = 268
              Height = 21
              DropDownCount = 8
              DataField = 'TPRCICOD'
              DataSource = DSSQLConfigVenda
              LookupField = 'TPRCICOD'
              LookupDisplay = 'TPRCA60DESCR'
              LookupSource = DSSQLTabelaPreco
              TabOrder = 0
            end
          end
          object GroupBox9: TGroupBox
            Left = 2
            Top = 363
            Width = 273
            Height = 41
            Caption = ' Motivo de Bloqueio Venda Consignada '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object RxDBLookupCombo7: TRxDBLookupCombo
              Left = 3
              Top = 14
              Width = 265
              Height = 21
              DropDownCount = 8
              DataField = 'MTBLICODVENDCONSIG'
              DataSource = DSSQLConfigVenda
              LookupField = 'MTBLICOD'
              LookupDisplay = 'MTBLA60DESCR'
              LookupSource = DSSQLMotivoBloqueio
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 558
            Top = 166
            Width = 182
            Height = 48
            Caption = ' Ordem Importa Prevenda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object ComboOrdemImp: TRxDBComboBox
              Left = 8
              Top = 18
              Width = 166
              Height = 21
              Style = csDropDownList
              DataField = 'CFVEA20ORDIMPVEND'
              DataSource = DSSQLConfigVenda
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Terminal / Numero'
                'Nome Cliente'
                'Data e Hora Desc'
                'Mesa / Comanda'
                'Data e Hora Asc')
              TabOrder = 0
              Values.Strings = (
                'TERMICOD, PRVDICOD'
                'CLIENTENOME Asc'
                'PDVDDHVENDA Desc'
                'MESAICOD, PRVDICOD Asc'
                'PDVDDHVENDA Asc')
            end
          end
          object GroupBox6: TGroupBox
            Left = 558
            Top = 217
            Width = 182
            Height = 48
            Caption = 'Valor Limite Pagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object DBEdit6: TDBEdit
              Left = 8
              Top = 18
              Width = 163
              Height = 21
              DataField = 'VALOR_LIMITE_PAGTO'
              DataSource = DSSQLConfigVenda
              TabOrder = 0
            end
          end
        end
        object TabValores: TTabSheet
          Caption = '&Valores'
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 1
            Top = 3
            Width = 412
            Height = 95
            Caption = ' Limite de Cr'#233'dito '
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 12
              Width = 89
              Height = 13
              Caption = '% sobre sal'#225'rio'
              FocusControl = DBEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 8
              Top = 52
              Width = 77
              Height = 13
              Caption = 'Valor M'#225'ximo'
              FocusControl = DBEdit2
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 28
              Width = 64
              Height = 21
              DataField = 'CFVEN2PERCLIMCRED'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 68
              Width = 64
              Height = 21
              DataField = 'CFVEN3MAXLIMCRED'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBCheckBox13: TDBCheckBox
              Left = 108
              Top = 36
              Width = 203
              Height = 17
              Caption = 'Usa renda do conjuge no c'#225'lculo'
              DataField = 'CFVECRENDCONJNOLIM'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox14: TDBCheckBox
              Left = 108
              Top = 53
              Width = 294
              Height = 25
              Caption = 'Subtrai do limite o valor das parcelas em aberto'
              DataField = 'CFVECSUBDEBNOLIMITE'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 109
              Top = 15
              Width = 160
              Height = 17
              Caption = 'Testar Limite de Cr'#233'dito'
              DataField = 'CFVECTESTALIMTCRED'
              DataSource = DSSQLConfigVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 415
            Top = 3
            Width = 146
            Height = 95
            Caption = 'Jogar centavos para ...'
            DataField = 'CFVECARREDPARCELA'
            DataSource = DSSQLConfigVenda
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '1'#186' parcela'
              #218'ltima parcela'
              'N'#227'o arredondar')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'P'
              'U'
              'N')
          end
          object GroupBox10: TGroupBox
            Left = 1
            Top = 99
            Width = 281
            Height = 139
            Caption = 'Encargos sobre Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label14: TLabel
              Left = 22
              Top = 18
              Width = 94
              Height = 13
              Caption = 'Cofins(Nao Usar)'
              FocusControl = DBEdit9
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 21
              Top = 57
              Width = 92
              Height = 13
              Caption = 'Outros Encargos'
              FocusControl = DBEdit10
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 144
              Top = 18
              Width = 76
              Height = 13
              Caption = 'Pis(Nao Usar)'
              FocusControl = DBEdit11
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 144
              Top = 57
              Width = 84
              Height = 13
              Caption = 'Al'#237'quota ISSQN'
              FocusControl = DBEdit3
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 21
              Top = 94
              Width = 112
              Height = 13
              Caption = 'Al'#237'quota ICMS Frete'
              FocusControl = DBEdit4
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 141
              Top = 94
              Width = 123
              Height = 13
              Caption = 'N.Casas Dec.Vlr.Venda'
              FocusControl = DBEdit8
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit9: TDBEdit
              Left = 19
              Top = 32
              Width = 118
              Height = 21
              TabStop = False
              DataField = 'CFVEN2PERCCOFINS'
              DataSource = DSSQLConfigVenda
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit10: TDBEdit
              Left = 19
              Top = 70
              Width = 117
              Height = 21
              DataField = 'CFVEN2PERCENCARG'
              DataSource = DSSQLConfigVenda
              TabOrder = 1
            end
            object DBEdit11: TDBEdit
              Left = 141
              Top = 32
              Width = 118
              Height = 21
              TabStop = False
              DataField = 'CFVEN2PERCPIS'
              DataSource = DSSQLConfigVenda
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 141
              Top = 70
              Width = 117
              Height = 21
              DataField = 'CFVEN3ALIQISSQN'
              DataSource = DSSQLConfigVenda
              TabOrder = 3
            end
            object DBEdit4: TDBEdit
              Left = 19
              Top = 108
              Width = 115
              Height = 21
              DataField = 'CFVEN3PERCICMFRETE'
              DataSource = DSSQLConfigVenda
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 138
              Top = 108
              Width = 120
              Height = 21
              DataField = 'CFVEINROCASASDEC'
              DataSource = DSSQLConfigVenda
              TabOrder = 5
            end
          end
          object GroupBox5: TGroupBox
            Left = 286
            Top = 99
            Width = 127
            Height = 84
            TabOrder = 3
            object Label5: TLabel
              Left = 5
              Top = 9
              Width = 119
              Height = 45
              AutoSize = False
              Caption = 'Tempo para manter a tela tira-teima vis'#237'vel'
              FocusControl = DBEdit5
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label8: TLabel
              Left = 62
              Top = 53
              Width = 54
              Height = 13
              Caption = 'segundos'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 4
              Top = 49
              Width = 54
              Height = 21
              DataField = 'CFVEITEMPOCONSPROD'
              DataSource = DSSQLConfigVenda
              TabOrder = 0
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 792
      inherited PanelCabecalho: TPanel
        Width = 792
        inherited PanelNavigator: TPanel
          Width = 792
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 792
            inherited BtnFecharTela: TSpeedButton
              Left = 506
            end
            object BotaoGravar: TSpeedButton
              Tag = 3
              Left = 3
              Top = 3
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Action = DataSetPost1
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                C2040000424DC204000000000000420000002800000018000000180000000100
                1000030000008004000000000000000000000000000000000000007C0000E003
                00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
                7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
                9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
                BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
                742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
                BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
                0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
                7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
                EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
                DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
                742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F}
              Margin = 0
              ParentFont = False
              Spacing = 1
              OnClick = BotaoGravarClick
            end
          end
        end
      end
    end
  end
  object DSSQLConfigVenda: TDataSource
    DataSet = SQLConfigVenda
    Left = 254
    Top = 7
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 282
    Top = 7
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 310
    Top = 7
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 226
    Top = 7
    object SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
    end
    object SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
    end
    object SQLConfigVendaCFVECTIPOLIMCRED: TStringField
      FieldName = 'CFVECTIPOLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOLIMCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECARREDPARCELA: TStringField
      FieldName = 'CFVECARREDPARCELA'
      Origin = 'DB.CONFIGVENDA.CFVECARREDPARCELA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTIPOIMPPED: TStringField
      FieldName = 'CFVECTIPOIMPPED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOIMPPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECDADOSCHQPDV: TStringField
      FieldName = 'CFVECDADOSCHQPDV'
      Origin = 'DB.CONFIGVENDA.CFVECDADOSCHQPDV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECUSADEBCREDCLI: TStringField
      FieldName = 'CFVECUSADEBCREDCLI'
      Origin = 'DB.CONFIGVENDA.CFVECUSADEBCREDCLI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCGVECTESTAITENSNF: TStringField
      FieldName = 'CGVECTESTAITENSNF'
      Origin = 'DB.CONFIGVENDA.CGVECTESTAITENSNF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3ALIQISSQN: TFloatField
      FieldName = 'CFVEN3ALIQISSQN'
      Origin = 'DB.CONFIGVENDA.CFVEN3ALIQISSQN'
    end
    object SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField
      FieldName = 'CFVECIMPLEGPEDVENF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPLEGPEDVENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField
      FieldName = 'CFVEN3PERCICMFRETE'
      Origin = 'DB.CONFIGVENDA.CFVEN3PERCICMFRETE'
    end
    object SQLConfigVendaCFVEA255OBSPADNF: TStringField
      FieldName = 'CFVEA255OBSPADNF'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADNF'
      FixedChar = True
      Size = 255
    end
    object SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField
      FieldName = 'CFVEITEMPOCONSPROD'
      Origin = 'DB.CONFIGVENDA.CFVEITEMPOCONSPROD'
    end
    object SQLConfigVendaCFVECQUITARPARCHQ: TStringField
      FieldName = 'CFVECQUITARPARCHQ'
      Origin = 'DB.CONFIGVENDA.CFVECQUITARPARCHQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA255OBSPADRPED: TStringField
      FieldName = 'CFVEA255OBSPADRPED'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADRPED'
      Size = 255
    end
    object SQLConfigVendaOPESICODCUPOM: TIntegerField
      FieldName = 'OPESICODCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCUPOM'
    end
    object SQLConfigVendaOPESICODCANCCUPOM: TIntegerField
      FieldName = 'OPESICODCANCCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCCUPOM'
    end
    object SQLConfigVendaOPESICODNF: TIntegerField
      FieldName = 'OPESICODNF'
      Origin = 'DB.CONFIGVENDA.OPESICODNF'
    end
    object SQLConfigVendaOPESICODCANCNF: TIntegerField
      FieldName = 'OPESICODCANCNF'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCNF'
    end
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODRETORNO: TIntegerField
      FieldName = 'OPESICODRETORNO'
      Origin = 'DB.CONFIGVENDA.OPESICODRETORNO'
    end
    object SQLConfigVendaOPESICODCANCTROCA: TIntegerField
      FieldName = 'OPESICODCANCTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCTROCA'
    end
    object SQLConfigVendaOPESICODTROCA: TIntegerField
      FieldName = 'OPESICODTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODTROCA'
    end
    object SQLConfigVendaCFVECINFDADOVENDA: TStringField
      FieldName = 'CFVECINFDADOVENDA'
      Origin = 'DB.CONFIGVENDA.CFVECINFDADOVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField
      FieldName = 'CFVECPARC0ENTRBAIX'
      Origin = 'DB.CONFIGVENDA.CFVECPARC0ENTRBAIX'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA250MSGBLOQ: TStringField
      FieldName = 'CFVEA250MSGBLOQ'
      Origin = 'DB.CONFIGVENDA.CFVEA250MSGBLOQ'
      FixedChar = True
      Size = 250
    end
    object SQLConfigVendaTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CONFIGVENDA.TPRCICOD'
    end
    object SQLConfigVendaCFVECFAZVENDCONSIG: TStringField
      FieldName = 'CFVECFAZVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.CFVECFAZVENDCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODDEVOL: TIntegerField
      FieldName = 'OPESICODDEVOL'
      Origin = 'DB.CONFIGVENDA.OPESICODDEVOL'
    end
    object SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField
      FieldName = 'MTBLICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.MTBLICODVENDCONSIG'
    end
    object SQLConfigVendaCFVECIMPPREVDCOD: TStringField
      FieldName = 'CFVECIMPPREVDCOD'
      Origin = 'DB.CONFIGVENDA.CFVECIMPPREVDCOD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFINVENDADPREVD: TStringField
      FieldName = 'CFVECFINVENDADPREVD'
      Origin = 'DB.CONFIGVENDA.CFVECFINVENDADPREVD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField
      FieldName = 'CFVECFINDPRODPORDESCR'
      Origin = 'DB.CONFIGVENDA.CFVECFINDPRODPORDESCR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField
      DisplayLabel = 'Solicita Pre'#231'o de Produto Automaticamente'
      FieldName = 'CFVECPEDEVLRPRODUTO'
      Origin = 'DB.CONFIGVENDA.CFVECPEDEVLRPRODUTO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTESTALIMTCRED: TStringField
      FieldName = 'CFVECTESTALIMTCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTESTALIMTCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField
      FieldName = 'CFVECSUBDEBNOLIMITE'
      Origin = 'DB.CONFIGVENDA.CFVECSUBDEBNOLIMITE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEINROCASASDEC: TIntegerField
      DisplayLabel = 'Nro. Casas Decimais'
      FieldName = 'CFVEINROCASASDEC'
      Origin = 'DB.CONFIGVENDA.CFVEINROCASASDEC'
    end
    object SQLConfigVendaCFVEN2PERCCOFINS: TFloatField
      DisplayLabel = 'Cofins'
      FieldName = 'CFVEN2PERCCOFINS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCCOFINS'
      DisplayFormat = '###0.00%'
    end
    object SQLConfigVendaCFVEN2PERCENCARG: TFloatField
      DisplayLabel = 'Outros'
      FieldName = 'CFVEN2PERCENCARG'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCENCARG'
      DisplayFormat = '###0.00%'
    end
    object SQLConfigVendaCFVEN2PERCPIS: TFloatField
      DisplayLabel = 'Pis'
      FieldName = 'CFVEN2PERCPIS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCPIS'
      DisplayFormat = '###0.00%'
    end
    object SQLConfigVendaCFVECQUITAPARCONV: TStringField
      FieldName = 'CFVECQUITAPARCONV'
      Origin = 'DB.CONFIGVENDA.CFVECQUITAPARCONV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFARREDVLRVEND: TStringField
      FieldName = 'CFVECFARREDVLRVEND'
      Origin = 'DB.CONFIGVENDA.CFVECFARREDVLRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECUSALIBERCRED: TStringField
      FieldName = 'CFVECUSALIBERCRED'
      Origin = 'DB.CONFIGVENDA.CFVECUSALIBERCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField
      FieldName = 'CFVECSOLSENHAALTVLR'
      Origin = 'DB.CONFIGVENDA.CFVECSOLSENHAALTVLR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField
      FieldName = 'CFVECCONTPEDVDAUSU'
      Origin = 'DB.CONFIGVENDA.CFVECCONTPEDVDAUSU'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECINFPRODSUBTRI: TStringField
      FieldName = 'CFVECINFPRODSUBTRI'
      Origin = 'DB.CONFIGVENDA.CFVECINFPRODSUBTRI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECQUITAPARCRT: TStringField
      FieldName = 'CFVECQUITAPARCRT'
      Origin = 'DB.CONFIGVENDA.CFVECQUITAPARCRT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField
      FieldName = 'CFVECINFVLRDEVCVEN'
      Origin = 'DB.CONFIGVENDA.CFVECINFVLRDEVCVEN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA20ORDIMPVEND: TStringField
      FieldName = 'CFVEA20ORDIMPVEND'
      Origin = 'DB.CONFIGVENDA.CFVEA20ORDIMPVEND'
      FixedChar = True
    end
    object SQLConfigVendaVALOR_LIMITE_PAGTO: TFloatField
      FieldName = 'VALOR_LIMITE_PAGTO'
      Origin = 'DB.CONFIGVENDA.VALOR_LIMITE_PAGTO'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  object ActionList1: TActionList
    Left = 338
    Top = 7
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Gravar Configura'#231#245'es(F9)'
      ImageIndex = 7
      ShortCut = 120
      DataSource = DSSQLConfigVenda
    end
  end
  object SQLTabelaPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECO')
    Macros = <>
    Left = 367
    Top = 7
  end
  object DSSQLTabelaPreco: TDataSource
    DataSet = SQLTabelaPreco
    Left = 395
    Top = 7
  end
  object SQLMotivoBloqueio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MOTIVOBLOQUEIO'
      'order by MTBLA60DESCR')
    Macros = <>
    Left = 425
    Top = 7
  end
  object DSSQLMotivoBloqueio: TDataSource
    DataSet = SQLMotivoBloqueio
    Left = 453
    Top = 7
  end
end
