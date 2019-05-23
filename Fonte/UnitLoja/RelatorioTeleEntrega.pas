unit RelatorioTeleEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioTeleEntrega = class(TFormRelatorioTEMPLATE)
    SQLTeleEntrega: TRxQuery;
    HoraInicial: TDateTimePicker;
    HoraFinal: TDateTimePicker;
    SQLFuncionario: TRxQuery;
    DSSQLFuncionario: TDataSource;
    SQLFuncionarioFUNCA13ID: TStringField;
    SQLFuncionarioFUNCA60NOME: TStringField;
    GroupBox2: TGroupBox;
    ComboFuncionario: TRxDBLookupCombo;
    SQLTeleEntregaEMPRICOD: TIntegerField;
    SQLTeleEntregaTERMICOD: TIntegerField;
    SQLTeleEntregaTELEDENTRPREV: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV1: TDateTimeField;
    SQLTeleEntregaTELEDENTRPREV2: TDateTimeField;
    SQLTeleEntregaTELEDENTRREAL: TDateTimeField;
    SQLTeleEntregaTELEA60SOLICITANTE: TStringField;
    SQLTeleEntregaTELEA60ENTRPARANOME: TStringField;
    SQLTeleEntregaTELEA60ENTRPARAEND: TStringField;
    SQLTeleEntregaTELEA60ENTRPARABAI: TStringField;
    SQLTeleEntregaTELEA60ENTRPARACID: TStringField;
    SQLTeleEntregaTELEA2ENTRPARAUF: TStringField;
    SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField;
    SQLTeleEntregaTELEA60RECPORNOME: TStringField;
    SQLTeleEntregaTELEADREC: TDateTimeField;
    SQLTeleEntregaTELEA1016MENSG: TMemoField;
    SQLTeleEntregaTPVDICOD: TIntegerField;
    SQLTeleEntregaTPVDA60DESCR: TStringField;
    SQLTeleEntregaFUNCA13ID: TStringField;
    SQLTeleEntregaFUNCA60NOME: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaTELEDENTRPREV: TDateTimeField;
    TblTemporariaTELEDENTRPREV1: TDateTimeField;
    TblTemporariaTELEDENTRPREV2: TDateTimeField;
    TblTemporariaTELEDENTRREAL: TDateTimeField;
    TblTemporariaTELEA60SOLICITANTE: TStringField;
    TblTemporariaTELEA60ENTRPARANOME: TStringField;
    TblTemporariaTELEA60ENTRPARAEND: TStringField;
    TblTemporariaTELEA60ENTRPARABAI: TStringField;
    TblTemporariaTELEA60ENTRPARACID: TStringField;
    TblTemporariaTELEA2ENTRPARAUF: TStringField;
    TblTemporariaTELEA15ENTRPARAFONE: TStringField;
    TblTemporariaTELEA60RECPORNOME: TStringField;
    TblTemporariaTELEADREC: TDateTimeField;
    TblTemporariaTELEA1016MENSG: TMemoField;
    TblTemporariaTPVDICOD: TIntegerField;
    TblTemporariaTPVDA60DESCR: TStringField;
    TblTemporariaFUNCA13ID: TStringField;
    TblTemporariaFUNCA60NOME: TStringField;
    RadioData: TRadioGroup;
    SQLTeleEntregaEMPRA60NOMEFANT: TStringField;
    TblTemporariaEMPRA60NOMEFANT: TStringField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioTeleEntrega: TFormRelatorioTeleEntrega;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioTeleEntrega.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLTeleEntrega.Close;
  case RadioData.ItemIndex of
    0 : begin
          SQLTeleEntrega.MacroByName('MDataEntrega').Value := '(TELEENTREGA.TELEDENTRPREV  >= "' + FormatDateTime('mm/dd/yyyy', De.Date)       + '" AND ' +
                                                              'TELEENTREGA.TELEDENTRPREV1  >= "' + FormatDateTime('mm/dd/yyyy',De.Date)        + ' ' +
                                                                                                   FormatDateTime('hh:nn:ss', HoraInicial.Time)+ '") AND ' +
                                                              '(TELEENTREGA.TELEDENTRPREV  <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date)      + '" AND ' +
                                                              'TELEENTREGA.TELEDENTRPREV2  <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date)      + ' ' +
                                                                                                   FormatDateTime('hh:nn:ss', HoraFinal.Time)  + '")';
        end;
    1 : begin
          SQLTeleEntrega.MacroByName('MDataEntrega').Value := 'TELEENTREGA.TELEDENTRREAL >= "' + FormatDateTime('mm/dd/yyyy hh:nn:ss', De.Date  + HoraInicial.Time) + '" AND ' +
                                                              'TELEENTREGA.TELEDENTRREAL <= "' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Ate.Date + HoraFinal.Time)   + '"';
        end;
  end;

  if ComboFuncionario.Value <> '' then
    SQLTeleEntrega.MacroByName('MFuncionario').Value := 'TELEENTREGA.FUNCA13ID = "' + ComboFuncionario.Value + '"'
  else
    SQLTeleEntrega.MacroByName('MFuncionario').Value := '0=0';

//  GravaArqTexto(SQLTeleEntrega.RealSQL.Text,'C:\Unit\reltele.txt','NOVO');

  SQLTeleEntrega.Open;

  BatchExec(SQLTeleEntrega,TblTemporaria);
  
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Relatorio de TeleEntrega.rpt';
  Report.ReportTitle       := 'Relatório de Tele-Entrega';
  Report.WindowStyle.Title := 'Relatório de Tele-Entrega';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa';
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Entregador';
  if ComboFuncionario.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboFuncionario.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"';
    
  Report.Formulas.Send;
  // AjustaCaminhoCrystal;
  Report.Execute;
end;

procedure TFormRelatorioTeleEntrega.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFuncionario.Open;
end;

end.

