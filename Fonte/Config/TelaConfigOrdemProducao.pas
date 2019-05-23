unit TelaConfigOrdemProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, RxLookup, DB, DBTables, RxQuery, Buttons,
  jpeg, ExtCtrls, StdCtrls;

type
  TFormTelaConfigOrdemProducao = class(TFormTelaGeralTEMPLATE)
    SQLConfigOP: TRxQuery;
    SQLConfigOPCFOPIOPESTINICIO: TIntegerField;
    SQLConfigOPCFOPIOPESTCANC: TIntegerField;
    SQLConfigOPCFOPIOPESTENCER: TIntegerField;
    dsSQLConfigOP: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    dsSQLOperacaoEstoque: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cblInicio: TRxDBLookupCombo;
    cblCanc: TRxDBLookupCombo;
    cblConc: TRxDBLookupCombo;
    btAcessaInicio: TSpeedButton;
    btAcessaCanc: TSpeedButton;
    btAcessaConc: TSpeedButton;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cblInicioChange(Sender: TObject);
    procedure cblCancChange(Sender: TObject);
    procedure cblConcChange(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure btAcessaInicioClick(Sender: TObject);
    procedure btAcessaCancClick(Sender: TObject);
    procedure btAcessaConcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigOrdemProducao: TFormTelaConfigOrdemProducao;

implementation

uses UnitLibrary, VarSYS, CadastroOperacoesEstoque, FormResources;

{$R *.dfm}

procedure TFormTelaConfigOrdemProducao.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLConfigOP.Active        then SQLConfigOP.Active        := True;
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Active := True;
  SQLConfigOP.Edit;
end;

procedure TFormTelaConfigOrdemProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if SQLConfigOP.State in dsEditModes then
     SQLConfigOP.Post;
end;

procedure TFormTelaConfigOrdemProducao.cblInicioChange(
  Sender: TObject);
begin
  inherited;
  if SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', IntToStr(cblInicio.KeyValue)) <> 'S' then
     begin
        cblInicio.SetFocus;
        Informa('Você deve Informar uma Operação de Estoque do tipo "Saida".');
        cblInicio.KeyValue := '';
     end;
end;

procedure TFormTelaConfigOrdemProducao.cblCancChange(
  Sender: TObject);
begin
  inherited;
  if SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', IntToStr(cblCanc.KeyValue)) <> 'E' then
     begin
        cblCanc.SetFocus;
        Informa('Você deve Informar uma Operação de Estoque do tipo "Entrada".');
        cblCanc.KeyValue := '';
     end;
end;

procedure TFormTelaConfigOrdemProducao.cblConcChange(
  Sender: TObject);
begin
  inherited;
  if SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', IntToStr(cblConc.KeyValue)) <> 'E' then
     begin
        cblConc.SetFocus;
        Informa('Você deve Informar uma Operação de Estoque do tipo "Entrada".');
        cblConc.KeyValue := '';
     end;
end;

procedure TFormTelaConfigOrdemProducao.BtnFecharTelaClick(Sender: TObject);
begin
  if (cblInicio.KeyValue = '') or (cblCanc.KeyValue = '') or (cblConc.KeyValue = '')  then
     begin
       Informa('Informe corretamento os Dados de Operação de Estoque antes de Fechar esta Tela. Obrigado');
       Abort;
     end;

  inherited;
end;

procedure TFormTelaConfigOrdemProducao.btAcessaInicioClick(
  Sender: TObject);
begin
  inherited;
//  DataSetLookup := SQLConfigOP;
  FieldLookup   := SQLConfigOPCFOPIOPESTINICIO;
  FieldOrigem   := 'OPESICOD' ;
  CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque', False, True, 'Operação Estoque Inicio Ordem de Produção') ;
end;

procedure TFormTelaConfigOrdemProducao.btAcessaCancClick(Sender: TObject);
begin
  inherited;
//  DataSetLookup := SQLConfigOP;
  FieldLookup   := SQLConfigOPCFOPIOPESTCANC;
  FieldOrigem   := 'OPESICOD' ;
  CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque', False, True, 'Operação Estoque Cancelamento Ordem de Produção') ;

end;

procedure TFormTelaConfigOrdemProducao.btAcessaConcClick(Sender: TObject);
begin
  inherited;
//  DataSetLookup := SQLConfigOP;
  FieldLookup   := SQLConfigOPCFOPIOPESTENCER;
  FieldOrigem   := 'OPESICOD' ;
  CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque', False, True, 'Operação Estoque Cancelamento Ordem de Produção');
end;

end.
