unit TelaExportarProdutoPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, DB, DBTables, RxQuery, Mask, ToolEdit, CurrEdit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportarProdutoPDV = class(TFormTelaGeralTEMPLATE)
    PanelImp: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    BtnIniciar: TSpeedButton;
    Label2: TLabel;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    EditContTotRegistros: TCurrencyEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    GroupBox1: TGroupBox;
    MemoProblemas: TMemo;
    EditTerminal: TEdit;
    GroupBox2: TGroupBox;
    MemoDados: TMemo;
    SQLProduto: TRxQuery;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMA254PATHTERM: TStringField;
    ExpProdAlter: TCheckBox;
    SQLTerminalTERMAHOSTSERVIDOR: TStringField;
    SQLBarras: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure ExpProdAlterClick(Sender: TObject);
  private
    { Private declarations }
    Inicio : TDatetime ;
    procedure AtualizaTempoDecorrido ;
  public
    { Public declarations }
  end;

var
  FormTelaExportarProdutoPDV: TFormTelaExportarProdutoPDV;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaExportarProdutoPDV.FormCreate(Sender: TObject);
begin
  inherited;
  EditContTotRegistros.text := IntToStr(SQLRecCount('PRODUTO', 'where PENDENTE = "S"')) ;
end;

procedure TFormTelaExportarProdutoPDV.BtnIniciarClick(Sender: TObject);
begin
  inherited;
  if not (EditContTotRegistros.Value > 0) then
  begin
    Informa('Não há modificações pendentes de produtos!') ;
    exit ;
  end ;

  Inicio := Now ;
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss', Inicio) ;
  EditHoraInicio.Refresh ;

  if ExpProdAlter.Checked then
    begin
      SQLProduto.Close ;
      SQLProduto.MacroByName('MFiltro').Value := 'PENDENTE = "S"' ;
    end ;

  LabelInfo.Caption := 'Abrindo tabelas...' ;
  LabelInfo.Refresh ;

  SQLProduto.Open ;
  SQLTerminal.Open ;
  SQLTerminal.First ;
  while not SQLTerminal.EOF do
    begin
      EditTerminal.Text := SQLTerminalTERMA60DESCR.Value ;
      EditTerminal.Refresh ;

      SQLProduto.First ;
      while not SQLProduto.EOF do
        begin
          LabelInfo.Caption := 'Exportando PRODUTO '+SQLProduto.fieldbyname('PRODICOD').AsString ;
          LabelInfo.Refresh ;
          application.ProcessMessages;

          dm.sqlConsulta.close;
          dm.sqlConsulta.sql.Clear;
          dm.sqlConsulta.sql.Text := 'Select * from ProdutoPDVs where termicod='+sqlterminaltermicod.asstring+' and prodicod='+SQLProduto.fieldbyname('PRODICOD').AsString ;
          dm.sqlConsulta.RequestLive := true;
          dm.sqlConsulta.Open;
          if dm.sqlConsulta.IsEmpty then
            dm.sqlConsulta.Append
          else
            dm.sqlConsulta.Edit;
          {Alimentar campos na tabela ProdutoPDVs}
          dm.sqlConsulta.fieldbyname('TERMICOD').AsString                 := SQLTerminalTERMICOD.AsString;
          dm.sqlConsulta.fieldbyname('PRODICOD').AsString                 := SQLProduto.fieldbyname('PRODICOD').AsString;
          dm.sqlConsulta.fieldbyname('PRODIAGRUPGRADE').AsString          := SQLProduto.fieldbyname('PRODIAGRUPGRADE').AsString;
          dm.sqlConsulta.fieldbyname('PRODICODBALANCA').AsString          := SQLProduto.fieldbyname('PRODICODBALANCA').AsString;
          dm.sqlConsulta.fieldbyname('PRODICODPAI').AsString              := SQLProduto.fieldbyname('PRODICODPAI').AsString;
          dm.sqlConsulta.fieldbyname('PRODIPRINCIPAL').AsString           := SQLProduto.fieldbyname('PRODIPRINCIPAL').AsString;
          dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString              := SQLProduto.fieldbyname('PRODIORIGEM').AsString;
          dm.sqlConsulta.fieldbyname('PRODISITTRIB').AsString             := SQLProduto.fieldbyname('PRODISITTRIB').AsString;
          dm.sqlConsulta.fieldbyname('PRODITIPOPRODBALAN').AsString       := SQLProduto.fieldbyname('PRODITIPOPRODBALAN').AsString;
          dm.sqlConsulta.fieldbyname('PRODA60DESCR').AsString             := SQLProduto.fieldbyname('PRODA60DESCR').AsString;
          dm.sqlConsulta.fieldbyname('PRODA30ADESCRREDUZ').AsString       := SQLProduto.fieldbyname('PRODA30ADESCRREDUZ').AsString;
          dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString            := SQLProduto.fieldbyname('PRODA60CODBAR').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3PERCMARGLUCR').AsString       := SQLProduto.fieldbyname('PRODN3PERCMARGLUCR').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3VLRCOMPRA').AsString          := SQLProduto.fieldbyname('PRODN3VLRCOMPRA').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3VLRCUSTO').AsString           := SQLProduto.fieldbyname('PRODN3VLRCUSTO').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3VLRCUSTOMED').AsString        := SQLProduto.fieldbyname('PRODN3VLRCUSTOMED').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3VLRVENDAPROM').AsString       := SQLProduto.fieldbyname('PRODN3VLRVENDAPROM').AsString;
          dm.sqlConsulta.fieldbyname('PRODN3VLRVENDA').AsString           := SQLProduto.fieldbyname('PRODN3VLRVENDA').AsString;
          dm.sqlConsulta.fieldbyname('PRODDINIPROMO').AsString            := SQLProduto.fieldbyname('PRODDINIPROMO').AsString;
          dm.sqlConsulta.fieldbyname('PRODDFIMPROMO').AsString            := SQLProduto.fieldbyname('PRODDFIMPROMO').AsString;

          dm.sqlConsulta.fieldbyname('NCMICOD').AsString                  := SQLProduto.fieldbyname('NCMICOD').AsString;
          dm.sqlConsulta.fieldbyname('ICMSICOD').AsString                 := SQLProduto.fieldbyname('ICMSICOD').AsString;
          dm.sqlConsulta.fieldbyname('UNIDICOD').AsString                 := SQLProduto.fieldbyname('UNIDICOD').AsString;

          dm.sqlConsulta.fieldbyname('PRODCATIVO').AsString               := SQLProduto.fieldbyname('PRODCATIVO').AsString;
          dm.sqlConsulta.fieldbyname('PRODCRAPIDO').AsString              := SQLProduto.fieldbyname('PRODCRAPIDO').AsString;
          dm.sqlConsulta.fieldbyname('PRODCSERVICO').AsString             := SQLProduto.fieldbyname('PRODCSERVICO').AsString;
          dm.sqlConsulta.fieldbyname('PRODCTIPO').AsString                := SQLProduto.fieldbyname('PRODCTIPO').AsString;
          dm.sqlConsulta.fieldbyname('PRODCTIPOBAIXA').AsString           := SQLProduto.fieldbyname('PRODCTIPOBAIXA').AsString;

          dm.sqlConsulta.post;

          SQLProduto.Next ;
        end ;
      SQLTerminal.Next ;
    end ;

  EditHoraTermino.Text := FormatDateTime('hh:mm:ss', Now) ;
  EditHoraTermino.Refresh ;

  //SETAR TABELA ORIGEM PENDENTE PARA "N"
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update PRODUTO') ;
  DM.SQLTemplate.SQL.Add('set    PENDENTE = "N"') ;
  DM.SQLTemplate.SQL.Add('where  PENDENTE = "S"') ;
  DM.SQLTemplate.ExecSQL ;


 {EXPORTAR BARRAS PENDENTES }
  SQLBarras.Open;
  SQLTerminal.First ;
  while not SQLTerminal.EOF do
    begin
      EditTerminal.Text := SQLTerminalTERMA60DESCR.Value ;
      EditTerminal.Refresh ;

      SQLBarras.First ;
      while not SQLBarras.EOF do
        begin
          LabelInfo.Caption := 'Exportando Barras PRODUTO '+SQLBarras.fieldbyname('PRODICOD').AsString ;
          LabelInfo.Refresh ;
          application.ProcessMessages;

          dm.sqlConsulta.close;
          dm.sqlConsulta.sql.Clear;
          dm.sqlConsulta.RequestLive := true;
          dm.sqlConsulta.sql.Text := 'Select * from ProdutoBarrasPDVs where termicod='+sqlterminaltermicod.asstring+' and prodicod='+SQLBarras.fieldbyname('PRODICOD').AsString ;
          dm.sqlConsulta.Open;
          if SQLBarras.fieldbyname('PRBAA15BARRAS').AsString <>'' then
            begin
              if dm.sqlConsulta.IsEmpty then
                dm.sqlConsulta.Append
              else
                dm.sqlConsulta.Edit;

              {Alimentar campos na tabela ProdutoBarrasPDVs}
              dm.sqlConsulta.fieldbyname('TERMICOD').AsString                 := SQLTerminalTERMICOD.AsString;
              dm.sqlConsulta.fieldbyname('PRODICOD').AsString                 := SQLBarras.fieldbyname('PRODICOD').AsString;
              dm.sqlConsulta.fieldbyname('PRBAA15BARRAS').AsString            := SQLBarras.fieldbyname('PRBAA15BARRAS').AsString;
              dm.sqlConsulta.post;
            end;

          SQLBarras.Next ;
        end ;
      SQLTerminal.Next ;
    end ;
  {Final Exportacao Barras}

  //SETAR TABELA ORIGEM PENDENTE PARA "N"
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update PRODUTOBARRAS') ;
  DM.SQLTemplate.SQL.Add('set    PENDENTE = "N"') ;
  DM.SQLTemplate.SQL.Add('where  PENDENTE = "S"') ;
  DM.SQLTemplate.ExecSQL ;

  LabelInfo.Caption := 'Exportação finalizada com sucesso!' ;
  LabelInfo.Refresh ;

  SQLProduto.Close;
  SQLBarras.close;
  sqlterminal.close;
  dm.sqlConsulta.Close;
  dm.sqlConsulta.RequestLive := false;
end ;

procedure TFormTelaExportarProdutoPDV.AtualizaTempoDecorrido ;
begin
  EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss', Now - Inicio);
  EditTempoDecorrido.Update ;
end ;


procedure TFormTelaExportarProdutoPDV.ExpProdAlterClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass ;
  if ExpProdAlter.Checked then
    EditContTotRegistros.text := IntToStr(SQLRecCount('PRODUTO', 'where PENDENTE = "S"'))
  else
    EditContTotRegistros.text := IntToStr(SQLRecCount('PRODUTO', '')) ;
  Screen.Cursor := crDefault ;
end;

end.
