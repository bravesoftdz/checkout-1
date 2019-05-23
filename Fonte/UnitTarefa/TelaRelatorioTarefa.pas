unit TelaRelatorioTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, ExtCtrls, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, Buttons, jpeg, ComCtrls, DBCtrls, RxQuery,
  UCrpe32;

type
  TFormTelaRelatorioTarefa = class(TFormRelatorioTEMPLATE)
    Panel1: TPanel;
    rboTipoRel: TRadioGroup;
    chkPendente: TCheckBox;
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    dsSQLUsuarios: TDataSource;
    GroupBox2: TGroupBox;
    cblUsuario: TRxDBLookupCombo;
    SQLTipoTarefa: TQuery;
    SQLTipoTarefaTPTAICOD: TIntegerField;
    SQLTipoTarefaTPTAA30DESCRICAO: TStringField;
    SQLTipoTarefaTPTACINTEXT: TStringField;
    SQLTipoTarefaTPTAA1000CHECKLIST: TMemoField;
    SQLTipoTarefaTPTACCHECKLIST: TStringField;
    DSSQLTipoTarefa: TDataSource;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    cblCliente: TRxDBLookupCombo;
    SQLRelatorio: TRxQuery;
    DBCLTpTarefa: TRxDBLookupCombo;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    Relatorio: TCrpe;
    SQLGeralTemp: TRxQuery;
    tblEmpresa: TTable;
    tblEmpresaEMPRICOD: TIntegerField;
    tblEmpresaEMPRA60RAZAOSOC: TStringField;
    tblEmpresaEMPRA60NOMEFANT: TStringField;
    tblEmpresaEMPRCMATRIZFILIAL: TStringField;
    tblEmpresaEMPRA20FONE: TStringField;
    tblEmpresaEMPRA20FAX: TStringField;
    tblEmpresaEMPRA60END: TStringField;
    tblEmpresaEMPRA60BAI: TStringField;
    tblEmpresaEMPRA60CID: TStringField;
    tblEmpresaEMPRA2UF: TStringField;
    tblEmpresaEMPRA8CEP: TStringField;
    tblEmpresaEMPRCFISJURID: TStringField;
    tblEmpresaEMPRA14CGC: TStringField;
    tblEmpresaEMPRA20IE: TStringField;
    tblEmpresaEMPRA11CPF: TStringField;
    tblEmpresaEMPRA10RG: TStringField;
    tblEmpresaEMPRA60EMAIL: TStringField;
    tblEmpresaEMPRA60URL: TStringField;
    tblEmpresaPENDENTE: TStringField;
    tblEmpresaREGISTRO: TDateTimeField;
    tblEmpresaEMPRA100INFSPC: TStringField;
    tblEmpresaEMPRA15CODEAN: TStringField;
    tblEmpresaEMPRBLOGOTIPO: TBlobField;
    tblImpressaoTarefaHistorico: TTable;
    tblImpressaoTarefaHistoricoTAREA13ID: TStringField;
    tblImpressaoTarefaHistoricoTRHTICOD: TIntegerField;
    tblImpressaoTarefaHistoricoUSUAICOD: TIntegerField;
    tblImpressaoTarefaHistoricoREGISTRO: TDateTimeField;
    tblImpressaoTarefaHistoricoPENDENTE: TStringField;
    tblImpressaoTarefaHistoricoTRHTDHORAINICIO: TDateTimeField;
    tblImpressaoTarefaHistoricoTRHTDHORAFINAL: TDateTimeField;
    tblImpressaoTarefaHistoricoTRHTEA60RESPATENEMP: TStringField;
    tblImpressaoTarefaHistoricoTRHTA30NROOS: TStringField;
    tblImpressaoTarefaHistoricoTRHTA1000HISTORICO: TMemoField;
    SQLHistorico: TRxQuery;
    SQLRelatorioTAREA13ID: TStringField;
    SQLRelatorioTAREICOD: TIntegerField;
    SQLRelatorioTAREA30TITULO: TStringField;
    SQLRelatorioTAREDDIGITACAO: TDateTimeField;
    SQLRelatorioTAREDLEMBRETE: TDateTimeField;
    SQLRelatorioTAREHLEMBRETE: TStringField;
    SQLRelatorioTARETSOLICITACAO: TMemoField;
    SQLRelatorioTARECPENDENTE: TStringField;
    SQLRelatorioTAREDINICIO: TDateTimeField;
    SQLRelatorioTAREDTERMINO: TDateTimeField;
    SQLRelatorioTPTAICOD: TIntegerField;
    SQLRelatorioCLIEA13ID: TStringField;
    SQLRelatorioPRCLA13ID: TStringField;
    SQLRelatorioHELPA13ID: TStringField;
    SQLRelatorioPRNEA13ID: TStringField;
    SQLRelatorioTAREDPRAZOMAX: TDateTimeField;
    SQLRelatorioTAREDULTAGEND: TDateTimeField;
    SQLRelatorioTAREA60MOTIVOADIO: TStringField;
    SQLRelatorioUSUAICOD: TIntegerField;
    SQLRelatorioUSUAICODDEST: TIntegerField;
    SQLRelatorioCLASSICOD: TIntegerField;
    SQLRelatorioTAREA1000CHECKLIST: TMemoField;
    SQLRelatorioTARECATULIZEMAIL: TStringField;
    SQLRelatorioREGISTRO: TDateTimeField;
    SQLRelatorioPENDENTE: TStringField;
    SQLRelatorioTAREA13MODOTAREFA: TStringField;
    SQLRelatorioTARECSTATUS: TStringField;
    SQLRelatorioNomeClienteProsp: TStringField;
    SQLRelatorioCidadeClienteProsp: TStringField;
    SQLRelatorioUFClienteProsp: TStringField;
    SQLRelatorioTipoTarefa: TStringField;
    SQLRelatorioUsuario: TStringField;
    SQLRelatorioUsuarioDestino: TStringField;
    SQLCliente: TQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    dsSQLCliente: TDataSource;
    SQLClienteProspect: TQuery;
    DSSQLClienteProspect: TDataSource;
    SQLRelatorioNomeCliente: TStringField;
    SQLRelatorioCidadeCliente: TStringField;
    SQLRelatorioUFCliente: TStringField;
    TblTemporariaTAREA13ID: TStringField;
    TblTemporariaTAREICOD: TIntegerField;
    TblTemporariaTAREA30TITULO: TStringField;
    TblTemporariaTAREDDIGITACAO: TDateTimeField;
    TblTemporariaTAREDLEMBRETE: TDateTimeField;
    TblTemporariaTAREHLEMBRETE: TStringField;
    TblTemporariaTARETSOLICITACAO: TMemoField;
    TblTemporariaTARECPENDENTE: TStringField;
    TblTemporariaTAREDINICIO: TDateTimeField;
    TblTemporariaTAREDTERMINO: TDateTimeField;
    TblTemporariaTPTAICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaPRCLA13ID: TStringField;
    TblTemporariaHELPA13ID: TStringField;
    TblTemporariaPRNEA13ID: TStringField;
    TblTemporariaTAREDPRAZOMAX: TDateTimeField;
    TblTemporariaTAREDULTAGEND: TDateTimeField;
    TblTemporariaTAREA60MOTIVOADIO: TStringField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaUSUAICODDEST: TIntegerField;
    TblTemporariaCLASSICOD: TIntegerField;
    TblTemporariaTAREA1000CHECKLIST: TMemoField;
    TblTemporariaTARECATULIZEMAIL: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaPENDENTE: TStringField;
    TblTemporariaTAREA13MODOTAREFA: TStringField;
    TblTemporariaTARECSTATUS: TStringField;
    TblTemporariaNomeClienteProsp: TStringField;
    TblTemporariaCidadeClienteProsp: TStringField;
    TblTemporariaUFClienteProsp: TStringField;
    TblTemporariaNomeCliente: TStringField;
    TblTemporariaCidadeCliente: TStringField;
    TblTemporariaUFCliente: TStringField;
    TblTemporariaUsuarioDestino: TStringField;
    TblTemporariaUsuario: TStringField;
    TblTemporariaTipoTarefa: TStringField;
    procedure rboTipoRelClick(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RefazTabela(Tabela :TTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRelatorioTarefa: TFormTelaRelatorioTarefa;

implementation

uses VarSYS, DataModulo, UnitLibrary, FormResources;

{$R *.dfm}

procedure TFormTelaRelatorioTarefa.rboTipoRelClick(Sender: TObject);
begin
  inherited;
  GroupBox1.Visible := rboTipoRel.ItemIndex = 0;
end;

procedure TFormTelaRelatorioTarefa.ExecutarBtnClick(Sender: TObject);
Var SQL, Empresas, Tarefas : String;
    I : Integer;
begin
  inherited;
  RefazTabela(tblEmpresa);
  RefazTabela(TblTemporaria);
  RefazTabela(TblImpressaoTarefaHistorico);
  TblTemporaria.Close;
  TblTemporaria.AddIndex('CLIEA13ID_KEY','TAREA13ID;TAREICOD',[IXPRIMARY]);
  
  SQL := '';
  if DBCLTpTarefa.Text <> '...' then
     SQL := ' TAREFA.' + DBCLTpTarefa.LookupField + ' = ' + IntToStr(DBCLTpTarefa.KeyValue);

  if ListaEmpresas.Count > 0 then
    begin
      for I := 0 to ListaEmpresas.Count - 1 do
          if Empresas = '' then
             Empresas := Copy(ListaEmpresas.Items.Strings[I],0,pos('-',ListaEmpresas.Items.Strings[I]) - 1)
          else
             Empresas := Empresas + ', ' + copy(ListaEmpresas.Items.Strings[I],0,pos('-',ListaEmpresas.Items.Strings[I]) - 1);
    end
  else
     Empresas := Copy(ComboEmpresa.Text,0,pos('-',ComboEmpresa.Text) - 1);

  if (Empresas <> '') then
    if (SQL = '') then
       SQL := ' TAREFA.EMPRICOD in (' + Empresas + ')'
    else
       SQL := SQL + ' and TAREFA.EMPRICOD in (' + Empresas + ')';

  if chkPendente.Checked then
     if SQL = '' then
        SQL := ' TAREFA.TARECPENDENTE = "S" '
     else
        SQL := SQL + ' and TAREFA.TARECPENDENTE = "S" ';

  if not chkPendente.Checked then
     if SQL = '' then
        SQL := ' TAREFA.TARECPENDENTE = "N" '
     else
        SQL := SQL + ' and TAREFA.TARECPENDENTE = "N" ';

  if cblCliente.Text <> '...' then
     if SQL = '' then
        SQL := ' TAREFA.' + cblCliente.LookupField + ' = "' + cblCliente.KeyValue + '"'
     else
        SQL := SQL + ' and TAREFA.' + cblCliente.LookupField + ' = "' + cblCliente.KeyValue + '"';

  if cblUsuario.Text <> '...' then
     if SQL = '' then
        SQL := ' TAREFA.' + cblUsuario.LookupField + ' = ' + IntToStr(cblUsuario.KeyValue)
     else
        SQL := SQL + ' and TAREFA.' + cblUsuario.LookupField + ' = ' + IntToStr(cblUsuario.KeyValue);

  SQLRelatorio.Close;
  SQLRelatorio.MacroByName('MFiltro').AsString := SQL;
  SQLRelatorio.Open;

  if not TblTemporaria.Active then TblTemporaria.Active := True;
  SQLRelatorio.First;
  while not SQLRelatorio.Eof do
    begin
        TblTemporaria.Append;
        for I := 0 to SQLRelatorio.FieldCount - 1 do
            TblTemporaria.FieldByName(SQLRelatorio.Fields.Fields[I].FieldName).AsVariant := SQLRelatorio.Fields.Fields[I].AsVariant;
        TblTemporaria.Post;
        SQLRelatorio.Next;
    end;

  TblTemporaria.Close;
  TblTemporaria.AddIndex('CLIEA13ID_KEY','TAREA13ID;TAREICOD',[IXPRIMARY]);
  TblTemporaria.Open;

{  BatchMove.Destination := TblTemporaria;
  BatchMove.Source      := SQLRelatorio;
  BatchMove.Execute;}

  if SQLRelatorio.IsEmpty then
     begin
       Informa('Não há dados no resultado da Pesquisa.');
       Abort;
     end;
  SQLRelatorio.First;

  while not SQLRelatorio.Eof do
      begin
         if Tarefas = '' then
            Tarefas := '"' + SQLRelatorioTAREA13ID.AsString + '"'
         else
            Tarefas := Tarefas + ', "' + SQLRelatorioTAREA13ID.AsString + '"';
         SQLRelatorio.Next;
      end;

  SQLHistorico.Close;
  SQLHistorico.MacroByName('MFiltro').AsString := ' TAREA13ID in (' + Tarefas+ ')';
  SQLHistorico.Open;

  BatchMove.Destination := tblImpressaoTarefaHistorico;
  BatchMove.Source      := SQLHistorico;
  BatchMove.Execute;

  tblImpressaoTarefaHistorico.Close;
  tblImpressaoTarefaHistorico.AddIndex('TAREA13ID_KEY', 'TAREA13ID',[IXPRIMARY]);

  RefazTabela(tblEmpresa);

  SQLEmpresa.Close;
  SQLEmpresa.SQL.Text := ' select * from EMPRESA where EMPRICOD = ' + IntToStr(EmpresaCorrente);
  SQLEmpresa.Open;

  BatchMove.Destination := tblEmpresa;
  BatchMove.Source      := SQLEmpresa;
  BatchMove.Execute;

  tblEmpresa.Close;
  tblEmpresa.AddIndex('EMPRICOD_KEY','EMPRICOD',[IXPRIMARY]);

  if not DM.SQLConfigGeral.Active then
     DM.SQLConfigGeral.Active := True;

  case rboTipoRel.ItemIndex of
    0 : begin
          Relatorio.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\CallCenter Tarefas Analitico.rpt' ;
          Relatorio.WindowStyle.Title := 'Relatório de Tarefas Análitico';
          Relatorio.ReportTitle       := 'Relatório de Tarefas Análitico';
        end;
    1 : begin
          Relatorio.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\CallCenter Tarefas Sintetico.rpt' ;
          Relatorio.WindowStyle.Title := 'Relatório de Tarefas Sintético';
          Relatorio.ReportTitle       := 'Relatório de Tarefas Sintético';
        end;
  end;
  if rboTipoRel.ItemIndex = 0 then
    begin
      Relatorio.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Relatorio.Formulas.Name         := 'Emissao' ;
      Relatorio.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Relatorio.Formulas.Name         := 'PeriodoEmissao' ;
      if rboTipoRel.ItemIndex = 0 then
         Relatorio.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', Ate.Date) + '"'
      else
         Relatorio.Formulas.Formula.Text := '"Tudo"';
      //--------------------------------------------------------------------------\\
      Relatorio.Formulas.Name         := 'Empresa' ;
      if ComboEmpresa.Text = 'Todas' then
         Relatorio.Formulas.Formula.Text := '"Todas"'
      else
        if ListaEmpresas.Items.Count > 0 then
           Relatorio.Formulas.Formula.Text := '"' + ListaEmpresas.Items.Text + '"'
        else
           Relatorio.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';

      Relatorio.Formulas.Send;
      //--------------------------------------------------------------------------\\
    end;
    
  Relatorio.Execute;

// Só pra restaurar os controles
  SQLEmpresa.Close;
  SQLEmpresa.SQL.Text := 'select * from EMPRESA order by EMPRICOD';
  SQLEmpresa.Open;

  SQLCliente.Close;
  SQLCliente.SQL.Text := 'select * from CLIENTE order by CLIEA60RAZAOSOC';
  SQLCliente.Open;
end;

procedure TFormTelaRelatorioTarefa.RefazTabela(Tabela :TTable);
begin
  try
    Tabela.Close;
    Tabela.DeleteTable;
    Tabela.CreateTable;
  except
    Tabela.CreateTable;
  end;
end;

procedure TFormTelaRelatorioTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLUsuarios.Active then SQLUsuarios.Active := True;
  if not SQLTipoTarefa.Active then SQLTipoTarefa.Active := True;
  if not SQLCliente.Active then SQLCliente.Active := True;
end;

end.
