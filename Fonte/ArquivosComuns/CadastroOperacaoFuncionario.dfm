�
 TFORMCADASTROOPERACAOFUNCIONARIO 0#  TPF0� TFormCadastroOperacaoFuncionarioFormCadastroOperacaoFuncionarioCaption'   Cadastro de Operações de FuncionárioOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipal �	TTabSheetTabSheetConsulta �TPanelPanelProcura �TPanelPanelBetween �	TAdvPanel	AdvPanel1
FullHeight    �TPanelPanelEditProcura �	TAdvPanelAdvPanelEditProcura
FullHeight    �TPanelPanelIndice �	TAdvPanelAdvPanelIndice
FullHeight       �TPanelPanelCodigoDescricao TLabelLabel1Left	TopWidth7HeightCaption   DescriçãoFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2Left1TopWidthbHeightCaption   Tipo de OperaçãoFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidth%Height	DataFieldOPFUA60DESCR
DataSource
DSTemplateTabOrder   TRxDBComboBoxComboTipoOperacaoLeft/TopWidthuHeightStylecsDropDownList	DataFieldOPFUCTIPOOPERACAO
DataSource
DSTemplateEnableValues	
ItemHeightItems.Strings   Crédito   Débito TabOrderValues.StringsCD        �TRxQuerySQLTemplateTagSQL.Strings2Select * From OperacaoFuncionario Where (%MFiltro)  TIntegerFieldSQLTemplateOPFUICODTag	FieldNameOPFUICODOriginDB.OPERACAOFUNCIONARIO.OPFUICODVisible  TStringFieldSQLTemplateOPFUA60DESCRDisplayLabel   Descrição	FieldNameOPFUA60DESCROrigin#DB.OPERACAOFUNCIONARIO.OPFUA60DESCR	FixedChar	Size<  TStringFieldSQLTemplateOPFUCTIPOOPERACAODisplayLabel   Tipo Operação	FieldNameOPFUCTIPOOPERACAOOrigin(DB.OPERACAOFUNCIONARIO.OPFUCTIPOOPERACAO	FixedChar	Size  TStringFieldSQLTemplatePENDENTE	FieldNamePENDENTEOriginDB.OPERACAOFRETE.PENDENTEVisible	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRO	FieldNameREGISTROOriginDB.OPERACAOFRETE.REGISTROVisible    