inherited FormCadastroEtiquetaCodigoBarras: TFormCadastroEtiquetaCodigoBarras
  Left = 326
  Top = 137
  Caption = 'Etiquetas de C'#243'digo de Barras'
  ClientHeight = 534
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 534
    inherited PanelCentral: TPanel
      Height = 460
      inherited PanelBarra: TPanel
        Height = 460
        inherited Button3: TRxSpeedButton
          Tag = 4
          Height = 31
          Caption = '&3 Impressora T'#233'rmica'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 460
        inherited Panel5: TPanel
          Height = 460
          inherited PagePrincipal: TPageControl
            Height = 378
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 305
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CFCBICOD'
                    Width = 41
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA20MODELOIMPRESSORA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA4PORTASERIAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA100PATHEXEIMP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA254TEXTOTERM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFCBA100PATHARQTXT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 0
                Top = 0
                Width = 110
                Height = 13
                Caption = 'Modelo Impressora'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 0
                Top = 40
                Width = 172
                Height = 13
                Caption = 'Caminho Programa Impress'#227'o'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit5: TDBEdit
                Left = 0
                Top = 56
                Width = 621
                Height = 21
                DataField = 'CFCBA100PATHEXEIMP'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit3: TRxDBComboBox
                Left = 0
                Top = 16
                Width = 116
                Height = 21
                Style = csDropDownList
                DataField = 'CFCBA20MODELOIMPRESSORA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Laser/Jato Tinta'
                  'Zebra'
                  'Eltron TPL 2642'
                  'Urano USE-CBC'
                  'Allegro2'
                  'Rabbit 214 BR'
                  'Arquivo Texto')
                TabOrder = 0
                Values.Strings = (
                  'LASERJATO'
                  'ZEBRA_ZPL'
                  'ELTTPL2642'
                  'URAUSECBC'
                  'ALLEGRO2'
                  'RABBIT214'
                  'ARQTEXTO')
              end
              object ArqExecImpr: TFilenameEdit
                Left = 619
                Top = 56
                Width = 21
                Height = 21
                Filter = 'All files (*.exe)|*.exe'
                BorderStyle = bsNone
                NumGlyphs = 1
                TabOrder = 2
                Text = 'ArqExecImpr'
                OnChange = ArqExecImprChange
              end
            end
            object TabSheetImpressorTermica: TTabSheet
              Caption = 'Impressora T'#233'rmica'
              ImageIndex = 2
              object Label4: TLabel
                Left = 8
                Top = 7
                Width = 66
                Height = 13
                Caption = 'Porta Serial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 7
                Top = 46
                Width = 238
                Height = 13
                Caption = 'Texto Configura'#231#227'o Lay-out de Impress'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 139
                Top = 7
                Width = 246
                Height = 13
                Caption = 'Caminho Gera'#231#227'o Arquivo Texto Impress'#227'o'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 85
                Top = 7
                Width = 44
                Height = 13
                Caption = 'Colunas'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 464
                Top = 46
                Width = 126
                Height = 13
                Caption = ' * * * R E G R A S  * * *'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit6: TDBMemo
                Left = 5
                Top = 59
                Width = 399
                Height = 286
                BevelWidth = 0
                DataField = 'CFCBA254TEXTOTERM'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 135
                Top = 20
                Width = 488
                Height = 21
                DataField = 'CFCBA100PATHARQTXT'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TRxDBComboBox
                Left = 5
                Top = 20
                Width = 77
                Height = 21
                Style = csDropDownList
                DataField = 'CFCBA4PORTASERIAL'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'COM5'
                  'COM6'
                  'COM7'
                  'COM8'
                  'ARQ'
                  'LPT1'
                  'LPT2'
                  'USB001'
                  'USB002'
                  'USB003'
                  'USB004'
                  'USB005'
                  'USB006'
                  'USB007'
                  'USB008')
                TabOrder = 0
                Values.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'COM5'
                  'COM6'
                  'COM7'
                  'COM8'
                  'ARQ'
                  'LPT1'
                  'LPT2'
                  'USB001'
                  'USB002'
                  'USB003'
                  'USB004'
                  'USB005'
                  'USB006'
                  'USB007'
                  'USB008')
              end
              object PathArqtxt: TDirectoryEdit
                Left = 624
                Top = 20
                Width = 22
                Height = 21
                BorderStyle = bsNone
                NumGlyphs = 1
                TabOrder = 4
                OnChange = PathArqtxtChange
              end
              object DBEdit8: TDBEdit
                Left = 85
                Top = 20
                Width = 43
                Height = 21
                DataField = 'CFCBINROCOL'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object Memo1: TMemo
                Left = 407
                Top = 59
                Width = 240
                Height = 286
                TabStop = False
                Lines.Strings = (
                  '- DEVE-SE COLOCAR NAS POSI'#199#213'ES'
                  '  ONDE DEVEM SER IMPRESSOS DADOS'
                  '  AS RESPECTIVAS PALAVRAS:'
                  ''
                  'CODREDUZ '
                  'DESC30CHR  - DESCRICAO(30CHR)'
                  'DESCRICAO   - DESCRICAO(15 CHR) '
                  'DESCRAUX    - CONTINUACAO'
                  'CODBAR          '
                  'PRECO'
                  'REFERENCIA'
                  'MARCA'
                  'TAMANHO'
                  'CORES'
                  'QUANTIDADE'
                  'LOTE'
                  'DTULTENTR      - NF DATA RECTO'
                  'NFNUMERO       - NF NRO NOTA'
                  'INFO01ETQBARRAS'
                  'INFO02ETQBARRAS'
                  'ENDBLOCO       - ESTA PALAVRA '
                  '                 SER'#193' USADA PARA'
                  '                 INFORMAR O'
                  '                 TERMINO DO'
                  '                 BLOCO DE CONFIG'
                  '                 DE UMA COLUNA.'
                  'DD/YY          - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 DATA CORRENTE'
                  '                 USANDO ESTA STRING'
                  '                 PARA FORMAT'#193'-LA;'
                  'MM/YY          - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 DATA CORRENTE'
                  '                 USANDO ESTA STRING'
                  '                 PARA FORMAT'#193'-LA;'
                  'DD/MM/YYYY     - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 DATA CORRENTE'
                  '                 USANDO ESTA STRING'
                  '                 PARA FORMAT'#193'-LA;'
                  'CHR(STX)       - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 FUN'#199#195'O CHR(2);'
                  'CHR(27)        - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 FUN'#199#195'O CHR(27);'
                  'CHR(13)        - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 FUN'#199#195'O CHR(13);'
                  '^B             - ONDE FOR'
                  '                 ENCONTRADA ESTA'
                  '                 PALAVRA NO'
                  '                 TEXTO O SISTEMA IRA'
                  '                 SUBSTITUIR PELA'
                  '                 FUN'#199#195'O CHR(02);')
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 5
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 2
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 61
              Top = 2
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 15
              Width = 54
              Height = 21
              DataField = 'CFCBICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 59
              Top = 15
              Width = 528
              Height = 21
              DataField = 'CFCBA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From CONFIGETIQUETACODIGOBARRA Where (%MFiltro)')
    object SQLTemplateCFCBICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFCBICOD'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBICOD'
      Visible = False
    end
    object SQLTemplateCFCBA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFCBA60DESCR'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFCBA20MODELOIMPRESSORA: TStringField
      DisplayLabel = 'Modelo Impressora'
      FieldName = 'CFCBA20MODELOIMPRESSORA'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA20MODELOIMPRESSORA'
      FixedChar = True
    end
    object SQLTemplateCFCBINROCOL: TIntegerField
      DisplayLabel = 'Colunas'
      FieldName = 'CFCBINROCOL'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBINROCOL'
    end
    object SQLTemplateCFCBA100PATHEXEIMP: TStringField
      DisplayLabel = 'Caminho Programa Impress'#227'o'
      FieldName = 'CFCBA100PATHEXEIMP'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateCFCBA100PATHARQTXT: TStringField
      DisplayLabel = 'Caminho Gera'#231#227'o Ar.Texto Impress'#227'o'
      FieldName = 'CFCBA100PATHARQTXT'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA100PATHARQTXT'
      FixedChar = True
      Size = 100
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.REGISTRO'
    end
    object SQLTemplateCFCBA254TEXTOTERM: TMemoField
      FieldName = 'CFCBA254TEXTOTERM'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA254TEXTOTERM'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateCFCBA4PORTASERIAL: TStringField
      DisplayLabel = 'Porta Serial'
      FieldName = 'CFCBA4PORTASERIAL'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA4PORTASERIAL'
      FixedChar = True
      Size = 10
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 144
    Top = 272
  end
end
