inherited FormCadastroECFAliquota: TFormCadastroECFAliquota
  Left = 283
  Top = 89
  Caption = 'Cadastro Al'#237'quotas ECF '
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
                    FieldName = 'ECALICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSCalcField'
                    Width = 292
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ECALA5TOTALIECF'
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
              object Label2: TLabel
                Left = 8
                Top = 3
                Width = 53
                Height = 13
                Caption = 'C'#243'd.ICMS'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 522
                Top = 4
                Width = 86
                Height = 13
                Caption = 'Totalizador ECF'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaICMS: TSpeedButton
                Left = 106
                Top = 16
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo Cliente'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                OnClick = RetornaICMSClick
              end
              object Label4: TLabel
                Left = 8
                Top = 43
                Width = 153
                Height = 13
                Caption = '*** Dicas Importantes ***'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 5
                Top = 16
                Width = 100
                Height = 21
                DataField = 'ICMSICOD'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit2KeyDown
              end
              object DBEdit3: TDBEdit
                Left = 518
                Top = 17
                Width = 100
                Height = 21
                DataField = 'ECALA5TOTALIECF'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 129
                Top = 16
                Width = 364
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                Color = 16249066
                DataField = 'ICMSCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object Memo1: TMemo
                Left = 4
                Top = 57
                Width = 645
                Height = 279
                Lines.Strings = (
                  '*** IMPRESSORAS DARUMA FRAMEWORK ***'
                  
                    'ALIQUOTAS DE ICMS, COLOCA-SE T1200,  T1700, ... => 12%, 17% E AS' +
                    'SIM SUCESSIVAMENTE.'
                  'SUBST TRIBUT = FF   -   ISENTO = II '
                  'S0200 PARA ISSQN DE 2,00%'
                  
                    '****************************************************************' +
                    '*****************************'
                  '*** IMPRESSORAS DARUMA FS 345 OU IMPRESSORAS EPSON TERMICAS ***'
                  
                    'ALIQUOTAS DE ICMS, COLOCA-SE TA, TB, ... => 17% E ASSIM SUCESSIV' +
                    'AMENTE.'
                  'DARUMA => SUBST TRIBUT = FF, EPSON => ISENTO = F'
                  'DARUMA => ISENTO = II, EPSON => ISENTO = I'
                  
                    '****************************************************************' +
                    '*****************************'
                  '*** IMPRESSORAS ELGIN MDF FIT 1E ***'
                  'ALIQUOTAS DE ICMS, COLOCA-SE 01 => 17% E ASSIM SUCESSIVAMENTE.'
                  'ALIQUOTAS ESPECIAIS, DEVE-SE RESPEITAR OS SEGUINTES CODIGOS'
                  'SUBST TRIBUT SERA FIXO EM 07'
                  'ISENTO SERA FIXO EM 08'
                  'NAO TRIBUT SERA FIXO EM 09'
                  
                    '****************************************************************' +
                    '*****************************'
                  '*** IMPRESSORAS SWEDAS TERMICAS ***'
                  'ALIQUOTAS DE ICMS, COLOCA-SE 01 => 17% E ASSIM SUCESSIVAMENTE.'
                  'ALIQUOTAS ESPECIAIS, DEVE-SE RESPEITAR OS SEGUINTES CODIGOS'
                  'SUBST TRIBUT SERA FIXO EM 07'
                  'ISENTO SERA FIXO EM 08'
                  'NAO TRIBUT SERA FIXO EM 09'
                  
                    '****************************************************************' +
                    '*****************************'
                  '*** IMPRESSORA URANO, MODELO 1EFC ***'
                  'ALIQUOTAS DE ICMS, COLOCA-SE 01 => 17% E ASSIM SUCESSIVAMENTE.'
                  'ALIQUOTAS ESPECIAIS, DEVE-SE RESPEITAR OS SEGUINTES CODIGOS'
                  'SUBST TRIBUT SERA FIXO EM 07'
                  'ISENTO SERA FIXO EM 08'
                  'NAO TRIBUT SERA FIXO EM 09'
                  
                    '****************************************************************' +
                    '*****************************'
                  '')
                TabOrder = 3
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 13
              Top = 4
              Width = 71
              Height = 13
              Caption = 'C'#243'd.Al'#237'quota'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 10
              Top = 17
              Width = 100
              Height = 21
              DataField = 'ECALICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From ECFALIQUOTAICMS '
      'Where '
      '  ECFA13ID = :ECFA13ID and (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ECFA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateECFA13ID: TStringField
      Tag = 1
      DisplayLabel = 'ECF ID'
      FieldName = 'ECFA13ID'
      Origin = 'DB.ECFALIQUOTAICMS.ECFA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateECALICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Al'#237'quota'
      FieldName = 'ECALICOD'
      Origin = 'DB.ECFALIQUOTAICMS.ECALICOD'
      Visible = False
    end
    object SQLTemplateICMSICOD: TIntegerField
      DisplayLabel = 'C'#243'd.ICMS'
      FieldName = 'ICMSICOD'
      Origin = 'DB.ECFALIQUOTAICMS.ICMSICOD'
    end
    object SQLTemplateICMSCalcField: TStringField
      DisplayLabel = 'ICMS'
      FieldKind = fkLookup
      FieldName = 'ICMSCalcField'
      LookupDataSet = SQLICMS
      LookupKeyFields = 'ICMSICOD'
      LookupResultField = 'ICMSA60DESCR'
      KeyFields = 'ICMSICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateECALA5TOTALIECF: TStringField
      DisplayLabel = 'Totalizador ECF'
      DisplayWidth = 6
      FieldName = 'ECALA5TOTALIECF'
      Origin = 'DB.ECFALIQUOTAICMS.ECALA5TOTALIECF'
      FixedChar = True
      Size = 6
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ECFALIQUOTAICMS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ECFALIQUOTAICMS.REGISTRO'
    end
  end
  object SQLICMS: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ICMS')
    Macros = <>
    Left = 34
    Top = 214
  end
end
