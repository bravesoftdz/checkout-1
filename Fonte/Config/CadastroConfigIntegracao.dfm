inherited FormCadastroConfigIntegracao: TFormCadastroConfigIntegracao
  Caption = 'Cadastro de Configura'#231#245'es de Integra'#231#245'es '
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CFGIICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFGIA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFGICTIPOCONEXAO'
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
              object Label4: TLabel
                Left = 2
                Top = -1
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
                FocusControl = DBEditUser
              end
              object Label5: TLabel
                Left = 128
                Top = -1
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object Label6: TLabel
                Left = 2
                Top = 113
                Width = 114
                Height = 13
                Caption = 'Caminho de Importa'#231#227'o'
              end
              object Label7: TLabel
                Left = 2
                Top = 151
                Width = 114
                Height = 13
                Caption = 'Caminho de Exporta'#231#227'o'
              end
              object Label8: TLabel
                Left = 441
                Top = -1
                Width = 78
                Height = 13
                Caption = 'Nome da Dial Up'
                FocusControl = DBEditDial
              end
              object Label9: TLabel
                Left = 2
                Top = 37
                Width = 69
                Height = 13
                Caption = 'Servidor POP3'
              end
              object Label10: TLabel
                Left = 2
                Top = 75
                Width = 69
                Height = 13
                Caption = 'Servidor SMTP'
              end
              object Label11: TLabel
                Left = 232
                Top = -1
                Width = 22
                Height = 13
                Caption = 'Host'
                FocusControl = DBEditHost
              end
              object Label12: TLabel
                Left = 380
                Top = -1
                Width = 26
                Height = 13
                Caption = 'Porta'
                FocusControl = DBEditPorta
              end
              object DBEditUser: TDBEdit
                Tag = 2
                Left = 2
                Top = 15
                Width = 123
                Height = 21
                DataField = 'CFGIA100USUARIO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBMemoDestino: TDBMemo
                Tag = 1
                Left = 2
                Top = 167
                Width = 610
                Height = 21
                DataField = 'CFGITPATHDESTINO'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEditDial: TDBEdit
                Left = 441
                Top = 15
                Width = 172
                Height = 21
                DataField = 'CFGA60DIALNAME'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEditPOP: TDBEdit
                Tag = 1
                Left = 2
                Top = 53
                Width = 610
                Height = 21
                DataField = 'CFGIA100POP3'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEditSMTP: TDBEdit
                Tag = 1
                Left = 2
                Top = 91
                Width = 610
                Height = 21
                DataField = 'CFGIA100SMTP'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEditHost: TDBEdit
                Tag = 1
                Left = 232
                Top = 15
                Width = 146
                Height = 21
                DataField = 'CFGIA100HOST'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBMemoOrigem: TDBMemo
                Tag = 1
                Left = 2
                Top = 129
                Width = 610
                Height = 21
                DataField = 'CFGITPATHORIGEM'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEditPorta: TDBEdit
                Left = 380
                Top = 14
                Width = 59
                Height = 21
                DataField = 'CFGIA5PORTAFTP'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEditSenha: TDBEdit
                Tag = 2
                Left = 127
                Top = 15
                Width = 102
                Height = 21
                DataField = 'CFGIA30SENHA'
                DataSource = DSTemplate
                TabOrder = 1
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 4
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 85
              Top = 4
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 493
              Top = 4
              Width = 81
              Height = 13
              Caption = 'Tipo de Conex'#227'o'
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 18
              Width = 74
              Height = 21
              DataField = 'CFGIICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 83
              Top = 18
              Width = 404
              Height = 21
              DataField = 'CFGIA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboTipoConexao: TRxDBComboBox
              Left = 491
              Top = 18
              Width = 125
              Height = 21
              Style = csDropDownList
              DataField = 'CFGICTIPOCONEXAO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'E-Mail'
                'FTP'
                'LAN')
              TabOrder = 2
              Values.Strings = (
                'E'
                'F'
                'L')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From CONFIGINTEGRACAO Where (%MFiltro)')
    object SQLTemplateCFGIICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFGIICOD'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIICOD'
      Visible = False
    end
    object SQLTemplateCFGIA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFGIA60DESCR'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFGICTIPOCONEXAO: TStringField
      DisplayLabel = 'Tipo de Conex'#227'o'
      FieldName = 'CFGICTIPOCONEXAO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGICTIPOCONEXAO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFGIA100USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CFGIA100USUARIO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100USUARIO'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateCFGIA30SENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'CFGIA30SENHA'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA30SENHA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCFGIA100HOST: TStringField
      DisplayLabel = 'Host'
      FieldName = 'CFGIA100HOST'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100HOST'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateCFGIA100POP3: TStringField
      DisplayLabel = 'POP3'
      FieldName = 'CFGIA100POP3'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100POP3'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateCFGIA100SMTP: TStringField
      DisplayLabel = 'SMTP'
      FieldName = 'CFGIA100SMTP'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100SMTP'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateCFGIIPORTA: TIntegerField
      DisplayLabel = 'N'#250'mero da Porta'
      FieldName = 'CFGIIPORTA'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIIPORTA'
    end
    object SQLTemplateCFGITPATHORIGEM: TMemoField
      DisplayLabel = 'Caminho de Importa'#231#227'o'
      FieldName = 'CFGITPATHORIGEM'
      Origin = 'DB.CONFIGINTEGRACAO.CFGITPATHORIGEM'
      BlobType = ftMemo
      Size = 500
    end
    object SQLTemplateCFGITPATHDESTINO: TMemoField
      DisplayLabel = 'Caminho de Exporta'#231#227'o'
      FieldName = 'CFGITPATHDESTINO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGITPATHDESTINO'
      BlobType = ftMemo
      Size = 500
    end
    object SQLTemplateCFGA60DIALNAME: TStringField
      DisplayLabel = 'Nome da Dial Up'
      FieldName = 'CFGA60DIALNAME'
      Origin = 'DB.CONFIGINTEGRACAO.CFGA60DIALNAME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFGIA5PORTAFTP: TStringField
      DisplayLabel = 'Porta'
      FieldName = 'CFGIA5PORTAFTP'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA5PORTAFTP'
      FixedChar = True
      Size = 5
    end
  end
end
