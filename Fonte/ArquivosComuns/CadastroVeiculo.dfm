�
 TFORMCADASTROVEICULO 0D  TPF0�TFormCadastroVeiculoFormCadastroVeiculoLeft� Top}Caption   Cadastro de VeículosOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipal �	TTabSheetTabSheetConsulta �TPanelPanelProcura �TPanelPanelBetween �	TAdvPanel	AdvPanel1
FullHeight    �TPanelPanelEditProcura �	TAdvPanelAdvPanelEditProcura
FullHeight    �TPanelPanelIndice �	TAdvPanelAdvPanelIndice
FullHeight      �	TTabSheetTabSheetDadosPrincipais TLabelLabel4LeftTopdWidthYHeightCaptionPeso SuportadoFocusControlDBEdit4Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel3LeftTop<Width#HeightCaptionMarcaFocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel6LeftTopWidthHeightCaptionCPFFocusControlDBEdit6Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit4LeftToprWidth� HeightCtl3D		DataFieldVEICN3PESOSUPORTA
DataSource
DSTemplateParentCtl3DTabOrder  TDBEditDBEdit3LeftTopJWidth� HeightCtl3D		DataFieldVEICA3OMARCA
DataSource
DSTemplateParentCtl3DTabOrder  TDBEditDBEdit6LeftTopWidth� HeightCtl3D		DataFieldVEICA3OMOTOCPF
DataSource
DSTemplateParentCtl3DTabOrder     �TPanelPanelCodigoDescricao TLabelLabel1LeftTopWidthHHeightCaptionNro. da PlacaFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2Left� TopWidth7HeightCaption   DescriçãoFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel5Left�TopWidth7HeightCaption	MotoristaFocusControlDBEdit5Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel7LeftiTopWidthHeightCaptionUFFocusControlDBEdit7Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidth_HeightCtl3D		DataFieldVEICA7PLACA
DataSource
DSTemplateParentCtl3DTabOrder   TDBEditDBEdit2Left� TopWidth,HeightCtl3D		DataFieldVEICA60DESCR
DataSource
DSTemplateParentCtl3DTabOrder  TDBEditDBEdit5Left�TopWidth� HeightCtl3D		DataFieldVEICA3OMOTORISTA
DataSource
DSTemplateParentCtl3DTabOrder  TDBEditDBEdit7LeftfTopWidthHeightCtl3D		DataFieldVEICA2UFPLACA
DataSource
DSTemplateParentCtl3DTabOrder       �
TPopupMenuPopupMenuDiversos 	TMenuItemRemoverItemdaPlaca1CaptionRemover Item da PlacaOnClickRemoverItemdaPlaca1Click   �TRxQuerySQLTemplateTagSQL.StringsSelect * From Veiculo Where (%Transp) and 
(%MFiltro) MacrosDataTypeftStringNameTransp	ParamTypeptInputValue0=0 DataTypeftStringNameMFiltro	ParamTypeptInputValue0=0   TStringFieldSQLTemplateVEICA13IDTag	FieldName	VEICA13IDOriginDB.VEICULO.VEICA13IDVisible	FixedChar	Size  TIntegerFieldSQLTemplateEMPRICOD	FieldNameEMPRICODOriginDB.VEICULO.EMPRICODVisible  TIntegerFieldSQLTemplateTERMICOD	FieldNameTERMICODOriginDB.VEICULO.TERMICODVisible  TIntegerFieldSQLTemplateVEICICODTag	FieldNameVEICICODOriginDB.VEICULO.VEICICODVisible  TStringFieldSQLTemplateVEICA7PLACADisplayLabelNro. da Placa	FieldNameVEICA7PLACAOriginDB.VEICULO.VEICA7PLACA	FixedChar	Size  TStringFieldSQLTemplateVEICA2UFPLACADisplayLabelUF	FieldNameVEICA2UFPLACAOriginDB.VEICULO.VEICA2UFPLACA	FixedChar	Size  TStringFieldSQLTemplateVEICA60DESCRDisplayLabel   Descrição	FieldNameVEICA60DESCROriginDB.VEICULO.VEICA60DESCR	FixedChar	Size<  TStringFieldSQLTemplateVEICA3OMARCADisplayLabelMarca	FieldNameVEICA3OMARCAOriginDB.VEICULO.VEICA3OMARCA	FixedChar	Size  TFloatFieldSQLTemplateVEICN3PESOSUPORTADisplayLabelPeso Suportado	FieldNameVEICN3PESOSUPORTAOriginDB.VEICULO.VEICN3PESOSUPORTA  TStringFieldSQLTemplateVEICA3OMOTORISTADisplayLabel	Motorista	FieldNameVEICA3OMOTORISTAOriginDB.VEICULO.VEICA3OMOTORISTA	FixedChar	Size  TStringFieldSQLTemplateVEICA3OMOTOCPFDisplayLabelCPF Motorista	FieldNameVEICA3OMOTOCPFOriginDB.VEICULO.VEICA3OMOTOCPF	FixedChar	Size  TIntegerFieldSQLTemplateTRANICODDisplayLabel   Cód.Transp	FieldNameTRANICODOriginDB.VEICULO.TRANICOD  TStringFieldSQLTemplatePENDENTE	FieldNamePENDENTEOriginDB.VEICULO.PENDENTEVisible	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRO	FieldNameREGISTROOriginDB.VEICULO.REGISTROVisible    