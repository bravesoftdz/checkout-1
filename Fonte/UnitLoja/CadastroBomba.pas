unit CadastroBomba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  ExtCtrls, Buttons, jpeg, DBCtrls, RxLookup, EDBNum, ToolEdit, RXDBCtrl,
  RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroBomba = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateBOMBICOD: TIntegerField;
    SQLTemplateTANQICOD: TIntegerField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateBOMBA30DESCR: TStringField;
    Label1: TLabel;
    Label5: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    DSSQLEmpresa: TDataSource;
    ComboTanque: TRxDBLookupCombo;
    DSSQLTanque: TDataSource;
    SQLTanque: TRxQuery;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    ComboProduto: TRxDBLookupCombo;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    Label8: TLabel;
    SQLTemplateBOMBN3VLRVISTA: TBCDField;
    DBEditVlrVenda: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplateBOMBN2CONT: TBCDField;
    SQLTemplateCONVERTER: TStringField;
    SQLTemplateSTATUS: TStringField;
    SQLTemplatePOINT: TIntegerField;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCOMANDO: TStringField;
    SQLTemplateBOMBA50NROSERIE: TStringField;
    SQLTemplateBOMBA60FABRICANTE: TStringField;
    SQLTemplateBOMBA20MODELO: TStringField;
    SQLTemplateBOMBA1TIPO: TStringField;
    SQLTemplateBOMBA20LACRE: TStringField;
    SQLTemplateBOMBDDATALACRE: TDateTimeField;
    Panel4: TPanel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    ComboTipoBomba: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroBomba: TFormCadastroBomba;

implementation

{$R *.dfm}

procedure TFormCadastroBomba.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'BOMBA';
  SQLEmpresa.Open;
  SQLTanque.Open;
  SQLProduto.Open;
end;

procedure TFormCadastroBomba.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage('Impossível Gravar Registro.... Provavel Falha: Registro Duplicado');
  Action := daAbort;
end;

end.
