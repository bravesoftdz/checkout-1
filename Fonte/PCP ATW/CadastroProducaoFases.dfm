�
 TFORMCADASTROPRODUCAOFASES 0�  TPF0�TFormCadastroProducaoFasesFormCadastroProducaoFasesLeft� TopwCaption   Cadastro Fases da ProduçãoClientHeight OldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundoHeight  �TPanelPanelCentralHeight� �TPanel
PanelBarraHeight� �TRxSpeedButtonButton3Caption&3 AtividadesVisible	OnClickButton1Click   �TPanelPanelFundoDadosHeight� �TPanelPanel5Height� �TPageControlPagePrincipalTop1Height� �	TTabSheetTabSheetConsulta �TDBGridDBGridListaHeightTColumnsExpanded	FieldName	PRFAA13IDVisible	 Expanded	FieldNamePRFAICODVisible	 Expanded	FieldNamePRFAA30DESCRVisible	 Expanded	FieldNamePRFAN2CUSTOTOTALVisible	 Expanded	FieldNamePRFAN2TEMPOTOTALVisible	 Expanded	FieldNamePRFAN2CAPACPRODVisible	    �TMemoMemoDetalhesTopLines.StringsPRODUCAOFASESATIV     �	TTabSheetTabSheetDadosPrincipais 	TGroupBox	GroupBox1Left Top Width�HeightACaptionTempo Estimado FaseFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  TLabellblDiasLeft(TopWidthHeightCaptionDiasFocusControledDiasFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabellblHorasLeft� TopWidth!HeightCaptionHorasFocusControledHorasFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel5LeftTopWidth-HeightCaptionMinutosFocusControlDBEdit5Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditedDiasLeft(Top Width� HeightBorderStylebsNoneColorclWhite	DataFieldDias
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder   TDBEditedHorasLeft� Top Width� HeightBorderStylebsNoneColorclWhite	DataFieldHoras
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder  TDBEditDBEdit5LeftTop Width� HeightBorderStylebsNoneColorclWhite	DataFieldMinutos
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder     �TPanelPanelMasterHeight  �TPanelPanelCodigoDescricao TLabelLabel1LeftTopWidthHeightCaptionIDFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2LefthTopWidth7HeightCaption   DescriçãoFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel3Left�TopWidthDHeightCaptionCapacidade FocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidthYHeight	DataField	PRFAA13ID
DataSource
DSTemplateTabOrder   TDBEditDBEdit2LefthTopWidth�Height	DataFieldPRFAA30DESCR
DataSource
DSTemplateTabOrder  TDBEditDBEdit3Left�TopWidthAHeight	DataFieldPRFAN2CAPACPROD
DataSource
DSTemplateTabOrder       �TRxQuerySQLTemplateTagOnCalcFieldsSQLTemplateCalcFieldsSQL.Strings,Select * From PRODUCAOFASES Where (%MFiltro)  TIntegerFieldSQLTemplateEMPRICODDisplayLabelEmpresa	FieldNameEMPRICODOriginDB.PRODUCAOFASES.EMPRICOD  TStringFieldSQLTemplatePRFAA13IDTagDisplayLabelID	FieldName	PRFAA13IDOriginDB.PRODUCAOFASES.PRFAA13IDVisible	FixedChar	Size  TIntegerFieldSQLTemplatePRFAICODTagDisplayLabel   Cód	FieldNamePRFAICODOriginDB.PRODUCAOFASES.PRFAICOD  	TBCDFieldSQLTemplatePRFAN2CAPACPRODDisplayLabel   Cap. de Produção	FieldNamePRFAN2CAPACPRODOrigin DB.PRODUCAOFASES.PRFAN2CAPACPROD	PrecisionSize  TStringFieldSQLTemplatePRFAA30DESCRDisplayLabel   Descrição	FieldNamePRFAA30DESCROriginDB.PRODUCAOFASES.PRFAA30DESCR	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRODisplayLabelRegistro	FieldNameREGISTROOriginDB.PRODUCAOFASES.REGISTRO  TStringFieldSQLTemplatePENDENTEDisplayLabelPendente	FieldNamePENDENTEOriginDB.PRODUCAOFASES.PENDENTE	FixedChar	Size  	TBCDFieldSQLTemplatePRFAN2CUSTOTOTALDisplayLabelCusto Total	FieldNamePRFAN2CUSTOTOTALOrigin!DB.PRODUCAOFASES.PRFAN2CUSTOTOTAL	PrecisionSize  	TBCDFieldSQLTemplatePRFAN2TEMPOTOTALDisplayLabelTempo Total	FieldNamePRFAN2TEMPOTOTALOrigin!DB.PRODUCAOFASES.PRFAN2TEMPOTOTAL	PrecisionSize  TFloatFieldSQLTemplateDias	FieldKindfkCalculated	FieldNameDiasVisible
Calculated	  TFloatFieldSQLTemplateHoras	FieldKindfkCalculated	FieldNameHorasVisible
Calculated	  TFloatFieldSQLTemplateMinutos	FieldKindfkCalculated	FieldNameMinutosVisible
Calculated	    