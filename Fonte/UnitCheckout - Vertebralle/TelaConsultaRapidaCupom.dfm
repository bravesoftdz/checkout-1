�
 TFORMTELACONSULTARAPIDACUPOM 0  TPF0TFormTelaConsultaRapidaCupomFormTelaConsultaRapidaCupomLeft�Top� BorderIconsbiSystemMenu BorderStylebsSingleCaptionConsulta de CuponsClientHeight�ClientWidth�Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoDesktopCenterPixelsPerInch`
TextHeight TDBGridDBGridListaLeft Top)Width�Height�AlignalClientBorderStylebsNone
DataSource
DSSQLCupom
FixedColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit ParentColor	
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold 	OnKeyDownDBGridListaKeyDownColumnsExpanded	FieldName	CUPOA13IDTitle.CaptionID VendaVisible	 Expanded	FieldNameCUPOINROTitle.CaptionCupomVisible	 Expanded	FieldNameVLRLIQTitle.Caption	Total LiqWidth?Visible	 Expanded	FieldNameCLIEA60RAZAOSOCWidth� Visible	 Expanded	FieldNameCLIENTECNPJWidthYVisible	 Expanded	FieldNamePLRCA60DESCRWidth{Visible	 Expanded	FieldNameVENDA60NOMEWidthqVisible	    TPanelPanel1Left�Top)WidthHeight�AlignalRight
BevelOuterbvNoneParentColor	TabOrder  TPanelPanel2Left Top Width�Height)AlignalTopTabOrder TLabelLabel1LeftTopWidthNHeightCaptionData MovimentoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  	TDateEditDeLeftlTopWidthoHeightFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	NumGlyphs
ParentFont
YearDigitsdyFourTabOrder 	OnKeyDown	DeKeyDown   TDataSource
DSSQLCupomAutoEditDataSetSQLCupomLeft8Top@  TRxQuerySQLCupomDatabaseNameDBSQL.StringsSelectCupom.CUPOA13ID,0Cupom.CUPON2TOTITENS-Cupom.CUPON2DESC as VlrLiq,Cupom.CUPODEMIS,Cliente.CLIEA60RAZAOSOC,Vendedor.VENDA60NOME,PlanoRecebimento.PLRCA60DESCR,Cupom.CUPOINRO,Cupom.CLIENTECNPJfromCUPOM>left outer join CLIENTE on CUPOM.CLIEA13ID = CLIENTE.CLIEA13ID>left outer join VENDEDOR on CUPOM.VENDICOD = VENDEDOR.VENDICODNleft outer join PLANORECEBIMENTO on PLANORECEBIMENTO.PLRCICOD = CUPOM.PLRCICODWhere(%MostraVendas)  and(Cupom.CUPOCSTATUS <> 'C') and%DataEmissao and%Empresa and	%TerminalOrder ByCupom.CUPOA13ID desc  MacrosDataTypeftStringNameMostraVendas	ParamTypeptInputValue0=0 DataTypeftStringNameDataEmissao	ParamTypeptInputValue0=0 DataTypeftStringNameEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameTerminal	ParamTypeptInputValue0=0  LeftTTop@ TStringFieldSQLCupomCUPOA13IDDisplayLabelID Cupom	FieldName	CUPOA13ID	FixedChar	Size  TIntegerFieldSQLCupomCUPOINRO	FieldNameCUPOINRO  TFloatFieldSQLCupomVLRLIQ	FieldNameVLRLIQDisplayFormat##0.00  TDateTimeFieldSQLCupomCUPODEMISDisplayLabel   Emissão	FieldName	CUPODEMIS  TStringFieldSQLCupomCLIEA60RAZAOSOCDisplayLabelCliente	FieldNameCLIEA60RAZAOSOC	FixedChar	Size<  TStringFieldSQLCupomVENDA60NOMEDisplayLabelVendedor	FieldNameVENDA60NOME	FixedChar	Size<  TStringFieldSQLCupomPLRCA60DESCRDisplayLabelPlano	FieldNamePLRCA60DESCR	FixedChar	Size<  TStringFieldSQLCupomCLIENTECNPJDisplayLabel	Documento	FieldNameCLIENTECNPJ	FixedChar	    