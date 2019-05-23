unit TelaConsultaPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFormTelaConsultaPaciente = class(TForm)
    PanelProcura: TPanel;
    EditProcuraTitular: TEdit;
    DBGrid1: TDBGrid;
    DSSQLClienteConsulta: TDataSource;
    SQLClienteConsulta: TRxQuery;
    SQLClienteConsultaCLIEA13ID: TStringField;
    SQLClienteConsultaCLIEA60RAZAOSOC: TStringField;
    SQLClienteConsultaCLIEA15FONE1: TStringField;
    SQLClienteConsultaCLIEA15FONE2: TStringField;
    SQLClienteConsultaCLIEA60ENDRES: TStringField;
    SQLClienteConsultaCLIEA60BAIRES: TStringField;
    SQLClienteConsultaCLIEA60CIDRES: TStringField;
    SQLClienteConsultaCLIEA2UFRES: TStringField;
    SQLClienteConsultaCLIEA10CODANT: TStringField;
    Label43: TLabel;
    procedure EditProcuraTitularKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    CodigoCliente : String;
    { Public declarations }
  end;

var
  FormTelaConsultaPaciente: TFormTelaConsultaPaciente;

implementation

{$R *.dfm}

procedure TFormTelaConsultaPaciente.EditProcuraTitularKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_Return then
    begin
      SQLClienteConsulta.Close;
      SQLClienteConsulta.MacroByName('Filtro').Value := 'CLIEA60RAZAOSOC LIKE ' +'"'+EditProcuraTitular.Text+'%"';
      SQLClienteConsulta.Open;
      if SQLClienteConsulta.IsEmpty then
        begin
          SQLClienteConsulta.Close;
          EditProcuraTitular.SetFocus;
        end
      else
        DBGrid1.SetFocus;
    end;
end;

procedure TFormTelaConsultaPaciente.FormCreate(Sender: TObject);
begin
  if SQLClienteConsulta.Active then SQLClienteConsulta.Close;
end;

procedure TFormTelaConsultaPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaConsultaPaciente.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_Return then
    begin
      if not SQLClienteConsulta.IsEmpty then
        CodigoCliente := SQLClienteConsultaCLIEA10CODANT.Value;
      Close;
    end;
end;

end.
