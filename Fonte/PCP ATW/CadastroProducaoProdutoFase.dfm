џ
 TFORMCADASTROPRODUCAOPRODUTOFASE 0}  TPF0ё TFormCadastroProducaoProdutoFaseFormCadastroProducaoProdutoFaseLeftо TopzCaptionCadastro Fases ProdutoClientHeightOldCreateOrder	PixelsPerInch`
TextHeight ё
TScrollBoxScrollBoxFundoHeight ёTPanelPanelCentralHeightО ёTPanel
PanelBarraHeightО  ёTPanelPanelFundoDadosHeightО ёTPanelPanel5HeightО ёTPageControlPagePrincipalTop-Height ё	TTabSheetTabSheetConsulta ёTDBGridDBGridListaHeightHColumnsExpanded	FieldName	PRFAA13IDWidth[Visible	 Expanded	FieldNamePRFAA30DESCRVisible	 Expanded	FieldNamePRFAN2TEMPOTOTALWidthtVisible	 Expanded	FieldNamePRFAN2CUSTOTOTALWidthnVisible	     ё	TTabSheetTabSheetDadosPrincipais 	TGroupBox	GroupBox1Left Top WidthnHeightwAlignalClientCaptionFasesFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Heightѕ	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel3LeftTop(Width=HeightCaption
Custo Fase  TLabelLabel4Left Top(WidthDHeightCaption
Tempo Fase  TSpeedButton
AcessaFaseLeftTopWidthHeightCursorcrHandPointHintAcessa Cadastro Fases (F2)Flat	
Glyph.Data
Ђ    BM      6   (               h  Ф  Ф          џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ      џ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ         џ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џ         џ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џ         џ џџ џџ џ  џ џџ џ ИП?H@      ?8?oho      џ џџ џџ џџ џ  џ џ ИА/0/p`po      џ џџ џџ џџ џџ џ  џ џ?@@ ИАЈЏ`po@H@џ џџ џџ џџ џџ џ  џ џ   АШРЯип ААЈ    џ џџ џџ џџ џџ џ  џ џ   Паа№ј№ЏРПАА     џ џџ џџ џџ џџ џ  џ џ?@@ЯрпршяЏИПАЏp?H@џ џџ џџ џџ џџ џ  џ џЈЏ/0/АШЯЏРР/00ЏРПџ џџ џџ џџ џџ џ  џ џџ џАА?@@      ?H@ЏИПџ џџ џџ џџ џџ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ  ParentShowHintShowHint	OnClickAcessaFaseClick  TLabelLabel5LeftTop(Width HeightCaption   SequУЊncia de ProduУЇУЃo  TDBEditDBEdit3LeftTop8WidthyHeightBorderStylebsNone	DataFieldPRFAN2CUSTOTOTAL
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightѕ	Font.NameTahoma
Font.Style 
ParentFontTabOrder   TDBEditDBEdit4Left Top8WidthyHeightBorderStylebsNone	DataFieldPRFAN2TEMPOTOTAL
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightѕ	Font.NameTahoma
Font.Style 
ParentFontTabOrder  TRxDBLookupComboRxDBLookupCombo1LeftTopWidthHeightDropDownCountDisplayAllFields		DataField	PRFAA13ID
DataSource
DSTemplateDisplayEmpty...
EmptyValuenullFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightѕ	Font.NameTahoma
Font.Style LookupField	PRFAA13IDLookupDisplayPRFAA13ID;PRFAA30DESCRLookupDisplayIndexLookupSource	dsSQLFase
ParentFontParentShowHintShowHint	TabOrder	OnKeyDownRxDBLookupCombo1KeyDown  TRxDBComboBoxcboSequenciaLeftTop8Width HeightStylecsDropDownList	DataFieldPRPFISEQUENCIAPROD
DataSource
DSTemplateEnableValues	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Heightѕ	Font.NameTahoma
Font.Style 
ItemHeight
ParentFontTabOrder     ёTPanelPanelMasterTop Height- TLabelLabel2LeftTopWidthHeightCaptionIDFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Heightѕ	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel1Left TopWidth7HeightCaption   DescriУЇУЃoFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Heightѕ	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit2LeftTopWidth Height	DataFieldPRODICOD
DataSourceDSMasterTemplateTabOrder   TDBEditDBEdit1Left TopWidthHeight	DataFieldPRODA60DESCR
DataSourceDSMasterTemplateTabOrder   ёTPanelPanelCodigoDescricaoTop-Height       ёTRxQuerySQLTemplateTagSQL.Strings2Select * From PRODUCAOPRODUTOFASE Where (%MFiltro)andPRODICOD = :PRODICOD 	ParamDataDataType	ftUnknownNamePRODICOD	ParamType	ptUnknown   TIntegerFieldSQLTemplatePRPFICODTagDisplayLabel   CУГd	FieldNamePRPFICODOriginDB.PRODUCAOPRODUTOFASE.PRPFICOD  TIntegerFieldSQLTemplatePRODICOD	FieldNamePRODICODOriginDB.PRODUCAOPRODUTOFASE.PRODICOD  TStringFieldSQLTemplatePRFAA13IDDisplayLabelID	FieldName	PRFAA13IDOrigin DB.PRODUCAOPRODUTOFASE.PRFAA13ID	FixedChar	Size  TFloatFieldSQLTemplatePRFAN2TEMPOTOTALDisplayLabelTempo Fase (Min)	FieldKindfkLookup	FieldNamePRFAN2TEMPOTOTALLookupDataSetSQLFaseLookupKeyFields	PRFAA13IDLookupResultFieldPRFAN2TEMPOTOTAL	KeyFields	PRFAA13IDVisibleLookup	  TFloatFieldSQLTemplatePRFAN2CUSTOTOTALDisplayLabel
Custo Fase	FieldKindfkLookup	FieldNamePRFAN2CUSTOTOTALLookupDataSetSQLFaseLookupKeyFields	PRFAA13IDLookupResultFieldPRFAN2CUSTOTOTAL	KeyFields	PRFAA13IDVisibleLookup	  TStringFieldSQLTemplatePRFAA30DESCRDisplayLabelDescr. Fase	FieldKindfkLookup	FieldNamePRFAA30DESCRLookupDataSetSQLFaseLookupKeyFields	PRFAA13IDLookupResultFieldPRFAA30DESCR	KeyFields	PRFAA13IDSizeLookup	  TIntegerFieldSQLTemplatePRPFISEQUENCIAPRODConstraintErrorMessage1DisplayLabel
   SequУЊncia	FieldNamePRPFISEQUENCIAPRODOrigin)DB.PRODUCAOPRODUTOFASE.PRPFISEQUENCIAPROD   TRxQuerySQLFaseDatabaseNameDBRequestLive	SQL.Stringsselect * from PRODUCAOFASES Macros LeftTop   TStringFieldSQLFasePRFAA13ID	FieldName	PRFAA13IDOriginDB.PRODUCAOFASES.PRFAA13ID	FixedChar	Size  TStringFieldSQLFasePRFAA30DESCR	FieldNamePRFAA30DESCROriginDB.PRODUCAOFASES.PRFAA30DESCR	FixedChar	Size  	TBCDFieldSQLFasePRFAN2CUSTOTOTAL	FieldNamePRFAN2CUSTOTOTALOrigin!DB.PRODUCAOFASES.PRFAN2CUSTOTOTAL	PrecisionSize  	TBCDFieldSQLFasePRFAN2TEMPOTOTAL	FieldNamePRFAN2TEMPOTOTALOrigin!DB.PRODUCAOFASES.PRFAN2TEMPOTOTAL	PrecisionSize   TDataSource	dsSQLFaseDataSetSQLFaseLeft0Top     