inherited FormTelaBaixarDocumentosReceber: TFormTelaBaixarDocumentosReceber
  Left = 257
  Top = 121
  Width = 800
  Caption = 'Baixar Documentos '#224' Receber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 792
    inherited PanelCabecalho: TPanel
      Width = 788
      inherited PanelNavigator: TPanel
        Width = 788
        inherited Image1: TImage
          Width = 788
        end
        object BtnSelecionarDoc: TSpeedButton
          Tag = 3
          Left = 2
          Top = 3
          Width = 147
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Selecionar Documentos'
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
          OnClick = BtnSelecionarDocClick
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 788
      inherited PanelBarra: TPanel
        Width = 0
      end
      object PanelFundoBxDocREc: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 361
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object PanelTopBxDocREc: TPanel
          Left = 0
          Top = 0
          Width = 788
          Height = 127
          Align = alTop
          BevelOuter = bvNone
          Color = 14536396
          TabOrder = 0
          object Label1: TLabel
            Left = 2
            Top = 5
            Width = 49
            Height = 13
            Caption = 'Empresa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 2
            Top = 44
            Width = 39
            Height = 13
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 4
            Top = 83
            Width = 130
            Height = 13
            Caption = 'Per'#237'odo de Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 101
            Top = 101
            Width = 19
            Height = 13
            Caption = 'at'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 244
            Top = 83
            Width = 61
            Height = 13
            Caption = 'Data Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Data1: TDateEdit
            Left = 2
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
          end
          object Data2: TDateEdit
            Left = 130
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
          end
          object DtBaixa: TDateEdit
            Left = 242
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 4
          end
          object ComboEmpresa: TRxDBLookupCombo
            Left = 2
            Top = 21
            Width = 441
            Height = 21
            DropDownCount = 8
            LookupField = 'EMPRICOD'
            LookupDisplay = 'EMPRA60RAZAOSOC'
            LookupSource = DSSQLEmpresa
            TabOrder = 0
          end
          object ComboCliente: TRxDBLookupCombo
            Left = 2
            Top = 59
            Width = 441
            Height = 21
            DropDownCount = 8
            LookupField = 'CLIEA13ID'
            LookupDisplay = 'CLIEA60RAZAOSOC'
            LookupSource = DSSQLCliente
            TabOrder = 1
          end
        end
        object DBGridLista: TDBGrid
          Left = 0
          Top = 127
          Width = 788
          Height = 234
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSSQLRecebimentoTemp
          FixedColor = 16767449
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CLIEA60NOME'
              Title.Alignment = taCenter
              Width = 241
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTRCA13ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTRCINROPARC'
              Title.Alignment = taCenter
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMDVENC'
              Title.Alignment = taCenter
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMN2VLRVENC'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMN2VLRJURO'
              Title.Alignment = taCenter
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMN2VLRMULTA'
              Title.Alignment = taCenter
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMN2DESC'
              Title.Alignment = taCenter
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RCTMN2VLRRECTO'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
      end
    end
  end
  object SQLContasReceber: TRxQuery
    OnCalcFields = SQLContasReceberCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '   * '
      'from '
      '  CONTASRECEBER'
      'where '
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MData)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 262
    Top = 5
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
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberClienteCalcField: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteCalcField'
      Visible = False
      Size = 60
      Calculated = True
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
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCA5TIPODARAO: TStringField
      FieldName = 'CTRCA5TIPODARAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
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
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLRecebimentoTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from RECEBIMENTOTEMP'
      'where (%MUsuario)'
      'order by CLIEA60NOME, CTRCA13ID, CTRCINROPARC')
    UpdateObject = UpdateSQLRecebimentoTemp
    Macros = <
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 290
    Top = 5
    object SQLRecebimentoTempUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.RECEBIMENTOTEMP.USUAICOD'
    end
    object SQLRecebimentoTempCTRCA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTOTEMP.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoTempCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.RECEBIMENTOTEMP.CTRCINROPARC'
    end
    object SQLRecebimentoTempCLIEA60NOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA60NOME'
      Origin = 'DB.RECEBIMENTOTEMP.CLIEA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLRecebimentoTempCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTOTEMP.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoTempRCTMDVENC: TDateTimeField
      DisplayLabel = 'Dt.Vencto.'
      FieldName = 'RCTMDVENC'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMDVENC'
    end
    object SQLRecebimentoTempRCTMN2VLRVENC: TFloatField
      DisplayLabel = 'Vlr.Vencto.'
      FieldName = 'RCTMN2VLRVENC'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMN2VLRVENC'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoTempRCTMN2VLRRECTO: TBCDField
      DisplayLabel = 'Vlr.Recto.'
      FieldName = 'RCTMN2VLRRECTO'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMN2VLRRECTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoTempRCTMN2VLRJURO: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'RCTMN2VLRJURO'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMN2VLRJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoTempRCTMN2VLRMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'RCTMN2VLRMULTA'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMN2VLRMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoTempRCTMN2DESC: TBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'RCTMN2DESC'
      Origin = 'DB.RECEBIMENTOTEMP.RCTMN2DESC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLRecebimentoTemp: TDataSource
    DataSet = SQLRecebimentoTemp
    Left = 318
    Top = 5
  end
  object UpdateSQLRecebimentoTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update RECEBIMENTOTEMP'
      'set'
      '  USUAICOD = :USUAICOD,'
      '  CTRCA13ID = :CTRCA13ID,'
      '  CTRCINROPARC = :CTRCINROPARC,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  RCTMN2VLRRECTO = :RCTMN2VLRRECTO,'
      '  RCTMN2VLRJURO = :RCTMN2VLRJURO,'
      '  RCTMN2VLRMULTA = :RCTMN2VLRMULTA,'
      '  RCTMN2DESC = :RCTMN2DESC,'
      '  CLIEA60NOME = :CLIEA60NOME,'
      '  RCTMN2VLRVENC = :RCTMN2VLRVENC,'
      '  RCTMDVENC = :RCTMDVENC'
      'where'
      '  USUAICOD = :OLD_USUAICOD and'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC')
    InsertSQL.Strings = (
      'insert into RECEBIMENTOTEMP'
      
        '  (USUAICOD, CTRCA13ID, CTRCINROPARC, CLIEA13ID, RCTMN2VLRRECTO,' +
        ' RCTMN2VLRJURO, '
      
        '   RCTMN2VLRMULTA, RCTMN2DESC, CLIEA60NOME, RCTMN2VLRVENC, RCTMD' +
        'VENC)'
      'values'
      
        '  (:USUAICOD, :CTRCA13ID, :CTRCINROPARC, :CLIEA13ID, :RCTMN2VLRR' +
        'ECTO, :RCTMN2VLRJURO, '
      
        '   :RCTMN2VLRMULTA, :RCTMN2DESC, :CLIEA60NOME, :RCTMN2VLRVENC, :' +
        'RCTMDVENC)')
    DeleteSQL.Strings = (
      'delete from RECEBIMENTOTEMP'
      'where'
      '  USUAICOD = :OLD_USUAICOD and'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC')
    Left = 346
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  CLIEA13ID, CLIEA60RAZAOSOC '
      'from '
      '  CLIENTE'
      'order by '
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 204
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 232
    Top = 5
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'order by EMPRA60RAZAOSOC')
    Macros = <>
    Left = 146
    Top = 5
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 174
    Top = 5
  end
end
