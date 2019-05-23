unit CadastroTanque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, ExtCtrls, Buttons, jpeg, RxLookup, EDBNum;

type
  TFormCadastroTanque = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTANQICOD: TIntegerField;
    SQLTemplateTANQA30DESCR: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateTANQN2CAPACID: TBCDField;
    SQLTemplateTANQN2SALDO: TBCDField;
    SQLTemplateTANQN2ESTMIN: TBCDField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboProduto: TRxDBLookupCombo;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    DBEditCapacidade: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    DSSQLEmpresa: TDataSource;
    ComboEmpresa: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTanque: TFormCadastroTanque;

implementation

{$R *.dfm}

procedure TFormCadastroTanque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TANQUE';
  SQLProduto.Open;
  SQLEmpresa.Open;
end;

procedure TFormCadastroTanque.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage('Impossível Gravar Registro.... Provável Falha: Registro Duplicado');
  Action := daAbort;
end;

end.
