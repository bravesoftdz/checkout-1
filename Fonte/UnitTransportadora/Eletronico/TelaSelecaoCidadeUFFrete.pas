unit TelaSelecaoCidadeUFFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ConerBtn, RxLookup, DBTables, RxQuery,
  ExtCtrls;

type
  TFormTelaSelecaoCidadeUFFrete = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LabelTitulo: TLabel;
    SQLCidade: TRxQuery;
    SQLEstado: TRxQuery;
    dblEstado: TRxDBLookupCombo;
    dblCidade: TRxDBLookupCombo;
    ConerBtn1: TConerBtn;
    ConerBtn2: TConerBtn;
    Label1: TLabel;
    Label2: TLabel;
    dsSQLEstado: TDataSource;
    DSSQLCidade: TDataSource;
    SQLEstadoICMUA2UF: TStringField;
    SQLEstadoICMUN2ALIQUOTA: TBCDField;
    SQLEstadoICMSN2PERCSUBSTSAI: TBCDField;
    SQLEstadoICMUA30NOMEESTADO: TStringField;
    procedure ConerBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSelecaoCidadeUFFrete: TFormTelaSelecaoCidadeUFFrete;

implementation

uses UnitLibrary, CadastroFreteSimples, DataModulo;

{$R *.dfm}

procedure TFormTelaSelecaoCidadeUFFrete.ConerBtn2Click(Sender: TObject);
begin
   if (dblCidade.Text = '...') or (dblEstado.Text = '...') then
      begin
         Informa('Você deve escolher um item ou Cancelar a operação.');
         Abort;
      end;
end;

procedure TFormTelaSelecaoCidadeUFFrete.FormCreate(Sender: TObject);
begin
   SQLCidade.Close;
   SQLCidade.MacroByName('MFiltro').AsString := ' TABELAFRETECIDADE.TBFTICOD = ' + Dm.CodTabelaFrete;
   if not SQLEstado.Active then SQLEstado.Active := True;
   if not SQLCidade.Active then SQLCidade.Active := True;
end;

end.
