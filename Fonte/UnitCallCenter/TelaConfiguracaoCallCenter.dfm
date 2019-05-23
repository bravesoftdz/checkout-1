inherited FormTelaConfiguracaoCallCenter: TFormTelaConfiguracaoCallCenter
  Left = 23
  Top = 30
  Height = 513
  Hint = 'Post'
  Caption = 'Configura'#231#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 486
    inherited PanelCabecalho: TPanel
      inherited PanelTitulo2: TPanel
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelNavigator: TPanel
        object LabelGravar: TSpeedButton
          Tag = 3
          Left = 4
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
        end
      end
    end
    inherited PanelCentral: TPanel
      Height = 415
      inherited PanelBarra: TPanel
        Width = 0
        Height = 415
        inherited BevelEsq: TBevel
          Left = -2
          Height = 415
        end
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 8
        Width = 652
        Height = 97
        Caption = ' Gerar os Seguintes Contatos nas Situa'#231#245'es e Prazos Abaixo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 12
          Top = 23
          Width = 629
          Height = 13
          Caption = 
            'Ap'#243's uma venda, gerar um contato de                             ' +
            '                                                                ' +
            'em                              dias.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 47
          Width = 628
          Height = 13
          Caption = 
            'Ap'#243's uma Ordem de Servi'#231'o, gerar um contato de                  ' +
            '                                                     em         ' +
            '                     dias.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 11
          Top = 71
          Width = 629
          Height = 13
          Caption = 
            'Ao cadastrar um novo cliente, gerar um contato de               ' +
            '                                                      em        ' +
            '                      dias.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 302
          Top = 18
          Width = 202
          Height = 21
          DropDownCount = 8
          DataField = 'TPCTICODVENDA'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSSQLTipoContato
          ParentFont = False
          TabOrder = 0
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 302
          Top = 42
          Width = 202
          Height = 21
          DropDownCount = 8
          DataField = 'TPCTICODOS'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSSQLTipoContato
          ParentFont = False
          TabOrder = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 302
          Top = 65
          Width = 202
          Height = 21
          DropDownCount = 8
          DataField = 'TPCTICODCADCLI'
          DataSource = DSSQLConfigVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSSQLTipoContato
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 531
          Top = 16
          Width = 80
          Height = 21
          DataField = 'TPCTICODVENDADIAS'
          DataSource = DSSQLConfigVenda
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 530
          Top = 41
          Width = 80
          Height = 21
          DataField = 'TPCTICODOSDIAS'
          DataSource = DSSQLConfigVenda
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 530
          Top = 65
          Width = 80
          Height = 21
          DataField = 'TPCTICODCADCLIDIAS'
          DataSource = DSSQLConfigVenda
          TabOrder = 5
        end
      end
    end
  end
  object SQLConfigVenda: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGVENDA')
    UpdateObject = UpdateSQLConfigVenda
    Left = 134
    Top = 7
    object SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
      Precision = 15
      Size = 3
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
    object SQLConfigVendaCFVECVENDAESTNEGAT: TStringField
      FieldName = 'CFVECVENDAESTNEGAT'
      Origin = 'DB.CONFIGVENDA.CFVECVENDAESTNEGAT'
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
    object SQLConfigVendaCFVEN3ALIQISSQN: TBCDField
      FieldName = 'CFVEN3ALIQISSQN'
      Origin = 'DB.CONFIGVENDA.CFVEN3ALIQISSQN'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField
      FieldName = 'CFVECIMPLEGPEDVENF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPLEGPEDVENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3PERCICMFRETE: TBCDField
      FieldName = 'CFVEN3PERCICMFRETE'
      Origin = 'DB.CONFIGVENDA.CFVEN3PERCICMFRETE'
      Precision = 15
      Size = 3
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
    object SQLConfigVendaOPESICODRETORNO: TIntegerField
      FieldName = 'OPESICODRETORNO'
      Origin = 'DB.CONFIGVENDA.OPESICODRETORNO'
    end
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField
      FieldName = 'CFVEIQTDPADRPDV'
      Origin = 'DB.CONFIGVENDA.CFVEIQTDPADRPDV'
    end
    object SQLConfigVendaCFVEICMSFRETECOD: TIntegerField
      FieldName = 'CFVEICMSFRETECOD'
      Origin = 'DB.CONFIGVENDA.CFVEICMSFRETECOD'
    end
    object SQLConfigVendaCFVECMOVESTOQUENF: TStringField
      FieldName = 'CFVECMOVESTOQUENF'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECMOVESTOQUEPED: TStringField
      FieldName = 'CFVECMOVESTOQUEPED'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUEPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCPED: TIntegerField
      FieldName = 'OPESICODCANCPED'
      Origin = 'UNITGESTAO.CONFIGVENDA.OPESICODCANCPED'
    end
    object SQLConfigVendaOPESICODPED: TIntegerField
      FieldName = 'OPESICODPED'
      Origin = 'UNITGESTAO.CONFIGVENDA.OPESICODPED'
    end
    object SQLConfigVendaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'UNITGESTAO.CONFIGVENDA.PORTICOD'
    end
    object SQLConfigVendaTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'UNITGESTAO.CONFIGVENDA.TPDCICOD'
    end
    object SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField
      FieldName = 'CFVECEXCLUIPEDFAT'
      Size = 1
    end
    object SQLConfigVendaCFVECALTPEDIMPORT: TStringField
      FieldName = 'CFVECALTPEDIMPORT'
      Origin = 'DB.CONFIGVENDA.CFVECALTPEDIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECCALCVOLUMENF: TStringField
      FieldName = 'CFVECCALCVOLUMENF'
      Origin = 'DB.CONFIGVENDA.CFVECCALCVOLUMENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEINROITENSNF: TIntegerField
      FieldName = 'CFVEINROITENSNF'
      Origin = 'DB.CONFIGVENDA.CFVEINROITENSNF'
    end
    object SQLConfigVendaCFVECIMPOBSPED: TStringField
      FieldName = 'CFVECIMPOBSPED'
      Origin = 'DB.CONFIGVENDA.CFVECIMPOBSPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECADICIONALNF: TStringField
      FieldName = 'CFVECADICIONALNF'
      Origin = 'DB.CONFIGVENDA.CFVECADICIONALNF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCRET: TIntegerField
      FieldName = 'OPESICODCANCRET'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCRET'
    end
    object SQLConfigVendaOPESICODRET: TIntegerField
      FieldName = 'OPESICODRET'
      Origin = 'DB.CONFIGVENDA.OPESICODRET'
    end
    object SQLConfigVendaCFVECFINNFPED: TStringField
      FieldName = 'CFVECFINNFPED'
      Origin = 'DB.CONFIGVENDA.CFVECFINNFPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaTPCTICODCADCLI: TIntegerField
      FieldName = 'TPCTICODCADCLI'
      Origin = 'DB.CONFIGVENDA.TPCTICODCADCLI'
    end
    object SQLConfigVendaTPCTICODCADCLIDIAS: TIntegerField
      FieldName = 'TPCTICODCADCLIDIAS'
      Origin = 'DB.CONFIGVENDA.TPCTICODCADCLIDIAS'
    end
    object SQLConfigVendaTPCTICODOS: TIntegerField
      FieldName = 'TPCTICODOS'
      Origin = 'DB.CONFIGVENDA.TPCTICODOS'
    end
    object SQLConfigVendaTPCTICODOSDIAS: TIntegerField
      FieldName = 'TPCTICODOSDIAS'
      Origin = 'DB.CONFIGVENDA.TPCTICODOSDIAS'
    end
    object SQLConfigVendaTPCTICODVENDA: TIntegerField
      FieldName = 'TPCTICODVENDA'
      Origin = 'DB.CONFIGVENDA.TPCTICODVENDA'
    end
    object SQLConfigVendaTPCTICODVENDADIAS: TIntegerField
      FieldName = 'TPCTICODVENDADIAS'
      Origin = 'DB.CONFIGVENDA.TPCTICODVENDADIAS'
    end
  end
  object DSSQLConfigVenda: TDataSource
    DataSet = SQLConfigVenda
    Left = 162
    Top = 8
  end
  object UpdateSQLConfigVenda: TUpdateSQL
    ModifySQL.Strings = (
      'update CONFIGVENDA'
      'set'
      '  CFVEN3MAXLIMCRED = :CFVEN3MAXLIMCRED,'
      '  CFVEN2PERCLIMCRED = :CFVEN2PERCLIMCRED,'
      '  CFVECTIPOLIMCRED = :CFVECTIPOLIMCRED,'
      '  CFVECARREDPARCELA = :CFVECARREDPARCELA,'
      '  CFVECVENDAESTNEGAT = :CFVECVENDAESTNEGAT,'
      '  CFVECTIPOIMPPED = :CFVECTIPOIMPPED,'
      '  CFVECDADOSCHQPDV = :CFVECDADOSCHQPDV,'
      '  CFVECUSADEBCREDCLI = :CFVECUSADEBCREDCLI,'
      '  CGVECTESTAITENSNF = :CGVECTESTAITENSNF,'
      '  CFVEN3ALIQISSQN = :CFVEN3ALIQISSQN,'
      '  CFVECIMPLEGPEDVENF = :CFVECIMPLEGPEDVENF,'
      '  CFVEN3PERCICMFRETE = :CFVEN3PERCICMFRETE,'
      '  CFVEA255OBSPADNF = :CFVEA255OBSPADNF,'
      '  CFVEITEMPOCONSPROD = :CFVEITEMPOCONSPROD,'
      '  CFVECQUITARPARCHQ = :CFVECQUITARPARCHQ,'
      '  CFVEA255OBSPADRPED = :CFVEA255OBSPADRPED,'
      '  OPESICODCUPOM = :OPESICODCUPOM,'
      '  OPESICODCANCCUPOM = :OPESICODCANCCUPOM,'
      '  OPESICODNF = :OPESICODNF,'
      '  OPESICODCANCNF = :OPESICODCANCNF,'
      '  OPESICODRETORNO = :OPESICODRETORNO,'
      '  CFVECRENDCONJNOLIM = :CFVECRENDCONJNOLIM,'
      '  OPESICODCANCTROCA = :OPESICODCANCTROCA,'
      '  OPESICODTROCA = :OPESICODTROCA,'
      '  CFVECINFDADOVENDA = :CFVECINFDADOVENDA,'
      '  CFVECPARC0ENTRBAIX = :CFVECPARC0ENTRBAIX,'
      '  CFVEIQTDPADRPDV = :CFVEIQTDPADRPDV'
      'where'
      '  CFVEN3MAXLIMCRED = :OLD_CFVEN3MAXLIMCRED and'
      '  CFVEN2PERCLIMCRED = :OLD_CFVEN2PERCLIMCRED and'
      '  CFVECTIPOLIMCRED = :OLD_CFVECTIPOLIMCRED and'
      '  CFVECARREDPARCELA = :OLD_CFVECARREDPARCELA and'
      '  CFVECVENDAESTNEGAT = :OLD_CFVECVENDAESTNEGAT and'
      '  CFVECTIPOIMPPED = :OLD_CFVECTIPOIMPPED and'
      '  CFVECDADOSCHQPDV = :OLD_CFVECDADOSCHQPDV and'
      '  CFVECUSADEBCREDCLI = :OLD_CFVECUSADEBCREDCLI and'
      '  CGVECTESTAITENSNF = :OLD_CGVECTESTAITENSNF and'
      '  CFVEN3ALIQISSQN = :OLD_CFVEN3ALIQISSQN and'
      '  CFVECIMPLEGPEDVENF = :OLD_CFVECIMPLEGPEDVENF and'
      '  CFVEN3PERCICMFRETE = :OLD_CFVEN3PERCICMFRETE and'
      '  CFVEA255OBSPADNF = :OLD_CFVEA255OBSPADNF and'
      '  CFVEITEMPOCONSPROD = :OLD_CFVEITEMPOCONSPROD and'
      '  CFVECQUITARPARCHQ = :OLD_CFVECQUITARPARCHQ and'
      '  CFVEA255OBSPADRPED = :OLD_CFVEA255OBSPADRPED and'
      '  OPESICODCUPOM = :OLD_OPESICODCUPOM and'
      '  OPESICODCANCCUPOM = :OLD_OPESICODCANCCUPOM and'
      '  OPESICODNF = :OLD_OPESICODNF and'
      '  OPESICODCANCNF = :OLD_OPESICODCANCNF and'
      '  OPESICODRETORNO = :OLD_OPESICODRETORNO and'
      '  CFVECRENDCONJNOLIM = :OLD_CFVECRENDCONJNOLIM and'
      '  OPESICODCANCTROCA = :OLD_OPESICODCANCTROCA and'
      '  OPESICODTROCA = :OLD_OPESICODTROCA and'
      '  CFVECINFDADOVENDA = :OLD_CFVECINFDADOVENDA and'
      '  CFVECPARC0ENTRBAIX = :OLD_CFVECPARC0ENTRBAIX and'
      '  CFVEIQTDPADRPDV = :OLD_CFVEIQTDPADRPDV')
    InsertSQL.Strings = (
      'insert into CONFIGVENDA'
      
        '  (CFVEN3MAXLIMCRED, CFVEN2PERCLIMCRED, CFVECTIPOLIMCRED, CFVECA' +
        'RREDPARCELA, '
      
        '   CFVECVENDAESTNEGAT, CFVECTIPOIMPPED, CFVECDADOSCHQPDV, CFVECU' +
        'SADEBCREDCLI, '
      
        '   CGVECTESTAITENSNF, CFVEN3ALIQISSQN, CFVECIMPLEGPEDVENF, CFVEN' +
        '3PERCICMFRETE, '
      
        '   CFVEA255OBSPADNF, CFVEITEMPOCONSPROD, CFVECQUITARPARCHQ, CFVE' +
        'A255OBSPADRPED, '
      
        '   OPESICODCUPOM, OPESICODCANCCUPOM, OPESICODNF, OPESICODCANCNF,' +
        ' OPESICODRETORNO, '
      
        '   CFVECRENDCONJNOLIM, OPESICODCANCTROCA, OPESICODTROCA, CFVECIN' +
        'FDADOVENDA, '
      '   CFVECPARC0ENTRBAIX, CFVEIQTDPADRPDV)'
      'values'
      
        '  (:CFVEN3MAXLIMCRED, :CFVEN2PERCLIMCRED, :CFVECTIPOLIMCRED, :CF' +
        'VECARREDPARCELA, '
      
        '   :CFVECVENDAESTNEGAT, :CFVECTIPOIMPPED, :CFVECDADOSCHQPDV, :CF' +
        'VECUSADEBCREDCLI, '
      
        '   :CGVECTESTAITENSNF, :CFVEN3ALIQISSQN, :CFVECIMPLEGPEDVENF, :C' +
        'FVEN3PERCICMFRETE, '
      
        '   :CFVEA255OBSPADNF, :CFVEITEMPOCONSPROD, :CFVECQUITARPARCHQ, :' +
        'CFVEA255OBSPADRPED, '
      
        '   :OPESICODCUPOM, :OPESICODCANCCUPOM, :OPESICODNF, :OPESICODCAN' +
        'CNF, :OPESICODRETORNO, '
      
        '   :CFVECRENDCONJNOLIM, :OPESICODCANCTROCA, :OPESICODTROCA, :CFV' +
        'ECINFDADOVENDA, '
      '   :CFVECPARC0ENTRBAIX, :CFVEIQTDPADRPDV)')
    DeleteSQL.Strings = (
      'delete from CONFIGVENDA'
      'where'
      '  CFVEN3MAXLIMCRED = :OLD_CFVEN3MAXLIMCRED and'
      '  CFVEN2PERCLIMCRED = :OLD_CFVEN2PERCLIMCRED and'
      '  CFVECTIPOLIMCRED = :OLD_CFVECTIPOLIMCRED and'
      '  CFVECARREDPARCELA = :OLD_CFVECARREDPARCELA and'
      '  CFVECVENDAESTNEGAT = :OLD_CFVECVENDAESTNEGAT and'
      '  CFVECTIPOIMPPED = :OLD_CFVECTIPOIMPPED and'
      '  CFVECDADOSCHQPDV = :OLD_CFVECDADOSCHQPDV and'
      '  CFVECUSADEBCREDCLI = :OLD_CFVECUSADEBCREDCLI and'
      '  CGVECTESTAITENSNF = :OLD_CGVECTESTAITENSNF and'
      '  CFVEN3ALIQISSQN = :OLD_CFVEN3ALIQISSQN and'
      '  CFVECIMPLEGPEDVENF = :OLD_CFVECIMPLEGPEDVENF and'
      '  CFVEN3PERCICMFRETE = :OLD_CFVEN3PERCICMFRETE and'
      '  CFVEA255OBSPADNF = :OLD_CFVEA255OBSPADNF and'
      '  CFVEITEMPOCONSPROD = :OLD_CFVEITEMPOCONSPROD and'
      '  CFVECQUITARPARCHQ = :OLD_CFVECQUITARPARCHQ and'
      '  CFVEA255OBSPADRPED = :OLD_CFVEA255OBSPADRPED and'
      '  OPESICODCUPOM = :OLD_OPESICODCUPOM and'
      '  OPESICODCANCCUPOM = :OLD_OPESICODCANCCUPOM and'
      '  OPESICODNF = :OLD_OPESICODNF and'
      '  OPESICODCANCNF = :OLD_OPESICODCANCNF and'
      '  OPESICODRETORNO = :OLD_OPESICODRETORNO and'
      '  CFVECRENDCONJNOLIM = :OLD_CFVECRENDCONJNOLIM and'
      '  OPESICODCANCTROCA = :OLD_OPESICODCANCTROCA and'
      '  OPESICODTROCA = :OLD_OPESICODTROCA and'
      '  CFVECINFDADOVENDA = :OLD_CFVECINFDADOVENDA and'
      '  CFVECPARC0ENTRBAIX = :OLD_CFVECPARC0ENTRBAIX and'
      '  CFVEIQTDPADRPDV = :OLD_CFVEIQTDPADRPDV')
    Left = 190
    Top = 7
  end
  object ActionList1: TActionList
    Left = 222
    Top = 8
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DSSQLConfigVenda
    end
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPOCONTATO'
      'order by TPCTA60DESCR')
    Macros = <>
    Left = 386
    Top = 7
    object SQLTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
    end
    object SQLTipoContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTipoContato: TDataSource
    DataSet = SQLTipoContato
    Left = 416
    Top = 7
  end
end
