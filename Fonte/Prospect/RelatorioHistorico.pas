unit RelatorioHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32;

type
  TFormRelatorioHistorico = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    dblNegocio: TRxDBLookupCombo;
    dblCliente: TRxDBLookupCombo;
    dblVendedor: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SQLCliente: TRxQuery;
    SQLNegocio: TRxQuery;
    SQLVendedor: TRxQuery;
    dsSQLNegocio: TDataSource;
    dsSQLVendedor: TDataSource;
    dsSQLCliente: TDataSource;
    SQLRelatorio: TRxQuery;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    tblEmpresa: TTable;
    tblEmpresaEMPRICOD: TIntegerField;
    tblEmpresaEMPRA60RAZAOSOC: TStringField;
    tblEmpresaEMPRA60NOMEFANT: TStringField;
    tblEmpresaCodNomeEmpresaCalcField: TStringField;
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
    Relatorio: TCrpe;
    Label8: TLabel;
    dblStatus: TRxDBLookupCombo;
    SQLStatus: TRxQuery;
    dsSQLStatus: TDataSource;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSA60DESCR: TStringField;
    rboDataPesq: TRadioGroup;
    SQLRelatorioPRCLA13ID: TStringField;
    SQLRelatorioPRNEA13ID: TStringField;
    SQLRelatorioPCHTICOD: TIntegerField;
    SQLRelatorioPCHTDCADASTRO: TDateTimeField;
    SQLRelatorioPCHTTHISTORICO: TMemoField;
    SQLRelatorioPCHTA60CONTATO: TStringField;
    SQLRelatorioEMPRICOD: TIntegerField;
    SQLRelatorioPCHTDPROXCONT: TDateTimeField;
    SQLRelatorioPRCLA60RAZAOSOC: TStringField;
    SQLRelatorioPRCLA60CIDCOM: TStringField;
    SQLRelatorioPRCLA2UFCOM: TStringField;
    SQLRelatorioPRCLA15FONE1: TStringField;
    SQLRelatorioPRNEA100DESCRICAO: TStringField;
    SQLRelatorioPRNEA60CONTATO: TStringField;
    SQLRelatorioPRNEA15CONTATOFONE1: TStringField;
    SQLRelatorioPRNEN2VALOR: TBCDField;
    SQLRelatorioVENDA60NOME: TStringField;
    SQLRelatorioPRNSA60DESCR: TStringField;
    TblTemporariaPRCLA13ID: TStringField;
    TblTemporariaPRNEA13ID: TStringField;
    TblTemporariaPCHTICOD: TIntegerField;
    TblTemporariaPCHTDCADASTRO: TDateTimeField;
    TblTemporariaPCHTTHISTORICO: TMemoField;
    TblTemporariaPCHTA60CONTATO: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPCHTDPROXCONT: TDateTimeField;
    TblTemporariaPRCLA60RAZAOSOC: TStringField;
    TblTemporariaPRCLA60CIDCOM: TStringField;
    TblTemporariaPRCLA2UFCOM: TStringField;
    TblTemporariaPRCLA15FONE1: TStringField;
    TblTemporariaPRNEA100DESCRICAO: TStringField;
    TblTemporariaPRNEA60CONTATO: TStringField;
    TblTemporariaPRNEA15CONTATOFONE1: TStringField;
    TblTemporariaPRNEN2VALOR: TBCDField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaPRNSA60DESCR: TStringField;
    chkIntervalo: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RefazTabela(Tabela : TTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioHistorico: TFormRelatorioHistorico;

implementation

uses VarSYS, UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioHistorico.RefazTabela(Tabela : TTable);
begin
    try
       Tabela.Close;
       Tabela.DeleteTable;
       Tabela.CreateTable;
    except
       Tabela.CreateTable;
    end;
end;

procedure TFormRelatorioHistorico.ExecutarBtnClick(Sender: TObject);
Var SQL,RegNull, Empresas : String;
    I : Integer;
begin
  inherited;
  SQL := '';

  if dblCliente.Text <> '...' then
     SQL := 'PRCLHISTORICO.' + dblCliente.LookupField + ' = "' + dblCliente.KeyValue + '"';

  if dblNegocio.Text <> '...' then
     if SQL = '' then
        SQL := 'PRCLHISTORICO.' + dblNegocio.LookupField + ' = "' + dblNegocio.KeyValue + '"'
     else
        SQL := SQL + ' and ' + 'PRCLHISTORICO.' + dblNegocio.LookupField + ' = "' + dblNegocio.KeyValue + '"';

  if dblVendedor.Text <> '...' then
     if SQL = '' then
        SQL := 'PRCLHISTORICO.' + dblVendedor.LookupField + ' = ' + dblVendedor.KeyValue
     else
        SQL := SQL + ' and ' + 'PRCLHISTORICO.' + dblVendedor.LookupField + ' = ' + dblVendedor.KeyValue;

  if dblStatus.Text <> '...' then
     if SQL = '' then
        SQL := 'PROSPECTNEGOCIO.' + dblStatus.LookupField + ' = ' + IntToStr(dblStatus.KeyValue)
     else
        SQL := SQL + ' and ' + 'PROSPECTNEGOCIO.' + dblStatus.LookupField + ' = ' + IntToStr(dblStatus.KeyValue);

  if ListaEmpresas.Count > 0 then
     for I := 0 to ListaEmpresas.Count -1 do
         begin
             if Empresas = '' then
                Empresas := copy(ListaEmpresas.Items.Strings[I],0,pos('-',ListaEmpresas.Items.Strings[I])-1)
             else
                Empresas := Empresas + ', ' + copy(ListaEmpresas.Items.Strings[I],0,pos('-',ListaEmpresas.Items.Strings[I])-1);
         end;

   if (SQL = '') and (Empresas <> '') then
      SQL := ' PRCLHISTORICO.EMPRICOD in (' + Empresas + ')';
   if (SQL <> '') and (Empresas <> '') then
      SQL := SQL + ' and PRCLHISTORICO.EMPRICOD in (' + Empresas + ')';

  if not chkIntervalo.Checked then
     begin
       if rboDataPesq.ItemIndex = 0 then
         begin
           if SQL = '' then
              SQL := ' PRCLHISTORICO.PCHTDCADASTRO >= Cast("' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" as DATE) and PRCLHISTORICO.PCHTDCADASTRO <= Cast("' + FormatDateTime('mm/dd/yyyy 23:59:59', Ate.Date) + '" as DATE)'
           else
              SQL := SQL + ' and PRCLHISTORICO.PCHTDCADASTRO >= Cast("' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + '" as DATE) and PRCLHISTORICO.PCHTDCADASTRO <= Cast("' + FormatDateTime('mm/dd/yyyy 23:59:59', Ate.Date) + '" as DATE)';
           SQLRelatorio.MacroByName('MOrder').AsString := 'order by PRCLA13ID, PCHTDCADASTRO';
         end
       else
         begin
           if SQL = '' then
              SQL := ' PRCLHISTORICO.PCHTDPROXCONT  >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + '" as DATE) and PRCLHISTORICO.PCHTDPROXCONT  <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" as DATE)'
           else
              SQL := SQL + ' and PRCLHISTORICO.PCHTDPROXCONT  >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + '" as DATE) and PRCLHISTORICO.PCHTDPROXCONT  <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '" as DATE)';
           SQLRelatorio.MacroByName('MOrder').AsString := 'order by PRCLA13ID, PCHTDPROXCONT';
         end;
     end
  else
     SQLRelatorio.MacroByName('MOrder').AsString := 'order by PRCLA13ID, PCHTDCADASTRO';

  if SQL = '' then
     RegNull := 'S';

  if RegNull = 'S' then
      if Application.MessageBox('Não há nenhum filtro especificado deseja listar todos os registro?','Atenção',MB_YESNO + MB_ICONQUESTION + MB_SYSTEMMODAL + MB_SETFOREGROUND) = idYes then
        RegNull := 'N'
      else
        Abort;

  if RegNull <> 'S' then
     begin
        RefazTabela(TblTemporaria);
     end;

  if SQL <> '' then
    begin
      SQLRelatorio.Close;
      SQLRelatorio.MacroByName('MFiltro').AsString := SQL;
      SQLRelatorio.Open;
    end
  else
    begin
      SQLRelatorio.Close;
      SQLRelatorio.MacroByName('MFiltro').AsString := '0=0';
      SQLRelatorio.Open;
    end;

  BatchMove.Destination := TblTemporaria;
  BatchMove.Source      := SQLRelatorio;

  if not SQLRelatorio.IsEmpty then
     begin
        BatchMove.Execute;
        TblTemporaria.AddIndex('PCHTICODINDEX','PRCLA13ID;PRNEA13ID;PCHTICOD',[ixPrimary]);
     end
  else
     begin
        Informa('Não há registros para a consulta indicada.');
        Abort;
     end;

  Relatorio.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Prospect Historico Analitico.rpt' ;
  Relatorio.WindowStyle.Title := 'Relatório de Histórico Sintético';
  Relatorio.ReportTitle       := 'Relatório de Histórico Sintético';

  Relatorio.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Relatorio.Formulas.Name         := 'Emissao' ;
  Relatorio.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Relatorio.Formulas.Name         := 'PeriodoEmissao' ;
  Relatorio.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;

  Relatorio.SortFields.Retrieve;
  Relatorio.SortFields.Clear;
  Relatorio.SortFields.Add(0);
  Relatorio.SortFields.Number := 0;
  Relatorio.SortFields.Field := '{ProspectRelHistorico.PRCLA13ID}';
//  Relatorio.SortFields.Send;
  Relatorio.SortFields.Add(1);
  Relatorio.SortFields.Number := 1;
  Relatorio.SortFields.Field := '{ProspectRelHistorico.PRNEA13ID}';
//  Relatorio.SortFields.Send;
  Relatorio.SortFields.Add(2);
  Relatorio.SortFields.Number := 2;
  if rboDataPesq.ItemIndex = 0 then
     Relatorio.SortFields.Field := '{ProspectRelHistorico.PCHTDCADASTRO}'
  else
     Relatorio.SortFields.Field := '{ProspectRelHistorico.PCHTDPROXCONT}';
  Relatorio.SortFields.Send;
  Relatorio.Formulas.Send;
  Relatorio.Execute;
end;

procedure TFormRelatorioHistorico.FormCreate(Sender: TObject);
begin
  RefazTabela(tblEmpresa);

  inherited;

  if not SQLCliente.Active then SQLCliente.Active := True;
  if not SQLNegocio.Active then SQLNegocio.Active := True;
  if not SQLVendedor.Active then SQLVendedor.Active := True;
  if not SQLStatus.Active then SQLStatus.Active := True;  
end;

end.
