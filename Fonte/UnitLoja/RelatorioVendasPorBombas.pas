unit RelatorioVendasPorBombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery;

type
  TFormRelatorioVendaPorBombas = class(TFormRelatorioTEMPLATE)
    Report: TCrpe;
    DSSQLTerminal: TDataSource;
    SQLTerminal: TQuery;
    DSSQLUsuario: TDataSource;
    SQLUsuario: TQuery;
    GroupBox5: TGroupBox;
    ComboUsuario: TRxDBLookupCombo;
    GroupBox8: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    CheckPeriodo: TCheckBox;
    SQLVendas: TRxQuery;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasCPITN3VLRUNIT: TBCDField;
    SQLVendasQTDE: TBCDField;
    SQLVendasVLRTOTALITEM: TBCDField;
    SQLVendasBOMBICOD: TIntegerField;
    SQLVendasENCERRANTE: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCUPODEMIS: TDateTimeField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaCPITN3VLRUNIT: TBCDField;
    TblTemporariaQTDE: TBCDField;
    TblTemporariaVLRTOTALITEM: TBCDField;
    TblTemporariaBOMBICOD: TIntegerField;
    TblTemporariaENCERRANTE: TIntegerField;
    Label7: TLabel;
    EditHoraIni: TEdit;
    Label8: TLabel;
    EditHoraFim: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendaPorBombas: TFormRelatorioVendaPorBombas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendaPorBombas.FormCreate(Sender: TObject);
begin
  inherited;
  SQLUsuario.Open;
  SQLTerminal.Open;
end;

procedure TFormRelatorioVendaPorBombas.ExecutarBtnClick(Sender: TObject);
var i : integer; 
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  if not CheckPeriodo.Checked then
    begin
      if (EditHoraIni.Text = '') and (EditHoraFim.Text = '') then
        begin
          SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
        end
      else
        begin
          SQLVendas.MacrobyName('MData').Value    := 'CUPOM.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + ' ' + EditHoraIni.Text + '" and ' +
                                                     'CUPOM.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' ' + EditHoraFim.Text + '"' ;
        end;
    end
  else
    begin
      SQLVendas.MacrobyName('MData').Value    := '0=0';
    end;

  if ComboTerminal.Text <> '' then
    SQLVendas.MacrobyName('MTERMINAL').Value  := 'CUPOM.TERMICOD = ' + ComboTerminal.Value
  else
    SQLVendas.MacrobyName('MTERMINAL').Value   := '0=0';

  SQLVendas.Open ;

  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;

      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
      TblTemporaria.Post ;
      SQLVendas.Next ;
    end;

    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas por Bombas.rpt' ;
    Report.ReportTitle       := 'Relatorio de Vendas por Bombas' ;
    Report.WindowStyle.Title := 'Relatorio de Vendas por Bombas' ;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\

  Report.Formulas.Send;
  Report.Execute ;
end;

end.
