unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, RxLookup, Grids,
  DBGrids, SMDBGrid, ExtCtrls, uDMConsCupom, Gauges, SqlExpr, dbXPress;

type
  TfrmConsultaCupons = class(TForm)
    pnlTop: TPanel;
    Panel1: TPanel;
    gridConsulta: TSMDBGrid;
    ComboEmpresa: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    ComboTerminal: TRxDBLookupCombo;
    dataInicial: TcxDateEdit;
    dataFinal: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnConsultar: TSpeedButton;
    btnEstornar: TSpeedButton;
    Panel2: TPanel;
    Gauge1: TGauge;
    Label5: TLabel;
    comboOperacao: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsCupom : TDMConsCupom;
    function Fnc_ArquivoConfiguracao: string;
    function ConvFloatToStr(Numero: Double): string;
    procedure Consultar_Cupom;
    procedure BuscarPrudotoFilho(IDCupom : String);
    procedure GravarEstoque;
    procedure GravarMovimento;
  public
    { Public declarations }
  end;

var
  frmConsultaCupons: TfrmConsultaCupons;

implementation

uses
  uDMConexao, DB;

const
  cArquivoConfiguracao = 'Parceiro.ini';

{$R *.dfm}

{ TForm1 }

procedure TfrmConsultaCupons.Consultar_Cupom;
begin
  with fDMConsCupom do
  begin
    cdsCupom.Close;
    sdsCupom.ParamByName('Empresa').AsInteger := ComboEmpresa.KeyValue;
    sdsCupom.ParamByName('Terminal').AsInteger := ComboTerminal.KeyValue;
    sdsCupom.ParamByName('DataInicial').AsDate := dataInicial.Date;
    sdsCupom.ParamByName('DataFinal').AsDate := dataFinal.Date;
    cdsCupom.Open;
  end;
end;

function TfrmConsultaCupons.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TfrmConsultaCupons.FormCreate(Sender: TObject);
begin
  fDMConsCupom := TDMConsCupom.Create(Self);
end;

procedure TfrmConsultaCupons.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMConsCupom);
end;

procedure TfrmConsultaCupons.btnConsultarClick(Sender: TObject);
begin
  if ComboEmpresa.Text = EmptyStr then
  begin
    MessageDlg('Informe a empresa!', mtInformation,[mbOK],0);
    ComboEmpresa.SetFocus;
    Exit;
  end;
  if ComboTerminal.Text = EmptyStr then
  begin
    MessageDlg('Informe o terminal!', mtInformation,[mbOK],0);
    ComboTerminal.SetFocus;
    Exit;
  end;
  if comboOperacao.Text = EmptyStr then
  begin
    MessageDlg('Informe o operação estoque!', mtInformation,[mbOK],0);
    comboOperacao.SetFocus;
    Exit;
  end;
  if dataInicial.Date < 10 then
  begin
    MessageDlg('Informe a data inicial!', mtInformation,[mbOK],0);
    dataInicial.SetFocus;
    Exit;
  end;
  if dataFinal.Date < 10 then
  begin
    MessageDlg('Informe a data final!', mtInformation,[mbOK],0);
    dataFinal.SetFocus;
    Exit;
  end;
  Consultar_Cupom;

end;

procedure TfrmConsultaCupons.FormShow(Sender: TObject);
begin
  dataFinal.Date := Date;
end;

procedure TfrmConsultaCupons.btnEstornarClick(Sender: TObject);
var
  Executou : Boolean;
begin
  if MessageDlg('Tem certeza que deseja estornar o estoque dos cupons?',mtConfirmation,[mbYes,mbNo],0) = mrNO then
    Exit;
  Executou := False;
  with fDMConsCupom do
  begin
    if cdsCupom.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado',mtConfirmation, [mbOK],0);
      Exit;
    end;
    Gauge1.Progress := 0;
    Gauge1.MaxValue := cdsCupom.RecordCount;
    Gauge1.Refresh;
    cdsCupom.First;
    while not cdsCupom.Eof do
    begin
      Gauge1.AddProgress(1);
      Gauge1.Refresh;
      with gridConsulta do
      begin
        if SelectedRows.CurrentRowSelected then
        begin
          BuscarPrudotoFilho(cdsCupomCUPOA13ID.AsString);
          GravarEstoque;
          Executou := True;
        end;
      end;
      cdsCupom.Next;
    end;
    if Executou then
      ShowMessage('Operação finalizada com sucesso!')
    else
      ShowMessage('Nenhum registro selecionado!');
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmConsultaCupons.BuscarPrudotoFilho(IDCupom : string);
begin
  with fDMConsCupom do
  begin
    SQLConsulta.Close;
    SQLConsulta.ParamByName('IDCUPOM').AsString := IDCupom;
    SQLConsulta.Open;
    SQLConsulta.First;
  end;
end;

procedure TfrmConsultaCupons.GravarEstoque;
begin
  with fDMConsCupom do
  begin
    while not SQLConsulta.Eof  do
    begin
      GravarMovimento;
      SQLConsulta.Next;
    end;
  end;
end;

procedure TfrmConsultaCupons.GravarMovimento;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  ProxCod : integer;
  DataAtual : TDateTime;
begin
  DataAtual := Date;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := DMConection.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  try
    // Busca último código do movimento
    sds.CommandText := '';
    sds.CommandText := 'select Max(MVESICOD) as CONTADOR from MOVIMENTOESTOQUE ';
    sds.CommandText := sds.CommandText + 'where EMPRICOD = ' + IntToStr(ComboEmpresa.KeyValue);
    sds.CommandText := sds.CommandText + ' and   MVESDMOV = ''' + FormatDateTime('mm/dd/yyyy', DataAtual) + '''';
    sds.Open;
    if (sds.FieldByName('CONTADOR').AsFloat <= 0) or not (sds.FieldByName('CONTADOR').IsNull) then
      ProxCod := sds.FieldByName('CONTADOR').AsInteger + 1
    else
      ProxCod := 1;

    // Lança movimento de estoque
    sds.Close;
    sds.CommandText := '';
    sds.CommandText := 'Insert Into MOVIMENTOESTOQUE ';
    sds.CommandText := sds.CommandText + '(EMPRICOD, ';
    sds.CommandText := sds.CommandText + 'MVESDMOV, ';
    sds.CommandText := sds.CommandText + 'MVESICOD, ';
    sds.CommandText := sds.CommandText + 'PRODICOD, ';
    sds.CommandText := sds.CommandText + 'OPESICOD, ';
    sds.CommandText := sds.CommandText + 'MVESN3QTDENTRADA, ';
    sds.CommandText := sds.CommandText + 'MVESN3QTDSAIDA, ';
    sds.CommandText := sds.CommandText + 'CUPOA13ID, ';
    sds.CommandText := sds.CommandText + 'MVESCESTOQUEOK, ';
    sds.CommandText := sds.CommandText + 'PENDENTE, ';
    sds.CommandText := sds.CommandText + 'REGISTRO) ';

    sds.CommandText := sds.CommandText + 'values( ';
    sds.CommandText := sds.CommandText + IntToStr(ComboEmpresa.KeyValue) + ', ';
    sds.CommandText := sds.CommandText + '''' + FormatDateTime('mm/dd/yyyy', DataAtual) + ''', ';
    sds.CommandText := sds.CommandText + IntToStr(ProxCod) + ', ';
    sds.CommandText := sds.CommandText + IntToStr(fDMConsCupom.SQLConsulta.FieldByName('PRODICOD').AsInteger) + ', ';
    sds.CommandText := sds.CommandText + IntToStr(comboOperacao.KeyValue) + ', ';
    if fDMConsCupom.SQLConsulta.FieldByName('CPITN3QTD').AsFloat > 0 then
    begin
      sds.CommandText := sds.CommandText + ConvFloatToStr(fDMConsCupom.SQLConsulta.FieldByName('CPITN3QTD').AsFloat) + ', ';
      sds.CommandText := sds.CommandText + '0, ';
    end;
    if fDMConsCupom.SQLConsulta.FieldByName('CPITN3QTDTROCA').AsFloat > 0 then
    begin
      sds.CommandText := sds.CommandText + '0, ';
      sds.CommandText := sds.CommandText + ConvFloatToStr(fDMConsCupom.SQLConsulta.FieldByName('CPITN3QTDTROCA').AsFloat) + ', ';
    end;
    sds.CommandText := sds.CommandText + '''' + fDMConsCupom.SQLConsulta.FieldByName('CUPOA13ID').AsString + ''',';
    sds.CommandText := sds.CommandText + '''N'', ';
    sds.CommandText := sds.CommandText + '''S'', ';
    sds.CommandText := sds.CommandText + '''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''')';
    sds.ExecSQL();

    //Atualiza produto para não buscar mais na consulta
    sds.Close;
    sds.CommandText := '';
    sds.CommandText := 'update cupom set Estornou = ' + QuotedStr('S') ;
    sds.CommandText := sds.CommandText + ' where cupoa13id = ' + fDMConsCupom.SQLConsulta.FieldByName('CUPOA13ID').AsString ;
    sds.ExecSQL();

  finally
    sds.Free;
  end;
end;

function TfrmConsultaCupons.ConvFloatToStr(Numero: Double): string;
var
  Wstr: string;
begin
  ConvFloatToStr := '0.00';
  if Numero <> null then
  begin
    Wstr := FloatToStr(Numero);
    ConvFloatToStr := Wstr;
    if Pos(',', Wstr) > 0 then
      ConvFloatToStr := Copy(Wstr, 1, Pos(',', Wstr) - 1) + '.' + Copy(Wstr, Pos(',', Wstr) + 1, 3)
  end
  else ConvFloatToStr := '0.00';
end;

end.
