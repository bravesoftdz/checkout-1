inherited FormTelaConfigTransportadora: TFormTelaConfigTransportadora
  Left = 186
  Top = 94
  Caption = 'Configura'#231#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Label9: TLabel [0]
        Left = 134
        Top = 4
        Width = 188
        Height = 13
        Caption = 'Movimenta'#231#227'o Padr'#227'o de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel [1]
        Left = 134
        Top = 45
        Width = 184
        Height = 13
        Caption = 'Movimenta'#231#227'o Padr'#227'o de D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboOperacaoCredito: TDBLookupComboBox
        Left = 134
        Top = 20
        Width = 300
        Height = 21
        DataField = 'OPFUA60DESCRCREDITO'
        DataSource = DM.DsSQLConfigTransportadora
        TabOrder = 1
      end
      object ComboOperacaoDebito: TDBLookupComboBox
        Left = 134
        Top = 62
        Width = 300
        Height = 21
        DataField = 'OPFUA60DESCRDEBITO'
        DataSource = DM.DsSQLConfigTransportadora
        TabOrder = 2
      end
    end
  end
end
