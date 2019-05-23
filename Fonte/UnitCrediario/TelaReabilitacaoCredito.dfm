inherited FormTelaReabilitacaoCredito: TFormTelaReabilitacaoCredito
  Left = 212
  Top = 111
  Width = 802
  Caption = 'Reabilita'#231#227'o de Cr'#233'dito'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 786
    inherited PanelCentral: TPanel
      Width = 782
      BorderWidth = 4
      inherited PanelBarra: TPanel
        Left = 4
        Top = 4
        Width = 0
        Height = 260
      end
      object Memo: TMemo
        Left = 4
        Top = 4
        Width = 774
        Height = 260
        TabStop = False
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 16249066
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 782
      inherited PanelCabecalho: TPanel
        Width = 782
        inherited PanelNavigator: TPanel
          Top = 34
          Width = 782
          Height = 46
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 782
            Height = 46
            object Mensagem: TLabel
              Left = 248
              Top = 9
              Width = 393
              Height = 13
              AutoSize = False
              Caption = 'Mensagem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object BtnVerificar: TSpeedButton
              Tag = 3
              Left = 2
              Top = 3
              Width = 81
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Verificar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnVerificarClick
            end
            object Progress: TProgressBar
              Left = 88
              Top = 7
              Width = 154
              Height = 15
              Smooth = True
              TabOrder = 0
              Visible = False
            end
            object ckFiltroFiliais: TCheckBox
              Left = 90
              Top = 26
              Width = 248
              Height = 17
              Caption = 'Realbilitar o movimento de todas as filiais'
              Color = 14854530
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where (%MFiltro)')
    UpdateObject = UpdateSQLContasReceber
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 104
    Top = 8
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
  end
  object SQLExclusao: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 216
    Top = 8
  end
  object UpdateSQLContasReceber: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASRECEBER'
      'set'
      '  CTRCA13ID = :CTRCA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  CTRCICOD = :CTRCICOD,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CTRCINROPARC = :CTRCINROPARC,'
      '  CTRCDVENC = :CTRCDVENC,'
      '  CTRCN2VLR = :CTRCN2VLR,'
      '  CTRCN2DESCFIN = :CTRCN2DESCFIN,'
      '  NUMEICOD = :NUMEICOD,'
      '  PORTICOD = :PORTICOD,'
      '  CTRCN2TXJURO = :CTRCN2TXJURO,'
      '  CTRCN2TXMULTA = :CTRCN2TXMULTA,'
      '  CTRCA5TIPOPADRAO = :CTRCA5TIPOPADRAO,'
      '  CTRCDULTREC = :CTRCDULTREC,'
      '  CTRCN2TOTREC = :CTRCN2TOTREC,'
      '  CTRCN2TOTJUROREC = :CTRCN2TOTJUROREC,'
      '  CTRCN2TOTMULTAREC = :CTRCN2TOTMULTAREC,'
      '  CTRCN2TOTDESCREC = :CTRCN2TOTDESCREC,'
      '  EMPRICODULTREC = :EMPRICODULTREC,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  TPDCICOD = :TPDCICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTRCA30NRODUPLICBANCO = :CTRCA30NRODUPLICBANCO,'
      '  NOFIA13ID = :NOFIA13ID,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTRCDEMIS = :CTRCDEMIS,'
      '  CTRCCSTATUS = :CTRCCSTATUS,'
      '  CTRCDREABILSPC = :CTRCDREABILSPC'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID')
    InsertSQL.Strings = (
      'insert into CONTASRECEBER'
      
        '  (CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CLIEA13ID, CTRCINROP' +
        'ARC, CTRCDVENC, '
      
        '   CTRCN2VLR, CTRCN2DESCFIN, NUMEICOD, PORTICOD, CTRCN2TXJURO, C' +
        'TRCN2TXMULTA, '
      
        '   CTRCA5TIPOPADRAO, CTRCDULTREC, CTRCN2TOTREC, CTRCN2TOTJUROREC' +
        ', CTRCN2TOTMULTAREC, '
      
        '   CTRCN2TOTDESCREC, EMPRICODULTREC, CUPOA13ID, TPDCICOD, PLCTA1' +
        '5COD, CTRCA30NRODUPLICBANCO, '
      
        '   NOFIA13ID, PENDENTE, REGISTRO, CTRCDEMIS, CTRCCSTATUS, CTRCDR' +
        'EABILSPC)'
      'values'
      
        '  (:CTRCA13ID, :EMPRICOD, :TERMICOD, :CTRCICOD, :CLIEA13ID, :CTR' +
        'CINROPARC, '
      
        '   :CTRCDVENC, :CTRCN2VLR, :CTRCN2DESCFIN, :NUMEICOD, :PORTICOD,' +
        ' :CTRCN2TXJURO, '
      
        '   :CTRCN2TXMULTA, :CTRCA5TIPOPADRAO, :CTRCDULTREC, :CTRCN2TOTRE' +
        'C, :CTRCN2TOTJUROREC, '
      
        '   :CTRCN2TOTMULTAREC, :CTRCN2TOTDESCREC, :EMPRICODULTREC, :CUPO' +
        'A13ID, '
      
        '   :TPDCICOD, :PLCTA15COD, :CTRCA30NRODUPLICBANCO, :NOFIA13ID, :' +
        'PENDENTE, '
      '   :REGISTRO, :CTRCDEMIS, :CTRCCSTATUS, :CTRCDREABILSPC)')
    DeleteSQL.Strings = (
      'delete from CONTASRECEBER'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID')
    Left = 132
    Top = 8
  end
end
