inherited FormTelaExportacaoProsoft: TFormTelaExportacaoProsoft
  Left = 329
  Top = 183
  Width = 784
  Height = 488
  Caption = 'Exporta'#231#227'o Prosoft'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 768
    Height = 450
    inherited PanelCentral: TPanel
      Width = 764
      Height = 366
      inherited PanelBarra: TPanel
        Width = 4
        Height = 366
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 69
        Width = 697
        Height = 40
        Caption = 'Dados '#224' Exportar'
        TabOrder = 1
        object CkProdutos: TCheckBox
          Left = 5
          Top = 16
          Width = 127
          Height = 17
          Caption = 'Cadastro de Produtos'
          TabOrder = 0
          OnExit = CkProdutosExit
        end
        object ckProdResumido: TCheckBox
          Left = 138
          Top = 16
          Width = 271
          Height = 17
          Caption = 'Produtos Resumido apenas Pis/Cofins/IPI/CST Icms'
          TabOrder = 1
          OnExit = ckProdResumidoExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 11
        Width = 378
        Height = 49
        Caption = ' Informe o caminho do(s) arquivo(s) a ser gerado(s) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object EditDiretorio: TDirectoryEdit
          Left = 6
          Top = 19
          Width = 362
          Height = 21
          ButtonHint = 'Selecione o Diret'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = 'C:\Unit\Gestao\SPED'
        end
      end
      object GroupBox5: TGroupBox
        Left = 10
        Top = 122
        Width = 743
        Height = 239
        Caption = '<  Log de Erros de Exporta'#231#227'o  >'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object MemoErro: TMemo
          Left = 2
          Top = 15
          Width = 739
          Height = 222
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Progress: TProgressBar
        Left = 402
        Top = 29
        Width = 350
        Height = 21
        TabOrder = 4
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 764
      inherited PanelCabecalho: TPanel
        Width = 764
        inherited PanelNavigator: TPanel
          Width = 764
          object LBPROGRESS: TLabel [0]
            Left = 400
            Top = 8
            Width = 3
            Height = 13
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 764
            object BTExecutar: TSpeedButton
              Left = 2
              Top = 2
              Width = 95
              Height = 27
              Caption = '&Exportar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000013000000130000000100
                040000000000E4000000CE0E0000C40E00001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777000007777700000000000007000007777778888888888807000007777
                7F77777777778070000077777F77777777778070000077777F79977777778070
                000077777FFFFFFFFFFF70700000777777777777777777700000777777777777
                7707777000007777777777777000777000007000000007770000077000007FFF
                FFFF07777707777000007F44444F07777707777000007FFFFFFF077778077770
                00007F44444F07000007777000007FFFFFFF07000087777000007F444F887777
                7777777000007FFFFF877777777777700000777777777777777777700000}
              ParentFont = False
              OnClick = BTExecutarClick
            end
          end
        end
      end
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select P.*, N.NCMA30CODIGO From PRODUTO P '
      'left join NCM N ON N.NCMICOD = P.NCMICOD '
      'where'
      '  PRODCATIVO = '#39'S'#39' '
      'order by PRODICOD ASC')
    Macros = <>
    Left = 217
    Top = 8
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA255DESCRTEC: TStringField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      FixedChar = True
      Size = 255
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoPRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutoMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLProdutoPRODN3PESOBRUTO: TBCDField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PESOLIQ: TBCDField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3CAPACEMBAL: TBCDField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
    end
    object SQLProdutoPRODDULTALTER: TDateTimeField
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.PRODUTO.PRODDULTALTER'
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTOMED: TBCDField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCIPI: TBCDField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCMARGLUCR: TBCDField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.PRODUTO.PRODCGERACOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODN2COMISVISTA: TBCDField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.PRODUTO.PRODN2COMISVISTA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2COMISPRAZO: TBCDField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.PRODUTO.PRODN2COMISPRAZO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDIMOBOLIZ: TDateTimeField
      FieldName = 'PRODDIMOBOLIZ'
      Origin = 'DB.PRODUTO.PRODDIMOBOLIZ'
    end
    object SQLProdutoPRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.PRODUTO.PRODICODPAI'
    end
    object SQLProdutoPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.PRODUTO.PRODCTIPOBAIXA'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoPRODN3QTDEBAIXA: TBCDField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.PRODUTO.PRODN3QTDEBAIXA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.PRODUTO.PRODIORIGEM'
    end
    object SQLProdutoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
    object SQLProdutoPRODDULTATUALIZ: TDateTimeField
      FieldName = 'PRODDULTATUALIZ'
      Origin = 'DB.PRODUTO.PRODDULTATUALIZ'
    end
    object SQLProdutoPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.PRODUTO.PRODISITTRIB'
    end
    object SQLProdutoPRODITIPOPRODBALAN: TStringField
      FieldName = 'PRODITIPOPRODBALAN'
      Origin = 'DB.PRODUTO.PRODITIPOPRODBALAN'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODICODETIQBAL: TIntegerField
      FieldName = 'PRODICODETIQBAL'
      Origin = 'DB.PRODUTO.PRODICODETIQBAL'
    end
    object SQLProdutoPRODIDIASVALIDADE: TIntegerField
      FieldName = 'PRODIDIASVALIDADE'
      Origin = 'DB.PRODUTO.PRODIDIASVALIDADE'
    end
    object SQLProdutoPRODN3VLRCOMPRAMED: TBCDField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRAMED'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARCUSTO: TBCDField
      FieldName = 'PRODN3DOLARCUSTO'
      Origin = 'DB.PRODUTO.PRODN3DOLARCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARCOMPRA: TBCDField
      FieldName = 'PRODN3DOLARCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3DOLARCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DOLARVENDA: TBCDField
      FieldName = 'PRODN3DOLARVENDA'
      Origin = 'DB.PRODUTO.PRODN3DOLARVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutoPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCTEMNROSERIE: TStringField
      FieldName = 'PRODCTEMNROSERIE'
      Origin = 'DB.PRODUTO.PRODCTEMNROSERIE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA03GARANTIA: TStringField
      FieldName = 'PRODA03GARANTIA'
      Origin = 'DB.PRODUTO.PRODA03GARANTIA'
      FixedChar = True
      Size = 3
    end
    object SQLProdutoPRODA254COMPQUIMICA: TStringField
      FieldName = 'PRODA254COMPQUIMICA'
      Origin = 'DB.PRODUTO.PRODA254COMPQUIMICA'
      FixedChar = True
      Size = 254
    end
    object SQLProdutoPRODCTIPO: TStringField
      FieldName = 'PRODCTIPO'
      Origin = 'DB.PRODUTO.PRODCTIPO'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoPRODN2PERCFRETE: TBCDField
      FieldName = 'PRODN2PERCFRETE'
      Origin = 'DB.PRODUTO.PRODN2PERCFRETE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2PERDA: TBCDField
      FieldName = 'PRODN2PERDA'
      Origin = 'DB.PRODUTO.PRODN2PERDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2PIS: TBCDField
      FieldName = 'PRODN2PIS'
      Origin = 'DB.PRODUTO.PRODN2PIS'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODN3ALTURA: TBCDField
      FieldName = 'PRODN3ALTURA'
      Origin = 'DB.PRODUTO.PRODN3ALTURA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3COMPRIMENTO: TBCDField
      FieldName = 'PRODN3COMPRIMENTO'
      Origin = 'DB.PRODUTO.PRODN3COMPRIMENTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3DIMENTOTAL: TBCDField
      FieldName = 'PRODN3DIMENTOTAL'
      Origin = 'DB.PRODUTO.PRODN3DIMENTOTAL'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3LARGURA: TBCDField
      FieldName = 'PRODN3LARGURA'
      Origin = 'DB.PRODUTO.PRODN3LARGURA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODA30INF01ETQBARRAS: TStringField
      FieldName = 'PRODA30INF01ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF01ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30INF02ETQBARRAS: TStringField
      FieldName = 'PRODA30INF02ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF02ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.PRODUTO.COLEICOD'
    end
    object SQLProdutoPRODN2PERCDESP: TBCDField
      FieldName = 'PRODN2PERCDESP'
      Origin = 'DB.PRODUTO.PRODN2PERCDESP'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODN2PERCSUBST: TBCDField
      FieldName = 'PRODN2PERCSUBST'
      Origin = 'DB.PRODUTO.PRODN2PERCSUBST'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODN3VLRTABFOR: TBCDField
      FieldName = 'PRODN3VLRTABFOR'
      Origin = 'DB.PRODUTO.PRODN3VLRTABFOR'
      Precision = 15
      Size = 3
    end
    object SQLProdutoDECRICOD: TIntegerField
      FieldName = 'DECRICOD'
      Origin = 'DB.PRODUTO.DECRICOD'
    end
    object SQLProdutoPRODN3PERCMARGLUC2: TBCDField
      FieldName = 'PRODN3PERCMARGLUC2'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUC2'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2PERCDIFICM: TBCDField
      FieldName = 'PRODN2PERCDIFICM'
      Origin = 'DB.PRODUTO.PRODN2PERCDIFICM'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODN3PERCMGLVFIXA: TBCDField
      FieldName = 'PRODN3PERCMGLVFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLVFIXA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCMGLAFIXA: TBCDField
      FieldName = 'PRODN3PERCMGLAFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLAFIXA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODCPERMITETROCA: TStringField
      FieldName = 'PRODCPERMITETROCA'
      Origin = 'DB.PRODUTO.PRODCPERMITETROCA'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODDULTCOMPRA'
    end
    object SQLProdutoPRODDULTVENDA: TDateTimeField
      FieldName = 'PRODDULTVENDA'
      Origin = 'DB.PRODUTO.PRODDULTVENDA'
    end
    object SQLProdutoPRODIPRINCIPAL: TIntegerField
      FieldName = 'PRODIPRINCIPAL'
      Origin = 'DB.PRODUTO.PRODIPRINCIPAL'
    end
    object SQLProdutoPRODN3QTDULTCOMPRA: TBCDField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3QTDULTCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
      Origin = 'DB.PRODUTO.PRODDPREVCOMPRA'
    end
    object SQLProdutoPRODCCOFINS: TStringField
      FieldName = 'PRODCCOFINS'
      Origin = 'DB.PRODUTO.PRODCCOFINS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCIMPRECEITA: TStringField
      FieldName = 'PRODCIMPRECEITA'
      Origin = 'DB.PRODUTO.PRODCIMPRECEITA'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA30CULTURA: TStringField
      FieldName = 'PRODA30CULTURA'
      Origin = 'DB.PRODUTO.PRODA30CULTURA'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30DIAGNOST: TStringField
      FieldName = 'PRODA30DIAGNOST'
      Origin = 'DB.PRODUTO.PRODA30DIAGNOST'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30PRINCATV: TStringField
      FieldName = 'PRODA30PRINCATV'
      Origin = 'DB.PRODUTO.PRODA30PRINCATV'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA10MEDIDA: TStringField
      FieldName = 'PRODA10MEDIDA'
      Origin = 'DB.PRODUTO.PRODA10MEDIDA'
      FixedChar = True
      Size = 10
    end
    object SQLProdutoPRODA30EPOCAPLIC: TStringField
      FieldName = 'PRODA30EPOCAPLIC'
      Origin = 'DB.PRODUTO.PRODA30EPOCAPLIC'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30EQUIPAMEN: TStringField
      FieldName = 'PRODA30EQUIPAMEN'
      Origin = 'DB.PRODUTO.PRODA30EQUIPAMEN'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30FITOTOXID: TStringField
      FieldName = 'PRODA30FITOTOXID'
      Origin = 'DB.PRODUTO.PRODA30FITOTOXID'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30CARENCIA: TStringField
      FieldName = 'PRODA30CARENCIA'
      Origin = 'DB.PRODUTO.PRODA30CARENCIA'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA30TOXIDADE: TStringField
      FieldName = 'PRODA30TOXIDADE'
      Origin = 'DB.PRODUTO.PRODA30TOXIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODN3MULTIPLIC: TBCDField
      FieldName = 'PRODN3MULTIPLIC'
      Origin = 'DB.PRODUTO.PRODN3MULTIPLIC'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2DOSAGEM: TBCDField
      FieldName = 'PRODN2DOSAGEM'
      Origin = 'DB.PRODUTO.PRODN2DOSAGEM'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODTEXTENDIDO: TStringField
      FieldName = 'PRODTEXTENDIDO'
      Origin = 'DB.PRODUTO.PRODTEXTENDIDO'
      Size = 254
    end
    object SQLProdutoPRODTOBSCOMPLEM: TStringField
      FieldName = 'PRODTOBSCOMPLEM'
      Origin = 'DB.PRODUTO.PRODTOBSCOMPLEM'
      Size = 254
    end
    object SQLProdutoPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODCIMPETIQCDBAR: TStringField
      FieldName = 'PRODCIMPETIQCDBAR'
      Origin = 'DB.PRODUTO.PRODCIMPETIQCDBAR'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA254ORIENTACAO: TStringField
      FieldName = 'PRODA254ORIENTACAO'
      Origin = 'DB.PRODUTO.PRODA254ORIENTACAO'
      Size = 254
    end
    object SQLProdutoPRODN3QTDVOLUME: TBCDField
      FieldName = 'PRODN3QTDVOLUME'
      Origin = 'DB.PRODUTO.PRODN3QTDVOLUME'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODCVDESTNEG: TStringField
      FieldName = 'PRODCVDESTNEG'
      Origin = 'DB.PRODUTO.PRODCVDESTNEG'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA2CSTCOFINS: TStringField
      FieldName = 'PRODA2CSTCOFINS'
      Origin = 'DB.PRODUTO.PRODA2CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODA2CSTIPI: TStringField
      FieldName = 'PRODA2CSTIPI'
      Origin = 'DB.PRODUTO.PRODA2CSTIPI'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODA2CSTPIS: TStringField
      FieldName = 'PRODA2CSTPIS'
      Origin = 'DB.PRODUTO.PRODA2CSTPIS'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODN2ALIQCOFINS: TBCDField
      FieldName = 'PRODN2ALIQCOFINS'
      Origin = 'DB.PRODUTO.PRODN2ALIQCOFINS'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODN2ALIQPIS: TBCDField
      FieldName = 'PRODN2ALIQPIS'
      Origin = 'DB.PRODUTO.PRODN2ALIQPIS'
      Precision = 15
      Size = 2
    end
    object SQLProdutoPRODCBLOQVPRAZO: TStringField
      FieldName = 'PRODCBLOQVPRAZO'
      Origin = 'DB.PRODUTO.PRODCBLOQVPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoNCMICOD: TIntegerField
      FieldName = 'NCMICOD'
      Origin = 'DB.PRODUTO.NCMICOD'
    end
    object SQLProdutoPRODN2DESCMAX: TBCDField
      FieldName = 'PRODN2DESCMAX'
      Origin = 'DB.PRODUTO.PRODN2DESCMAX'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODA1MODBC: TStringField
      FieldName = 'PRODA1MODBC'
      Origin = 'DB.PRODUTO.PRODA1MODBC'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA1MODBCST: TStringField
      FieldName = 'PRODA1MODBCST'
      Origin = 'DB.PRODUTO.PRODA1MODBCST'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA1TIPO: TStringField
      FieldName = 'PRODA1TIPO'
      Origin = 'DB.PRODUTO.PRODA1TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA20C0DIF: TStringField
      FieldName = 'PRODA20C0DIF'
      Origin = 'DB.PRODUTO.PRODA20C0DIF'
    end
    object SQLProdutoPRODA9CODANP: TStringField
      FieldName = 'PRODA9CODANP'
      Origin = 'DB.PRODUTO.PRODA9CODANP'
      FixedChar = True
      Size = 9
    end
    object SQLProdutoPRODN4ALIQCIDE: TBCDField
      FieldName = 'PRODN4ALIQCIDE'
      Origin = 'DB.PRODUTO.PRODN4ALIQCIDE'
      Precision = 15
    end
    object SQLProdutoPRODA20BARRAUNIDADE: TStringField
      FieldName = 'PRODA20BARRAUNIDADE'
      Origin = 'DB.PRODUTO.PRODA20BARRAUNIDADE'
    end
    object SQLProdutoPRODA2TIPOITEM: TStringField
      FieldName = 'PRODA2TIPOITEM'
      Origin = 'DB.PRODUTO.PRODA2TIPOITEM'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODA30COZINHA: TStringField
      FieldName = 'PRODA30COZINHA'
      Origin = 'DB.PRODUTO.PRODA30COZINHA'
      Size = 30
    end
    object SQLProdutoPRODA3CSTCOFINSENTRADA: TStringField
      FieldName = 'PRODA3CSTCOFINSENTRADA'
      Origin = 'DB.PRODUTO.PRODA3CSTCOFINSENTRADA'
      FixedChar = True
      Size = 3
    end
    object SQLProdutoPRODA3CSTIPIENTRADA: TStringField
      FieldName = 'PRODA3CSTIPIENTRADA'
      Origin = 'DB.PRODUTO.PRODA3CSTIPIENTRADA'
      FixedChar = True
      Size = 3
    end
    object SQLProdutoPRODA3CSTPISENTRADA: TStringField
      FieldName = 'PRODA3CSTPISENTRADA'
      Origin = 'DB.PRODUTO.PRODA3CSTPISENTRADA'
      FixedChar = True
      Size = 3
    end
    object SQLProdutoPRODCIMPCOZINHA: TStringField
      FieldName = 'PRODCIMPCOZINHA'
      Origin = 'DB.PRODUTO.PRODCIMPCOZINHA'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCIMPVALE: TStringField
      FieldName = 'PRODCIMPVALE'
      Origin = 'DB.PRODUTO.PRODCIMPVALE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODN2PERCIPIENTRADA: TBCDField
      FieldName = 'PRODN2PERCIPIENTRADA'
      Origin = 'DB.PRODUTO.PRODN2PERCIPIENTRADA'
      Precision = 15
      Size = 2
    end
    object SQLProdutoNCMA30CODIGO: TStringField
      FieldName = 'NCMA30CODIGO'
      Origin = 'DB.NCM.NCMA30CODIGO'
      Size = 30
    end
  end
  object SQLPesquisa: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 283
    Top = 8
  end
end
