�
 TFORMCADASTROOPERACAOTESOURARIA 0q  TPF0�TFormCadastroOperacaoTesourariaFormCadastroOperacaoTesourariaLeft� Top� Caption%   Cadastro de Operações de TesourariaOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipalTop� HeightA �	TTabSheetTabSheetConsulta �TDBGridDBGridListaHeight� ColumnsExpanded	FieldNameOPTEICODVisible	 Expanded	FieldNameOPTEA60DESCRWidthFVisible	 Expanded	FieldNameOPTECDEBCREDVisible	 Expanded	FieldNamePENDENTEVisible	 Expanded	FieldNameREGISTROWidthTVisible	    �TPanelPanelProcura �TPanelPanelBetween �	TAdvPanel	AdvPanel1
FullHeight    �TPanelPanelEditProcura �	TAdvPanelAdvPanelEditProcura
FullHeight    �TPanelPanelIndice �	TAdvPanelAdvPanelIndice
FullHeight       �TPanelPanelMasterTopW  �TPanelPanelCodigoDescricaoHeightW TLabelLabel1LeftTopWidth&HeightCaption   CódigoFocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2LeftMTopWidth7HeightCaption   DescriçãoFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel3Left#TopWidthZHeightCaption   Débito / CréditoFont.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel12LeftTop+Width� HeightCaptionPlano de Contas FinanceiroFocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.Color @� Font.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit1LeftTopWidthEHeight	DataFieldOPTEICOD
DataSource
DSTemplateTabOrder   TDBEditDBEdit2LeftKTopWidth�Height	DataFieldOPTEA60DESCR
DataSource
DSTemplateTabOrder  TRxDBComboBoxComboDebCredLeft TopWidthnHeightStylecsDropDownList	DataFieldOPTECDEBCRED
DataSource
DSTemplateEnableValues	
ItemHeightItems.Strings   Crédito   Débito TabOrderValues.StringsCD   TDBEditDBEdit3LeftTop8WidthXHeight	DataField
PLCTA15COD
DataSource
DSTemplateTabOrder  TRxDBLookupComboComboPlanoContasLeftbTop8Width+HeightDropDownCountDisplayAllFields		DataField
PLCTA15COD
DataSource
DSTemplateLookupField
PLCTA15CODLookupDisplayPLCTA60DESCRLookupSourceDSSQLPlanoContasTabOrder       �TRxQuerySQLTemplateTagSQL.Strings1Select * From OPERACAOTESOURARIA Where (%MFiltro)  TIntegerFieldSQLTemplateOPTEICODTagDisplayLabel   Código	FieldNameOPTEICODOriginDB.OPERACAOTESOURARIA.OPTEICODVisible  TStringFieldSQLTemplateOPTEA60DESCRDisplayLabel   Descrição	FieldNameOPTEA60DESCROrigin"DB.OPERACAOTESOURARIA.OPTEA60DESCR	FixedChar	Size<  TStringFieldSQLTemplateOPTECDEBCREDDisplayLabel   Débito / Crédito	FieldNameOPTECDEBCREDOrigin"DB.OPERACAOTESOURARIA.OPTECDEBCRED	FixedChar	Size  TStringFieldSQLTemplatePENDENTEDisplayLabelPendente	FieldNamePENDENTEOriginDB.OPERACAOTESOURARIA.PENDENTE	FixedChar	Size  TDateTimeFieldSQLTemplateREGISTRODisplayLabelRegistro	FieldNameREGISTROOriginDB.OPERACAOTESOURARIA.REGISTRO  TStringFieldSQLTemplatePLCTA15COD	FieldName
PLCTA15CODOrigin DB.OPERACAOTESOURARIA.PLCTA15COD	FixedChar	Size   TRxQuerySQLPlanoContasDatabaseNameDBSQL.StringsSELECT * from PLANODECONTASWhere PLCTCANALSINT = "A"Order by PLCTA60DESCR Macros Left0Top�  TStringFieldSQLPlanoContasPLCTA15COD	FieldName
PLCTA15CODOriginDB.PLANODECONTAS.PLCTA15COD	FixedChar	Size  TIntegerFieldSQLPlanoContasPLCTICODREDUZ	FieldNamePLCTICODREDUZOriginDB.PLANODECONTAS.PLCTICODREDUZ  TIntegerFieldSQLPlanoContasPLCTINIVEL	FieldName
PLCTINIVELOriginDB.PLANODECONTAS.PLCTINIVEL  TStringFieldSQLPlanoContasPLCTA15CODPAI	FieldNamePLCTA15CODPAIOriginDB.PLANODECONTAS.PLCTA15CODPAI	FixedChar	Size  TStringFieldSQLPlanoContasPLCTA30CODEDIT	FieldNamePLCTA30CODEDITOriginDB.PLANODECONTAS.PLCTA30CODEDIT	FixedChar	Size  TStringFieldSQLPlanoContasPLCTA60DESCR	FieldNamePLCTA60DESCROriginDB.PLANODECONTAS.PLCTA60DESCR	FixedChar	Size<  TStringFieldSQLPlanoContasPLCTCANALSINT	FieldNamePLCTCANALSINTOriginDB.PLANODECONTAS.PLCTCANALSINT	FixedChar	Size   TDataSourceDSSQLPlanoContasDataSetSQLPlanoContasLeftTop�    