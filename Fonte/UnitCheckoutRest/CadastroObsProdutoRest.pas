unit CadastroObsProdutoRest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel, RxDBComb, RxLookup, EDBNum;

type
  TFormCadastroObsProdutoRest = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateOBPRIORDEM: TIntegerField;
    Label1: TLabel;
    DBEditOrdem: TDBEdit;
    SQLTemplateOBPRA1TIPO: TStringField;
    SQLTemplateOBPRA15SIGLA: TStringField;
    ComboTipo: TRxDBComboBox;
    Label6: TLabel;
    DBEditValor: TEvDBNumEdit;
    Label3: TLabel;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateVALOR: TBCDField;
    ComboProduto: TRxDBLookupCombo;
    Label4: TLabel;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLTemplateProdutoDescricao: TStringField;
    SQLTemplateOBPRICOD: TIntegerField;
    SQLEspelhoNovoLanc: TRxQuery;
    btReplicarCad: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure btReplicarCadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroObsProdutoRest: TFormCadastroObsProdutoRest;

implementation

{$R *.dfm}

procedure TFormCadastroObsProdutoRest.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ObsProdutoRest';
end;

procedure TFormCadastroObsProdutoRest.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateOBPRA15SIGLA.Value = '' Then
    begin
      Beep ;
      ShowMessage('O campo Sigla deve ser preenchido!') ;
      Abort ;
    end;
end;

procedure TFormCadastroObsProdutoRest.btReplicarCadClick(Sender: TObject);
var i : integer;
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'OBPRICOD = ' + SQLTemplateOBPRICOD.AsString ;
  SQLEspelhoNovoLanc.Open ;

  sqltemplate.DisableControls;
  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'OBPRICOD') then
      begin
        try
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
        except
          Application.ProcessMessages;
        end;
      end;

  SQLTemplateVALOR.Value := 0;
  
  SQLTemplate.EnableControls;
  SQLTemplateOBPRA15SIGLA.FocusControl ;
end;

end.
