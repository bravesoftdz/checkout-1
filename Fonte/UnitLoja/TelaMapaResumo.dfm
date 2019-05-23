inherited FormTelaGeracaoMapaResumo: TFormTelaGeracaoMapaResumo
  Left = 146
  Top = 142
  Caption = 'Gera'#231#227'o de Mapa Resumo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object BtnGeraMapa: TSpeedButton [0]
        Left = 136
        Top = 55
        Width = 167
        Height = 34
        Caption = 'Gerar Mapa Resumo'
        Flat = True
        Glyph.Data = {
          76040000424D7604000000000000760000002800000020000000200000000100
          0800000000000004000000000000000000001000000010000000000000000000
          CC00009900000099990099000000990099009999000099999900CCCCCC000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFFFF00FFFFFF000E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E08080808080808080808080808080808080808080E0E0E0E0E0E0E0E
          0E0E0E0800000000000000000000000000000000000008080E0E0E0E0E0E0E0E
          0E0E0800000807070707070707070707070707070700080E0E0E0E0E0E0E0E0E
          0E080007000F080808080808080808080808080807000E0E0E0E0E0E0E0E0E0E
          08000708000F080808080808080808080808080807000E0E0E0E0E0E0E0E0E08
          00070808000F080808080808080808080808080807000E0E0E0E0E0E0E0E0800
          07080808000F080808080808080808080808080807000E0E0E0E0E0E0E080007
          08080808000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F08000E0E0E0E0E0E0E000708
          080808080000000000000000000000000000000000000E0E0E0E0E0E00070808
          080808080008070707070707070707070707070707000E0E0E0E0E0E00080808
          08080808000F000008000008000008000008000007000E0E0E0E0E0E00080808
          080808000F080808080808080808080808080808000E0E0E0E0E0E0E00080808
          080808000F000008000008000008000008000007000E0E0E0E0E0E0E00080808
          0808000F080808080808080808080808080808000E0E0E0E0E0E0E0E00080808
          0808000F000008000008000008000008000007000E0E0E0E0E0E0E0E00080808
          08000F080808080808080808080808080807000E0E0E0E0E0E0E0E0E00080808
          000F080000080000080008080000080007000E0E0E0E0E0E0E0E0E0E00080800
          0F080808080808080808080808080807000E0E0E0E0E0E0E0E0E0E0E00080008
          000000000000000000000000000008000E0E0E0E0E0E0E0E0E0E0E0E00080008
          000F090909070F0F0F070F0F0F0008000E0E0E0E0E0E0E0E0E0E0E0E00080008
          000F090909070F0F0F070F0F0F0008000E0E0E0E0E0E0E0E0E0E0E0E00080008
          000F0F090F0F0707070F0707070008000E0E0E0E0E0E0E0E0E0E0E0E00080008
          080000000000000000000000000807000E0E0E0E0E0E0E0E0E0E0E0E00080800
          0808080808080808080808080807000E0E0E0E0E0E0E0E0E0E0E0E0E0E000808
          00000000000000000000000000000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0008
          080808080808080808080800000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E00
          00000000000000000000000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E}
        OnClick = BtnGeraMapaClick
      end
      object Label1: TLabel [1]
        Left = 138
        Top = 11
        Width = 117
        Height = 13
        Caption = 'Selecione o Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboTerminal: TRxDBLookupCombo
        Left = 136
        Top = 27
        Width = 473
        Height = 21
        DropDownCount = 8
        LookupField = 'TERMICOD'
        LookupDisplay = 'TERMA60DESCR'
        LookupSource = DSSQLTerminal
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 139
        Top = 98
        Width = 377
        Height = 153
        Caption = 'Visualizar Mapa Resumo'
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Left = 90
          Top = 80
          Width = 167
          Height = 34
          Caption = 'Visualizar Mapa Resumo'
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF00000FFFFFFFFFFFFFFFF000888000FFFFFFFFFFFF00008888800000F
            FFFFFFF00888888888000000FFFFFF08888888888800000000FFFF0888877888
            8800000000FFFF08877778887772000000FFFF07778887FFFFF7800000FFFF07
            7877FFFFFFFF700000FFFF087FFFFFFFF888838800FFFFF007FFF77888777088
            00FFFFFFF007788FFFF77700FFFFFFFFFFF008FFFFFF778FFFFFFFFFFFFFF0FF
            FFFFF770FFFFFFFFFFFFF07FFFFFFFF80FFFFFFFFFFFFF0FFFFF78000FFFFFFF
            FFFFFFF0F7800FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton1Click
        end
        object Label3: TLabel
          Left = 129
          Top = 30
          Width = 27
          Height = 13
          Caption = '&Data'
          FocusControl = De
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 127
          Top = 47
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object Progresso: TProgressBar
          Left = 2
          Top = 135
          Width = 373
          Height = 16
          Align = alBottom
          TabOrder = 1
        end
      end
    end
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Terminal')
    Macros = <>
    Left = 200
    Top = 8
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTerminalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TERMINAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTerminalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.TERMINAL.VENDICOD'
    end
    object SQLTerminalPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.TERMINAL.PLRCICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalTERMCTIPO: TStringField
      FieldName = 'TERMCTIPO'
      Origin = 'DB.TERMINAL.TERMCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMCSTATUSCAIXA: TStringField
      FieldName = 'TERMCSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMCSTATUSCAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMDSTATUSCAIXA: TDateTimeField
      FieldName = 'TERMDSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMDSTATUSCAIXA'
    end
    object SQLTerminalUSUAICODATIVO: TIntegerField
      FieldName = 'USUAICODATIVO'
      Origin = 'DB.TERMINAL.USUAICODATIVO'
    end
    object SQLTerminalTERMCMOVESTOQUE: TStringField
      FieldName = 'TERMCMOVESTOQUE'
      Origin = 'DB.TERMINAL.TERMCMOVESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMINRODECQUANT: TIntegerField
      FieldName = 'TERMINRODECQUANT'
      Origin = 'DB.TERMINAL.TERMINRODECQUANT'
    end
    object SQLTerminalTERMINUMEVISTA: TIntegerField
      FieldName = 'TERMINUMEVISTA'
      Origin = 'DB.TERMINAL.TERMINUMEVISTA'
    end
    object SQLTerminalTERMINUMEPRAZO: TIntegerField
      FieldName = 'TERMINUMEPRAZO'
      Origin = 'DB.TERMINAL.TERMINUMEPRAZO'
    end
    object SQLTerminalTERMCATIVO: TStringField
      FieldName = 'TERMCATIVO'
      Origin = 'DB.TERMINAL.TERMCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTerminalTERMA5ECFPORTACOM: TStringField
      FieldName = 'TERMA5ECFPORTACOM'
      Origin = 'DB.TERMINAL.TERMA5ECFPORTACOM'
      FixedChar = True
      Size = 5
    end
    object SQLTerminalTERMCECFIMPRCLIE: TStringField
      FieldName = 'TERMCECFIMPRCLIE'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCLIE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMCECFIMPRVEND: TStringField
      FieldName = 'TERMCECFIMPRVEND'
      Origin = 'DB.TERMINAL.TERMCECFIMPRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMCECFIMPRCONFDIV: TStringField
      FieldName = 'TERMCECFIMPRCONFDIV'
      Origin = 'DB.TERMINAL.TERMCECFIMPRCONFDIV'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMCIMPPREVENDA: TStringField
      FieldName = 'TERMCIMPPREVENDA'
      Origin = 'DB.TERMINAL.TERMCIMPPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TERMINAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TERMINAL.REGISTRO'
    end
    object SQLTerminalTERMIPROXCODCTRC: TIntegerField
      FieldName = 'TERMIPROXCODCTRC'
      Origin = 'DB.TERMINAL.TERMIPROXCODCTRC'
    end
    object SQLTerminalTERMA60NOMECOMPUT: TStringField
      FieldName = 'TERMA60NOMECOMPUT'
      Origin = 'DB.TERMINAL.TERMA60NOMECOMPUT'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalTERMCAUTENTRFIMCUP: TStringField
      FieldName = 'TERMCAUTENTRFIMCUP'
      Origin = 'DB.TERMINAL.TERMCAUTENTRFIMCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMCCONFFECHCUPOM: TStringField
      FieldName = 'TERMCCONFFECHCUPOM'
      Origin = 'DB.TERMINAL.TERMCCONFFECHCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalTERMINUMERECCRED: TIntegerField
      FieldName = 'TERMINUMERECCRED'
      Origin = 'DB.TERMINAL.TERMINUMERECCRED'
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 228
    Top = 8
  end
  object TblMapaResumo: TTable
    DatabaseName = 'DB'
    TableName = 'MAPARESUMO'
    Left = 280
    Top = 8
    object TblMapaResumoECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblMapaResumoMAPARESDATA: TDateTimeField
      FieldName = 'MAPARESDATA'
      Required = True
    end
    object TblMapaResumoMAPARESNUMEQUIP: TIntegerField
      FieldName = 'MAPARESNUMEQUIP'
      Required = True
    end
    object TblMapaResumoMAPARESNUMCONTORDOPER: TBCDField
      FieldName = 'MAPARESNUMCONTORDOPER'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESCONTREDU: TBCDField
      FieldName = 'MAPARESCONTREDU'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESVENDABRUTADIA: TBCDField
      FieldName = 'MAPARESVENDABRUTADIA'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESCANCELAMENTOS: TBCDField
      FieldName = 'MAPARESCANCELAMENTOS'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESDESCONTO: TBCDField
      FieldName = 'MAPARESDESCONTO'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESVALORCONTABIL: TBCDField
      FieldName = 'MAPARESVALORCONTABIL'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESSUBST: TBCDField
      FieldName = 'MAPARESSUBST'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESISENTONAOTRIBUT: TBCDField
      FieldName = 'MAPARESISENTONAOTRIBUT'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB1: TBCDField
      FieldName = 'MAPARESTRIB1'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB2: TBCDField
      FieldName = 'MAPARESTRIB2'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB3: TBCDField
      FieldName = 'MAPARESTRIB3'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB4: TBCDField
      FieldName = 'MAPARESTRIB4'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB5: TBCDField
      FieldName = 'MAPARESTRIB5'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB6: TBCDField
      FieldName = 'MAPARESTRIB6'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB7: TBCDField
      FieldName = 'MAPARESTRIB7'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB8: TBCDField
      FieldName = 'MAPARESTRIB8'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB9: TBCDField
      FieldName = 'MAPARESTRIB9'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB10: TBCDField
      FieldName = 'MAPARESTRIB10'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB11: TBCDField
      FieldName = 'MAPARESTRIB11'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB12: TBCDField
      FieldName = 'MAPARESTRIB12'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB13: TBCDField
      FieldName = 'MAPARESTRIB13'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB14: TBCDField
      FieldName = 'MAPARESTRIB14'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoMAPARESTRIB15: TBCDField
      FieldName = 'MAPARESTRIB15'
      Precision = 15
      Size = 3
    end
    object TblMapaResumoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblMapaResumoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
  end
  object TblICMS: TTable
    DatabaseName = 'DB'
    TableName = 'ICMS'
    Left = 308
    Top = 8
    object TblICMSICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Required = True
    end
    object TblICMSICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblICMSICMSN2ALIQUOTA: TBCDField
      FieldName = 'ICMSN2ALIQUOTA'
      Precision = 15
      Size = 3
    end
    object TblICMSICMSA5TOTECF: TStringField
      FieldName = 'ICMSA5TOTECF'
      FixedChar = True
      Size = 5
    end
    object TblICMSICMSN2PERCSUBSTSAI: TBCDField
      FieldName = 'ICMSN2PERCSUBSTSAI'
      Precision = 15
      Size = 3
    end
    object TblICMSICMSN2PERCSUBSTENT: TBCDField
      FieldName = 'ICMSN2PERCSUBSTENT'
      Precision = 15
      Size = 3
    end
    object TblICMSICMSN2PERCREDUCAO: TBCDField
      FieldName = 'ICMSN2PERCREDUCAO'
      Precision = 15
      Size = 3
    end
    object TblICMSICMSICODSITTRIB: TIntegerField
      FieldName = 'ICMSICODSITTRIB'
    end
    object TblICMSPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblICMSREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblICMSDECRICOD: TStringField
      FieldName = 'DECRICOD'
      FixedChar = True
      Size = 5
    end
    object TblICMSICMSPOSALIQECF: TStringField
      FieldName = 'ICMSPOSALIQECF'
      FixedChar = True
      Size = 15
    end
    object TblICMSICMSPOSMAPARESUMO: TIntegerField
      FieldName = 'ICMSPOSMAPARESUMO'
    end
  end
  object TblTemporaria: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'MapaResumo'
    Left = 400
    Top = 8
    object TblTemporariaContador: TAutoIncField
      FieldName = 'Contador'
    end
    object TblTemporariaMapaResTrib5: TFloatField
      FieldName = 'MapaResTrib5'
    end
    object TblTemporariaMapaResTrib4: TFloatField
      FieldName = 'MapaResTrib4'
    end
    object TblTemporariaMapaResTrib3: TFloatField
      FieldName = 'MapaResTrib3'
    end
    object TblTemporariaMapaResTrib2: TFloatField
      FieldName = 'MapaResTrib2'
    end
    object TblTemporariaMapaResTrib1: TFloatField
      FieldName = 'MapaResTrib1'
    end
    object TblTemporariaMapaResIsentoNaoTribut: TFloatField
      FieldName = 'MapaResIsentoNaoTribut'
    end
    object TblTemporariaMapaResSubst: TFloatField
      FieldName = 'MapaResSubst'
    end
    object TblTemporariaMapaResValorContabil: TFloatField
      FieldName = 'MapaResValorContabil'
    end
    object TblTemporariaMapaResDesconto: TFloatField
      FieldName = 'MapaResDesconto'
    end
    object TblTemporariaMapaResCancelamentos: TFloatField
      FieldName = 'MapaResCancelamentos'
    end
    object TblTemporariaMapaResVendaBrutaDia: TFloatField
      FieldName = 'MapaResVendaBrutaDia'
    end
    object TblTemporariaMapaResContRedu: TFloatField
      FieldName = 'MapaResContRedu'
    end
    object TblTemporariaMapaResNumContOrdOper: TFloatField
      FieldName = 'MapaResNumContOrdOper'
    end
    object TblTemporariaMapaResNumEquip: TFloatField
      FieldName = 'MapaResNumEquip'
    end
    object TblTemporariaMapaResData: TDateField
      FieldName = 'MapaResData'
    end
    object TblTemporariaSoma: TFloatField
      FieldName = 'Soma'
    end
    object TblTemporariaVlrImposto: TFloatField
      FieldName = 'VlrImposto'
    end
  end
  object BDEPipe: TppBDEPipeline
    DataSource = DSTblTemporaria
    CloseDataSource = True
    UserName = 'BDEPipe'
    Left = 458
    Top = 8
    object BDEPipeppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador'
      FieldName = 'Contador'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object BDEPipeppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResTrib5'
      FieldName = 'MapaResTrib5'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPipeppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResTrib4'
      FieldName = 'MapaResTrib4'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object BDEPipeppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResTrib3'
      FieldName = 'MapaResTrib3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object BDEPipeppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResTrib2'
      FieldName = 'MapaResTrib2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object BDEPipeppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResTrib1'
      FieldName = 'MapaResTrib1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object BDEPipeppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResIsentoNaoTribut'
      FieldName = 'MapaResIsentoNaoTribut'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object BDEPipeppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResSubst'
      FieldName = 'MapaResSubst'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object BDEPipeppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResValorContabil'
      FieldName = 'MapaResValorContabil'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object BDEPipeppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResDesconto'
      FieldName = 'MapaResDesconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object BDEPipeppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResCancelamentos'
      FieldName = 'MapaResCancelamentos'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object BDEPipeppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResVendaBrutaDia'
      FieldName = 'MapaResVendaBrutaDia'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object BDEPipeppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResContRedu'
      FieldName = 'MapaResContRedu'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object BDEPipeppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResNumContOrdOper'
      FieldName = 'MapaResNumContOrdOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object BDEPipeppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'MapaResNumEquip'
      FieldName = 'MapaResNumEquip'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object BDEPipeppField16: TppField
      FieldAlias = 'MapaResData'
      FieldName = 'MapaResData'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 15
    end
    object BDEPipeppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Soma'
      FieldName = 'Soma'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object BDEPipeppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VlrImposto'
      FieldName = 'VlrImposto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = BDEPipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 120
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 486
    Top = 8
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'BDEPipe'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 21696
        mmLeft = 115623
        mmTop = 21431
        mmWidth = 15610
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 12435
        mmWidth = 260351
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 3969
        mmWidth = 260351
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 8202
        mmWidth = 260351
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SysName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 265
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Titulo3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'M A P A  R E S U M O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 31221
        mmTop = 4498
        mmWidth = 28310
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'DadosEmiss1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 243417
        mmTop = 4498
        mmWidth = 15346
        BandType = 0
      end
      object EmpresaNome: TppLabel
        UserName = 'EmpresaNome'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 8731
        mmWidth = 8996
        BandType = 0
      end
      object EmpresaEndereco: TppLabel
        UserName = 'FiltroData2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 12965
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 247650
        mmTop = 265
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 4498
        mmWidth = 6879
        BandType = 0
      end
      object EmpresaMunicipio: TppLabel
        UserName = 'EmpresaMunicipio'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Munic'#237'pio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 12965
        mmWidth = 13229
        BandType = 0
      end
      object EmpresaUF: TppLabel
        UserName = 'EmpresaUF'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 136790
        mmTop = 12965
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CGC/TE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152665
        mmTop = 12965
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CGC/MF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152665
        mmTop = 8731
        mmWidth = 11906
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 3969
        mmWidth = 2117
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 12435
        mmWidth = 2117
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 26458
        mmLeft = 0
        mmTop = 16669
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' Equip.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 3704
        mmTop = 23813
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(1)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 6085
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 26458
        mmLeft = 15346
        mmTop = 16669
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' Cont. Ord. Oper.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 13758
        mmLeft = 20638
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(2)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 22754
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 26458
        mmLeft = 33338
        mmTop = 16669
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contad. Reduc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 36248
        mmTop = 23813
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(3)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 26458
        mmLeft = 48683
        mmTop = 16669
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Venda Bruta Di'#225'ria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10319
        mmLeft = 54769
        mmTop = 23813
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(4)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 57150
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 26458
        mmLeft = 66411
        mmTop = 16669
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cance- Lamen- tos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10319
        mmLeft = 69586
        mmTop = 23813
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(5)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 72496
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 26458
        mmLeft = 81756
        mmTop = 16669
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Des- contos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 85196
        mmTop = 23813
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(6)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 87842
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 26458
        mmLeft = 97102
        mmTop = 16669
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Cont'#225'bil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 101336
        mmTop = 23813
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(7)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(8)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 121709
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Subst. Trib.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 119327
        mmTop = 23813
        mmWidth = 7938
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 21696
        mmLeft = 130969
        mmTop = 21431
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(9)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 38894
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Isentas e N'#227'o Tribut.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10319
        mmLeft = 134409
        mmTop = 23813
        mmWidth = 9790
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 5027
        mmLeft = 146315
        mmTop = 21431
        mmWidth = 101071
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BASE DE C'#193'LCULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 183886
        mmTop = 22225
        mmWidth = 25929
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 5027
        mmLeft = 146315
        mmTop = 26194
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'P/Al'#237'q.ou p/Perc.de D'#233'bito Fiscal Efetivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 26988
        mmWidth = 52123
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 12171
        mmLeft = 146315
        mmTop = 30956
        mmWidth = 16000
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 12171
        mmLeft = 161925
        mmTop = 30956
        mmWidth = 16000
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 12171
        mmLeft = 177536
        mmTop = 30956
        mmWidth = 16000
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 12171
        mmLeft = 193146
        mmTop = 30956
        mmWidth = 16000
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape201'
        mmHeight = 12171
        mmLeft = 208757
        mmTop = 30956
        mmWidth = 16000
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 16933
        mmLeft = 224367
        mmTop = 26194
        mmWidth = 17463
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 26723
        mmLeft = 241565
        mmTop = 16669
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152400
        mmTop = 38894
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(11)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 167482
        mmTop = 38894
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(12)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 183092
        mmTop = 39158
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(13)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 198702
        mmTop = 38894
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(14)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 214313
        mmTop = 38894
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SOMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 228600
        mmTop = 29633
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(15)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 230188
        mmTop = 38894
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(16)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 248444
        mmTop = 38894
        mmWidth = 4763
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 5027
        mmLeft = 115623
        mmTop = 16669
        mmWidth = 126207
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CLASSIFICA'#199#195'O DAS SITUA'#199#213'ES TRIBUT'#193'RIAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 17463
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICMS DEBI- TADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 11377
        mmLeft = 246857
        mmTop = 21696
        mmWidth = 8202
        BandType = 0
      end
      object Aliq1Lbl: TppLabel
        UserName = 'Aliq1Lbl'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '13%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152136
        mmTop = 32279
        mmWidth = 5292
        BandType = 0
      end
      object Aliq2Lbl: TppLabel
        UserName = 'Aliq2Lbl'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '17%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 32279
        mmWidth = 5292
        BandType = 0
      end
      object Aliq4Lbl: TppLabel
        UserName = 'Label401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '26%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 198438
        mmTop = 32279
        mmWidth = 5292
        BandType = 0
      end
      object Aliq5Lbl: TppLabel
        UserName = 'Aliq5Lbl'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '26%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 214048
        mmTop = 32279
        mmWidth = 5292
        BandType = 0
      end
      object Aliq3Lbl: TppLabel
        UserName = 'Label402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '17%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 182827
        mmTop = 32544
        mmWidth = 5292
        BandType = 0
      end
    end
    object Detalhe: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 6615
        mmLeft = 241565
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6615
        mmLeft = 15346
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 6615
        mmLeft = 33338
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 6615
        mmLeft = 48683
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape102'
        mmHeight = 6615
        mmLeft = 66411
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 6615
        mmLeft = 81756
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 6615
        mmLeft = 97102
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 6615
        mmLeft = 115623
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 6615
        mmLeft = 146315
        mmTop = 0
        mmWidth = 16000
        BandType = 4
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 6615
        mmLeft = 161925
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 6615
        mmLeft = 177536
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape35: TppShape
        UserName = 'Shape202'
        mmHeight = 6615
        mmLeft = 193146
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 6615
        mmLeft = 208757
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 6615
        mmLeft = 224367
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResNumEquip'
        DataPipeline = BDEPipe
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 1323
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResNumContOrdOper'
        DataPipeline = BDEPipe
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 1323
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResContRedu'
        DataPipeline = BDEPipe
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 36513
        mmTop = 1323
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResVendaBrutaDia'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 1323
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResCancelamentos'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 1323
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResDesconto'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 1323
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResValorContabil'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 1323
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResSubst'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 118534
        mmTop = 1323
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResIsentoNaoTribut'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 1323
        mmWidth = 9525
        BandType = 4
      end
      object Aliq1: TppDBText
        UserName = 'Aliq1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib1'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 148961
        mmTop = 1323
        mmWidth = 11642
        BandType = 4
      end
      object Aliq2: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib2'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 164042
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object Aliq3: TppDBText
        UserName = 'Aliq3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib3'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object Aliq4: TppDBText
        UserName = 'Aliq4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib4'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 195263
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object Aliq5: TppDBText
        UserName = 'Aliq5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib5'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 210873
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Soma'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 227278
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VlrImposto'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 244740
        mmTop = 1323
        mmWidth = 12435
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 12965
        mmLeft = 241565
        mmTop = 0
        mmWidth = 18785
        BandType = 7
      end
      object ppShape54: TppShape
        UserName = 'Shape54'
        mmHeight = 12965
        mmLeft = 224367
        mmTop = 0
        mmWidth = 17463
        BandType = 7
      end
      object ppShape53: TppShape
        UserName = 'Shape53'
        mmHeight = 12965
        mmLeft = 208757
        mmTop = 0
        mmWidth = 15875
        BandType = 7
      end
      object ppShape52: TppShape
        UserName = 'Shape52'
        mmHeight = 12965
        mmLeft = 193146
        mmTop = 0
        mmWidth = 15875
        BandType = 7
      end
      object ppShape51: TppShape
        UserName = 'Shape51'
        mmHeight = 12965
        mmLeft = 177536
        mmTop = 0
        mmWidth = 15875
        BandType = 7
      end
      object ppShape50: TppShape
        UserName = 'Shape50'
        mmHeight = 12965
        mmLeft = 161925
        mmTop = 0
        mmWidth = 15875
        BandType = 7
      end
      object ppShape49: TppShape
        UserName = 'Shape49'
        mmHeight = 12965
        mmLeft = 146315
        mmTop = 0
        mmWidth = 16000
        BandType = 7
      end
      object ppShape48: TppShape
        UserName = 'Shape48'
        mmHeight = 12965
        mmLeft = 130969
        mmTop = 0
        mmWidth = 15610
        BandType = 7
      end
      object ppShape47: TppShape
        UserName = 'Shape301'
        mmHeight = 12965
        mmLeft = 115623
        mmTop = 0
        mmWidth = 15610
        BandType = 7
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        mmHeight = 12965
        mmLeft = 81756
        mmTop = 0
        mmWidth = 15610
        BandType = 7
      end
      object ppShape44: TppShape
        UserName = 'Shape44'
        mmHeight = 12965
        mmLeft = 66411
        mmTop = 0
        mmWidth = 15610
        BandType = 7
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 12965
        mmLeft = 48683
        mmTop = 0
        mmWidth = 17992
        BandType = 7
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 12965
        mmLeft = 0
        mmTop = 0
        mmWidth = 48948
        BandType = 7
      end
      object ppShape46: TppShape
        UserName = 'Shape46'
        mmHeight = 12965
        mmLeft = 97102
        mmTop = 0
        mmWidth = 18785
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResVendaBrutaDia'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 4763
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResCancelamentos'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 4763
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResDesconto'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 4763
        mmWidth = 9260
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResValorContabil'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 99748
        mmTop = 4763
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResSubst'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 118534
        mmTop = 4763
        mmWidth = 9525
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResIsentoNaoTribut'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 4763
        mmWidth = 9525
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib1'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 148961
        mmTop = 4763
        mmWidth = 11642
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib2'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 164042
        mmTop = 4763
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib3'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 4763
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib4'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 195263
        mmTop = 4763
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MapaResTrib5'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 210873
        mmTop = 4763
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Soma'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 227278
        mmTop = 4763
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VlrImposto'
        DataPipeline = BDEPipe
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipe'
        mmHeight = 3440
        mmLeft = 244740
        mmTop = 4763
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAIS DO DIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 1058
        mmTop = 2910
        mmWidth = 11377
        BandType = 7
      end
      object ppShape41: TppShape
        UserName = 'Shape401'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 12700
        mmWidth = 85725
        BandType = 7
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 12965
        mmLeft = 0
        mmTop = 19050
        mmWidth = 85725
        BandType = 7
      end
      object ppShape55: TppShape
        UserName = 'Shape55'
        mmHeight = 6615
        mmLeft = 85725
        mmTop = 12700
        mmWidth = 174625
        BandType = 7
      end
      object ppShape56: TppShape
        UserName = 'Shape56'
        mmHeight = 6615
        mmLeft = 85725
        mmTop = 19050
        mmWidth = 174625
        BandType = 7
      end
      object ppShape57: TppShape
        UserName = 'Shape57'
        mmHeight = 6615
        mmLeft = 85725
        mmTop = 25400
        mmWidth = 174625
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OBSERVA'#199#213'ES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 14288
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 86254
        mmTop = 20638
        mmWidth = 8202
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RESPONS'#193'VEL PELO ESTABELECIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 147109
        mmTop = 14288
        mmWidth = 57415
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fun'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 86254
        mmTop = 26988
        mmWidth = 10319
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assinatura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 26988
        mmWidth = 13758
        BandType = 7
      end
    end
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 428
    Top = 8
  end
end
