unit CadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  FormResources, VarSys, DBActns, ActnList, ImgList, ToolEdit, CurrEdit;

type
  TFormCadastroFornecedor = class(TFormCadastroTEMPLATE)
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateFORNCFISJURID: TStringField;
    SQLTemplateFORNA14CGC: TStringField;
    SQLTemplateFORNA20IE: TStringField;
    SQLTemplateFORNA11CPF: TStringField;
    SQLTemplateFORNA10RG: TStringField;
    SQLTemplateFORNA60END: TStringField;
    SQLTemplateFORNA60BAI: TStringField;
    SQLTemplateFORNA60CID: TStringField;
    SQLTemplateFORNA2UF: TStringField;
    SQLTemplateFORNA8CEP: TStringField;
    SQLTemplateFORNA15FONE1: TStringField;
    SQLTemplateFORNA15FONE2: TStringField;
    SQLTemplateFORNA15FAX: TStringField;
    SQLTemplateFORNA60EMAIL: TStringField;
    SQLTemplateFORNA60URL: TStringField;
    SQLTemplateFORNTOBS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEditRzSocial: TDBEdit;
    Label4: TLabel;
    RxComboFisJur: TRxDBComboBox;
    LabelRg: TLabel;
    DBEditRg: TDBEdit;
    LabelCgc: TLabel;
    DBEditCgc: TDBEdit;
    LabelCpf: TLabel;
    DBEditCpf: TDBEdit;
    LabelIe: TLabel;
    DBEditIe: TDBEdit;
    Label2: TLabel;
    DBEditNomeFantasia: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    SQLTemplateFORNA60CONTATO: TStringField;
    SQLTemplateFORNA60RAZAOSOC: TStringField;
    SQLTemplateFORNA60NOMEFANT: TStringField;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    SQLTemplateTPFRICOD: TIntegerField;
    SQLTemplateTipoFornecedorLookUp: TStringField;
    SQLTipoFornecedor: TRxQuery;
    TabFinanceiro: TTabSheet;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    SQLContasPagar: TRxQuery;
    SQLSoma: TRxQuery;
    DSSQLContasPagar: TDataSource;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGICOD: TIntegerField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGN3VLR: TBCDField;
    SQLContasPagarCTPGDULTPAGTO: TDateTimeField;
    SQLContasPagarCTPGN2TOTPAG: TBCDField;
    SQLContasPagarCTPGN3JUROPAGTO: TBCDField;
    SQLContasPagarCTPGN3MULTAPAGTO: TBCDField;
    SQLContasPagarCTPGN3DESCPAGTO: TBCDField;
    SQLContasPagarCTPGN2DESCPROMO: TBCDField;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EditTotalPago: TCurrencyEdit;
    EditTotalJuro: TCurrencyEdit;
    EditTotalMulta: TCurrencyEdit;
    EditTotalDesc: TCurrencyEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditAPagar: TCurrencyEdit;
    EditVencidas: TCurrencyEdit;
    EditPagarVencida: TCurrencyEdit;
    DBEdit12: TDBMemo;
    ButtonCEP: TSpeedButton;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    MNADMListagemPersonalizada: TMenuItem;
    SQLTemplateFORNA30CODCONTABIL: TStringField;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure RxComboFisJurChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure AcessaTipoFornecedorClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonCEPClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MNADMListagemPersonalizadaClick(Sender: TObject);
    procedure SQLTemplateFORNA60RAZAOSOCChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

uses CadastroBanco, DataModulo, CadastroTipoFornecedor, UnitLibrary,
  CadastroCep, AssistenteListagemTEMPLATE;

{$R *.DFM}

procedure TFormCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FORNECEDOR';
end;

procedure TFormCadastroFornecedor.RxComboFisJurChange(Sender: TObject);
begin
  inherited;
  LabelRg.Visible   := RxComboFisJur.ItemIndex = 0;
  LabelCpf.Visible  := RxComboFisJur.ItemIndex = 0;
  DbEditRg.Visible  := RxComboFisJur.ItemIndex = 0;
  DBEditCpf.Visible := RxComboFisJur.ItemIndex = 0;
  LabelCgc.Visible  := RxComboFisJur.ItemIndex = 1;
  LabelIe.Visible   := RxComboFisJur.ItemIndex = 1;
  DbEditCgc.Visible := RxComboFisJur.ItemIndex = 1;
  DbEditIe.Visible  := RxComboFisJur.ItemIndex = 1;
end;

procedure TFormCadastroFornecedor.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCICOD');
  FieldOrigem := 'BANCICOD' ;
  //CriaFormulario(TFormCadastroBanco,'FormCadastroBanco',True,True,'Fornecedor ' + SQLTemplateFORNA60RAZAOSOCIAL.Value);
end;

procedure TFormCadastroFornecedor.DBEdit13KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_F2 then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('BANCICOD');
      FieldOrigem := 'BANCICOD' ;
      //CriaFormulario(TFormCadastroBanco,'FormCadastroBanco',True,True,'Fornecedor ' + SQLTemplateFORNA60RAZAOSOCIAL.Value);
    end;
end;

procedure TFormCadastroFornecedor.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SqlTemplate.FieldByName('FORNA11CPF').AsString <> '' then
    if Length(SqlTemplate.FieldByName('FORNA11CPF').AsString) = 11 then
      begin
        if not ValidaCPF(SqlTemplate.FieldByName('FORNA11CPF').AsString) then
          begin
             Informa('O CPF digitado é inválido !');
            Abort;
          end;
      end
    else
      begin
        Informa('O CPF digitado está incompleto !') ;
        Abort;
      end;
  if SqlTemplate.FieldByName('FORNA14CGC').AsString <> '' then
    if Length(SqlTemplate.FieldByName('FORNA14CGC').AsString) = 14  then
      begin
        if not ValidaCGC(SqlTemplate.FieldByName('FORNA14CGC').AsString) then
          begin
            Informa('O CNPJ digitado é inválido !');
            Abort;
          end;
      end
    else
      begin
        Informa('O CNPJ digitado está incompleto !');
        Abort;
      end;

  if SQLTemplateFORNA60RAZAOSOC.Value = '' Then
    begin
      Beep ;
      Informa('O campo Razão Social deve ser preenchido!') ;
      SQLTemplateFORNA60RAZAOSOC.FocusControl ;
      Abort ;
    end;
  if SQLTemplateFORNA60NOMEFANT.Value = '' Then
    begin
      Beep ;
      Informa('O campo Nome Fantasia deve ser preenchido!') ;
      SQLTemplateFORNA60NOMEFANT.FocusControl ;
      Abort ;
    end;
  if SQLTemplateFORNA2UF.Value = '' Then
    begin
      Beep ;
      Informa('O campo Estado deve ser preenchido!') ;
      SQLTemplateFORNA2UF.FocusControl ;
      Abort ;
    end;
end;

procedure TFormCadastroFornecedor.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  LabelRg.Visible   := RxComboFisJur.ItemIndex = 0;
  LabelCpf.Visible  := RxComboFisJur.ItemIndex = 0;
  DbEditRg.Visible  := RxComboFisJur.ItemIndex = 0;
  DBEditCpf.Visible := RxComboFisJur.ItemIndex = 0;
  LabelCgc.Visible  := RxComboFisJur.ItemIndex = 1;
  LabelIe.Visible   := RxComboFisJur.ItemIndex = 1;
  DbEditCgc.Visible := RxComboFisJur.ItemIndex = 1;
  DbEditIe.Visible  := RxComboFisJur.ItemIndex = 1;
end;

procedure TFormCadastroFornecedor.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateFORNCFISJURID.Value := 'J';
end;

procedure TFormCadastroFornecedor.AcessaTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPFRICOD');
  FieldOrigem := 'TPFRICOD' ;
  CriaFormulario(TFormCadastroTipoFornecedor,'FormCadastroTipoFornecedor',False,True,'');
end;

procedure TFormCadastroFornecedor.Button3Click(Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Visible := True;
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MFiltro').Value := 'FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString;
  SQLContasPagar.Open;
  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN2TOTPAG) as TotalPago , ' + 'sum(CTPGN3JUROPAGTO) as TotalJuro , ' + 'sum(CTPGN3MULTAPAGTO) as TotalMulta , ');
      SQL.Add('sum(CTPGN3DESCPAGTO + CTPGN2DESCPROMO) as TotalDesc ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString + 'AND CTPGN3VLR >= CTPGN2TOTPAG ');
      Open;
    end;

  EditTotalPago.Text  := SQLSoma.FieldByName('TotalPago').AsString;
  EditTotalJuro.Text  := SQLSoma.FieldByName('TotalJuro').AsString;
  EditTotalMulta.Text := SQLSoma.FieldByName('TotalMulta').AsString;
  EditTotalDesc.Text  := SQLSoma.FieldByName('TotalDesc').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalPagar ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGDVENC >= ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"' + 'AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditAPagar.Text := SQLSoma.FieldByName('TotalPagar').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalVencidas ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"' + 'AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditVencidas.Text := SQLSoma.FieldByName('TotalVencidas').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalPagarVenc ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditPagarVencida.Text := SQLSoma.FieldByName('TotalPagarVenc').AsString;
  PagePrincipal.ActivePage := TabFinanceiro;

end;

procedure TFormCadastroFornecedor.ButtonCEPClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNA8CEP');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateFORNA60END.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateFORNA60END.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateFORNA60BAI.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateFORNA60CID.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateFORNA2UF.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
    end;
end;

procedure TFormCadastroFornecedor.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCEP.Click;
end;

procedure TFormCadastroFornecedor.MNADMListagemPersonalizadaClick(
  Sender: TObject);
begin
  inherited;
  Dm.DSListagem.DataSet := SQLTemplate; 
  Application.CreateForm(TFormAssistenteListagem,FormAssistenteListagem);
  FormAssistenteListagem.Show;
end;

procedure TFormCadastroFornecedor.SQLTemplateFORNA60RAZAOSOCChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    SQLTemplate.FieldByName('FORNA60NOMEFANT').AsString := SQLTemplate.FieldByName('FORNA60RAZAOSOC').AsString;
end;

end.
