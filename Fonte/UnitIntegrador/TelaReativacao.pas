unit TelaReativacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Mask, ToolEdit, DBTables, RxQuery, DB, DBLists, ComCtrls, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaReativacao = class(TFormTelaGeralTEMPLATE)
    PanelReativacao: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BtnIniciar: TSpeedButton;
    EditTabela: TEdit;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    ProgressBarTabelas: TProgressBar;
    Tabelas: TDatabaseItems;
    TabelasNAME: TStringField;
    SQLUpDate: TRxQuery;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    Bevel1: TBevel;
    Label8: TLabel;
    Label11: TLabel;
    EditContTabela: TEdit;
    HoraInicial: TDateTimePicker;
    HoraFinal: TDateTimePicker;
    Label5: TLabel;
    procedure FormResize(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaReativacao: TFormTelaReativacao;

implementation

uses FormResources, UnitLibrary;

{$R *.dfm}

procedure TFormTelaReativacao.FormResize(Sender: TObject);
begin
  inherited;
  PanelReativacao.Top:=(PanelCentral.Height-PanelReativacao.Height) Div 2;
  PanelReativacao.Left:=((PanelCentral.Width-PanelReativacao.Width) Div 2) + (PanelBarra.Width Div 2);
end;

procedure TFormTelaReativacao.BtnIniciarClick(Sender: TObject);
Var
  Inicio:TDateTime;
  I:Integer;
begin
  inherited;
  Tabelas.Open ;
  Tabelas.First;
  BtnIniciar.Enabled:=False;
  ProgressBarTabelas.Max:=Tabelas.RecordCount;
  ProgressBarTabelas.Position:=0;
  Inicio := Now;
  EditHoraInicio.Text:=FormatDateTime('hh:nn:ss',Now);
  EditHoraInicio.Refresh;
  EditTempoDecorrido.Text:=FormatDateTime('hh:nn:ss',Now-Inicio);
  EditTempoDecorrido.Refresh;
  LabelInfo.Caption := 'Reativando Registros...';
  LabelInfo.Refresh;
  while Not Tabelas.Eof do
    begin
      // Teste para nem exportar essas tabelas se for Filial
      if (Tabelas.FindField('NAME').AsString = 'CHEQUEEMITIDO')                                  then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COBRADOR')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COLECAO')               and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONTACORRENTE')                                  then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONTASPAGAR')                                    then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONVENIO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COR')                   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'DECRETO')               and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'DUPLICATA')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESA')               and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESACUSTO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESASERIE')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EXCLUSAO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'FORNECEDOR')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRADE')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRADETAMANHO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRUPO')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'HISTORICOPADRAO')       and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'HORARIO')               and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ICMS')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ICMSUF')                and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MARCA')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MOTIVOBLOQUEIO')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MOVIMENTOBANCO')                                 then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NCM')                   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NOTACOMPRA')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NOTACOMPRAITEM')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIO')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIOTOTALIZADOR')  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIOTOTALIZADORECF')  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OBSNF')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOBANCO')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOCAIXA')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOCAIXATOTALIZADOR') and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOESTOQUE')       and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOTESOURARIA')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PAGAMENTO')                                      then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PLANODECONTAS')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PLANORECEBIMENTO')      and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PLANORECEBIMENTOPARCELA') and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PORTADOR') and (MatrizFilial = 'F') then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'PRODUTO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOBARRAS')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOCOMPOSICAO')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTODESCRICAO')     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOFORNECEDOR')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOORDEMPESQUISA') and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOREAJUSTE')      and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDO')        then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDOCLIENTE') then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDODIA')     then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDOMES')     then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSERIE')        then  Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'PROFISSAO')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PROFISSIONAL')     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PROVEDORCARTAO')   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RAMO')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RECIBO')                                    then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RECIBOCONTA')                               then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REMESSABANCO')                              then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REMESSABANCOCONTASRECEBER')                 then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REPRESENTANTE')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ROTA')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ROTEIRO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SERIE')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SUBGRUPO')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SUBRAMO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TABELAPRECO')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TABELAPRECOPRODUTO')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TESOURARIA')                                then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOCLIENTE')      and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOCONTATO')      and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPODOCUMENTO')    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOFORNECEDOR')   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOLIQUIDACAO')   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TRANSPORTADORA')   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'UNIDADE')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'USUARIO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'VARIACAO')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'VEICULO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'VENDEDOR')         and (MatrizFilial = 'F') then Tabelas.Next;

      ProgressBarTabelas.Position:=ProgressBarTabelas.Position+1;
      EditContTabela.Text:= IntToStr(ProgressBarTabelas.Position)+' de '+IntToStr(ProgressBarTabelas.Max);
      EditContTabela.Refresh;
      EditTabela.Text:=Tabelas.FindField('NAME').AsString;
      EditTabela.Refresh;
      Try
        SQLUpDate.Close;
        SQLUpDate.MacroByName('MTabela').AsString  := Tabelas.FindField('NAME').AsString;
        SQLUpDate.MacroByName('MInicio').AsString  := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy',DataInicial.Date) + ' ' + FormatDateTime('hh:nn:ss',HoraInicial.Time) + '"';
        SQLUpDate.MacroByName('MFim').AsString     := 'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy',DataFinal.Date)   + ' ' + FormatDateTime('hh:nn:ss',HoraFinal.Time)   + '"';
        // GravaArqTexto(SQLUpDate.RealSQL.Text,'C:\Integra.txt','NOVO');
        SQLUpDate.ExecSQL;
      Except
        Application.ProcessMessages;
      End;
      Tabelas.Next;
      EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);
      EditTempoDecorrido.Refresh;
    end;

  // ATUALIZA A TABELA PRODUTOSALDO CAMPO "PENDENTE".
  {Atualiza o produto saldo porque o saldo de estoque é movimentado por uma trigger no
  banco de dados, portanto qdo for feita uma reativação os movimentos de estoque serão
  incluídos no banco e automaticamente o saldo seria modificado. No entanto exportando o
  saldo dos produtos novamente não corremos o risco de ficar com o saldo incorreto}

{  SQLProdutoSaldo.Close;
  if MatrizFilial = 'F' then
    SQLProdutoSaldo.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLProdutoSaldo.MacroByName('MEmpresa').AsString := '0=0';
  try
    SQLProdutoSaldo.ExecSQL;
  except
    on E:Exception do
      begin
        ShowMessage('Erro ao reativar o saldo de estoque, ANOTE O ERRO: ' + E.Message);
      end;
  end; }

  Tabelas.Close;
  EditTempoDecorrido.Text     := FormatDateTime('hh:nn:ss',Now-Inicio);
  EditTempoDecorrido.Refresh;
  EditHoraTermino.Text        := FormatDateTime('hh:nn:ss',Now);
  EditHoraTermino.Refresh;
  ProgressBarTabelas.Position:=0;
  EditTabela.Text:='';
  EditTabela.Refresh;
  LabelInfo.Caption           := 'Reativação do LOG Concluída!';
  LabelInfo.Refresh;
end;

procedure TFormTelaReativacao.FormCreate(Sender: TObject);
begin
  inherited;
  DataInicial.Date := Date;
  DataFinal.Date   := Date;
  HoraInicial.Time := StrToTime('00:00:00');
  HoraFinal.Time   := StrToTime('23:59:00');
end;

end.
