�
 TFORMRELATORIOCURVAABCESTOQUE 0�'  TPF0�TFormRelatorioCurvaABCEstoqueFormRelatorioCurvaABCEstoqueLeft� TopzCaption    Análise da Curva ABC de EstoqueClientHeight�ClientWidthDPixelsPerInch`
TextHeight �TProgressBar	ProgressoTop�WidthD  �
TScrollBox	ScrollBoxWidthDHeight� �TPanelLblTituloTelaWidth@  �TPanelPanelCentroLeft� TopLHeightf �TSpeedButtonBtnVisualizarLeft� Top6  �	TGroupBox	GroupBox1Width� HeightVisible �TLabelLabel3Top  �TLabelLabel4LeftvTop  �	TDateEditDeLeftTop  �	TDateEditAteLeft� Top   TRadioGroupRadioTipoRelLeftTopWidth� Height#Caption    Enfoque da análise ColumnsFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings
QuantidadeValor Custo 
ParentFontTabOrder  	TGroupBox	GroupBox3LeftTop� Width�HeightXFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder TLabelLabelSubGrupoLeft� Top
Width6HeightCaptionSubgrupoFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabelVariacaoLeftTop/Width1HeightCaption
   VariaçãoFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel11LeftTop
Width"HeightCaptionGrupoFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel5Left� Top/Width#HeightCaptionMarcaFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TRxDBLookupComboComboSubGrupoLeft� TopWidth� HeightDropDownCount	DataFieldSUBGICODEnabledLookupFieldSUBGICODLookupDisplaySUBGA60DESCRLookupSourceDSSQLSubgrupoTabOrder	OnKeyDownComboGrupoKeyDown  TRxDBLookupComboComboVariacaoLeftTop>Width� HeightDropDownCount	DataFieldVARIICODEnabledLookupFieldVARIICODLookupDisplayVARIA60DESCRLookupSourceDSSQLVariacaoTabOrder	OnKeyDownComboGrupoKeyDown  TRxDBLookupCombo
ComboGrupoLeftTopWidth� HeightDropDownCount	DataFieldGRUPICODLookupFieldGRUPICODLookupDisplayGRUPA60DESCRLookupSource
DSSQLGrupoTabOrder 	OnKeyDownComboGrupoKeyDown  TRxDBLookupCombo
ComboMarcaLeft� Top?Width� HeightDropDownCount	DataFieldVARIICODLookupFieldMARCICODLookupDisplayMARCA60DESCRLookupSource
DSSQLMarcaTabOrder	OnKeyDownComboGrupoKeyDown   	TCheckBox	CKAgruparLeft� TopWidth� HeightCaption   Agrupar pelo Código PrincipalFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  	TCheckBoxCkTopN25Left� TopWidthUHeightCaption
Top N = 25Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder   �TPanelPanelNavigatorWidth@ �TAdvOfficeStatusBarAdvPanelNavigatorWidth@    �TTableTblTemporaria	AfterPost	TableNameCurvaABCEstoque TIntegerFieldTblTemporariaPRODICOD	FieldNamePRODICOD  TStringFieldTblTemporariaPRODA60DESCR	FieldNamePRODA60DESCRSize<  TFloatFieldTblTemporariaVALORCUSTOUNIT	FieldNameVALORCUSTOUNIT  TFloatFieldTblTemporariaSALDOUNIT	FieldName	SALDOUNIT  TFloatFieldTblTemporariaTOTCUSTOITEM	FieldNameTOTCUSTOITEM  TIntegerFieldTblTemporariaPRODIAGRUPGRADE	FieldNamePRODIAGRUPGRADE   TRxQuerySQLGrupoDatabaseNameDBSQL.StringsSelect * from Grupo Macros Left�Top  TRxQuerySQLSubgrupoDatabaseNameDB
DataSource
DSSQLGrupoSQL.StringsSelect * from Subgrupo whereGRUPICOD = :GRUPICOD Macros Left�Top	ParamDataDataType	ftIntegerNameGRUPICOD	ParamType	ptUnknown    TRxQuerySQLVariacaoDatabaseNameDB
DataSourceDSSQLSubgrupoSQL.StringsSelect * from Variacao whereGRUPICOD = :GRUPICOD andSUBGICOD = :SUBGICOD Macros Left4Top	ParamDataDataType	ftIntegerNameGRUPICOD	ParamType	ptUnknown DataType	ftIntegerNameSUBGICOD	ParamType	ptUnknown    TRxQuerySQLMarcaDatabaseNameDBSQL.StringsSelect * from Marca Macros LeftlTop  TDataSource
DSSQLGrupoDataSetSQLGrupoLeft�Top  TDataSourceDSSQLSubgrupoDataSetSQLSubgrupoLeftTop  TDataSourceDSSQLVariacaoDataSetSQLVariacaoLeftPTop  TCrpeReportAboutVersion and Credits...DesignControlsDesign-Time Window ControlsVersion.Major Version.Minor 
ReportName:C:\Desenv\GestaoOficial\Relatorios\Curva ABC de Vendas.rptMargins.Left�Margins.Right�Margins.Top�Margins.Bottom�DiscardSavedData	PrintDate.Day PrintDate.Month PrintDate.Year Subreports.NLinks Subreports.OnDemandTables.Number�SortFields.Number�GroupSortFields.Number�GroupCondition.Number�GroupCondition.GroupTypegtOtherGroupOptions.Number�GroupOptions.GroupTypegtOtherGroupOptions.RepeatGHcDefaultGroupOptions.KeepTogethercDefaultGroupOptions.TopNOptions	tnDefaultGroupOptions.TopNGroups�GroupOptions.TopNDiscardOtherscDefaultParamFields.ParamTypepfStringParamFields.ParamSourcepsReportParamFields.Info.AllowNullcDefaultParamFields.Info.AllowEditingcDefault$ParamFields.Info.AllowMultipleValuescDefaultParamFields.Info.ValueType
vtDiscreteParamFields.Info.PartOfGroupcDefault'ParamFields.Info.MutuallyExclusiveGroupcDefaultParamFields.Info.GroupNum�ParamFields.ValueLimitcDefaultParamFields.Ranges.Number�ParamFields.Ranges.RangeBoundsIncludeStartAndEndParamFields.PLDescriptionOnlycDefaultParamFields.PLSortMethodpsmDefaultSortParamFields.PLSortByDescriptioncDefaultFormulas.Formula.Strings
'Variacao' SectionFormat.BackgroundColorclNoneSectionHeight.Height SQL.Params.ParamTypespCharLogOnInfo.Table�SessionInfo.Table�SessionInfo.Propagate	Export.Excel.Constant       �@Export.Excel.AreaDExport.CharSepQuote WindowZoom.Magnification�WindowStatewsMaximizedWindowButtonBar.CloseBtn	WindowButtonBar.PrintSetupBtn	WindowButtonBar.SearchBtn	WindowCursor.GroupArea	wcDefaultWindowCursor.GroupAreaField	wcDefaultWindowCursor.DetailArea	wcDefaultWindowCursor.DetailAreaField	wcDefaultWindowCursor.Graph	wcDefaultGraphType.Number�GraphType.StylebarSideBySideGraphText.Number�GraphText.TitleFont.CharsetDEFAULT_CHARSETGraphText.TitleFont.ColorclWindowTextGraphText.TitleFont.Height�GraphText.TitleFont.NameMS Sans SerifGraphText.TitleFont.Style GraphText.SubTitleFont.CharsetDEFAULT_CHARSETGraphText.SubTitleFont.ColorclWindowTextGraphText.SubTitleFont.Height�GraphText.SubTitleFont.NameMS Sans SerifGraphText.SubTitleFont.Style GraphText.FootNoteFont.CharsetDEFAULT_CHARSETGraphText.FootNoteFont.ColorclWindowTextGraphText.FootNoteFont.Height�GraphText.FootNoteFont.NameMS Sans SerifGraphText.FootNoteFont.Style !GraphText.GroupsTitleFont.CharsetDEFAULT_CHARSETGraphText.GroupsTitleFont.ColorclWindowText GraphText.GroupsTitleFont.Height�GraphText.GroupsTitleFont.NameMS Sans SerifGraphText.GroupsTitleFont.Style GraphText.DataTitleFont.CharsetDEFAULT_CHARSETGraphText.DataTitleFont.ColorclWindowTextGraphText.DataTitleFont.Height�GraphText.DataTitleFont.NameMS Sans SerifGraphText.DataTitleFont.Style GraphText.LegendFont.CharsetDEFAULT_CHARSETGraphText.LegendFont.ColorclWindowTextGraphText.LegendFont.Height�GraphText.LegendFont.NameMS Sans SerifGraphText.LegendFont.Style !GraphText.GroupLabelsFont.CharsetDEFAULT_CHARSETGraphText.GroupLabelsFont.ColorclWindowText GraphText.GroupLabelsFont.Height�GraphText.GroupLabelsFont.NameMS Sans SerifGraphText.GroupLabelsFont.Style  GraphText.DataLabelsFont.CharsetDEFAULT_CHARSETGraphText.DataLabelsFont.ColorclWindowTextGraphText.DataLabelsFont.Height�GraphText.DataLabelsFont.NameMS Sans SerifGraphText.DataLabelsFont.Style GraphOptions.Number�GraphOptions.Max       ���GraphOptions.Min       ���GraphOptions.DataValuescDefaultGraphOptions.GridLinescDefaultGraphOptions.LegendcDefaultGraphOptions.BarDirection	bdDefaultGraphOptionInfo.Number�GraphOptionInfo.Color	gcDefaultGraphOptionInfo.Legend	glDefaultGraphOptionInfo.PieSize
gpsDefaultGraphOptionInfo.PieSlice
gslDefaultGraphOptionInfo.BarSize
gbsDefaultGraphOptionInfo.BarDirection	bdDefaultGraphOptionInfo.MarkerSize
gmsDefaultGraphOptionInfo.MarkerShape
gshDefaultGraphOptionInfo.DataPoints
gdpDefaultGraphOptionInfo.NumberFormat
gnfDefaultGraphOptionInfo.ViewingAngle
gvaDefaultGraphData.Number�GraphData.RowGroupN�GraphData.ColGroupN�GraphData.SummarizedFieldN�GraphData.DirectionUnknownGraphAxis.Number�GraphAxis.GridLineX
gglDefaultGraphAxis.GridLineY
gglDefaultGraphAxis.GridLineY2
gglDefaultGraphAxis.GridLineZ
gglDefaultGraphAxis.DataValuesY
gdvDefaultGraphAxis.DataValuesY2
gdvDefaultGraphAxis.DataValuesZ
gdvDefaultGraphAxis.NumberFormatY
gnfDefaultGraphAxis.NumberFormatY2
gnfDefaultGraphAxis.NumberFormatZ
gnfDefaultGraphAxis.DivisionTypeY
gdvDefaultGraphAxis.DivisionTypeY2
gdvDefaultGraphAxis.DivisionTypeZ
gdvDefaultGraphAxis.DivisionsY GraphAxis.DivisionsY2 GraphAxis.DivisionsZ Left� Top  TTimerTimer1OnTimerTimer1TimerLeft8Top  TDataSource
DSSQLMarcaDataSetSQLMarcaLeft�Top  TRxQuery
SQLPRODUTODatabaseNameDBSQL.StringsSelect  PRODUTO.PRODICOD,  PRODUTO.PRODIAGRUPGRADE,  PRODUTO.PRODA60DESCR,  PRODUTO.PRODN3VLRCUSTO,	  %MSaldofrom	  Produtowhere  (%MEmpresa) and  (%MGrupo) and  (%MSubGrupo) and  (%MVariacao) and  (%MMarca) and  PRODUTO.PRODCSERVICO <> 'M'  MacrosDataTypeftStringNameMSaldo	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMGrupo	ParamTypeptInputValue0=0 DataTypeftStringName	MSubGrupo	ParamTypeptInputValue0=0 DataTypeftStringName	MVariacao	ParamTypeptInputValue0=0 DataTypeftStringNameMMarca	ParamTypeptInputValue0=0  Left�Top   