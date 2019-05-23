inherited FormCadastroComissoes: TFormCadastroComissoes
  Left = 212
  Top = 155
  Caption = 'Comiss'#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited SQLTemplate: TRxQuery
    Active = True
    SQL.Strings = (
      'Select * From VENDEDORCOMISSAO Where (%MFiltro)')
  end
end
