�
 TFORMCADASTROPRODUCAORECURSOS 0�  TPF0�TFormCadastroProducaoRecursosFormCadastroProducaoRecursosLeft� Top� Caption!   Cadastro Recursos para ProduçãoOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipalTop-Height� �	TTabSheetTabSheetConsulta �TDBGridDBGridListaHeightLColumnsExpanded	FieldName	PRREA13IDVisible	 Expanded	FieldNamePRREICODVisible	 Expanded	FieldNamePRREA60DESCRWidth� Visible	 Expanded	FieldNamePRREN2VALORVisible	 Expanded	FieldName	TipoMediaWidthRVisible	 Expanded	FieldNameUNIDA5DESCRWidthBVisible	     �	TTabSheetTabSheetDadosPrincipais 	TGroupBox	GroupBox1Left Top Width�Height{AlignalClientTabOrder  TLabelLabel3LeftTopWidthMHeightCaption   Valor UnitárioFocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel4LeftvTopWidthDHeightCaptionTipo MedidaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel5Left� TopWidth.HeightCaptionUnidadeFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit3LeftTopWidthiHeight	DataFieldPRREN2VALOR
DataSource
DSTemplateTabOrder   TRxDBComboBoxRxDBComboBox1LeftvTopWidthqHeightStylecsDropDownList	DataFieldPRRECTIPOMEDIDA
DataSource
DSTemplateEnableValues	
ItemHeightItems.StringsQuantidade Hora TabOrderValues.StringsQH   TDBLookupComboBoxDBLookupComboBox1Left� TopWidth� Height	DataFieldUNIDICOD
DataSource
DSTemplateKeyFieldUNIDICOD	ListFieldUNIDA5DESCR
ListSourcedsSQLUnidadeTabOrder     �TPanelPanelMasterTop-Height   �TPanelPanelCodigoDescricaoHeight- TLabelLabel1Left
TopWidthHeightCaptionIDFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2Left|TopWidth7HeightCaption   DescriçãoFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidthnHeight	DataField	PRREA13ID
DataSource
DSTemplateTabOrder   TDBEditDBEdit2Left{TopWidth>Height	DataFieldPRREA60DESCR
DataSource
DSTemplateTabOrder       �TRxQuerySQLTemplateTagOnCalcFieldsSQLTemplateCalcFieldsOnDeleteErrorSQLTemplateDeleteErrorSQL.Strings/Select * From PRODUCAORECURSOS Where (%MFiltro)  TIntegerFieldSQLTemplateEMPRICODDisplayLabelEmpresa	FieldNameEMPRICODOriginDB.PRODUCAORECURSOS.EMPRICOD  TStringFieldSQLTemplatePRREA13IDTagDisplayLabelID	FieldName	PRREA13IDOriginDB.PRODUCAORECURSOS.PRREA13IDVisible	FixedChar	Size  TIntegerFieldSQLTemplatePRREICODTagDisplayLabel   Cód	FieldNamePRREICODOriginDB.PRODUCAORECURSOS.PRREICOD  TStringFieldSQLTemplatePRREA60DESCRConstraintErrorMessage1DisplayLabel   Descrição	FieldNamePRREA60DESCROrigin DB.PRODUCAORECURSOS.PRREA60DESCR	FixedChar	Size<  	TBCDFieldSQLTemplatePRREN2VALORConstraintErrorMessage1DisplayLabel   Valor Unitário	FieldNamePRREN2VALOROriginDB.PRODUCAORECURSOS.PRREN2VALORDisplayFormat#,##0.00	PrecisionSize  TStringFieldSQLTemplatePRRECTIPOMEDIDAConstraintErrorMessage1DisplayLabelTipo Medida	FieldNamePRRECTIPOMEDIDAOrigin#DB.PRODUCAORECURSOS.PRRECTIPOMEDIDA	FixedChar	Size  TStringFieldSQLTemplatePENDENTEDisplayLabelPendente	FieldNamePENDENTEOriginDB.PRODUCAORECURSOS.PENDENTE	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRODisplayLabelRegistro	FieldNameREGISTROOriginDB.PRODUCAORECURSOS.REGISTRO  TIntegerFieldSQLTemplateUNIDICODConstraintErrorMessage1DisplayLabelUnidade	FieldNameUNIDICODOriginDB.PRODUCAORECURSOS.UNIDICOD  TStringFieldSQLTemplateUNIDA5DESCRDisplayLabelUnidade	FieldKindfkLookup	FieldNameUNIDA5DESCRLookupDataSet
SQLUnidadeLookupKeyFieldsUNIDICODLookupResultFieldUNIDA5DESCR	KeyFieldsUNIDICODSizeLookup	  TStringFieldSQLTemplateTipoMedia	FieldKindfkCalculated	FieldName	TipoMediaSize

Calculated	   TRxQuery
SQLUnidadeDatabaseNameDBSQL.Stringsselect * From UNIDADE Macros LeftTop�   TDataSourcedsSQLUnidadeDataSet
SQLUnidadeLeft8Top�    