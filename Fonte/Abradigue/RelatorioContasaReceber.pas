unit RelatorioContasaReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Placemnt, Db, DBTables, ComCtrls, RxLookup,
  StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, 
  RxQuery, ImgList, UCrpe32;

type
  TFormRelatorioContasaReceber = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLContasReceber: TRxQuery;
    Report: TCrpe;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberDTVENC: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberDTULTREC: TStringField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaDTVENC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaDTULTREC: TStringField;
    TblTemporariaCTRCN2TOTREC: TBCDField;
    TblTemporariaCTRCN2TXJURO: TBCDField;
    TblTemporariaCTRCN2TXMULTA: TBCDField;
    TblTemporariaCTRCN2TOTDESCREC: TBCDField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    CheckNroDuplic: TCheckBox;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCUPOA30NSUINSTITUICAO: TStringField;
    TblTemporariaCUPOA30NSUINSTITUICAO: TStringField;
    CKDadosCartoes: TCheckBox;
    SQLContasReceberNUMEA30DESCR: TStringField;
    TblTemporariaNUMEA30DESCR: TStringField;
    GroupBox4: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendedor: TQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasaReceber: TFormRelatorioContasaReceber;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormRelatorioContasaReceber.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacrobyName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = ' + '"' + ComboCliente.KeyValue + '"'
  else
    SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

  if ComboNumerario.Text <> '' then
    SQLContasReceber.MacrobyName('MNumerario').Value := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.KeyValue
  else
    SQLContasReceber.MacrobyName('MNumerario').Value := '0=0';

  if ComboVendedor.Text <> '' then
    SQLContasReceber.MacrobyName('MVendedor').Value := 'Cupom.VENDICOD = ' + ComboVendedor.KeyValue
  else
    SQLContasReceber.MacrobyName('MVendedor').Value := '0=0';

  SQLContasReceber.Open ;

  BatchExec(SQLContasReceber, TblTemporaria) ;
                                                                                                             
  TblTemporaria.Open ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if TblTemporariaNOFIA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.Value := 'NF - ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                          SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;
        end;
      if TblTemporariaPDVDA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
        end;

      if (CheckNroDuplic.Checked) and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

      TblTemporaria.Post;

      TblTemporaria.Next;
    end;

  TblTemporaria.Close;
  if not CKDadosCartoes.Checked then
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber.rpt';
      Report.ReportTitle       := 'Relat�rio de Contas � Receber';
      Report.WindowStyle.Title := 'Relat�rio de Contas � Receber';
    end
  else
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber Dados Cartao Credito.rpt';
      Report.ReportTitle       := 'Relat�rio de Contas � Receber com dados do cart�o de cr�dito';
      Report.WindowStyle.Title := 'Relat�rio de Contas � Receber com dados do cart�o de cr�dito';
    end;
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';

  //AjustaCaminhoCrystal;
  Report.Execute ;
end;

procedure TFormRelatorioContasaReceber.FormCreate(Sender: TObject);
begin
  inherited;

  if not SQLNumerario.Active then SQLNumerario.Open ;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;

  De.Date  := Date + 1 ;
  Ate.Date := Date + 1 ;
end;

procedure TFormRelatorioContasaReceber.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.

