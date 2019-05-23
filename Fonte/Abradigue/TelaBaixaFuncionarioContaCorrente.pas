unit TelaBaixaFuncionarioContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  DB, DBTables, Grids, DBGrids, Mask, dbcgrids, ToolEdit, UCrpe32, RxQuery,
  VarSys;

type
  TFormTelaBaixaFuncionarioContaCorrente = class(TFormTelaGeralTEMPLATE)
    QueryFuncionario: TQuery;
    DsQueryFuncionario: TDataSource;
    PanelSelect: TPanel;
    ComboFuncionario: TDBLookupComboBox;
    Label9: TLabel;
    QueryFuncionarioConta: TQuery;
    DsQueryFuncionarioConta: TDataSource;
    BtnSelecionarDoc: TSpeedButton;
    BtnBaixarDoc: TSpeedButton;
    GridBaixa: TDBCtrlGrid;
    TableFucionarioContaCorrente: TTable;
    TableFucionarioContaCorrenteFUNCA13ID: TStringField;
    TableFucionarioContaCorrenteFUNCN2VLRCREDITO: TFloatField;
    TableFucionarioContaCorrenteFUNCN2VLRDEBITO: TFloatField;
    TableFucionarioContaCorrenteFUNCA60NOME: TStringField;
    DsTableFucionarioContaCorrente: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QueryTipoOperacaoFuncionario: TQuery;
    QueryFuncionarioContaFUNCA13ID: TStringField;
    QueryFuncionarioContaFUCCICOD: TIntegerField;
    QueryFuncionarioContaFUCCN2VLRDEBITO: TBCDField;
    QueryFuncionarioContaFUCCN2VLRCREDITO: TBCDField;
    QueryFuncionarioContaOPFUICOD: TIntegerField;
    QueryFuncionarioContaPENDENTE: TStringField;
    QueryFuncionarioContaREGISTRO: TDateTimeField;
    QueryFuncionarioContaFUCCDULTREC: TDateTimeField;
    QueryFuncionarioContaFUCCN2VLRTOTREC: TBCDField;
    QueryFuncionarioContaFUCCN2VLRULTREC: TBCDField;
    QueryFuncionarioContaOPFUCTIPOOPERACAO: TStringField;
    TableFucionarioContaCorrenteFUNCN2VLRDIFERENCA: TFloatField;
    DBEdit4: TDBEdit;
    CheckBaixa: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TableFucionarioContaCorrenteFUCCCBAIXAR: TStringField;
    De: TDateEdit;
    Ate: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    TableFucionarioContaCorrenteFUNCN2VLRPAGO: TFloatField;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    QueryFuncionarioContaCorrente: TQuery;
    QueryFuncionarioContaCorrenteFUNCA13ID: TStringField;
    QueryFuncionarioContaCorrenteFUCCICOD: TIntegerField;
    QueryFuncionarioContaCorrenteFUCCN2VLRDEBITO: TBCDField;
    QueryFuncionarioContaCorrenteFUCCN2VLRCREDITO: TBCDField;
    QueryFuncionarioContaCorrenteOPFUICOD: TIntegerField;
    QueryFuncionarioContaCorrentePENDENTE: TStringField;
    QueryFuncionarioContaCorrenteREGISTRO: TDateTimeField;
    QueryFuncionarioContaCorrenteFUCCDULTREC: TDateTimeField;
    QueryFuncionarioContaCorrenteFUCCN2VLRTOTREC: TBCDField;
    QueryFuncionarioContaCorrenteFUCCN2VLRULTREC: TBCDField;
    QueryFuncionarioContaCorrenteFUCCDLANCAMENTO: TDateTimeField;
    QueryFuncionarioContaCorrenteOPFUCTIPOOPERACAO: TStringField;
    TableReportFuncionarioConta: TTable;
    TableReportFuncionarioContaFUNCA13ID: TStringField;
    TableReportFuncionarioContaFUCCN2VLRDEBITO: TBCDField;
    TableReportFuncionarioContaFUCCN2VLRCREDITO: TBCDField;
    TableReportFuncionarioContaOPFUICOD: TIntegerField;
    TableReportFuncionarioContaFUCCDULTREC: TDateTimeField;
    TableReportFuncionarioContaFUCCN2VLRTOTREC: TBCDField;
    TableReportFuncionarioContaFUCCN2VLRULTREC: TBCDField;
    TableReportFuncionarioContaOPFUA60DESCRLOOKUP: TStringField;
    TableReportFuncionarioContaOPFUA60DESCR: TStringField;
    TableReportFuncionarioContaFUNCA60NOMELOOKUP: TStringField;
    TableReportFuncionarioContaFUNCA60NOME: TStringField;
    Report: TCrpe;
    LabelView: TLabel;
    SpeedButton1: TSpeedButton;
    TableRecibo: TTable;
    TableReciboRECIICOD: TAutoIncField;
    TableReciboRECIN2VLRBRUTO: TBCDField;
    TableReciboRECIN2VLRIRRF: TBCDField;
    TableReciboRECIN2VLRLIQUIDO: TBCDField;
    TableReciboRECIDEMISSAO: TDateTimeField;
    TableReciboRECITOBS: TStringField;
    DSTableRecibo: TDataSource;
    TableReciboConta: TTable;
    TableReciboContaRECIICOD: TIntegerField;
    TableReciboContaRECOICOD: TAutoIncField;
    TableReciboContaRECOA13DOCORIGEM: TStringField;
    TableReciboContaRECON2VLRBAIXA: TBCDField;
    TableReciboContaRECODBAIXA: TDateTimeField;
    QueryRecibo: TRxQuery;
    QueryReciboRECIA13ID: TStringField;
    QueryReciboEMPRICOD: TIntegerField;
    QueryReciboTERMICOD: TIntegerField;
    QueryReciboRECIICOD: TIntegerField;
    QueryReciboCLIEA13ID: TStringField;
    QueryReciboFORNICOD: TIntegerField;
    QueryReciboFUNCA13ID: TStringField;
    QueryReciboRECIN2VLRBRUTO: TBCDField;
    QueryReciboRECIN2VLRIRRF: TBCDField;
    QueryReciboRECIN2VLRLIQUIDO: TBCDField;
    QueryReciboRECIDEMISSAO: TDateTimeField;
    QueryReciboRECITOBS: TStringField;
    QueryReciboREGISTRO: TDateTimeField;
    QueryReciboPENDENTE: TStringField;
    QueryReciboRECICTIPO: TStringField;
    DSQueryRecibo: TDataSource;
    QueryReciboConta: TRxQuery;
    QueryReciboContaRECIA13ID: TStringField;
    QueryReciboContaRECOICOD: TIntegerField;
    QueryReciboContaRECOA13DOCORIGEM: TStringField;
    QueryReciboContaREGISTRO: TDateTimeField;
    QueryReciboContaPENDENTE: TStringField;
    QueryReciboContaRECODBAIXA: TDateTimeField;
    QueryReciboContaRECON2VLRBAIXA: TBCDField;
    TableReciboFUNCA13ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure TableFucionarioContaCorrenteNewRecord(DataSet: TDataSet);
    procedure QueryFuncionarioContaCorrenteBeforePost(DataSet: TDataSet);
    procedure QueryFuncionarioContaCorrenteNewRecord(DataSet: TDataSet);
    procedure QueryFuncionarioContaCorrenteBeforeInsert(DataSet: TDataSet);
    procedure LabelViewClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TableReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboBeforePost(DataSet: TDataSet);
    procedure QueryReciboContaBeforePost(DataSet: TDataSet);
    procedure QueryReciboNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    Insert : boolean;
    procedure GeraRecibo;
  public
    { Public declarations }
  end;

var
  FormTelaBaixaFuncionarioContaCorrente: TFormTelaBaixaFuncionarioContaCorrente;

implementation

uses DataModulo, CadastroRecibo;

{$R *.dfm}

procedure TFormTelaBaixaFuncionarioContaCorrente.GeraRecibo;
begin
  if not QueryRecibo.Active then
    QueryRecibo.Open;
  if not QueryReciboConta.Active then
    QueryReciboConta.Open;
  TableRecibo.First;
  while not TableRecibo.Eof do
    begin
      QueryRecibo.Append;
      QueryRecibo.FieldByName('FUNCA13ID').AsString := TableRecibo.FieldByName('FUNCA13ID').AsString;
      QueryRecibo.FieldByName('RECICTIPO').AsString := 'U';
      QueryRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
      QueryRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat;
      QueryRecibo.FieldByName('RECIDEMISSAO').AsVariant := TableRecibo.FieldByName('RECIDEMISSAO').AsVariant;
      QueryRecibo.FieldByName('PENDENTE').AsString := 'S';
      QueryRecibo.FieldByName('REGISTRO').AsDateTime := Now;
      QueryRecibo.Post;
      TableReciboConta.First;
      while not TableReciboConta.Eof do
        begin
          QueryReciboConta.Append;
          QueryReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString;
          QueryReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat := TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat;
          QueryReciboConta.FieldByName('RECODBAIXA').AsVariant := TableReciboConta.FieldByName('RECODBAIXA').AsVariant;
          QueryReciboConta.FieldByName('PENDENTE').AsString := 'S';
          QueryReciboConta.FieldByName('REGISTRO').AsDateTime := Now;
          QueryReciboConta.Post;
          TableReciboConta.Delete;
        end;
      TableRecibo.Delete;
    end;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.FormCreate(Sender: TObject);
begin
  inherited;
  if not QueryFuncionario.Active then
    QueryFuncionario.Open;
  Insert := False;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.BtnSelecionarDocClick(Sender: TObject);
  function ValidDate(Valid : string) : boolean;
  begin
    try
      StrToDateTime(Valid);
      Result := True;
    except
      Result := False;
    end;
  end;
begin
  inherited;
  if not ((ValidDate(De.Text)) and
          (ValidDate(Ate.Text))) then
    begin
      Application.MessageBox('Informe corretamente a data!','Atenção',MB_SYSTEMMODAL + MB_ICONINFORMATION + MB_OK + MB_SETFOREGROUND);
      Exit;
    end;
  if QueryFuncionarioConta.Active then
    QueryFuncionarioConta.Close;
  QueryFuncionarioConta.SQL.Clear;
  QueryFuncionarioConta.SQL.Add('SELECT * FROM FUNCIONARIOCONTACORRENTE ');
  QueryFuncionarioConta.SQL.Add(' WHERE ((FUCCN2VLRTOTREC < FUCCN2VLRDEBITO) ');
  QueryFuncionarioConta.SQL.Add(' OR (FUCCN2VLRTOTREC < FUCCN2VLRCREDITO)) ');
  QueryFuncionarioConta.SQL.Add(' AND FUCCDLANCAMENTO BETWEEN "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ');
  if ComboFuncionario.KeyValue > 0 then
    QueryFuncionarioConta.SQL.Add(' AND FUNCA13ID = "' + VarToStr(ComboFuncionario.KeyValue) + '" ');
  QueryFuncionarioConta.Open;
  if TableFucionarioContaCorrente.Active then
    begin
      while TableFucionarioContaCorrente.RecordCount > 0 do
        TableFucionarioContaCorrente.Delete;
    end
  else
    begin
      TableFucionarioContaCorrente.CreateTable;
      TableFucionarioContaCorrente.AddIndex('','FUNCA13ID',[ixPrimary]);
      TableFucionarioContaCorrente.Open;
    end;
  QueryFuncionarioConta.First;
  while not QueryFuncionarioConta.Eof do
    begin
      if TableFucionarioContaCorrente.FindKey([QueryFuncionarioConta.FieldByName('FUNCA13ID').AsString]) then
        begin
          TableFucionarioContaCorrente.Edit;
        end
      else
        begin
          TableFucionarioContaCorrente.Append;
          TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsString := QueryFuncionarioConta.FieldByName('FUNCA13ID').AsString;
          TableFucionarioContaCorrente.FieldByName('FUCCCBAIXAR').AsString := 'S';
        end;
      case QueryFuncionarioConta.FieldByName('OPFUCTIPOOPERACAO').AsString[1] of
        'C' : TableFucionarioContaCorrente.FieldByName('FUNCN2VLRCREDITO').AsFloat :=
              TableFucionarioContaCorrente.FieldByName('FUNCN2VLRCREDITO').AsFloat +
              QueryFuncionarioConta.FieldByName('FUCCN2VLRCREDITO').AsFloat;
        'D' : TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDEBITO').AsFloat :=
              TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDEBITO').AsFloat +
              QueryFuncionarioConta.FieldByName('FUCCN2VLRDEBITO').AsFloat;
      end;
      TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDIFERENCA').AsFloat :=
      TableFucionarioContaCorrente.FieldByName('FUNCN2VLRCREDITO').AsFloat -
      TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDEBITO').AsFloat;
      if TableFucionarioContaCorrente.State in dsEditModes then
        TableFucionarioContaCorrente.Post;
      QueryFuncionarioConta.Next;
    end;
  TableFucionarioContaCorrente.First;
  while not TableFucionarioContaCorrente.Eof do
    begin
      if TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDIFERENCA').AsFloat > 0 then
        begin
          TableFucionarioContaCorrente.Edit;
          TableFucionarioContaCorrente.FieldByName('FUNCN2VLRPAGO').AsFloat := TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDIFERENCA').AsFloat;
          TableFucionarioContaCorrente.Post;
        end;
      TableFucionarioContaCorrente.Next;
    end;
  QueryFuncionarioConta.Close;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.BtnBaixarDocClick(
  Sender: TObject);
var
  Value : double;
begin
  inherited;
  if TableFucionarioContaCorrente.State in dsEditModes then
    TableFucionarioContaCorrente.Post;
  TableFucionarioContaCorrente.First;
  while not TableFucionarioContaCorrente.Eof do
    begin
      if (TableFucionarioContaCorrente.FieldByName('FUCCCBAIXAR').AsString = 'S') then
        begin
          if QueryFuncionarioContaCorrente.Active then
            QueryFuncionarioContaCorrente.Close;
          QueryFuncionarioContaCorrente.SQL.Clear;
          QueryFuncionarioContaCorrente.SQL.Text := QueryFuncionarioConta.SQL.Text;
          if Pos(' AND FUNCA13ID =',QueryFuncionarioContaCorrente.SQL.Text) = 0 then
            QueryFuncionarioContaCorrente.SQL.Add(' AND FUNCA13ID = "' + TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsString + '" ');
          QueryFuncionarioContaCorrente.Open;
          QueryFuncionarioContaCorrente.First;
          while not QueryFuncionarioContaCorrente.Eof do
            begin
              QueryFuncionarioContaCorrente.Edit;
              QueryFuncionarioContaCorrente.FieldByName('FUCCDULTREC').AsDateTime := dm.DataBaseSistema;
              case QueryFuncionarioContaCorrente.FieldByName('OPFUCTIPOOPERACAO').AsString[1] of
                'C' : QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRTOTREC').AsFloat := QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRCREDITO').AsFloat;
                'D' : QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRTOTREC').AsFloat := QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRDEBITO').AsFloat;
              end;
              QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRULTREC').AsFloat := QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRTOTREC').AsFloat;
              QueryFuncionarioContaCorrente.FieldByName('REGISTRO').AsDateTime := Now;
              QueryFuncionarioContaCorrente.FieldByName('PENDENTE').AsString := 'S';
              QueryFuncionarioContaCorrente.Post;
              QueryFuncionarioContaCorrente.Next;
            end;
          Value := TableFucionarioContaCorrente.FieldByName('FUNCN2VLRPAGO').AsFloat - TableFucionarioContaCorrente.FieldByName('FUNCN2VLRDIFERENCA').AsFloat;
          if Value <> 0 then
            begin
              if not DM.SQLConfigTransportadora.Active then
                DM.SQLConfigTransportadora.Open;
              QueryFuncionarioContaCorrente.Append;
              if Value < 0 then
                begin
                  QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRCREDITO').AsFloat := abs(Value);
                  QueryFuncionarioContaCorrente.FieldByName('OPFUICOD').AsInteger := DM.SQLConfigTransportadora.FieldByName('CFTROPFUICODCREDITO').AsInteger;
                end
              else
                begin
                  QueryFuncionarioContaCorrente.FieldByName('FUCCN2VLRDEBITO').AsFloat := Value;
                  QueryFuncionarioContaCorrente.FieldByName('OPFUICOD').AsInteger := DM.SQLConfigTransportadora.FieldByName('CFTROPFUICODDEBITO').AsInteger;
                end;
              QueryFuncionarioContaCorrente.FieldByName('REGISTRO').AsDateTime := Now;
              QueryFuncionarioContaCorrente.FieldByName('PENDENTE').AsString := 'S';
              QueryFuncionarioContaCorrente.Post;
            end;
          TableFucionarioContaCorrente.Delete;
        end
      else
        TableFucionarioContaCorrente.Next;
    end;
  GeraRecibo;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.TableFucionarioContaCorrenteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUNCN2VLRCREDITO').AsFloat := 0;
  DataSet.FieldByName('FUNCN2VLRDEBITO').AsFloat := 0;
  DataSet.FieldByName('FUNCN2VLRPAGO').AsFloat := 0;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryFuncionarioContaCorrenteBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if Insert then
    DataSet.FieldByName('FUCCICOD').AsInteger := DM.ProximoCodigoUnico('FUNCIONARIOCONTACORRENTE',QueryFuncionarioContaCorrente,nil,0);
  Insert := False;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryFuncionarioContaCorrenteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUNCA13ID').AsString := TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsString;
  DataSet.FieldByName('FUCCN2VLRDEBITO').AsFloat := 0;
  DataSet.FieldByName('FUCCN2VLRCREDITO').AsFloat := 0;
  DataSet.FieldByName('FUCCN2VLRTOTREC').AsFloat := 0;
  DataSet.FieldByName('FUCCN2VLRULTREC').AsFloat := 0;
  DataSet.FieldByName('FUCCDLANCAMENTO').AsDateTime := dm.DataBaseSistema;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryFuncionarioContaCorrenteBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  Insert := True;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.LabelViewClick(
  Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if TableReportFuncionarioConta.Active then
    begin
      TableReportFuncionarioConta.First;
      while not TableReportFuncionarioConta.Eof do
        TableReportFuncionarioConta.Delete;
    end
  else
    begin
      TableReportFuncionarioConta.CreateTable;
      TableReportFuncionarioConta.Open;
    end;
  QueryFuncionarioConta.Close;
  SQL := QueryFuncionarioConta.SQL.Text;
  QueryFuncionarioConta.SQL.Clear;
  if Pos(' AND FUNCA13ID = "',SQL) > 0 then
    Delete(SQL,Pos(' AND FUNCA13ID = "',SQL),35);
  QueryFuncionarioConta.SQL.Add(SQL);
  QueryFuncionarioConta.SQL.Add(' AND FUNCA13ID = "'+ TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsString + '" ');
  QueryFuncionarioConta.Open;
  QueryFuncionarioConta.First;
  while not QueryFuncionarioConta.Eof do
    begin
      TableReportFuncionarioConta.Append;
      TableReportFuncionarioConta.FieldByName('FUNCA13ID').AsVariant := QueryFuncionarioConta.FieldByName('FUNCA13ID').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUNCA60NOME').AsVariant := TableReportFuncionarioConta.FieldByName('FUNCA60NOMELOOKUP').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUCCN2VLRDEBITO').AsVariant := QueryFuncionarioConta.FieldByName('FUCCN2VLRDEBITO').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUCCN2VLRCREDITO').AsVariant := QueryFuncionarioConta.FieldByName('FUCCN2VLRCREDITO').AsVariant;
      TableReportFuncionarioConta.FieldByName('OPFUICOD').AsVariant := QueryFuncionarioConta.FieldByName('OPFUICOD').AsVariant;
      TableReportFuncionarioConta.FieldByName('OPFUA60DESCR').AsVariant := TableReportFuncionarioConta.FieldByName('OPFUA60DESCRLOOKUP').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUCCDULTREC').AsVariant := QueryFuncionarioConta.FieldByName('FUCCDULTREC').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUCCN2VLRTOTREC').AsVariant := QueryFuncionarioConta.FieldByName('FUCCN2VLRTOTREC').AsVariant;
      TableReportFuncionarioConta.FieldByName('FUCCN2VLRULTREC').AsVariant := QueryFuncionarioConta.FieldByName('FUCCN2VLRULTREC').AsVariant;
      TableReportFuncionarioConta.Post;
      QueryFuncionarioConta.Next;
    end;
  if not DM.SQLConfigGeral.Active then
    DM.SQLConfigGeral.Open;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\FuncionarioContaCorrente.rpt';
  Report.ReportTitle := 'Relatório Funcionário Conta Corrente';
  Report.WindowStyle.Title := 'Relatório Funcionário Conta Corrente';
  Report.Execute;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  if ((TableFucionarioContaCorrente.Active) and
      (TableFucionarioContaCorrente.RecordCount > 0)) then
    begin
      if TableRecibo.Active then
        begin
          TableRecibo.First;
          while TableRecibo.RecordCount > 0 do
            begin
              while TableReciboConta.RecordCount > 0 do
                TableReciboConta.Delete;
              TableRecibo.Delete;
            end;
        end
      else
        begin
          TableRecibo.CreateTable;
          TableReciboConta.CreateTable;
          TableRecibo.AddIndex('','RECIICOD',[ixPrimary]);
          TableReciboConta.AddIndex('','RECIICOD;RECOICOD',[ixPrimary]);
          TableRecibo.Open;
          TableReciboConta.Open;
          TableRecibo.IndexName := '';
          TableReciboConta.IndexName := '';
        end;
      TableFucionarioContaCorrente.First;
      while not TableFucionarioContaCorrente.Eof do
        begin
          if TableFucionarioContaCorrente.FieldByName('FUCCCBAIXAR').AsString = 'S' then
            begin
              if TableRecibo.Locate('FUNCA13ID',TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsVariant,[loCaseInsensitive]) then
                TableRecibo.Edit
              else
                begin
                  TableRecibo.Append;
                  TableRecibo.FieldByName('FUNCA13ID').AsString := TableFucionarioContaCorrente.FieldByName('FUNCA13ID').AsString;
                  TableRecibo.FieldByName('RECIDEMISSAO').AsVariant := Null;
                end;
              TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat + TableFucionarioContaCorrente.FieldByName('FUNCN2VLRPAGO').AsFloat;
              TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
              TableRecibo.Post;
              TableReciboConta.Append;
              TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := '';
              TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat := TableFucionarioContaCorrente.FieldByName('FUNCN2VLRPAGO').AsFloat;
              TableReciboConta.FieldByName('RECODBAIXA').AsDateTime := Date;
              TableReciboConta.Post;
            end;
          TableFucionarioContaCorrente.Next;
        end;
      BtnBaixarDoc.Click;
      Application.CreateForm(TFormCadastroRecibo,FormCadastroRecibo);
      FormCadastroRecibo.SQLTemplate.Close;
      FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECIDEMISSAO IS NULL AND RECICTIPO = "U"';
      FormCadastroRecibo.SQLTemplate.Open;
      FormCadastroRecibo.Show;
    end;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.TableReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIICOD').AsInteger := TableRecibo.FieldByName('RECIICOD').AsInteger;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIA13ID').AsVariant := DataSet.DataSource.DataSet.FieldByName('RECIA13ID').AsVariant;
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryReciboBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('RECIBO',nil,DataSet,3,0);
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryReciboContaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECOICOD').AsInteger := DM.ProximoCodigoUnico('RECIBOCONTA',DataSet,DSQueryRecibo,1);
end;

procedure TFormTelaBaixaFuncionarioContaCorrente.QueryReciboNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;
  DataSet.FieldByName('TERMICOD').AsInteger := TerminalCorrente;
end;

end.
