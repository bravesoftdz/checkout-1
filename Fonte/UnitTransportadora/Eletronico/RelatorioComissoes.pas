unit RelatorioComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBCtrls, DBTables, Placemnt, DB,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  UCrpe32, Grids, DBGrids;

type
  TFormRelatorioComissoes = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    SQLFuncionario: TRxQuery;
    SQLTipo: TRxQuery;
    DSSQLFuncionario: TDataSource;
    DSSQLTipo: TDataSource;
    SQLFuncionarioFUNCA60NOME: TStringField;
    SQLFuncionarioFUNCA13ID: TStringField;
    DBLNome: TRxDBLookupCombo;
    DBLTipo: TRxDBLookupCombo;
    SQLRelFretefunc: TRxQuery;
    chkData: TCheckBox;
    DataSource1: TDataSource;
    TblTemporariaFUNCA60NOME: TStringField;
    TblTemporariaFUCCN2VLRCREDITO: TBCDField;
    TblTemporariaNOCPDEMISSAO: TDateTimeField;
    TblTemporariaCLIEA13IDDESTINO: TStringField;
    TblTemporariaCLIENTE: TStringField;
    TblTemporariaDESTINO: TStringField;
    TblTemporariaNOCPA30NRO: TStringField;
    SQLRelFretefuncFUNCA60NOME: TStringField;
    SQLRelFretefuncFUCCN2VLRCREDITO: TBCDField;
    SQLRelFretefuncNOCPDEMISSAO: TDateTimeField;
    SQLRelFretefuncCLIEA13IDDESTINO: TStringField;
    SQLRelFretefuncCLIENTE: TStringField;
    SQLRelFretefuncDESTINO: TStringField;
    SQLRelFretefuncNOCPA30NRO: TStringField;
    SQLRelFretefuncFUNCCAUTONOMO: TStringField;
    Report: TCrpe;
    SQLRelFretefuncNOCIN2VLRCOMISSAO: TBCDField;
    SQLRelFretefuncNOCIN3QTDEMBAL: TBCDField;
    procedure DSSQLFuncionarioDataChange(Sender: TObject; Field: TField);
    procedure DSSQLTipoDataChange(Sender: TObject; Field: TField);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComissoes: TFormRelatorioComissoes;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioComissoes.DSSQLFuncionarioDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  DBLTipo.KeyValue := '';
end;

procedure TFormRelatorioComissoes.DSSQLTipoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBLNome.KeyValue := '';
end;

procedure TFormRelatorioComissoes.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLRelFretefunc.Close;
  if not chkData.Checked then
     begin
       SQLRelFretefunc.MacroByName('MFiltro').AsString := '';
       SQLRelFretefunc.MacroByName('MFiltro').AsString := ' NOCPDEMISSAO >= '''+FormatDateTime('MM/DD/YYYY',DE.Date)+''' and'+
                                                          ' NOCPDEMISSAO <= '''+FormatDateTime('MM/DD/YYYY',ATE.Date)+''''
     end
  else
    SQLRelFretefunc.MacroByName('MFiltro').AsString := '0=0';
  if DBLNome.KeyValue <> null then
     begin
      if chkData.Checked then
         SQLRelFretefunc.MacroByName('MFiltro').AsString := ''
      else
         SQLRelFretefunc.MacroByName('MFiltro').AsString := SQLRelFretefunc.MacroByName('MFiltro').AsString + ' and ';
      SQLRelFretefunc.MacroByName('MFiltro').AsString := SQLRelFretefunc.MacroByName('MFiltro').AsString +
                                                            ' FUNCIONARIO.FUNCA60NOME = '''+DBLNome.Text+'''';
     end;
  if DBLTipo.KeyValue <> null then
     begin
      if chkData.Checked then
         SQLRelFretefunc.MacroByName('MFiltro').AsString := ''
      else
         SQLRelFretefunc.MacroByName('MFiltro').AsString := SQLRelFretefunc.MacroByName('MFiltro').AsString + ' and ';
      SQLRelFretefunc.MacroByName('MFiltro').AsString := SQLRelFretefunc.MacroByName('MFiltro').AsString +
                                                            ' FUNCIONARIO.FUNCCAUTONOMO = '''+DBLTipo.Text+'''';
     end;

  SQLRelFretefunc.Open;
  BatchMove.Execute;
  try
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\ComissoesFrete.rpt';
    Report.ReportTitle:= 'Relatório de Comissões por Funcionário';
    Report.Execute;
  except
     on E : ECrpeError do
     ShowMessage('Não foi possivel gerar o relatório.'+char(#13)+
                 E.Message);
  end;
end;
procedure TFormRelatorioComissoes.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLFuncionario.Active then SQLFuncionario.Active := True;
  if not SQLTipo.Active  then SQLTipo.Active := True;
end;

end.
