unit unControleCilindros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, Grids, DBGrids, DBCtrls, Mask, ToolEdit, CurrEdit;

type
  TFrmControleCilindros = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SQLGrupo: TIBQuery;
    DSSQLGrupo: TDataSource;
    SQLCliente: TIBQuery;
    DSSQLCliente: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SQLProduto: TIBQuery;
    DSSQLProduto: TDataSource;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    Grupo: TGroupBox;
    ComboGrupo: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TIBStringField;
    SQLGrupoPENDENTE: TIBStringField;
    SQLGrupoREGISTRO: TDateTimeField;
    IBQuery: TIBQuery;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtEntregue: TCurrencyEdit;
    edtDevolvido: TCurrencyEdit;
    edtTotal: TCurrencyEdit;
    IBQueryCLIEA60RAZAOSOC: TIBStringField;
    IBQueryNOFIINUMERO: TIntegerField;
    IBQueryNOFIDEMIS: TDateTimeField;
    IBQueryPRODA30ADESCRREDUZ: TIBStringField;
    IBQueryNFITN3QUANT: TFloatField;
    IBQueryNFITN2VLRUNIT: TFloatField;
    IBQueryOPESA60DESCR: TIBStringField;
    IBQueryOPESCENTRADASAIDA: TIBStringField;
    GroupBox2: TGroupBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLOp1: TIBQuery;
    dtsOp1: TDataSource;
    SQLOp2: TIBQuery;
    dtsOp2: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboGrupoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControleCilindros: TFrmControleCilindros;

implementation

uses unDataModule;

{$R *.dfm}

procedure TFrmControleCilindros.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmControleCilindros.FormCreate(Sender: TObject);
begin
  SQLGrupo.Open ;
  SQLCliente.Open ;
  SQLOp1.Open;
  SQLOp2.Open;
end;

procedure TFrmControleCilindros.ComboGrupoExit(Sender: TObject);
begin
  if ComboGrupo.Text <> '' then
    SQLProduto.open
  else
  begin
    Showmessage('Selecione o Grupo identificador de Cilindros');
    ComboGrupo.SetFocus;
  end;

end;

procedure TFrmControleCilindros.BitBtn1Click(Sender: TObject);
begin
  edtEntregue.value   := 0;
  edtDevolvido.value  := 0;
  edtTotal.value      := 0;
  if ComboGrupo.Text = '' then
  begin
    Showmessage('Selecione o Grupo Identificador de Cilindros');
    exit;
  end;
  ibQuery.Close;
  IBQuery.SQL.Text := 'Select cl.cliea60razaosoc, nf.NOFiINUMERO, '+
  'NF.NOFIDEMIS, p.proda30adescrreduz, ni.nfitn3quant, ni.nfitn2vlrunit,'+
  'OP.OPESA60DESCR, op.opescentradasaida  from notafiscalitem ni                   '+
  'inner join notafiscal nf on nf.nofia13id = ni.nofia13id   '+
  'left join operacaoestoque op on op.opesicod = nf.opesicod '+
  'left join cliente cl on cl.cliea13id = nf.cliea13id       '+
  'left join produto p on p.prodicod = ni.prodicod           ';
  if ComboCliente.Text <> '' then
  begin
    IbQuery.SQL.Text := IBQuery.Sql.Text + ' where nf.cliea13id = :xCli ';
    ibQuery.ParamByName('xCli').AsString := SQLCliente.fieldbyname('cliea13id').AsString;
  end;
  if ComboProduto.Text <> 'Procura pela Descrição Principal...' then
  begin
    if Pos('where',ibQuery.Sql.Text) = 0 then
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' where ni.prodicod = :prodicod '
    else
      IbQuery.SQL.Text := IBQuery.Sql.Text + ' and ni.prodicod = :prodicod ';
    ibQuery.ParamByName('prodicod').AsInteger := SQLProduto.fieldbyname('prodicod').AsInteger;
  end else
  begin
    if Pos('where',ibQuery.Sql.Text) = 0 then
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' where '
    else
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' and ';
    ibQuery.SQL.Text := IBQuery.SQL.Text + ' ni.prodicod in (Select pr.prodicod from produto pr where pr.grupicod = :xgrup)';
    ibQuery.ParamByName('xGrup').AsInteger := SQLGrupoGRUPICOD.AsInteger;
  end;
  if RadioGroup1.ItemIndex < 2 then
  begin
    if Pos('where',ibQuery.Sql.Text) = 0 then
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' where '
    else
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' and ';
    IBQuery.Sql.Text := IBQuery.SQL.Text + ' op.opescentradasaida = :xopentrasai ';
    case RadioGroup1.ItemIndex of
    0: IBQuery.ParamByName('xopentrasai').asstring := 'E';
    1: IBQuery.ParamByName('xopentrasai').asstring := 'S';
    end;
  end;

  if RxDBLookupCombo1.Text <> '' then
  begin
    if Pos('where',ibQuery.Sql.Text) = 0 then
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' where '
    else
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' and ';
    IBQuery.Sql.Text := IBQuery.SQL.Text + ' op.opesicod = :xop1 ';
    IBQuery.Parambyname('xop1').asstring := SQLOp1.fieldbyName('OPESICOD').AsString;
  end;

  if RxDBLookupCombo1.Text <> '' then
  begin
    if Pos('where',ibQuery.Sql.Text) = 0 then
      ibQuery.SQL.Text := IBQuery.SQL.Text + ' where '
    else
      if Pos(':xop1',IBQuery.SQL.Text) > 0 then
        ibQuery.SQL.Text := IBQuery.SQL.Text + ' or '
      else
        ibQuery.SQL.Text := IBQuery.SQL.Text + ' and ';

    IBQuery.Sql.Text := IBQuery.SQL.Text + ' op.opesicod = :xop2 ';
    IBQuery.Parambyname('xop2').asstring := SQLOp2.fieldbyName('OPESICOD').AsString;
  end;




  IBQuery.Open;
  IBQuery.DisableControls;
  IBQuery.First;
  while not IBQuery.Eof do
  begin
    if IBQuery.FieldByName('opescentradasaida').asstring = 'S' then
      edtEntregue.Value := edtEntregue.value + IBQuery.fieldbyname('nfitn3quant').Value;
    if IBQuery.FieldByName('opescentradasaida').asstring = 'E' then
      edtDevolvido.Value := edtDevolvido.value + IBQuery.fieldbyname('nfitn3quant').Value;
    IBQuery.Next;
  end;
  IBQuery.First;
  IBQuery.EnableControls;
  edtTotal.Value := edtEntregue.value - edtDevolvido.Value;
end;

end.
