unit CadastroOperacoesEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, FormResources, VarSys, RxLookup, Variants,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacoesEstoque = class(TFormCadastroTEMPLATE)
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateOPESA60DESCR: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateCFOPA5CODDENTROUF: TStringField;
    SQLTemplateCFOPA5CODFORAUF: TStringField;
    SQLTemplateOPESCENTRADASAIDA: TStringField;
    SQLTemplateOPESCORIGEMDESTINO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label4: TLabel;
    Label5: TLabel;
    SQLTemplateOPESA18CAMPOIMP: TStringField;
    SQLTemplateOPESCCALCIPI: TStringField;
    SQLTemplateOPESCCALCICMS: TStringField;
    GroupEstoque: TGroupBox;
    LabelOrigemDestino: TLabel;
    DBEdit7: TRxDBComboBox;
    Label6: TLabel;
    ComboMovEstoque: TRxDBComboBox;
    Label11: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    SQLTemplateOPESCGERAFINANCEIRO: TStringField;
    GroupImpostos: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBase: TRxDBComboBox;
    ComboCalcICMS: TRxDBComboBox;
    ComboCalcIPI: TRxDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    Label7: TLabel;
    RetornaPlanoContas: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    TabDebito: TTabSheet;
    Label14: TLabel;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    Panel4: TPanel;
    Label12: TLabel;
    Label3: TLabel;
    AcessaSeries: TSpeedButton;
    SQLSerie: TRxQuery;
    ComboSerie: TRxDBLookupCombo;
    DSSQLSerie: TDataSource;
    ComboCFOPForaUF: TRxDBLookupCombo;
    SQLCFOP: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSerieSERIINRONF: TIntegerField;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    DSSQLCFOP: TDataSource;
    ComboCFOPDentroUF: TRxDBLookupCombo;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    SQLTemplatePlanodeContasCreditoCalcField: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    btnCfopd: TSpeedButton;
    BtnCFOPF: TSpeedButton;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    Label18: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label19: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    SQLTemplateOPESA18CAMPOIMPFIS: TStringField;
    SQLTemplateOPESCCALCICMSFIS: TStringField;
    SQLTemplateOPESCCALCIPIFIS: TStringField;
    SQLTemplateOPESCCALCSUBST: TStringField;
    SQLTemplateOPESCCALCSUBSTFIS: TStringField;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    Label21: TLabel;
    SQLTemplateOPESA60DESDENTRO: TStringField;
    SQLTemplateOPESA60DESFORA: TStringField;
    SQLTemplateOPERACAO_E_S: TStringField;
    Label22: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    RxSpeedButton1: TRxSpeedButton;
    Label23: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    SQLTemplateOPESCCOMISSAO: TStringField;
    RxDBComboBox9: TRxDBComboBox;
    Label13: TLabel;
    SQLTemplateMOVIMENTA_CONSIGNADO: TStringField;
    Label24: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    SQLTemplateATUALIZA_PRECO_CUSTO: TStringField;
    Label25: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label26: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    SQLTemplateCALCULAR_ST_RETIDO: TStringField;
    SQLTemplateCALCULAR_ST_RETIDO_FIS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure AcessaSeriesClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ComboSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboCFOPForaUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboCFOPDentroUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure btnCfopdClick(Sender: TObject);
    procedure BtnCFOPFClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacoesEstoque: TFormCadastroOperacoesEstoque;

implementation

uses DataModulo, CadastroSerie, CadastroCodigoFiscalOperacao, UnitLibrary,
     TelaConsultaPlanoContas, CadastroOperacoesEstoqueConversor,
  CadastroOperacoesEstoqueCFOP, WaitWindow;

{$R *.DFM}

procedure TFormCadastroOperacoesEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOESTOQUE' ;
  SQLSerie.Open;
  SQLCFOP.Open;
end;

procedure TFormCadastroOperacoesEstoque.AcessaSeriesClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('SERIA5COD');
  FieldOrigem := 'SERIA5COD';
  DataSetLookup :=  SQLSerie;
  CriaFormulario(TFormCadastroSerie,'FormCadastroSerie',False,True,True,'');
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateOPESCGERAFINANCEIRO.AsString := 'S';
  AcessaSeries.Enabled  := True;
  GroupEstoque.Enabled  := True;
  GroupImpostos.Enabled := True;
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
var
  I : Integer;
begin
  AcessaSeries.Enabled  := True;
  btnCfopd.Enabled   := True;
  BtnCFOPF.Enabled   := True;
  inherited;
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  MakeWindowMessage('Verificando Movimentos Existentes para Esta Operação.');

  if (SQLLocate('MOVIMENTOESTOQUE','OPESICOD','OPESICOD',SQLTemplateOPESICOD.AsString) <> '') OR
     (SQLLocate('NOTACOMPRA','OPESICOD','OPESICOD',SQLTemplateOPESICOD.AsString) <> '') OR
     (SQLLocate('NOTAFISCAL','OPESICOD','OPESICOD',SQLTemplateOPESICOD.AsString) <> '') OR
     (SQLLocate('CUPOM','OPESICOD','OPESICOD',SQLTemplateOPESICOD.AsString) <> '') OR
     (SQLLocate('MOVIMENTODIVERSO','OPESICOD','OPESICOD',SQLTemplateOPESICOD.AsString) <> '') 
  then
    begin
      Informa('Esta operação de estoque já foi utilizada, você não pode excluir! ' + #13 + 'Se desejar pode criar uma nova operação! ');
      DestroyWindow;
      Abort;
    end Else
      DestroyWindow;
end;

procedure TFormCadastroOperacoesEstoque.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnCFOPF.Click;
end;

procedure TFormCadastroOperacoesEstoque.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if SQLTemplate.FieldByName('OPESCENTRADASAIDA').AsString <> '' then
    Case SQLTemplate.FieldByName('OPESCENTRADASAIDA').AsString[1] of
      'E' : LabelOrigemDestino.Caption := 'Origem';
      'S' : LabelOrigemDestino.Caption := 'Destino';
      'N' : LabelOrigemDestino.Caption := 'Origem / Destino';
      'D' : LabelOrigemDestino.Caption := 'Origem';
    end;
end;

procedure TFormCadastroOperacoesEstoque.ComboSerieKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (AcessaSeries.Enabled) then
    AcessaSeries.Click;
end;

procedure TFormCadastroOperacoesEstoque.ComboCFOPForaUFKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    btnCfopd.Click;
end;

procedure TFormCadastroOperacoesEstoque.ComboCFOPDentroUFKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    btnCfopd.Click;
end;

procedure TFormCadastroOperacoesEstoque.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODCRED');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Operação de Estoque');
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15CODCRED').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODCRED').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCreditoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant  := Null;

  //PLANO CONTAS DEBITO
   If DataSet.FieldByName('PLCTA15CODDEB').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODDEB').AsString],1) Then
        DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasDebitoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroOperacoesEstoque.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click;
end;

procedure TFormCadastroOperacoesEstoque.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;
end;

procedure TFormCadastroOperacoesEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

procedure TFormCadastroOperacoesEstoque.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEB');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Operação de Estoque');
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateAfterPost(
  DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  for I := 0 to ComponentCount - 1 do
     if Components[I].Tag = 1 then
        begin
           if Components[I].ClassName = 'TDBMemo' then
              begin
                (Components[I] as TDBMemo).Enabled := True;
                (Components[I] as TDBMemo).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TRxDBComboBox' then
              begin
                (Components[I] as TRxDBComboBox).ReadOnly := True;
                (Components[I] as TRxDBComboBox).Color   := $00E0E0E0;
              end;
           if Components[I].ClassName = 'TRxDBLookupCombo' then
              begin
                (Components[I] as TRxDBLookupCombo).Enabled := True;
                (Components[I] as TRxDBLookupCombo).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TDBEdit' then
              begin
                (Components[I] as TDBEdit).Enabled := True;
                (Components[I] as TDBEdit).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TSpeedButton' then
              begin
                (Components[I] as TSpeedButton).Enabled := True;
              end;
           if Components[I].ClassName = 'TDBComboBox' then
              begin
                (Components[I] as TDBComboBox).Enabled := True;
                (Components[I] as TDBComboBox).Color   := clWindow;
              end;
        end;
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateAfterCancel(
  DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  for I := 0 to ComponentCount - 1 do
     if Components[I].Tag = 1 then
        begin
           if Components[I].ClassName = 'TDBMemo' then
              begin
                (Components[I] as TDBMemo).Enabled := True;
                (Components[I] as TDBMemo).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TRxDBComboBox' then
              begin
                (Components[I] as TRxDBComboBox).ReadOnly := True;
                (Components[I] as TRxDBComboBox).Color   := $00E0E0E0;
              end;
           if Components[I].ClassName = 'TRxDBLookupCombo' then
              begin
                (Components[I] as TRxDBLookupCombo).Enabled := True;
                (Components[I] as TRxDBLookupCombo).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TDBEdit' then
              begin
                (Components[I] as TDBEdit).Enabled := True;
                (Components[I] as TDBEdit).Color   := clWindow;
              end;
           if Components[I].ClassName = 'TSpeedButton' then
              begin
                (Components[I] as TSpeedButton).Enabled := True;
              end;
           if Components[I].ClassName = 'TDBComboBox' then
              begin
                (Components[I] as TDBComboBox).Enabled := True;
                (Components[I] as TDBComboBox).Color   := clWindow;
              end;
        end;
end;

procedure TFormCadastroOperacoesEstoque.btnCfopdClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPA5CODDENTROUF');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');
end;

procedure TFormCadastroOperacoesEstoque.BtnCFOPFClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPA5CODFORAUF');
  FieldOrigem := 'CFOPA5COD';
  DataSetLookup :=  SQLCFOP;
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,True,'');
end;

procedure TFormCadastroOperacoesEstoque.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys   := DSTemplate;
  CriaFormulario(TCadastroOperacoesEstoqueConverte,'CadastroOperacoesEstoqueConverte',False,True,True,'');
end;

procedure TFormCadastroOperacoesEstoque.RxSpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  DSMasterSys   := DSTemplate;
  CriaFormulario(TCadastroOperacaoEstoqueCFOP,'CadastroOperacaoEstoqueCFOP',True,False,True,'CFOPs Vinculados à Operação de Estoque '+SQLTemplateOPESA60DESCR.AsString);
end;

end.
