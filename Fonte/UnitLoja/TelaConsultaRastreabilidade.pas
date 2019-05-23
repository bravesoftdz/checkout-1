unit TelaConsultaRastreabilidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Mask, ToolEdit, Grids, DBGrids, RxLookup,
  StdCtrls, Buttons, jpeg, ExtCtrls, DB, DBTables, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaRastreabilidade = class(TFormTelaGeralTEMPLATE)
    Panel4: TPanel;
    Label1: TLabel;
    ComboProduto: TRxDBLookupCombo;
    DBGridGrade: TDBGrid;
    Label3: TLabel;
    EditNroSerial: TEdit;
    Label4: TLabel;
    DSSQLProdutoAux: TDataSource;
    SQLProdutoAux: TRxQuery;
    SQLProdutoAuxPRODA60DESCR: TStringField;
    SQLProdutoAuxPRODICOD: TIntegerField;
    SQLProdutoAuxPRODA60REFER: TStringField;
    SQLFiltro: TRxQuery;
    DSFiltro: TDataSource;
    SQLFiltroPRODICOD: TIntegerField;
    SQLFiltroFORNICOD: TIntegerField;
    SQLFiltroCLIEA13ID: TStringField;
    SQLFiltroNOCPA13ID: TStringField;
    SQLFiltroNOFIA13ID: TStringField;
    SQLFiltroCUPOA13ID: TStringField;
    SQLFiltroMOVDA13ID: TStringField;
    SQLFiltroPRSECSTATUS: TStringField;
    SQLFiltroPRODA60DESCR: TStringField;
    EditCdProduto: TEdit;
    Label5: TLabel;
    EditIDCliente: TEdit;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLFiltroPRSEA60NROSERIE: TStringField;
    Label2: TLabel;
    EditCdFornec: TEdit;
    ComboForn: TRxDBLookupCombo;
    dsSQLFornec: TDataSource;
    SQLFornec: TRxQuery;
    SQLFornecFORNICOD: TIntegerField;
    SQLFornecFORNA60RAZAOSOC: TStringField;
    BtProcurar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRastreabilidade: TFormTelaConsultaRastreabilidade;

implementation

{$R *.dfm}

procedure TFormTelaConsultaRastreabilidade.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProdutoAux.Open;
  SQLCliente.Open;
  SQLFornec.Open;
end;

procedure TFormTelaConsultaRastreabilidade.BtProcurarClick(
  Sender: TObject);
begin
  inherited;
  SQLFiltro.Close;
  SQLFiltro.MacroByName('MSerial').Value  := '0=0';
  SQLFiltro.MacroByName('MProduto').Value := '0=0';
  SQLFiltro.MacroByName('MCliente').Value := '0=0';
  SQLFiltro.MacroByName('MFornec').Value  := '0=0';

  if EditNroSerial.Text <> '' then
    SQLFiltro.MacroByName('MSerial').Value  := 'PRODUTOSERIE.PRSEA60NROSERIE = "' + EditNroSerial.Text + '"';

  if EditCdProduto.Text <> '' then
    SQLFiltro.MacroByName('MProduto').Value := 'PRODUTOSERIE.PRODICOD = ' + EditCdProduto.Text
  else
    if ComboProduto.Value <> '' then
      SQLFiltro.MacroByName('MProduto').Value := 'PRODUTOSERIE.PRODICOD = ' + ComboProduto.Value;

  if EditIDCliente.Text <> '' then
    SQLFiltro.MacroByName('MCliente').Value := 'PRODUTOSERIE.CLIEA13ID = "' + EditIDCliente.Text + '"'
  else
    if ComboCliente.Value <> '' then
      SQLFiltro.MacroByName('MCliente').Value := 'PRODUTOSERIE.CLIEA13ID = "' + ComboCliente.Value + '"';

  if EditCdFornec.Text <> '' then
    SQLFiltro.MacroByName('MFornec').Value := 'PRODUTOSERIE.FORNICOD = ' + EditCdFornec.Text
  else
    if ComboForn.Value <> '' then
      SQLFiltro.MacroByName('MFornec').Value := 'PRODUTOSERIE.FORNICOD = ' + ComboForn.Value + '"';

  SQLFiltro.Open;
  if SQLFiltro.IsEmpty then
    begin
      ShowMessage('Nenhum produto localizado com o perfil selecionado!');
    end;
end;

end.
