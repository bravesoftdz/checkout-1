�
 TFORMTELATAREFAHISTORICO 0�  TPF0TFormTelaTarefaHistoricoFormTelaTarefaHistoricoLeft9Top� BorderIcons BorderStylebsToolWindowCaption   Inclusão Histórico TarefaClientHeight$ClientWidth�Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoDesktopCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel2Left Top Width�Height+AlignalTopColor��� TabOrder TLabelLabelTituloLeft
TopWidth� HeightCaption   Inclusão Histórico TarefaFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.Style 
ParentFont   TPanelPanel1Left Top|Width�Height|AlignalClient
BevelOuterbvNoneColor��� TabOrder 	TGroupBox	GroupBox2Left Top Width�Height|AlignalClientCaption
   HistóricoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TDBMemoDBMemo1LeftTopWidth�HeightkAlignalClient	DataFieldTRHTA1000HISTORICO
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder 
OnKeyPressDBMemo1KeyPress    TPanelPanel3Left Top+Width�HeightQAlignalTop
BevelOuterbvNoneParentColor	TabOrder  	TGroupBox
gboHorarioLeft� Top WidthFHeightQAlignalRightCaption!Responsavel Atendimento (Cliente)Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel1LeftTop(Width HeightCaptionInicio  TLabelLabel2LeftPTop(Width.HeightCaption   Término  TDBEditDBEdit3LeftTop6WidthAHeight	DataFieldTRHTDHORAINICIO
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  TDBEditDBEdit4LeftPTop6WidthDHeight	DataFieldTRHTDHORAFINAL
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  TDBEditDBEdit5LeftTopWidthHeightCharCaseecUpperCase	DataFieldTRHTEA60RESPATENEMP
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder    TPanelPanel4Left Top Width� HeightQAlignalClientCaptionPanel4ParentColor	TabOrder 	TGroupBox	GroupBox3LeftTopWidth� Height(AlignalTopCaption   UsuárioFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TDBEditDBEdit2LeftTopWidth� HeightTabStopBorderStylebsNone	DataFieldUSUAA60LOGIN
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style ParentColor	
ParentFontReadOnly	TabOrder    	TGroupBox	GroupBox1LeftTop)Width� Height'AlignalClientCaptionData / HoraFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder TDBEditDBEdit1LeftTopWidth� HeightTabStopBorderStylebsNone	DataFieldREGISTRO
DataSourcedsSQLHistoricoTarefaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style ParentColor	
ParentFontReadOnly	TabOrder      TPanelPanelNavigatorLeft Top� Width�Height,AlignalBottom
BevelOuterbvNoneParentColor	TabOrder TLabelLabel3LeftTopWidth� HeightCaption   Nro Ordem de Serviço (Talão)FocusControlDBEdit6Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  	TConerBtnbtOkLeft�Top	WidthKHeightCursorcrHandPointTabOrderKindbkOKFlat
PlaceConerpcNoneSymbolStatessCloseSymbolColorOpenclRedSymbolColorCloseclMaroonTransparent	  	TConerBtnbtCancelLeftCTop	WidthUHeightCursorcrHandPointCaptionCancelaTabOrderKindbkCancelFlat
PlaceConerpcNoneSymbolStatessCloseSymbolColorOpenclRedSymbolColorCloseclMaroonTransparent	  TDBEditDBEdit6LeftTopWidth� HeightCharCaseecUpperCase	DataFieldTRHTA30NROOS
DataSourcedsSQLHistoricoTarefaTabOrder    TRxQuerySQLHistoricoTarefaTag
BeforePostSQLHistoricoTarefaBeforePostOnNewRecordSQLHistoricoTarefaNewRecordDatabaseNameDBRequestLive	SQL.Strings	select * from TAREFAHISTORICO where (%MFiltro) MacrosDataTypeftStringNameMFiltro	ParamTypeptInputValue0=0  Left Top TStringFieldSQLHistoricoTarefaTAREA13ID	FieldName	TAREA13IDOriginDB.TAREFAHISTORICO.TAREA13ID	FixedChar	Size  TIntegerFieldSQLHistoricoTarefaTRHTICOD	FieldNameTRHTICODOriginDB.TAREFAHISTORICO.TRHTICOD  TIntegerFieldSQLHistoricoTarefaUSUAICOD	FieldNameUSUAICODOriginDB.TAREFAHISTORICO.USUAICOD  TStringFieldSQLHistoricoTarefaUSUAA60LOGIN	FieldKindfkLookup	FieldNameUSUAA60LOGINLookupDataSetDM.SQLUsuariosLookupKeyFieldsUSUAICODLookupResultFieldUSUAA60LOGIN	KeyFieldsUSUAICODSize<Lookup	  TDateTimeField!SQLHistoricoTarefaTRHTDHORAINICIO	FieldNameTRHTDHORAINICIOOrigin"DB.TAREFAHISTORICO.TRHTDHORAINICIODisplayFormathh:mmEditMask
!90:00;1;_  TDateTimeField SQLHistoricoTarefaTRHTDHORAFINAL	FieldNameTRHTDHORAFINALOrigin!DB.TAREFAHISTORICO.TRHTDHORAFINALDisplayFormathh:mmEditMask
!90:00;1;_  TStringField%SQLHistoricoTarefaTRHTEA60RESPATENEMPDisplayLabel!Responsavel Atendimento (Cliente)	FieldNameTRHTEA60RESPATENEMPOrigin&DB.TAREFAHISTORICO.TRHTEA60RESPATENEMP	FixedChar	Size<  TDateTimeFieldSQLHistoricoTarefaREGISTRO	FieldNameREGISTROOriginDB.TAREFAHISTORICO.REGISTRO  TStringFieldSQLHistoricoTarefaPENDENTE	FieldNamePENDENTEOriginDB.TAREFAHISTORICO.PENDENTE	FixedChar	Size  TStringFieldSQLHistoricoTarefaTRHTA30NROOSDisplayLabelNro OS	FieldNameTRHTA30NROOSOriginDB.TAREFAHISTORICO.TRHTA30NROOS	FixedChar	Size  
TMemoField$SQLHistoricoTarefaTRHTA1000HISTORICO	FieldNameTRHTA1000HISTORICOOrigin%DB.TAREFAHISTORICO.TRHTA1000HISTORICOBlobTypeftMemoSize�   TDataSourcedsSQLHistoricoTarefaDataSetSQLHistoricoTarefaLeft@Top  TRxQuery
SQLUsuarioDatabaseNameDBSQL.Stringsselect * from USUARIO Macros Left`Top   