unit CadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, RxDBComb;

type
  TFormCadastroCliente = class(TFormCadastroTEMPLATE)
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
    procedure FormCreate(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

uses UnitLibrary, CadastroClienteContatos, FormResources, VarSYS,
  DataModulo, CadastroHistorico;

{$R *.dfm}

procedure TFormCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROSPECTCLIENTE'
end;

procedure TFormCadastroCliente.PageControlChange(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     if TabSheetPesJuridica.Showing then
         SQLTemplatePRCLCFISJUR.AsString := 'F'
     else if TabSheetPesJuridica.Showing then
             SQLTemplatePRCLCFISJUR.AsString := 'J';

end;

procedure TFormCadastroCliente.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TabSheetPesFisica.Showing then
     SQLTemplatePRCLCFISJUR.AsString := 'F'
  else if TabSheetPesJuridica.Showing then
         SQLTemplatePRCLCFISJUR.AsString := 'J';

  if (SQLTemplatePRCLCFISJUR.AsString = 'J') and (SQLTemplatePRCLA14CNPJ.IsNull or (SQLTemplatePRCLA14CNPJ.AsString = ''))then
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

  if SQLTemplatePRCLCFISJUR.AsString = 'F' then
     begin
       if not ValidaCPF(SQLTemplatePRCLA11CPF.AsString) then
          begin
             SQLTemplatePRCLA11CPF.FocusControl;
             raise Exception.Create('CPF digitado invalido.');
          end;
     end
  else
     if not ValidaCGC(SQLTemplatePRCLA14CNPJ.AsString) then
        begin
           SQLTemplatePRCLA14CNPJ.FocusControl;
           raise Exception.Create('CNPJ digitado invalido.');
        end;


end;

procedure TFormCadastroCliente.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  PageControl.Enabled := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroCliente.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroClienteContatos,'FormCadastroClienteContatos', True, False,'');
end;

procedure TFormCadastroCliente.Button4Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  DM.TipoHistorico := 'Cli';
  CriaFormulario(TFormCadastroHistorico,'FormCadastroHistorico',False,False,'Cliente');
end;

end.
