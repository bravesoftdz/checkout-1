unit CadastroMovEstItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls;

type
  TFormCadastroMovEstItem = class(TFormCadastroTEMPLATE)
    SQLTemplateMVPIIITEM: TIntegerField;
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateMVPIN3QTD: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateLOTEA30NRO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLTemplatePRODA60DESCR: TStringField;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMovEstItem: TFormCadastroMovEstItem;

implementation

{$R *.dfm}

procedure TFormCadastroMovEstItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'MOVESTPRODUCAOITEM';
  if not SQLProduto.Active then SQLProduto.Active;

end;

procedure TFormCadastroMovEstItem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not SQLProduto.Active then SQLProduto.Active := True;
  SQLTemplateMOVDA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('MOVDA13ID').AsString;
end;

end.
