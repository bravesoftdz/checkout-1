џ
 TFORMCADASTROCLIENTECONTATO 0$  TPF0ёTFormCadastroClienteContatoFormCadastroClienteContatoLeftм TopgCaptionCadastro de ContatosOldCreateOrder	PixelsPerInch`
TextHeight ё
TScrollBoxScrollBoxFundo ёTPanelPanelCentral ёTPanelPanelFundoDados ёTPanelPanel5 ёTPageControlPagePrincipalTopVHeightw
ActivePageTabSheetDadosPrincipaisTabIndex ё	TTabSheetTabSheetConsulta ёTDBGridDBGridListaHeight.   ё	TTabSheetTabSheetDadosPrincipais TLabelLabel4LeftTopWidth-HeightCaption	   EndereУЇo  TLabelLabel5LeftTop(WidthHeightCaptionBairro  TLabelLabel6LeftTopNWidth!HeightCaptionCidade  TLabelLabel7LeftTop(WidthHeightCaptionCep  TLabelLabel8LeftTopvWidth!HeightCaptionFone 1  TLabelLabel9LeftЁ TopvWidth!HeightCaptionFone 2  TLabelLabel10LeftDTopvWidthHeightCaptionFax  TLabelLabel11LeftчTopvWidth!HeightCaptionCelular  TLabelLabel12LeftTop WidthHeightCaptionEmail  TLabelLabel13LeftTopТ WidthHeightCaptionURL  TDBEditDBEdit6LeftTopWidthHeight	DataField
CONTA60END
DataSource
DSTemplateTabOrder   TDBEditDBEdit7LeftTop8WidthHeight	DataFieldCONTA60BAIRRO
DataSource
DSTemplateTabOrder  TDBEditDBEdit8LeftTop^WidthHeight	DataFieldCIDAA60NOME
DataSourceDSTblCidadeTabOrder  TDBEditDBEdit9LeftTop8WidthhHeight	DataField	CONTA8CEP
DataSource
DSTemplateTabOrder  TDBEditDBEdit10LeftTop Width Height	DataFieldCONTA15FONE1
DataSource
DSTemplateTabOrder  TDBEditDBEdit11Left  Top Width  Height	DataFieldCONTA15FONE2
DataSource
DSTemplateTabOrder  TDBEditDBEdit12LeftCTop Width  Height	DataField
CONTA15FAX
DataSource
DSTemplateTabOrder  TDBEditDBEdit13LeftцTop Width  Height	DataFieldCONTA15CELULAR
DataSource
DSTemplateTabOrder  TDBEditDBEdit14LeftTop­ WidthHeight	DataFieldCONTA254EMAIL
DataSource
DSTemplateTabOrder  TDBEditDBEdit15LeftTopв WidthHeight	DataFieldCLIEA254URL
DataSource
DSTemplateTabOrder	    ёTPanelPanelMasterHeight- TLabelLabel2LeftTopWidth!HeightCaptionClienteFocusControlDBEdit2  TDBEditDBEdit2LeftTopWidth|Height	DataField	CLIEA13ID
DataSourceDSMasterTemplateTabOrder   TDBEditDBEdit3Left TopWidthHeight	DataFieldCLIEA60RAZAOSOC
DataSourceDSMasterTemplateTabOrder   ёTPanelPanelCodigoDescricaoTop- TLabelLabel1LeftTopWidth!HeightCaption   CУГdigoFocusControlDBEdit1  TLabelLabel3LeftMTopWidth'HeightCaptionContatoFocusControlDBEdit4  TSpeedButton
BtnContatoLeft TopWidthHeightHintAcessa Cadastro de PessoasFlat	
Glyph.Data
Ђ    BM      6   (               h  Ф  Ф          џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ      џ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ         џ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џ         џ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џ         џ џџ џџ џ  џ џџ џ ИП?H@      ?8?oho      џ џџ џџ џџ џ  џ џ ИА/0/p`po      џ џџ џџ џџ џџ џ  џ џ?@@ ИАЈЏ`po@H@џ џџ џџ џџ џџ џ  џ џ   АШРЯип ААЈ    џ џџ џџ џџ џџ џ  џ џ   Паа№ј№ЏРПАА     џ џџ џџ џџ џџ џ  џ џ?@@ЯрпршяЏИПАЏp?H@џ џџ џџ џџ џџ џ  џ џЈЏ/0/АШЯЏРР/00ЏРПџ џџ џџ џџ џџ џ  џ џџ џАА?@@      ?H@ЏИПџ џџ џџ џџ џџ џџ џ  џ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џџ џ  OnClickBtnContatoClick  TDBEditDBEdit1LeftTopWidthDHeight	DataFieldCLCOICOD
DataSource
DSTemplateTabOrder   TDBEditDBEdit4LeftMTopWidthDHeight	DataFieldCONTICOD
DataSource
DSTemplateTabOrder	OnKeyDownDBEdit4KeyDown  TDBEditDBEdit5LeftЌ TopWidthрHeight	DataFieldCONTA60NOME
DataSource
DSTemplateTabOrder       ёTRxQuerySQLTemplateTagSQL.Strings#Select * From ClienteContato Where CLIEA13ID = :CLIEA13IDand
(%MFiltro) 	ParamDataDataTypeftStringName	CLIEA13ID	ParamType	ptUnknown   TIntegerFieldSQLTemplateCLCOICODTagDisplayLabelCodigo	FieldNameCLCOICODOriginDB.CLIENTECONTATO.CLCOICODVisible  TStringFieldSQLTemplateCLIEA13IDTagDisplayLabelCliente	FieldName	CLIEA13IDOriginDB.CLIENTECONTATO.CLIEA13IDVisible	FixedChar	Size  TIntegerFieldSQLTemplateCONTICODDisplayLabelContato	FieldNameCONTICODOriginDB.CLIENTECONTATO.CONTICOD  TStringFieldSQLTemplateCONTA60NOME	FieldKindfkLookup	FieldNameCONTA60NOMELookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA60NOME	KeyFieldsCONTICODVisibleSize Lookup	  TStringFieldSQLTemplateCONTA60END	FieldKindfkLookup	FieldName
CONTA60ENDLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultField
CONTA60END	KeyFieldsCONTICODVisibleSize<Lookup	  TStringFieldSQLTemplateCONTA60BAIRRO	FieldKindfkLookup	FieldNameCONTA60BAIRROLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA60BAIRRO	KeyFieldsCONTICODVisibleSize<Lookup	  TStringFieldSQLTemplateCONTA8CEP	FieldKindfkLookup	FieldName	CONTA8CEPLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultField	CONTA8CEP	KeyFieldsCONTICODVisibleEditMask00000\-9999;0;_SizeLookup	  TStringFieldSQLTemplateCONTA15FONE1	FieldKindfkLookup	FieldNameCONTA15FONE1LookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA15FONE1	KeyFieldsCONTICODVisibleSizeLookup	  TStringFieldSQLTemplateCONTA15FONE2	FieldKindfkLookup	FieldNameCONTA15FONE2LookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA15FONE2	KeyFieldsCONTICODVisibleSizeLookup	  TStringFieldSQLTemplateCONTA15FAX	FieldKindfkLookup	FieldName
CONTA15FAXLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultField
CONTA15FAX	KeyFieldsCONTICODVisibleSizeLookup	  TStringFieldSQLTemplateCONTA15CELULAR	FieldKindfkLookup	FieldNameCONTA15CELULARLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA15CELULAR	KeyFieldsCONTICODVisibleSizeLookup	  TStringFieldSQLTemplateCONTA254EMAIL	FieldKindfkLookup	FieldNameCONTA254EMAILLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA254EMAIL	KeyFieldsCONTICODVisibleSizeў Lookup	  TStringFieldSQLTemplateCLIEA254URL	FieldKindfkLookup	FieldNameCLIEA254URLLookupDataSet
TblContatoLookupKeyFieldsCONTICODLookupResultFieldCONTA254URL	KeyFieldsCONTICODVisibleSizeў Lookup	   TTable
TblContatoDatabaseNameDB	TableNameCONTATOLeftTop   TIntegerFieldTblContatoCONTICOD	FieldNameCONTICODRequired	  TStringFieldTblContatoCONTA60NOME	FieldNameCONTA60NOME	FixedChar	Size<  TStringFieldTblContatoCONTA60END	FieldName
CONTA60END	FixedChar	Size<  TStringFieldTblContatoCONTA60BAIRRO	FieldNameCONTA60BAIRRO	FixedChar	Size<  TStringFieldTblContatoCONTA8CEP	FieldName	CONTA8CEP	FixedChar	Size  TIntegerFieldTblContatoCIDAICOD	FieldNameCIDAICOD  TStringFieldTblContatoESTAA2UF	FieldNameESTAA2UF	FixedChar	Size  TStringFieldTblContatoCONTA15FONE1	FieldNameCONTA15FONE1	FixedChar	Size  TStringFieldTblContatoCONTA15FONE2	FieldNameCONTA15FONE2	FixedChar	Size  TStringFieldTblContatoCONTA15FAX	FieldName
CONTA15FAX	FixedChar	Size  TStringFieldTblContatoCONTA15CELULAR	FieldNameCONTA15CELULAR	FixedChar	Size  TStringFieldTblContatoCONTA10RG	FieldName	CONTA10RG	FixedChar	Size
  TStringFieldTblContatoCONTA11CPF	FieldName
CONTA11CPF	FixedChar	Size  TIntegerFieldTblContatoPRONICOD	FieldNamePRONICOD  TIntegerFieldTblContatoCARGICOD	FieldNameCARGICOD  TDateTimeFieldTblContatoCONTDNASC	FieldName	CONTDNASC  TStringFieldTblContatoCONTA254EMAIL	FieldNameCONTA254EMAIL	FixedChar	Sizeў   TStringFieldTblContatoCONTA254URL	FieldNameCONTA254URL	FixedChar	Sizeў   TStringFieldTblContatoCONTCSEXO	FieldName	CONTCSEXO	FixedChar	Size  TStringFieldTblContatoCONTA254OBS	FieldNameCONTA254OBS	FixedChar	Sizeў    TTable
TblPronomeDatabaseNameDBIndexFieldNamesPRONICODMasterFieldsPRONICODMasterSourceDSTblContato	TableNamePRONOMELeftTopМ  TIntegerFieldTblPronomePRONICOD	FieldNamePRONICODRequired	  TStringFieldTblPronomePRONA15DESCRDisplayLabelPronome	FieldNamePRONA15DESCR	FixedChar	Size  TIntegerFieldTblPronomePRONINIVEL	FieldName
PRONINIVEL   TDataSourceDSTblContatoAutoEditDataSet
TblContatoLeft$Top    TTableTblCargoDatabaseNameDBIndexFieldNamesCARGICODMasterFieldsCARGICODMasterSourceDSTblContato	TableNameCARGOLeft$TopМ  TIntegerFieldTblCargoCARGICOD	FieldNameCARGICODRequired	  TStringFieldTblCargoCARGA60DESCR	FieldNameCARGA60DESCR	FixedChar	Size<   TTable	TblCidadeDatabaseNameDBIndexFieldNamesCIDAICODMasterFieldsCIDAICODMasterSourceDSTblContato	TableNameCIDADELeft@TopМ   TTable	TblEstadoDatabaseNameDBIndexFieldNamesESTAA2UFMasterFieldsESTAA2UFMasterSourceDSTblContato	TableNameESTADOLeft\TopМ   TDataSourceDSTblPronomeAutoEditDataSet
TblPronomeLeftTopи   TDataSource
DSTblCargoAutoEditDataSetTblCargoLeft$Topи   TDataSourceDSTblCidadeAutoEditDataSet	TblCidadeLeft@Topи   TDataSourceDSTblEstadoAutoEditDataSet	TblEstadoLeft\Topи    