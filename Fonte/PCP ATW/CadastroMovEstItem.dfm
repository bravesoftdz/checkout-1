�
 TFORMCADASTROMOVESTITEM 0Z  TPF0�TFormCadastroMovEstItemFormCadastroMovEstItemLeft� Top� CaptionFormCadastroMovEstItemOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipalTopCHeight �	TTabSheetTabSheetConsulta �TDBGridDBGridListaHeight6ColumnsExpanded	FieldName	MOVDA13IDWidthaVisible	 Expanded	FieldName	MVPIIITEMVisible	 Expanded	FieldNamePRODA60DESCRVisible	 Expanded	FieldName	MVPIN3QTDVisible	 Expanded	FieldNameREGISTROVisible	 Expanded	FieldName
LOTEA30NROVisible	     �	TTabSheetTabSheetDadosPrincipais TLabelLabel3LeftTopWidth-HeightCaptionProdutoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel4LeftTopWidthHeightCaptionQdteFocusControlDBEdit4Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel5Left\TopWidthHeightCaptionLoteFocusControlDBEdit5Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit4LeftTopWidthHHeight	DataField	MVPIN3QTD
DataSource
DSTemplateTabOrder   TDBEditDBEdit5Left\TopWidthIHeight	DataField
LOTEA30NRO
DataSource
DSTemplateTabOrder  TRxDBLookupComboRxDBLookupCombo1LeftTopWidthHeightDropDownCount	DataFieldPRODICOD
DataSource
DSTemplateLookupFieldPRODICODLookupDisplayPRODA60DESCRLookupSourceDSSQLProdutoTabOrder    �TPanelPanelMasterTop9Height
  �TPanelPanelCodigoDescricaoHeight9 TLabelLabel1LeftTopWidthHeightCaption   CódFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2LeftPTopWidthPHeightCaptionID MovimentoFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel6LeftTopWidth^HeightCaptionData MovimentoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel7Left�TopWidth+HeightCaption   UsuárioFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidthAHeight	DataField	MVPIIITEM
DataSource
DSTemplateTabOrder   TDBEditDBEdit2LeftPTopWidth� Height	DataField	MOVDA13ID
DataSourceDSMasterTemplateTabOrder  TDBEditDBEdit3LeftTopWidthyHeight	DataFieldMEPDDMOVIMENTO
DataSourceDSMasterTemplateTabOrder  TDBEditDBEdit6Left�TopWidthyHeight	DataFieldUSUAA60LOGIN
DataSourceDSMasterTemplateTabOrder       �TRxQuerySQLTemplateTagSQL.Strings!Select * From MOVESTPRODUCAOITEM where MOVDA13ID = :MOVDA13ID and (%MFiltro) 	ParamDataDataType	ftUnknownName	MOVDA13ID	ParamType	ptUnknown   TStringFieldSQLTemplateMOVDA13IDDisplayLabelID Movimento	FieldName	MOVDA13IDOriginDB.MOVESTPRODUCAOITEM.MOVDA13ID	FixedChar	Size  TIntegerFieldSQLTemplateMVPIIITEMTagDisplayLabelItem	FieldName	MVPIIITEMOriginDB.MOVESTPRODUCAOITEM.MVPIIITEMVisible  TIntegerFieldSQLTemplatePRODICODDisplayLabel	   Prod Cód	FieldNamePRODICODOriginDB.MOVESTPRODUCAOITEM.PRODICOD  	TBCDFieldSQLTemplateMVPIN3QTDDisplayLabelQtde	FieldName	MVPIN3QTDOriginDB.MOVESTPRODUCAOITEM.MVPIN3QTD	PrecisionSize  TStringFieldSQLTemplatePENDENTEDisplayLabelPendente	FieldNamePENDENTEOriginDB.MOVESTPRODUCAOITEM.PENDENTE	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRODisplayLabelRegistro	FieldNameREGISTROOriginDB.MOVESTPRODUCAOITEM.REGISTRO  TStringFieldSQLTemplateLOTEA30NRODisplayLabelLote	FieldName
LOTEA30NROOrigin DB.MOVESTPRODUCAOITEM.LOTEA30NRO	FixedChar	Size  TStringFieldSQLTemplatePRODA60DESCRDisplayLabel   Descrição	FieldKindfkLookup	FieldNamePRODA60DESCRLookupDataSet
SQLProdutoLookupKeyFieldsPRODICODLookupResultFieldPRODA60DESCR	KeyFieldsPRODICODSize<Lookup	   TRxQuery
SQLProdutoDatabaseNameDBSQL.Stringsselect * from produto Macros Left0Top�   TDataSourceDSSQLProdutoDataSet
SQLProdutoLeftPTop�    