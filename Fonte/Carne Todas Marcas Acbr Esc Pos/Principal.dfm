object FormPrincipal: TFormPrincipal
  Left = 462
  Top = 204
  Width = 437
  Height = 91
  Caption = 'Carne'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 117
    Top = 38
    Width = 275
    Height = 83
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    ControlePorta = True
    Left = 78
    Top = 13
  end
  object TblCarne: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'Carne.DB'
    Left = 13
    Top = 14
    object TblCarneMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 100
    end
    object TblCarneCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblCarneEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TblCarneBairro: TStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object TblCarneCidade: TStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object TblCarneCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblCarneNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 13
    end
    object TblCarneNumeroParcela: TIntegerField
      FieldName = 'NumeroParcela'
    end
    object TblCarneContadorParcelas: TIntegerField
      FieldName = 'ContadorParcelas'
    end
    object TblCarneDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblCarneValorParcela: TFloatField
      FieldName = 'ValorParcela'
    end
    object TblCarneVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblCarnePlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblCarneDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblCarneTotalCupom: TFloatField
      FieldName = 'TotalCupom'
    end
    object TblCarneNroCupom: TStringField
      FieldName = 'NroCupom'
      Size = 6
    end
    object TblCarneTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblCarneValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
    end
    object TblCarneAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblCarneEntrada: TFloatField
      FieldName = 'Entrada'
    end
  end
end
