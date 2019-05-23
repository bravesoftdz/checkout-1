unit CadastroClienteHelpDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteHelpDesk = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCLHPDCADASTRO: TDateTimeField;
    SQLTemplateCLHPDFIRSTHELP: TDateTimeField;
    SQLTemplateCLHPDLASTHELP: TDateTimeField;
    SQLTemplateCLHPINROHELP: TIntegerField;
    SQLTemplateCLHPDFIRSTRESET: TDateTimeField;
    SQLTemplateCLHPDLASTRESET: TDateTimeField;
    SQLTemplateCLHPINRORESETS: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    Label1: TLabel;
    AcessaCliente: TSpeedButton;
    SQLTemplateCLHPTDADOSTEC: TMemoField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIETOBS: TStringField;
    SQLTemplateCLIETOBS: TStringField;
    Label10: TLabel;
    DBMemo2: TDBMemo;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcessaClienteClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Estado : String;
  public
    { Public declarations }
  end;

var
  FormCadastroClienteHelpDesk: TFormCadastroClienteHelpDesk;

implementation

uses FormResources, VarSYS, TelaConsultaCliente, UnitLibrary,
  CadastroClienteHelpDeskProduto, TelaDadosCliente;

{$R *.dfm}

procedure TFormCadastroClienteHelpDesk.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEHELPDESK';
  if not SQLCliente.Active then SQLCliente.Open;
end;

procedure TFormCadastroClienteHelpDesk.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaCliente.Click;
end;

procedure TFormCadastroClienteHelpDesk.AcessaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTEmplate.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormTelaConsultaCliente,'FormTelaConsultaCliente',False,True,'Cadastro Help-Desk');
end;

procedure TFormCadastroClienteHelpDesk.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [DsInsert] then
    Begin
      SQLTemplateCLHPDCADASTRO.AsDateTime := Date;
      if SQLLocate('CLIENTEHELPDESK','CLIEA13ID','CLIEA13ID','"' + SQLTemplateCLIEA13ID.AsString + '"') <> '' then
        begin
          Informa('Este cliente já foi cadastrado para Help-Desk, a operação será cancelada!');
          Abort;
        end;
      Estado := '[Ins]';
    End;
end;

procedure TFormCadastroClienteHelpDesk.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplate.FieldByName('CLHPINROHELP').Value := 0;
  SQLTemplate.FieldByName('CLHPINRORESETS').Value := 0;
end;

procedure TFormCadastroClienteHelpDesk.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroClienteHelpDeskProduto,'FormCadastroClienteHelpDeskProduto',True,False,Caption);
    end;
end;

procedure TFormCadastroClienteHelpDesk.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  DataSetLookup := nil;
end;

procedure TFormCadastroClienteHelpDesk.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if Estado = '[Ins]' then
     Button3.Click;
  Estado := '';
end;

end.
