unit RelatorioCartasAviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, Grids,
  DBGrids, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioCartasAviso = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DeVcto: TDateEdit;
    AteVcto: TDateEdit;
    chkDtProcessamento: TCheckBox;
    chkDtVencimento: TCheckBox;
    SQLConsulta: TRxQuery;
    GroupBox3: TGroupBox;
    chkEnviados: TCheckBox;
    chkCartaCobranca: TCheckBox;
    chkPrimeiroAviso: TCheckBox;
    chkSegundoAviso: TCheckBox;
    chkAvisoSPC: TCheckBox;
    chkTodos: TCheckBox;
    SQLConsultaCLIEID: TStringField;
    SQLConsultaCRECID: TStringField;
    SQLConsultaNROPARC: TIntegerField;
    SQLConsultaCUPID: TStringField;
    SQLConsultaCRECVLR: TBCDField;
    SQLConsultaNOMECLIE: TStringField;
    SQLConsultaENVIADO: TStringField;
    SQLConsultaDTPROC: TDateTimeField;
    SQLConsultaDTVENC: TDateTimeField;
    SQLConsultaDIASATR: TIntegerField;
    SQLConsultaTABELA: TStringField;
    Report: TCrpe;
    SQLConsultaClieNome: TStringField;
    SQLConsultaClieFone: TStringField;
    SQLConsultaClieCidade: TStringField;
    TblTemporariaCLIEID: TStringField;
    TblTemporariaCRECID: TStringField;
    TblTemporariaNROPARC: TIntegerField;
    TblTemporariaCUPID: TStringField;
    TblTemporariaCRECVLR: TBCDField;
    TblTemporariaNOMECLIE: TStringField;
    TblTemporariaENVIADO: TStringField;
    TblTemporariaDTPROC: TDateTimeField;
    TblTemporariaDTVENC: TDateTimeField;
    TblTemporariaDIASATR: TIntegerField;
    TblTemporariaTABELA: TStringField;
    TblTemporariaClieNome: TStringField;
    TblTemporariaClieFone: TStringField;
    TblTemporariaClieCidade: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure SQLConsultaCalcFields(DataSet: TDataSet);
    procedure chkTodosClick(Sender: TObject);
    procedure chkCartaCobrancaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Marcar : Boolean;
  end;

var
  FormRelatorioCartasAviso: TFormRelatorioCartasAviso;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCartasAviso.ExecutarBtnClick(Sender: TObject);
Var SqlInserir : String;
    I : Integer;
begin
  inherited;
  SQLConsulta.Close;

  SQLConsulta.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', 'EMPRICOD') ;

  if chkCartaCobranca.Checked then
     begin
        SqlInserir := '0=0';
        if chkDtProcessamento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' AVCODPROCESS >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' AVCODPROCESS <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 00:00:00" as TimeStamp) ';

        if chkDtVencimento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' AVCODVENC >= Cast("' + FormatDateTime('mm/dd/yyyy', DeVcto.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' AVCODVENC <= Cast("' + FormatDateTime('mm/dd/yyyy', AteVcto.Date) + ' 00:00:00" as TimeStamp) ';


        case chkEnviados.State of
           cbUnchecked : SqlInserir := SqlInserir + ' and AVCOCENVIADO = "N"';
           cbChecked   : SqlInserir := SqlInserir + ' and AVCOCENVIADO = "S"';
        end;

        SQLConsulta.MacroByName('MFiltroAvC').AsString := SqlInserir;

     end
  else
     SQLConsulta.MacroByName('MFiltroAvC').AsString := ' CTRCA13ID is null ';

  if chkPrimeiroAviso.Checked then
     begin
        SqlInserir := '0=0';
        if chkDtProcessamento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' PRAVDPROCESS >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' PRAVDPROCESS <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 00:00:00" as TimeStamp) ';

        if chkDtVencimento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' PRAVDVENC >= Cast("' + FormatDateTime('mm/dd/yyyy', DeVcto.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' PRAVDVENC <= Cast("' + FormatDateTime('mm/dd/yyyy', AteVcto.Date) + ' 00:00:00" as TimeStamp) ';

        case chkEnviados.State of
           cbUnchecked : SqlInserir := SqlInserir + ' and PRAVCENVIADO = "N"';
           cbChecked   : SqlInserir := SqlInserir + ' and PRAVCENVIADO = "S"';
        end;

        SQLConsulta.MacroByName('MFiltro1AV').AsString := SqlInserir;
     end
  else
     SQLConsulta.MacroByName('MFiltro1AV').AsString := ' CTRCA13ID is null ';

  if chkSegundoAviso.Checked then
     begin
        SqlInserir := '0=0';
        if chkDtProcessamento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' SGAVDPROCESS >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' SGAVDPROCESS <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 00:00:00" as TimeStamp) ';

        if chkDtVencimento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' SGAVDVENC >= Cast("' + FormatDateTime('mm/dd/yyyy', DeVcto.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' SGAVDVENC <= Cast("' + FormatDateTime('mm/dd/yyyy', AteVcto.Date) + ' 00:00:00" as TimeStamp) ';

        case chkEnviados.State of
           cbUnchecked : SqlInserir := SqlInserir + ' and SGAVCENVIADO  = "N"';
           cbChecked   : SqlInserir := SqlInserir + ' and SGAVCENVIADO  = "S"';
        end;

        SQLConsulta.MacroByName('MFiltro2AV').AsString := SqlInserir;
     end
  else
     SQLConsulta.MacroByName('MFiltro2AV').AsString := ' CTRCA13ID is null ';

  if chkAvisoSPC.Checked then
     begin
        SqlInserir := '0=0';
        if chkDtProcessamento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' AVSPDPROCESS >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' AVSPDPROCESS <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 00:00:00" as TimeStamp) ';

        if chkDtVencimento.Checked then
           SqlInserir := SqlInserir + ' and ' +
                         ' AVSPDVENC >= Cast("' + FormatDateTime('mm/dd/yyyy', DeVcto.Date) + ' 00:00:00" as TimeStamp) and ' +
                         ' AVSPDVENC <= Cast("' + FormatDateTime('mm/dd/yyyy', AteVcto.Date) + ' 00:00:00" as TimeStamp) ';

        case chkEnviados.State of
           cbUnchecked : SqlInserir := SqlInserir + ' and AVSPCENVIADO = "N"';
           cbChecked   : SqlInserir := SqlInserir + ' and AVSPCENVIADO = "S"';
        end;

        SQLConsulta.MacroByName('MFiltroSPC').AsString := SqlInserir;
     end
  else
     SQLConsulta.MacroByName('MFiltroSPC').AsString := ' CTRCA13ID is null ';

  SQLConsulta.Open;

  if SQLConsulta.IsEmpty then
     begin
        Informa('A Consulta não retornou resultados.');
        Abort;
     end;

  RefazTabelaTemp(TblTemporaria, True);

  SQLConsulta.First;
  while not SQLConsulta.Eof do
    begin
       TblTemporaria.Append;
       for I := 0 to TblTemporaria.FieldCount - 1 do
           TblTemporaria.Fields.Fields[I].Value := SQLConsulta.FieldByName(TblTemporaria.Fields.Fields[I].FieldName).Value;
       TblTemporaria.Post;
       SQLConsulta.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Cartas de Aviso.rpt';

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'EmpresaEmitente';
  Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';

  Report.Formulas.Name := 'PeriodoVencimento';
  if chkDtVencimento.Checked then
     Report.Formulas.Formula.Text := '"De ' + FormatDateTime('dd/mm/yyyy', DeVcto.Date) + ' até ' +
                                     FormatDateTime('dd/mm/yyyy', AteVcto.Date) + '"'
  else
     Report.Formulas.Formula.Text := '"..."';

  Report.Formulas.Name := 'PeriodoProcessamento';
  if chkDtProcessamento.Checked then
     Report.Formulas.Formula.Text := '"De ' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                     FormatDateTime('dd/mm/yyyy', Ate.Date) + '"'
  else
     Report.Formulas.Formula.Text := '"..."';

  Report.Formulas.Send;

  Report.ReportTitle       := 'Cartas de Aviso';
  Report.WindowStyle.Title := 'Cartas de Aviso';

  Report.Execute;

end;

procedure TFormRelatorioCartasAviso.SQLConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLConsultaCLIEID.IsNull then
     begin
        if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLConsultaCLIEID.AsString], 1) then
           begin
              if SQLConsultaNOMECLIE.IsNull or (SQLConsultaNOMECLIE.Value = '') then
                 SQLConsultaClieNome.AsString := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString
              else
                 SQLConsultaClieNome.AsString := SQLConsultaNOMECLIE.AsString;
              SQLConsultaClieFone.AsString    := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
              SQLConsultaClieCidade.AsString  := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString + '\' + DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
           end
        else
           begin
              SQLConsultaClieNome.AsString   := 'Não encontrado';
              SQLConsultaClieFone.AsString   := 'Não encontrado';
              SQLConsultaClieCidade.AsString := 'Não encontrado';
           end;
     end;
end;

procedure TFormRelatorioCartasAviso.chkTodosClick(Sender: TObject);
begin
  inherited;
  Marcar := False;
  if chkTodos.State <> cbGrayed then
     begin
       chkCartaCobranca.Checked := chkTodos.Checked;
       chkPrimeiroAviso.Checked := chkTodos.Checked;
       chkSegundoAviso.Checked := chkTodos.Checked;
       chkAvisoSPC.Checked := chkTodos.Checked;
     end;
  Marcar := True;
end;

procedure TFormRelatorioCartasAviso.chkCartaCobrancaClick(Sender: TObject);
begin
  inherited;
  if Marcar then
     begin
       if chkCartaCobranca.Checked and chkPrimeiroAviso.Checked and
          chkSegundoAviso.Checked  and chkAvisoSPC.Checked then
          chkTodos.Checked := True
       else
          if not chkCartaCobranca.Checked and not chkPrimeiroAviso.Checked and
             not chkSegundoAviso.Checked  and not chkAvisoSPC.Checked then
             chkTodos.Checked := False
          else
             chkTodos.State := cbGrayed;
     end;

end;

procedure TFormRelatorioCartasAviso.FormCreate(Sender: TObject);
begin
  inherited;
  Marcar := True;
end;

end.
