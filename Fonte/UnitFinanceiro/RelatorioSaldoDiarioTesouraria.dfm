�
 TFORMRELATORIOSALDODIARIOTESOURARIA 0(  TPF0�#TFormRelatorioSaldoDiarioTesouraria"FormRelatorioSaldoDiarioTesourariaTopnCaption#   Relatório Saldo Diário TesourariaPixelsPerInch`
TextHeight �
TScrollBox	ScrollBox �TPanelPanelCentroLeft� TopQHeightN �TSpeedButtonBtnVisualizarLeft� Top�   �	TGroupBox	GroupBox1TopvVisible  	TGroupBox	GroupBox2LeftTop� Width� Height� CaptionSelecione o DiaFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder TMonthCalendar
CalendarioLeftTopWidth� Height� AutoSize	Date ��M��~�@TabOrder      �TTableTblTemporaria	TableNameSaldoDiarioTesouraria.db TIntegerFieldTblTemporariaEMPRICOD	FieldNameEMPRICOD  TStringFieldTblTemporariaSETOR	FieldNameSETORSize<  TStringFieldTblTemporariaDETALHES	FieldNameDETALHESSized  TFloatFieldTblTemporariaSALDO	FieldNameSALDO   TRxQuerySQLSaldoTesourariaDatabaseNameDBSQL.Stringsselect!SUM(TESON2VLRCREDITO) as Credito, SUM(TESON2VLRDEBITO)  as Debito,EMPRICODfrom
TESOURARIAwhereTESODMOV <= %MDataBaseand(%MEmpresa)group byEMPRICOD MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top 	TBCDFieldSQLSaldoTesourariaCREDITO	FieldNameCREDITOOriginDB.TESOURARIA.TESON2VLRCREDITO	PrecisionSize  	TBCDFieldSQLSaldoTesourariaDEBITO	FieldNameDEBITOOriginDB.TESOURARIA.TESON2VLRDEBITO	PrecisionSize  TIntegerFieldSQLSaldoTesourariaEMPRICOD	FieldNameEMPRICODOriginDB.TESOURARIA.EMPRICOD   TRxQuerySQLCCDatabaseNameDBSQL.Stringsselect * from CONTACORRENTEWHERE(%MEmpresa) MacrosDataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top TIntegerFieldSQLCCCTCRICOD	FieldNameCTCRICODOriginDB.CONTACORRENTE.CTCRICOD  TStringFieldSQLCCBANCA5COD	FieldName	BANCA5CODOriginDB.CONTACORRENTE.BANCA5COD	FixedChar	Size  TStringFieldSQLCCCTCRA15AGENCIA	FieldNameCTCRA15AGENCIAOriginDB.CONTACORRENTE.CTCRA15AGENCIA	FixedChar	Size  TStringFieldSQLCCCTCRA15NUMERO	FieldNameCTCRA15NUMEROOriginDB.CONTACORRENTE.CTCRA15NUMERO	FixedChar	Size  	TBCDFieldSQLCCCTCRN2LIMITE	FieldNameCTCRN2LIMITEOriginDB.CONTACORRENTE.CTCRN2LIMITE	PrecisionSize  	TBCDFieldSQLCCCTCRN2SALDOATUAL	FieldNameCTCRN2SALDOATUALOrigin!DB.CONTACORRENTE.CTCRN2SALDOATUAL	PrecisionSize  TIntegerFieldSQLCCEMPRICOD	FieldNameEMPRICODOriginDB.CONTACORRENTE.EMPRICOD   TRxQuerySQLChequeRecebidoDatabaseNameDBSQL.Stringsselect  SUM(CTRCN2VLR) as Saldo,EMPRICODfrom  CONTASRECEBERwhere  CTRCN2TOTREC < CTRCN2VLR and  CTRCDVENC <= %MDataBase and  CTRCDDEPOSCHQ is null and  CTRCCSTATUS <> 'C' and1  CTRCA5TIPOPADRAO in ('CHQ', 'CHQP', 'CHQV') and  (%MEmpresa)GROUP BY
EMPRICOD   MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top 	TBCDFieldSQLChequeRecebidoSALDO	FieldNameSALDO	PrecisionSize  TIntegerFieldSQLChequeRecebidoEMPRICOD	FieldNameEMPRICOD   TRxQuerySQLChequeEmitidoDatabaseNameDBSQL.StringsSelectSUM(CQEMN3VLR) as Saldo,EMPRICODFROMCHEQUEEMITIDOWHERECQEMDVENC = %MDataBase and(%MEmpresa)GROUP BYEMPRICOD MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top 	TBCDFieldSQLChequeEmitidoSALDO	FieldNameSALDOOriginDB.CHEQUEEMITIDO.CQEMN3VLR	PrecisionSize  TIntegerFieldSQLChequeEmitidoEMPRICOD	FieldNameEMPRICODOriginDB.CHEQUEEMITIDO.EMPRICOD   TCrpeReportAboutVersion and Credits...DesignControlsDesign-Time Window ControlsVersion.Major Version.Minor Margins.Left�Margins.Right�Margins.Top�Margins.Bottom�DiscardSavedData	PrintDate.Day PrintDate.Month PrintDate.Year Subreports.NLinks Subreports.OnDemandTables.Number�SortFields.Number�GroupSortFields.Number�GroupCondition.Number�GroupCondition.GroupTypegtOtherGroupOptions.Number�GroupOptions.GroupTypegtOtherGroupOptions.RepeatGHcDefaultGroupOptions.KeepTogethercDefaultGroupOptions.TopNOptions	tnDefaultGroupOptions.TopNGroups�GroupOptions.TopNDiscardOtherscDefaultParamFields.ParamTypepfStringParamFields.ParamSourcepsReportParamFields.Info.AllowNullcDefaultParamFields.Info.AllowEditingcDefault$ParamFields.Info.AllowMultipleValuescDefaultParamFields.Info.ValueType
vtDiscreteParamFields.Info.PartOfGroupcDefault'ParamFields.Info.MutuallyExclusiveGroupcDefaultParamFields.Info.GroupNum�ParamFields.ValueLimitcDefaultParamFields.Ranges.Number�ParamFields.Ranges.RangeBoundsIncludeStartAndEndParamFields.PLDescriptionOnlycDefaultParamFields.PLSortMethodpsmDefaultSortParamFields.PLSortByDescriptioncDefaultSectionFormat.BackgroundColorclNoneSectionHeight.Height SQL.Params.ParamTypespCharLogOnInfo.Table�SessionInfo.Table�SessionInfo.Propagate	Export.Excel.Constant       �@Export.Excel.AreaDExport.CharSepQuote WindowZoom.Magnification�WindowStatewsMaximizedWindowButtonBar.CloseBtn	WindowButtonBar.PrintSetupBtn	WindowButtonBar.SearchBtn	WindowCursor.GroupArea	wcDefaultWindowCursor.GroupAreaField	wcDefaultWindowCursor.DetailArea	wcDefaultWindowCursor.DetailAreaField	wcDefaultWindowCursor.Graph	wcDefaultGraphType.Number�GraphType.StylebarSideBySideGraphText.Number�GraphText.TitleFont.CharsetDEFAULT_CHARSETGraphText.TitleFont.ColorclWindowTextGraphText.TitleFont.Height�GraphText.TitleFont.NameMS Sans SerifGraphText.TitleFont.Style GraphText.SubTitleFont.CharsetDEFAULT_CHARSETGraphText.SubTitleFont.ColorclWindowTextGraphText.SubTitleFont.Height�GraphText.SubTitleFont.NameMS Sans SerifGraphText.SubTitleFont.Style GraphText.FootNoteFont.CharsetDEFAULT_CHARSETGraphText.FootNoteFont.ColorclWindowTextGraphText.FootNoteFont.Height�GraphText.FootNoteFont.NameMS Sans SerifGraphText.FootNoteFont.Style !GraphText.GroupsTitleFont.CharsetDEFAULT_CHARSETGraphText.GroupsTitleFont.ColorclWindowText GraphText.GroupsTitleFont.Height�GraphText.GroupsTitleFont.NameMS Sans SerifGraphText.GroupsTitleFont.Style GraphText.DataTitleFont.CharsetDEFAULT_CHARSETGraphText.DataTitleFont.ColorclWindowTextGraphText.DataTitleFont.Height�GraphText.DataTitleFont.NameMS Sans SerifGraphText.DataTitleFont.Style GraphText.LegendFont.CharsetDEFAULT_CHARSETGraphText.LegendFont.ColorclWindowTextGraphText.LegendFont.Height�GraphText.LegendFont.NameMS Sans SerifGraphText.LegendFont.Style !GraphText.GroupLabelsFont.CharsetDEFAULT_CHARSETGraphText.GroupLabelsFont.ColorclWindowText GraphText.GroupLabelsFont.Height�GraphText.GroupLabelsFont.NameMS Sans SerifGraphText.GroupLabelsFont.Style  GraphText.DataLabelsFont.CharsetDEFAULT_CHARSETGraphText.DataLabelsFont.ColorclWindowTextGraphText.DataLabelsFont.Height�GraphText.DataLabelsFont.NameMS Sans SerifGraphText.DataLabelsFont.Style GraphOptions.Number�GraphOptions.Max       ���GraphOptions.Min       ���GraphOptions.DataValuescDefaultGraphOptions.GridLinescDefaultGraphOptions.LegendcDefaultGraphOptions.BarDirection	bdDefaultGraphOptionInfo.Number�GraphOptionInfo.Color	gcDefaultGraphOptionInfo.Legend	glDefaultGraphOptionInfo.PieSize
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
gdvDefaultGraphAxis.DivisionsY GraphAxis.DivisionsY2 GraphAxis.DivisionsZ LeftTop  TRxQuerySQLChequeRecebidoDepositadoDatabaseNameDBSQL.Stringsselect  SUM(CTRCN2VLR) as Saldo,EMPRICODfrom  CONTASRECEBERwhere  CTRCDDEPOSCHQ IS NOT NULL and!  CTRCDDEPOSCHQ <= %MDataBase and  CTRCN2TOTREC < CTRCN2VLR and  CTRCCSTATUS <> 'C' and1  CTRCA5TIPOPADRAO in ('CHQ', 'CHQP', 'CHQV') and  CTRCN2TOTREC < CTRCN2VLR and   (%MEmpresa)GROUP BY
EMPRICOD   MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top! 	TBCDField SQLChequeRecebidoDepositadoSALDO	FieldNameSALDO	PrecisionSize  TIntegerField#SQLChequeRecebidoDepositadoEMPRICOD	FieldNameEMPRICOD   TRxQuerySQLChequeEmitidoDepositadoDatabaseNameDBSQL.StringsSelectSUM(CQEMN3VLR) as Saldo,EMPRICODFROMCHEQUEEMITIDOWHERECQEMDVENC < %MDataBase andCQEMDCOMP IS NULL and(%MEmpresa)GROUP BYEMPRICOD MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top! 	TBCDFieldSQLChequeEmitidoDepositadoSALDO	FieldNameSALDOOriginDB.CHEQUEEMITIDO.CQEMN3VLR	PrecisionSize  TIntegerField"SQLChequeEmitidoDepositadoEMPRICOD	FieldNameEMPRICODOriginDB.CHEQUEEMITIDO.EMPRICOD   TRxQuery
SQLSaldoCCDatabaseNameDBSQL.StringsSELECT+SUM(MVBCN2VLRCRED - MVBCN2VLRDEB) as Saldo,CTCRICODFROMMOVIMENTOBANCOwhereMVBCDLANC <= %MDataBaseand(%MEmpresa)group byCTCRICOD MacrosDataTypeftStringName	MDataBase	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0  Left�Top! TFloatFieldSQLSaldoCCSALDO	FieldNameSALDO  TIntegerFieldSQLSaldoCCCTCRICOD	FieldNameCTCRICOD    