unit CadastroCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCobrador = class(TFormCadastroTEMPLATE)
    SQLTemplateCOBRA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCOBRICOD: TIntegerField;
    SQLTemplateCOBRA60NOME: TStringField;
    SQLTemplateCOBRCFISJURID: TStringField;
    SQLTemplateCOBRA11CPF: TStringField;
    SQLTemplateCOBRA10RG: TStringField;
    SQLTemplateCOBRA20IE: TStringField;
    SQLTemplateCOBRA14CNPJ: TStringField;
    SQLTemplateCOBRA60ENDERECO: TStringField;
    SQLTemplateCOBRA60BAIRRO: TStringField;
    SQLTemplateCOBRA60CIDADE: TStringField;
    SQLTemplateCOBRA2UF: TStringField;
    SQLTemplateCOBRA8CEP: TStringField;
    SQLTemplateCOBRA60REGIAO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    PanelTop: TPanel;
    PanelDocJur: TPanel;
    LabelCgc_CPF: TLabel;
    LabelIE_RG: TLabel;
    DBEditCgc: TDBEdit;
    DBEditIE: TDBEdit;
    PanelDocFis: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RadioFisJur: TDBRadioGroup;
    Label41: TLabel;
    ButtonCep: TSpeedButton;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit20: TDBEdit;
    DBEditEnd: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateCOBRA15FONE1: TStringField;
    SQLTemplateCOBRA15FONE2: TStringField;
    SQLTemplateCOBRA15FAX: TStringField;
    SQLTemplateCOBRA15CELULAR: TStringField;
    SQLTemplateCOBRA100EMAIL: TStringField;
    SQLTemplateCOBRA254HTTP: TStringField;
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
    SQLTemplateCOBRN3COMISCAPITAL: TBCDField;
    SQLTemplateCOBRN3COMISJUROS: TBCDField;
    SQLTemplateCOBRN3COMISFIXA: TBCDField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    ComboUF: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RadioFisJurClick(Sender: TObject);
    procedure ButtonCepClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCobrador: TFormCadastroCobrador;

implementation

uses CadastroCep, FormResources, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroCobrador.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'COBRADOR';
end;

procedure TFormCadastroCobrador.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DSTemplate.DataSet.FieldByName('COBRCFISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := DSTemplate.DataSet.FieldByName('COBRCFISJURID').AsString[1] = 'F';
      PanelDocJur.Visible        := DSTemplate.DataSet.FieldByName('COBRCFISJURID').AsString[1] = 'J';
    end;
end;

procedure TFormCadastroCobrador.RadioFisJurClick(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.FieldByName('COBRCFISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := RadioFisJur.ItemIndex = 0;
      PanelDocJur.Visible        := RadioFisJur.ItemIndex = 1;
    end;
end;

procedure TFormCadastroCobrador.ButtonCepClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('COBRA8CEP');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCOBRA60ENDERECO.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateCOBRA60ENDERECO.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateCOBRA60BAIRRO.AsString    := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateCOBRA60CIDADE.AsString    := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateCOBRA2UF.AsString         := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
      DBEditEnd.SetFocus;
      DBEditEnd.SelStart := Length(DBEditEnd.Text) + 1;
    end;
end;

procedure TFormCadastroCobrador.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SqlTemplate.FieldByName('COBRA11CPF').AsString <> '' then
    begin
      if Length(SqlTemplate.FieldByName('COBRA11CPF').AsString) = 11 then
        begin
          if not ValidaCPF(SqlTemplate.FieldByName('COBRA11CPF').AsString) then
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
    end
  else
    if SqlTemplate.FieldByName('COBRCFISJURID').AsString = 'F' then
      Informa('O CPF não foi informado !') ;

  if SqlTemplate.FieldByName('COBRA14CNPJ').AsString <> '' then
    begin
      if Length(SqlTemplate.FieldByName('COBRA14CNPJ').AsString) = 14  then
        begin
          if not ValidaCGC(SqlTemplate.FieldByName('COBRA14CNPJ').AsString) then
            begin
              Informa('O CGC digitado é inválido !');
              Abort;
            end;
        end
      else
        begin
          Informa('O CCG digitado está incompleto !');
          Abort;
        end;
    end
  else
    if SqlTemplate.FieldByName('COBRCFISJURID').AsString = 'J' then
      Informa('O CCG não foi informado !');
end;

procedure TFormCadastroCobrador.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCOBRCFISJURID.AsString := 'F';
  SQLTemplateCOBRN3COMISCAPITAL.AsFloat := 0;
  SQLTemplateCOBRN3COMISFIXA.AsFloat    := 0;
  SQLTemplateCOBRN3COMISJUROS.AsFloat   := 0;
end;

procedure TFormCadastroCobrador.DBEdit20KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCep.Click;
end;

end.
