unit CadastroClientePropect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, RxDBComb;

type
  TFormCadastroClientePropect = class(TFormCadastroTEMPLATE)
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePRCLICOD: TIntegerField;
    SQLTemplatePRCLA60RAZAOSOC: TStringField;
    SQLTemplatePRCLA60ENDCOM: TStringField;
    SQLTemplatePRCLA60CIDCOM: TStringField;
    SQLTemplatePRCLA60BAICOM: TStringField;
    SQLTemplatePRCLA2UFCOM: TStringField;
    SQLTemplatePRCLA8CEPCOM: TStringField;
    SQLTemplatePRCLA15FONE1: TStringField;
    SQLTemplatePRCLA15FONE2: TStringField;
    SQLTemplatePRCLA15FAX: TStringField;
    SQLTemplatePRCLA254EMAIL: TStringField;
    SQLTemplatePRCLA60URL: TStringField;
    SQLTemplatePRCLA14CNPJ: TStringField;
    SQLTemplatePRCLA11CPF: TStringField;
    SQLTemplatePRCLA30RG: TStringField;
    SQLTemplatePRCLA30IE: TStringField;
    SQLTemplatePRCLCFISJUR: TStringField;
    SQLTemplatePRCLDULTCONT: TDateTimeField;
    SQLTemplatePRCLDPROXCONT: TDateTimeField;
    SQLTemplatePRCLDDTCADASTRO: TDateTimeField;
    SQLTemplatePRCLCSTATUS: TStringField;
    SQLTemplatePRCLCTURNO: TStringField;
    SQLTemplatePRCLA60USUACAD: TStringField;
    SQLTemplatePRCLA254OBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    PageControl: TPageControl;
    TabSheetPesFisica: TTabSheet;
    TabSheetPesJuridica: TTabSheet;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Label18: TLabel;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Button4: TRxSpeedButton;
    SQLTemplateTipoPerssoa: TStringField;
    SQLTemplateStatus: TStringField;
    SQLTemplateTurno: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClientePropect: TFormCadastroClientePropect;

implementation

uses UnitLibrary, CadastroClienteContatos, FormResources, VarSYS,
  DataModulo, CadastroHistorico;

{$R *.dfm}

procedure TFormCadastroClientePropect.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROSPECTCLIENTE'
end;

procedure TFormCadastroClientePropect.PageControlChange(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     if TabSheetPesJuridica.Showing then
         SQLTemplatePRCLCFISJUR.AsString := 'F'
     else if TabSheetPesJuridica.Showing then
             SQLTemplatePRCLCFISJUR.AsString := 'J';

end;

procedure TFormCadastroClientePropect.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TabSheetPesFisica.Showing then
     SQLTemplatePRCLCFISJUR.AsString := 'F'
  else if TabSheetPesJuridica.Showing then
         SQLTemplatePRCLCFISJUR.AsString := 'J';

//Segundo Adilson não precisa testar CPF/CNPJ
{  if (SQLTemplatePRCLCFISJUR.AsString = 'J') and (SQLTemplatePRCLA14CNPJ.IsNull or (SQLTemplatePRCLA14CNPJ.AsString = ''))then
     begin
        SQLTemplatePRCLA14CNPJ.FocusControl;
        Raise Exception.Create('O compo CNPJ deve ser preenchido.');
     end
  else
     if (SQLTemplatePRCLCFISJUR.AsString = 'F') and (SQLTemplatePRCLA30RG.IsNull or (SQLTemplatePRCLA30RG.AsString = '')) then
         begin
            SQLTemplatePRCLA30RG.FocusControl;
            Raise Exception.Create('O compo RG deve ser preenchido.');
         end
     else
       if (SQLTemplatePRCLCFISJUR.AsString = 'F') and (SQLTemplatePRCLA11CPF.IsNull or (SQLTemplatePRCLA11CPF.AsString = '')) then
           begin
              SQLTemplatePRCLA11CPF.FocusControl;
              Raise Exception.Create('O compo CPF deve ser preenchido.');
           end;
}
  if (SQLTemplatePRCLCFISJUR.AsString = 'F') and not (SQLTemplatePRCLA11CPF.IsNull) then
     begin
       if not ValidaCPF(SQLTemplatePRCLA11CPF.AsString) then
          begin
             SQLTemplatePRCLA11CPF.FocusControl;
             raise Exception.Create('CPF digitado invalido.');
          end;
     end;

  if (SQLTemplatePRCLCFISJUR.AsString = 'J') and not (SQLTemplatePRCLA14CNPJ.IsNull) then
     if not ValidaCGC(SQLTemplatePRCLA14CNPJ.AsString) then
        begin
           SQLTemplatePRCLA14CNPJ.FocusControl;
           raise Exception.Create('CNPJ digitado invalido.');
        end;

end;

procedure TFormCadastroClientePropect.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  PageControl.Enabled := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroClientePropect.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroClienteContatos,'FormCadastroClienteContatos', True, False,'');
end;

procedure TFormCadastroClientePropect.Button4Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  DM.TipoHistorico := 'Cli';
  CriaFormulario(TFormCadastroHistorico,'FormCadastroHistorico',False,False,'Cliente');
end;

procedure TFormCadastroClientePropect.FormActivate(Sender: TObject);
var Pos : Pointer;
begin
  inherited;
  Pos := SQLTemplate.GetBookmark;
  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLTemplate.GotoBookmark(Pos);
end;

procedure TFormCadastroClientePropect.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRCLCFISJUR.AsString = 'F' then
     SQLTemplateTipoPerssoa.AsString := 'Fisica';
  if SQLTemplatePRCLCFISJUR.AsString = 'J' then
     SQLTemplateTipoPerssoa.AsString := 'Juridica';

  if SQLTemplatePRCLCSTATUS.AsString = 'E' then
     SQLTemplateStatus.AsString := 'Nenhum';
  if SQLTemplatePRCLCSTATUS.AsString = 'I' then
     SQLTemplateStatus.AsString := 'Não interessado';
  if SQLTemplatePRCLCSTATUS.AsString = 'N' then
     SQLTemplateStatus.AsString := 'Não interessado';
  if SQLTemplatePRCLCSTATUS.AsString = 'C' then
     SQLTemplateStatus.AsString := 'Cliente';

  if SQLTemplatePRCLCTURNO.AsString = 'M' then
     SQLTemplateTurno.AsString := 'Manhã';
  if SQLTemplatePRCLCTURNO.AsString = 'T' then
     SQLTemplateTurno.AsString := 'Tarde';
  if SQLTemplatePRCLCTURNO.AsString = 'N' then
     SQLTemplateTurno.AsString := 'Noite';

end;

procedure TFormCadastroClientePropect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.ParametroExterno := '';
  if DSMasterSys <> Nil then
     DSMasterSys := Nil;
end;

procedure TFormCadastroClientePropect.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  SQLCount.Close;
  SQLCount.SQL.Text := 'select Count(PRCLA13ID) from PROSPECTNEGOCIO where PRCLA13ID = "' + SQLTemplatePRCLA13ID.AsString + '"';
  SQLCount.Open;

  if SQLCount.FieldByName('count').AsInteger > 0 then
    begin
       Informa('Há ' + SQLCount.FieldByName('Count').AsString + ' Negócios associados ao Cliente ' + SQLTemplatePRCLA60RAZAOSOC.AsString + char(#13) +
               'Sendo assim você não pode exclui-lo.' + Char(#13) +
               'Caso você precise exclui-lo delete o(s) Negócio(s) associado(s) a ele e tente novamente.');
       Abort;
    end;

  inherited;

end;

procedure TFormCadastroClientePropect.SQLTemplateBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if DM.ParametroExterno <> '' then
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := DM.ParametroExterno
       else
          SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + DM.ParametroExterno;
     end;
end;

end.
