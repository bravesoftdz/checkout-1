�
 TFORMTELASELECAOCIDADEUFFRETE 0�  TPF0TFormTelaSelecaoCidadeUFFreteFormTelaSelecaoCidadeUFFreteLeft=Top� BorderIcons BorderStylebsToolWindowCaption   Seleção Cidade/UFClientHeight� ClientWidthWColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top WidthWHeight'AlignalTopColor3f� Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder  TLabelLabelTituloLeftTopWidthNHeightCaption'Indique a Cidade/UF de Destino do FreteFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontLayouttlCenter   TPanelPanel2Left Top'WidthWHeight� AlignalClientColor�ؿ TabOrder TLabelLabel1Left(Top0Width(HeightCaptionCidadeFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2Left(TopWidth(HeightCaptionEstadoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TRxDBLookupCombo	dblEstadoLeft(TopWidth!HeightCursorcrHandPointDropDownCountDisplayAllFields	DisplayEmpty...
EmptyValuenullLookupFieldICMUA2UFLookupDisplayICMUA2UF;ICMUA30NOMEESTADOLookupSourcedsSQLEstadoTabOrder   TRxDBLookupCombo	dblCidadeLeft(Top@Width!HeightCursorcrHandPointDropDownCountDisplayAllFields	DisplayEmpty...
EmptyValuenullLookupFieldCIDAICODLookupDisplayICMUA2UF;CIDAA60NOMELookupDisplayIndexLookupSourceDSSQLCidadeTabOrder  	TConerBtn	ConerBtn1LeftPTop`WidthKHeightCursorcrHandPointCaptionCancelaTabOrderKindbkCancelFlat
PlaceConerpcNoneSymbolStatessCloseSymbolColorOpenclRedSymbolColorCloseclMaroonTransparent	  	TConerBtn	ConerBtn2Left� Top`WidthKHeightCursorcrHandPointTabOrderOnClickConerBtn2ClickKindbkOKFlat
PlaceConerpcNoneSymbolStatessCloseSymbolColorOpenclRedSymbolColorCloseclMaroonTransparent	   TRxQuery	SQLCidadeDatabaseNameDB
DataSourcedsSQLEstadoSQL.StringsSelect distinctCIDADE.CIDAICOD, CIDADE.CIDAA60NOME,ICMSUF.ICMUA2UFfromTABELAFRETECIDADE Gleft outer join CIDADE on CIDADE.CIDAICOD = TABELAFRETECIDADE.CIDAICOD ;left outer join ICMSUF on ICMSUF.ICMUA2UF = CIDADE.ICMUA2UFwhereCIDADE.ICMUA2UF = :ICMUA2UFand
(%MFiltro)order byICMSUF.ICMUA2UF,CIDADE.CIDAA60NOME MacrosDataTypeftStringNameMFiltro	ParamTypeptInputValue0=0  Topp	ParamDataDataTypeftFixedCharNameICMUA2UF	ParamType	ptUnknownSize    TRxQuery	SQLEstadoDatabaseNameDBSQL.StringsSelect *fromICMSUForder byICMUA2UF Macros Top( TStringFieldSQLEstadoICMUA2UF	FieldNameICMUA2UFOriginDB.ICMSUF.ICMUA2UF	FixedChar	Size  	TBCDFieldSQLEstadoICMUN2ALIQUOTA	FieldNameICMUN2ALIQUOTAOriginDB.ICMSUF.ICMUN2ALIQUOTA	PrecisionSize  	TBCDFieldSQLEstadoICMSN2PERCSUBSTSAI	FieldNameICMSN2PERCSUBSTSAIOriginDB.ICMSUF.ICMSN2PERCSUBSTSAI	PrecisionSize  TStringFieldSQLEstadoICMUA30NOMEESTADO	FieldNameICMUA30NOMEESTADOOriginDB.ICMSUF.ICMUA30NOMEESTADO	FixedChar	Size   TDataSourcedsSQLEstadoDataSet	SQLEstadoTopH  TDataSourceDSSQLCidadeDataSet	SQLCidadeTop�    