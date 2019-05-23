unit TelaAgendaCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ToolEdit,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAgendamentoCobranca = class(TFormTelaGeralTEMPLATE)
    DBGrid: TDBGrid;
    MemoHistorico: TDBMemo;
    De: TDateEdit;
    Label1: TLabel;
    PanelTitulo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SQLAgenda: TRxQuery;
    SQLAgendaCLIEA13ID: TStringField;
    SQLAgendaCLHTICOD: TIntegerField;
    SQLAgendaCLHTDEMIS: TDateTimeField;
    SQLAgendaCLHTTHISTORICO: TMemoField;
    SQLAgendaCUPOA13ID: TStringField;
    SQLAgendaCTRCA13ID: TStringField;
    SQLAgendaCTRCINROPARC: TIntegerField;
    SQLAgendaPENDENTE: TStringField;
    SQLAgendaREGISTRO: TDateTimeField;
    SQLAgendaCLIEA60RAZAOSOC: TStringField;
    SQLAgendaCLIEA15FONE1: TStringField;
    SQLAgendaCLIEA15FONE2: TStringField;
    SQLAgendaCLIEA15FAX: TStringField;
    SQLAgendaCLHTDPROXCONTATO: TDateTimeField;
    DSSQLAgenda: TDataSource;
    SQLCliente: TRxQuery;
    Ate: TDateEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure BtnVerificarClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAgendamentoCobranca: TFormTelaAgendamentoCobranca;

implementation

uses TelaClienteHistorico;

{$R *.dfm}

procedure TFormTelaAgendamentoCobranca.BtnVerificarClick(Sender: TObject);
begin
  inherited;
  SQLAgenda.Close;
  SQLAgenda.MacroByName('MFiltro').AsString := 'CLHTDPROXCONTATO >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" AND ' +
                                               'CLHTDPROXCONTATO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLAgenda.Open;
end;

procedure TFormTelaAgendamentoCobranca.DBGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not SQLAgenda.IsEmpty then
    begin
      if Key = VK_Return then
        begin
          Application.CreateForm(TFormTelaClienteHistorico,FormTelaClienteHistorico);
          FormTelaClienteHistorico.Hide;
          FormTelaClienteHistorico.Cliente       := SQLAgendaCLIEA13ID.AsString;
          FormTelaClienteHistorico.Cupom         := SQLAgendaCUPOA13ID.AsString;
          FormTelaClienteHistorico.ContasReceber := SQLAgendaCTRCA13ID.AsString;
          FormTelaClienteHistorico.Parcela       := SQLAgendaCTRCINROPARC.AsString;
          FormTelaClienteHistorico.SQLTemplate.Close;
          FormTelaClienteHistorico.SQLTemplate.ParamByName('Cliente').AsString := SQLAgendaCLIEA13ID.AsString;
          FormTelaClienteHistorico.SQLTemplate.ParamByName('Cupom').AsString   := SQLAgendaCUPOA13ID.AsString;
          FormTelaClienteHistorico.SQLTemplate.Open;
          FormTelaClienteHistorico.BringToFront;
          FormTelaClienteHistorico.ShowModal;
          FormTelaClienteHistorico.Close;
          FormTelaClienteHistorico.Free;
        end;
    end
  else
    begin
      Application.MessageBox('Nenhum registro selecionado!','Advanced Control Informa',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
    end;  
end;

procedure TFormTelaAgendamentoCobranca.FormCreate(Sender: TObject);
begin
  inherited;
  De.Date  := Date;
  Ate.Date := Date;
end;

end.
