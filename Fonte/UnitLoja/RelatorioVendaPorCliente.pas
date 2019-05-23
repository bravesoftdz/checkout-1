unit RelatorioVendaPorCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  CurrEdit, Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendaPorCliente = class(TFormRelatorioTEMPLATE)
    Report: TCrpe;
    SQLCLIENTE: TRxQuery;
    DSSQLCLIENTE: TDataSource;
    SQLCLIENTECLIEA13ID: TStringField;
    SQLCLIENTECLIEA60RAZAOSOC: TStringField;
    SQLCLIENTECLIEA15FONE1: TStringField;
    SQLCLIENTECLIEA15FONE2: TStringField;
    SQLCLIENTECLIEA60CIDRES: TStringField;
    SQLCLIENTECLIEA60EMAIL: TStringField;
    SQLCLIENTECLIEDPRICOMPRA: TDateTimeField;
    SQLCLIENTECLIEDULTCOMPRA: TDateTimeField;
    SQLVendas: TRxQuery;
    SQLVendasTOTALCOMPRAS: TFloatField;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupValor: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ValorInicial: TCurrencyEdit;
    ValorFinal: TCurrencyEdit;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA15FONE2: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA60EMAIL: TStringField;
    TblTemporariaCLIEDPRICOMPRA: TDateTimeField;
    TblTemporariaCLIEDULTCOMPRA: TDateTimeField;
    TblTemporariaTOTALCOMPRAS: TFloatField;
    CheckValor: TCheckBox;
    SQLVendasCLIEA13ID: TStringField;
    DSSQLVendas: TDataSource;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendaPorCliente: TFormRelatorioVendaPorCliente;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioVendaPorCliente.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if CheckValor.Checked then
    begin
      if (ValorInicial.Value <= 0) or (ValorFinal.Value <= 0) then
        begin
          Informa('Você selecionou filtro por valor, mas os valores estão incorretos. Verifique! ');
          Abort;
          Exit;
        end;
      if ValorInicial.Value > ValorFinal.Value then
        begin
          Informa('O Valor inicial deve ser menor que o valor final!');
          Abort;
          Exit;
        end;
    end;

  SQLCLIENTE.Close;
  SQLVendas.Close;
  SQLVendas.MacroByName('MEmpresa').AsString    := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CUPOM','');
  SQLVendas.MacroByName('MEmpresa1').AsString   := SQLDeLista(ComboEmpresa,ListaEmpresas,'','NOTAFISCAL','');

  SQLVendas.MacroByName('MData').AsString       := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy',de.Date) + '" AND ' +
                                                   'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLVendas.MacroByName('MData1').AsString      := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',de.Date) + '" AND ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  if ComboCliente.Value <> '' then
    SQLCLIENTE.MacroByName('MCliente').AsString := 'CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLCLIENTE.MacroByName('MCliente').AsString := '0=0';

  SQLVendas.Open;
  SQLCLIENTE.Open;
  SQLCLIENTE.First;
  Progresso.Min := 0;
  Progresso.Max := SQLVendas.RecordCount;
  Progresso.Position := 0;
  Progresso.Update;
  TblTemporaria.Open;
  while not SQLVendas.Eof do
    begin
      if SQLCLIENTE.Locate('CLIEA13ID',SQLVendasCLIEA13ID.AsString,[]) then
        begin
          if CheckValor.Checked then
            begin
              if (SQLVendasTOTALCOMPRAS.AsFloat > ValorInicial.Value) and (SQLVendasTOTALCOMPRAS.AsFloat < ValorFinal.Value) then
                begin
                  TblTemporaria.Append;
                  TblTemporariaCLIEA13ID.AsString             := SQLCLIENTECLIEA13ID.AsString;
                  TblTemporariaCLIEA15FONE1.AsString          := SQLCLIENTECLIEA15FONE1.AsString;
                  TblTemporariaCLIEA15FONE2.AsString          := SQLCLIENTECLIEA15FONE2.AsString;
                  TblTemporariaCLIEA60CIDRES.AsString         := SQLCLIENTECLIEA60CIDRES.AsString;
                  TblTemporariaCLIEA60EMAIL.AsString          := SQLCLIENTECLIEA60EMAIL.AsString;
                  TblTemporariaCLIEA60RAZAOSOC.AsString       := SQLCLIENTECLIEA60RAZAOSOC.AsString;
                  TblTemporariaCLIEDPRICOMPRA.AsDateTime      := SQLCLIENTECLIEDPRICOMPRA.AsDateTime;
                  TblTemporariaCLIEDULTCOMPRA.AsDateTime      := SQLCLIENTECLIEDULTCOMPRA.AsDateTime;
                  TblTemporariaTOTALCOMPRAS.AsFloat           := SQLVendasTOTALCOMPRAS.AsFloat;
                  TblTemporaria.Post;
                end;
            end
          else
            begin
              TblTemporaria.Append;
              TblTemporariaCLIEA13ID.AsString             := SQLCLIENTECLIEA13ID.AsString;
              TblTemporariaCLIEA15FONE1.AsString          := SQLCLIENTECLIEA15FONE1.AsString;
              TblTemporariaCLIEA15FONE2.AsString          := SQLCLIENTECLIEA15FONE2.AsString;
              TblTemporariaCLIEA60CIDRES.AsString         := SQLCLIENTECLIEA60CIDRES.AsString;
              TblTemporariaCLIEA60EMAIL.AsString          := SQLCLIENTECLIEA60EMAIL.AsString;
              TblTemporariaCLIEA60RAZAOSOC.AsString       := SQLCLIENTECLIEA60RAZAOSOC.AsString;
              TblTemporariaCLIEDPRICOMPRA.AsDateTime      := SQLCLIENTECLIEDPRICOMPRA.AsDateTime;
              TblTemporariaCLIEDULTCOMPRA.AsDateTime      := SQLCLIENTECLIEDULTCOMPRA.AsDateTime;
              TblTemporariaTOTALCOMPRAS.AsFloat           := SQLVendasTOTALCOMPRAS.AsFloat;
              TblTemporaria.Post;
            end;
        end;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
      SQLVendas.Next;
      Application.ProcessMessages;
    end;
  Progresso.Position := 0;
end;

procedure TFormRelatorioVendaPorCliente.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCLIENTE.Open;
end;

end.
