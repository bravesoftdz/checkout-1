�
 TFORMTELACONSULTARAPIDACUPOM 0�
  TPF0TFormTelaConsultaRapidaCupomFormTelaConsultaRapidaCupomLeft-ToplBorderIconsbiSystemMenu BorderStylebsSingleCaptionConsulta de CuponsClientHeight+ClientWidth�Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoDesktopCenterPixelsPerInch`
TextHeight TDBGridDBGridListaLeft Top Width�Height+AlignalClientBorderStylebsNone
DataSource
DSSQLCupom
FixedColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit ParentColor	
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold 	OnKeyDownDBGridListaKeyDownColumnsExpanded	FieldName	CUPOA13IDVisible	 Expanded	FieldNameCUPON2TOTITENSWidthAVisible	 Expanded	FieldName	CUPODEMISWidth:Visible	 Expanded	FieldNameCLIEA60RAZAOSOCWidth� Visible	 Expanded	FieldNameVENDA60NOMEWidth� Visible	 Expanded	FieldNamePLRCA60DESCRWidthjVisible	    TPanelPanel1Left�Top WidthHeight+AlignalRight
BevelOuterbvNoneParentColor	TabOrder  TDataSource
DSSQLCupomAutoEditDataSetSQLCupomLeft8Top@  TRxQuerySQLCupomDatabaseNameDBSQL.StringsSelect Cupom.CUPOA13ID,Cupom.CUPON2TOTITENS,Cupom.CUPODEMIS,Cliente.CLIEA60RAZAOSOC,Vendedor.VENDA60NOME,PlanoRecebimento.PLRCA60DESCR from CUPOM>left outer join CLIENTE on CUPOM.CLIEA13ID = CLIENTE.CLIEA13ID>left outer join VENDEDOR on CUPOM.VENDICOD = VENDEDOR.VENDICODNleft outer join PLANORECEBIMENTO on PLANORECEBIMENTO.PLRCICOD = CUPOM.PLRCICOD Where Cupom.CUPOCSTATUS <> 'C' and%DataEmissao and%Empresa and	%Terminal Order ByCupom.CUPOA13ID  MacrosDataTypeftStringNameDataEmissao	ParamTypeptInputValue0=0 DataTypeftStringNameEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameTerminal	ParamTypeptInputValue0=0  LeftTTop@ TStringFieldSQLCupomCUPOA13IDDisplayLabelID Cupom	FieldName	CUPOA13ID	FixedChar	Size  	TBCDFieldSQLCupomCUPON2TOTITENSDisplayLabel
Vlr. Itens	FieldNameCUPON2TOTITENSDisplayFormat#,##0.00	PrecisionSize  TDateTimeFieldSQLCupomCUPODEMISDisplayLabel   Emissão	FieldName	CUPODEMIS  TStringFieldSQLCupomCLIEA60RAZAOSOCDisplayLabelCliente	FieldNameCLIEA60RAZAOSOC	FixedChar	Size<  TStringFieldSQLCupomVENDA60NOMEDisplayLabelVendedor	FieldNameVENDA60NOME	FixedChar	Size<  TStringFieldSQLCupomPLRCA60DESCRDisplayLabelPlano	FieldNamePLRCA60DESCR	FixedChar	Size<    