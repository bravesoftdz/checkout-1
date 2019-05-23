unit TelaManutencaoFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, Grids, DBGrids, Mask, ToolEdit, RxLookup, VarSys;

type
  TFormTelaManutencaoFechamentoCaixa = class(TFormTelaGeralTEMPLATE)
    DBGridLista: TDBGrid;
    SQLEmpresa: TRxQuery;
    SQLTerminal: TRxQuery;
    DSSQLEmpresa: TDataSource;
    DSSQLTerminal: TDataSource;
    SQLFechamentoCaixa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    ComboEmpresa: TRxDBLookupCombo;
    ComboTerminal: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DataFech: TDateEdit;
    Label3: TLabel;
    DSSQLFechamentoCaixa: TDataSource;
    BtnBaixarDoc: TSpeedButton;
    SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField;
    SQLFechamentoCaixaEMPRICOD: TIntegerField;
    SQLFechamentoCaixaTERMICOD: TIntegerField;
    SQLFechamentoCaixaNUMEICOD: TIntegerField;
    SQLFechamentoCaixaFECXN2VALOR: TBCDField;
    SQLFechamentoCaixaUSUAICOD: TIntegerField;
    TblNumerario: TTable;
    TblNumerarioNUMEICOD: TIntegerField;
    TblNumerarioNUMEA30DESCR: TStringField;
    SQLFechamentoCaixaNUMEA30DESCR: TStringField;
    SQLFechamentoCaixaPENDENTE: TStringField;
    SQLFechamentoCaixaREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure SQLFechamentoCaixaBeforeInsert(DataSet: TDataSet);
    procedure SQLFechamentoCaixaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaManutencaoFechamentoCaixa: TFormTelaManutencaoFechamentoCaixa;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaManutencaoFechamentoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';
  if not SQLEmpresa.Active then SQLEmpresa.Open;
  if not SQLTerminal.Active then SQLTerminal.Open;
  ComboEmpresa.Value := EmpresaPadrao;  
end;

procedure TFormTelaManutencaoFechamentoCaixa.BtnBaixarDocClick(Sender: TObject);
begin
  inherited;

  if DataFech.Text = '  /  /    ' then
    begin
      Informa('Selecione a data de fechamento, para realizar a pesquisa !');
      DataFech.SetFocus;
      Abort;
    end;
  SQLFechamentoCaixa.Close;

  if ComboEmpresa.Value <> '' then
    SQLFechamentoCaixa.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLFechamentoCaixa.MacroByName('MEmpresa').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLFechamentoCaixa.MacroByName('MTerminal').Value := '0=0';

  SQLFechamentoCaixa.MacroByName('MData').Value := 'FECXDDATAMOV = "' + FormatDateTime('mm/dd/yyyy',DataFech.Date) + '"';
  SQLFechamentoCaixa.Open;
end;

procedure TFormTelaManutencaoFechamentoCaixa.SQLFechamentoCaixaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaManutencaoFechamentoCaixa.SQLFechamentoCaixaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLFechamentoCaixaPENDENTE.AsString   := 'S';
  SQLFechamentoCaixaREGISTRO.AsDateTime := Now;
end;

end.
