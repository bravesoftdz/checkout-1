unit RelatorioDesempenho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  RXCtrls, VarSys;

type
  TFormRelatorioDesempenho = class(TFormRelatorioTEMPLATE)
    SQLDesempenho: TRxQuery;
    SQLDesempenhoVENDICOD: TIntegerField;
    SQLDesempenhoCODIGO: TIntegerField;
    SQLDesempenhoTIPO: TStringField;
    SQLDesempenhoVENDA60NOME: TStringField;
    SQLDesempenhoDESCR: TStringField;
    SQLDesempenhoQTDCONTATO: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCODIGO: TIntegerField;
    TblTemporariaTIPO: TStringField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaDESCR: TStringField;
    TblTemporariaQTDCONTATO: TIntegerField;
    Report: TCrpe;
    SQLTipoRetorno: TRxQuery;
    SQLTipoRetornoTPRTICOD: TIntegerField;
    SQLTipoRetornoTPRTA60DESCR: TStringField;
    SQLTipoRetornoTPCTICOD: TIntegerField;
    DSTipoRetorno: TDataSource;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    DSTipoContato: TDataSource;
    SQLTipoCliente: TRxQuery;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    DSTipoCliente: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSVendedor: TDataSource;
    GroupBox2: TGroupBox;
    ComboTipoCliente: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    ComboTipoContato: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    ComboTipoRetorno: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioDesempenho: TFormRelatorioDesempenho;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioDesempenho.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  TblTemporaria.Close;
  TblTemporaria.AddIndex('Desempenho_Key','VENDICOD;TIPO;CODIGO',[IxPrimary]);
  TblTemporaria.Open;
  TblTemporaria.IndexName:='';

  SQLDesempenho.MacroByName('MDataC').asString  := 'CONTATO.CONTDREAL>="'+FormatDateTime(FormatoDataUnit,De.Date)+' 00:00:00" AND CONTATO.CONTDREAL<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+' 23:59:59"';
  SQLDesempenho.MacroByName('MDataR').asString  := 'CONTATO.CONTDREAL>="'+FormatDateTime(FormatoDataUnit,De.Date)+' 00:00:00" AND CONTATO.CONTDREAL<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+' 23:59:59"';
  SQLDesempenho.MacroByName('MEmpresaC').asString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTATO','');
  SQLDesempenho.MacroByName('MEmpresaR').asString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTATO','');

  If ComboTipoCliente.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoClienteC').asString := 'CONTATO.TPCLICOD='+ComboTipoCliente.Value
  Else
    SQLDesempenho.MacroByName('MTipoClienteC').asString := '0=0';

  If ComboTipoContato.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoContatoC').asString := 'CONTATO.TPCTICOD='+ComboTipoContato.Value
  Else
    SQLDesempenho.MacroByName('MTipoContatoC').asString := '0=0';
  If ComboTipoRetorno.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoRetornoC').asString := 'CONTATO.TPRTICOD='+ComboTipoRetorno.Value
  Else
    SQLDesempenho.MacroByName('MTipoRetornoC').asString := '0=0';

  If ComboVendedor.Value<>'' Then
    SQLDesempenho.MacroByName('MVendedorC').asString := 'VENDICOD='+ComboVendedor.Value
  Else
    SQLDesempenho.MacroByName('MVendedorC').asString := '0=0';

  If ComboTipoCliente.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoClienteR').asString := 'CONTATO.TPCLICOD='+ComboTipoCliente.Value
  Else
    SQLDesempenho.MacroByName('MTipoClienteR').asString := '0=0';

  If ComboTipoContato.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoContatoR').asString := 'CONTATO.TPCTICOD='+ComboTipoContato.Value
  Else
    SQLDesempenho.MacroByName('MTipoContatoR').asString := '0=0';
  If ComboTipoRetorno.Value<>'' Then
    SQLDesempenho.MacroByName('MTipoRetornoR').asString := 'CONTATO.TPRTICOD='+ComboTipoRetorno.Value
  Else
    SQLDesempenho.MacroByName('MTipoRetornoR').asString := '0=0';

  If ComboVendedor.Value<>'' Then
    SQLDesempenho.MacroByName('MVendedorR').asString := 'VENDICOD='+ComboVendedor.Value
  Else
    SQLDesempenho.MacroByName('MVendedorR').asString := '0=0';

  BatchExec(SQLDesempenho,TblTemporaria);

  //--------------------------------------------------------------------------\\
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Desempenho CallCenter.rpt';
  Report.ReportTitle       := 'Relatório de Desempenho do CallCenter' ;
  Report.WindowStyle.Title := 'Relatório de Desempenho do CallCenter' ;
  //--------------------------------------------------------------------------\\
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
  Report.Execute;
end;

procedure TFormRelatorioDesempenho.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoRetorno.Open;
  SQLTipoContato.Open;
  SQLTipoCliente.Open;
  SQLVendedor.Open;
end;

end.
