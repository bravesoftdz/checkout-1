unit TelaFechamentoNegocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, ComCtrls, DBCtrls, DB, DBTables,
  RxQuery;

type
  TFormTelaFechamentoNegocio = class(TForm)
    lblMotivoFechamento: TLabel;
    Label3: TLabel;
    ComboFechamento: TRxDBLookupCombo;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    SQLStatus: TRxQuery;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSCPEDEMOTIVO: TStringField;
    SQLStatusPRNSA60DESCR: TStringField;
    SQLStatusPRNSCALTERA: TStringField;
    DSSQLStatus: TDataSource;
    MemoObs: TDBRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaFechamentoNegocio: TFormTelaFechamentoNegocio;

implementation

uses CadastroNegocioComposto;

{$R *.dfm}

procedure TFormTelaFechamentoNegocio.FormCreate(Sender: TObject);
begin
  FormCadastroNegocioComposto.SQLTemplate.Edit;
end;

procedure TFormTelaFechamentoNegocio.BtGravarClick(Sender: TObject);
begin
  FormCadastroNegocioComposto.SQLTemplate.Post;
end;

procedure TFormTelaFechamentoNegocio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLStatus.Close;
end;

end.
