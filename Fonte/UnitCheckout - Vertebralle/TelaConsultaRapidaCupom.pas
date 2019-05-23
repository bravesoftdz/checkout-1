unit TelaConsultaRapidaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, ExtCtrls, StdCtrls, CartaoCredito,
  Buttons, Mask, ToolEdit;

type
  TFormTelaConsultaRapidaCupom = class(TForm)
    DSSQLCupom: TDataSource;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA60RAZAOSOC: TStringField;
    SQLCupomVENDA60NOME: TStringField;
    SQLCupomPLRCA60DESCR: TStringField;
    DBGridLista: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    De: TDateEdit;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomVLRLIQ: TFloatField;
    SQLCupomCLIENTECNPJ: TStringField;
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ProvedorCartao, NomeNumerarioCartao : string;
    TempoLimite, TempoIntervalo: Integer;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;
  end;

var
  FormTelaConsultaRapidaCupom: TFormTelaConsultaRapidaCupom;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaRapidaCupom.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then  ModalResult := mrOk;
  if Key = VK_ESCAPE then  ModalResult := mrCancel;
end;

procedure TFormTelaConsultaRapidaCupom.DeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      SQLCupom.Close;
      SQLCupom.MacroByName('DataEmissao').Value  := 'Cupom.CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',de.Date) + '"';
      SQLCupom.MacroByName('Empresa').Value      := 'Cupom.EMPRICOD  = ' + EmpresaPadrao;
      SQLCupom.Open;
      DBGridLista.SetFocus;
    end;
end;

end.
