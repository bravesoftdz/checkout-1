unit CadastroClienteContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroClienteContato = class(TFormCadastroTEMPLATE)
    SQLTemplateCLCOICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCONTICOD: TIntegerField;
    TblContato: TTable;
    TblContatoCONTICOD: TIntegerField;
    TblContatoCONTA60NOME: TStringField;
    TblContatoCONTA60END: TStringField;
    TblContatoCONTA60BAIRRO: TStringField;
    TblContatoCONTA8CEP: TStringField;
    TblContatoCIDAICOD: TIntegerField;
    TblContatoESTAA2UF: TStringField;
    TblContatoCONTA15FAX: TStringField;
    TblContatoCONTA15CELULAR: TStringField;
    TblContatoCONTA10RG: TStringField;
    TblContatoCONTA11CPF: TStringField;
    TblContatoPRONICOD: TIntegerField;
    TblContatoCARGICOD: TIntegerField;
    TblContatoCONTDNASC: TDateTimeField;
    TblContatoCONTA254EMAIL: TStringField;
    TblContatoCONTA254URL: TStringField;
    TblContatoCONTCSEXO: TStringField;
    TblContatoCONTA254OBS: TStringField;
    SQLTemplateCONTA60NOME: TStringField;
    SQLTemplateCONTA60END: TStringField;
    SQLTemplateCONTA60BAIRRO: TStringField;
    SQLTemplateCONTA8CEP: TStringField;
    SQLTemplateCONTA15FAX: TStringField;
    SQLTemplateCONTA15CELULAR: TStringField;
    SQLTemplateCONTA254EMAIL: TStringField;
    TblPronome: TTable;
    DSTblContato: TDataSource;
    TblPronomePRONICOD: TIntegerField;
    TblPronomePRONA15DESCR: TStringField;
    TblPronomePRONINIVEL: TIntegerField;
    TblCargo: TTable;
    TblCargoCARGICOD: TIntegerField;
    TblCargoCARGA60DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BtnContato: TSpeedButton;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    TblCidade: TTable;
    TblEstado: TTable;
    DSTblPronome: TDataSource;
    DSTblCargo: TDataSource;
    DSTblCidade: TDataSource;
    DSTblEstado: TDataSource;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    TblContatoCONTA15FONE1: TStringField;
    TblContatoCONTA15FONE2: TStringField;
    SQLTemplateCONTA15FONE1: TStringField;
    SQLTemplateCONTA15FONE2: TStringField;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplateCLIEA254URL: TStringField;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnContatoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteContato: TFormCadastroClienteContato;

implementation

uses FormResources, VarSYS;

{$R *.dfm}

procedure TFormCadastroClienteContato.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCLIEA13ID.AsString := SQLTemplate.DataSource.DataSet.FieldByName('CLIEA13ID').AsString;
end;

procedure TFormCadastroClienteContato.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTECONTATO';
  if not TblCargo.Active then TblCargo.Open;
  if not TblCidade.Active then TblCidade.Open;
  if not TblContato.Active then TblContato.Open;
  if not TblPronome.Active then TblPronome.Open;    
end;

procedure TFormCadastroClienteContato.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_F2 then
    BtnContato.Click;
end;

procedure TFormCadastroClienteContato.BtnContatoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('CONTICOD');
  FieldOrigem := 'CONTICOD';
  CriaFormulario(TFormCadastroClon,'FormCadastroPessoa',False,True,'');
end;

end.
