unit RelatorioJurosDevidosXRecebidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls;

type
  TFormRelatorioAnaliseRecebimento = class(TFormRelatorioTEMPLATE)
    SQLRecebimento: TRxQuery;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLRecebimentoCTRCDVENC: TDateTimeField;
    SQLRecebimentoCTRCDEMIS: TDateTimeField;
    SQLRecebimentoCTRCN2VLR: TBCDField;
    SQLRecebimentoCTRCN2TXJURO: TBCDField;
    SQLRecebimentoCTRCN2TXMULTA: TBCDField;
    SQLRecebimentoCTRCA30NRODUPLICBANCO: TStringField;
    SQLRecebimentoCLIEA60RAZAOSOC: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAnaliseRecebimento: TFormRelatorioAnaliseRecebimento;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioAnaliseRecebimento.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLRecebimento.Close;
  SQLRecebimento.MacroByName('MFiltro').AsString := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy',de.Date) + '" AND ' +
                                                    'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLRecebimento.Open;
  if not SQLRecebimento.IsEmpty then
    begin

    end
  else
    Informa('Nenhum registro foi encontrado!');  
end;

end.
