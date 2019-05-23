inherited FormTelaContatoImediatoCallCenter: TFormTelaContatoImediatoCallCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelTitulo2: TPanel
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited Label4: TLabel
        Left = 153
        Top = 153
      end
      inherited EditNomeCliente: TEdit
        TabStop = False
      end
    end
  end
  inherited SQLNovoContato: TRxQuery
    AfterPost = SQLNovoContatoAfterPost
  end
end
