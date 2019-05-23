inherited FormCadastroPrevenda: TFormCadastroPrevenda
  Caption = 'Prevendas Geradas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
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
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 11
              Top = 3
              Width = 50
              Height = 13
              Caption = 'Terminal'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 132
              Top = 3
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 435
              Top = 2
              Width = 62
              Height = 13
              Caption = 'Total Itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 525
              Top = 2
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 70
              Top = 3
              Width = 52
              Height = 13
              Caption = 'Cd.Venda'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 16
              Width = 57
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'TERMICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 128
              Top = 16
              Width = 301
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'TERMICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit3: TEvDBNumEdit
              Left = 432
              Top = 16
              Width = 87
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PRVDN2TOTITENS'
              DataSource = DSTemplate
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C00D00FFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0874BFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0000BFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C00203FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C02929}
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 68
              Top = 16
              Width = 57
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'PRVDICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 3
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 522
              Top = 15
              Width = 114
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDVDDHVENDA'
              DataSource = DSTemplate
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C00D00FFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0874BFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0000BFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C00203FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C02929}
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PREVENDA Where (%MFiltro)')
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Cd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
    end
    object SQLTemplatePRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object SQLTemplateCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.PREVENDA.CONVICOD'
    end
    object SQLTemplatePRVDN2TOTITENS: TBCDField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePRVDN2DESC: TBCDField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePRVDN2ACRESC: TBCDField
      FieldName = 'PRVDN2ACRESC'
      Origin = 'DB.PREVENDA.PRVDN2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePRVDN2TOTITENSRET: TBCDField
      DisplayLabel = 'Vlr.Tot.Itens'
      FieldName = 'PRVDN2TOTITENSRET'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENSRET'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePRVDCTIPOPADRAO: TStringField
      FieldName = 'PRVDCTIPOPADRAO'
      Origin = 'DB.PREVENDA.PRVDCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePRVDN2CONVTAXA: TBCDField
      FieldName = 'PRVDN2CONVTAXA'
      Origin = 'DB.PREVENDA.PRVDN2CONVTAXA'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePRVDINROORDCOMPRA: TIntegerField
      FieldName = 'PRVDINROORDCOMPRA'
      Origin = 'DB.PREVENDA.PRVDINROORDCOMPRA'
    end
    object SQLTemplatePRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Origin = 'DB.PREVENDA.PRVDCIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Origin = 'DB.PREVENDA.PRVDCMARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLIENTENOME: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PREVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIENTECNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.PREVENDA.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLTemplateCLIENTEENDE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.PREVENDA.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIENTECIDA: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.PREVENDA.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCLIENTEOBS: TStringField
      FieldName = 'CLIENTEOBS'
      Origin = 'DB.PREVENDA.CLIENTEOBS'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePDVDDHVENDA: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'PDVDDHVENDA'
      Origin = 'DB.PREVENDA.PDVDDHVENDA'
      DisplayFormat = 'dd/mm/yy hh:mm:nn'
    end
    object SQLTemplateCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.PREVENDA.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePDVCPRECONCLU: TStringField
      DisplayLabel = 'Status (SN)'
      FieldName = 'PDVCPRECONCLU'
      Origin = 'DB.PREVENDA.PDVCPRECONCLU'
      FixedChar = True
      Size = 1
    end
  end
end
