unit TelaPesquisaTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, StdCtrls, ComCtrls, RxLookup, DBTables,
  RxQuery, Buttons, jpeg, ExtCtrls, Grids, DBGrids;

type
  TFormTelaPesquisaTarefa = class(TFormTelaGeralTEMPLATE)
    gboCliente: TGroupBox;
    gboTarefa: TGroupBox;
    SQLCliente: TRxQuery;
    SQLResultado: TRxQuery;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    SQLTarefa: TRxQuery;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    DtDigitacaoDe: TDateTimePicker;
    DtDigitacaoAte: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    edContendo: TEdit;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dtInicioDe: TDateTimePicker;
    dtInicioAte: TDateTimePicker;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    dtTerminoDe: TDateTimePicker;
    dtTerminoAte: TDateTimePicker;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label11: TLabel;
    Label12: TLabel;
    dsSQLCliente: TDataSource;
    SQLCidade: TRxQuery;
    dsSQLCidade: TDataSource;
    SQLUsuario: TRxQuery;
    dsSQLTarefa: TDataSource;
    dsSQLUsuario: TDataSource;
    btPesquisar: TSpeedButton;
    chkDtInicio: TCheckBox;
    chkDtDigitacao: TCheckBox;
    chkDtTermino: TCheckBox;
    DBGridTarefa: TDBGrid;
    dsSQLResultado: TDataSource;
    chkPendente: TCheckBox;
    rboAceite: TRadioGroup;
    gboClienteProspect: TGroupBox;
    Label14: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SQLClienteProspect: TRxQuery;
    DSSQLCLIenteProspect: TDataSource;
    SQLCidadeProcpect: TRxQuery;
    dsSQLCidadeProcpect: TDataSource;
    SQLResultadoTAREA13ID: TStringField;
    SQLResultadoEMPRICOD: TIntegerField;
    SQLResultadoTERMICOD: TIntegerField;
    SQLResultadoTAREICOD: TIntegerField;
    SQLResultadoTAREA30TITULO: TStringField;
    SQLResultadoTAREDDIGITACAO: TDateTimeField;
    SQLResultadoTAREDLEMBRETE: TDateTimeField;
    SQLResultadoTAREHLEMBRETE: TStringField;
    SQLResultadoTARETSOLICITACAO: TMemoField;
    SQLResultadoTARECPENDENTE: TStringField;
    SQLResultadoTAREDINICIO: TDateTimeField;
    SQLResultadoTAREDTERMINO: TDateTimeField;
    SQLResultadoTPTAICOD: TIntegerField;
    SQLResultadoCLIEA13ID: TStringField;
    SQLResultadoPRCLA13ID: TStringField;
    SQLResultadoHELPA13ID: TStringField;
    SQLResultadoPRNEA13ID: TStringField;
    SQLResultadoTAREDPRAZOMAX: TDateTimeField;
    SQLResultadoTAREDULTAGEND: TDateTimeField;
    SQLResultadoTAREA60MOTIVOADIO: TStringField;
    SQLResultadoUSUAICOD: TIntegerField;
    SQLResultadoUSUAICODDEST: TIntegerField;
    SQLResultadoCLASSICOD: TIntegerField;
    SQLResultadoTAREA1000CHECKLIST: TMemoField;
    SQLResultadoTARECATULIZEMAIL: TStringField;
    SQLResultadoREGISTRO: TDateTimeField;
    SQLResultadoPENDENTE: TStringField;
    SQLResultadoTAREA13MODOTAREFA: TStringField;
    SQLResultadoTARECSTATUS: TStringField;
    pnLegenda: TPanel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure btPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtDigitacaoDeChange(Sender: TObject);
    procedure dtInicioDeChange(Sender: TObject);
    procedure dtTerminoDeChange(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBGridTarefaDblClick(Sender: TObject);
    procedure DBGridTarefaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPesquisaTarefa: TFormTelaPesquisaTarefa;

implementation

uses DataModulo, FormResources, CadastroHelpDesk, CadastroNegocioComposto,
  CadastroClientePropect, VarSYS;

{$R *.dfm}

procedure TFormTelaPesquisaTarefa.btPesquisarClick(Sender: TObject);
Var I : Integer;
    SQL : String;
begin
  inherited;
  For I := 0 to gboCliente.ControlCount - 1 do
     begin
       if gboCliente.Controls[I] is TRxDBLookupCombo then
          begin
            if (gboCliente.Controls[I] as TRxDBLookupCombo).Text <> '...' then
              if SQL = '' then
                 SQL := 'CLIENTE.' + (gboCliente.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboCliente.Controls[I] as TRxDBLookupCombo).Value + '"'
              else
                 SQL := SQL + ' and ' + 'CLIENTE.' + (gboCliente.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboCliente.Controls[I] as TRxDBLookupCombo).Value + '"';
          end;
     end;

  For I := 0 to gboTarefa.ControlCount - 1 do
     begin
       if gboTarefa.Controls[I] is TRxDBLookupCombo then
          begin
            if (gboTarefa.Controls[I] as TRxDBLookupCombo).Text <> '...' then
              if SQL = '' then
                 SQL := 'TAREFA.' + (gboTarefa.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboTarefa.Controls[I] as TRxDBLookupCombo).Value + '"'
              else
                 SQL := SQL + ' and ' + 'TAREFA.' + (gboTarefa.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboTarefa.Controls[I] as TRxDBLookupCombo).Value + '"';
          end;
     end;

  For I := 0 to gboClienteProspect.ControlCount - 1 do
     begin
       if gboClienteProspect.Controls[I] is TRxDBLookupCombo then
          begin
            if (gboClienteProspect.Controls[I] as TRxDBLookupCombo).Text <> '...' then
              if SQL = '' then
                 SQL := 'PROSPECTCLIENTE.' + (gboClienteProspect.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboClienteProspect.Controls[I] as TRxDBLookupCombo).Value + '"'
              else
                 SQL := SQL + ' and ' + 'PROSPECTCLIENTE.' + (gboClienteProspect.Controls[I] as TRxDBLookupCombo).LookupField + ' = "' + (gboClienteProspect.Controls[I] as TRxDBLookupCombo).Value + '"';
          end;
     end;

  if chkDtDigitacao.Checked then
     begin
       if SQL = '' then
          SQL := ' TAREFA.TAREDDIGITACAO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', DtDigitacaoDe.Date) + '" and ' +
                 ' TAREFA.TAREDDIGITACAO <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', DtDigitacaoAte.Date) + '"'
        else
          SQL := SQL + ' and TAREFA.TAREDDIGITACAO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', DtDigitacaoDe.Date) + '" and ' +
                 ' TAREFA.TAREDDIGITACAO           <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', DtDigitacaoAte.Date) + '"';
     end;

  if chkDtInicio.Checked then
     begin
       if SQL = '' then
          SQL := ' TAREFA.TAREDINICIO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', dtInicioDe.Date) + '" and ' +
                 ' TAREFA.TAREDINICIO <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', dtInicioAte.Date) + '"'
        else
          SQL := SQL + ' and TAREFA.TAREDINICIO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', dtInicioDe.Date) + '" and ' +
                 ' TAREFA.TAREDINICIO           <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', dtInicioAte.Date) + '"';
     end;

  if chkDtTermino.Checked then
    begin
      if SQL = '' then
        SQL := ' TAREFA.TAREDTERMINO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', dtTerminoDe.Date) + '" and ' +
               ' TAREFA.TAREDTERMINO <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', dtTerminoAte.Date) + '"'
      else
        SQL := SQL + ' and TAREFA.TAREDTERMINO >= "' + FormatDateTime('MM/DD/YYYY 00:00:00', dtTerminoDe.Date) + '" and ' +
               ' TAREFA.TAREDTERMINO           <= "' + FormatDateTime('MM/DD/YYYY 23:59:00', dtTerminoAte.Date) + '"'
    end;

  if chkPendente.Checked then
     begin
       if SQL = '' then
          SQL := ' TAREFA.TARECPENDENTE = "S"'
       else
          SQL := SQL + ' and TAREFA.TARECPENDENTE = "S"';
     end
  else
     begin
       if SQL = '' then
          SQL := ' TAREFA.TARECPENDENTE = "N"'
       else
          SQL := SQL + ' and TAREFA.TARECPENDENTE = "N"';
     end;

  case rboAceite.ItemIndex of
     0 : begin
           if SQL = '' then
              SQL := ' TAREFA.TARECSTATUS = "A"'
           else
              SQL := SQL + ' and TAREFA.TARECSTATUS = "A"';
         end;
     1 : begin
           if SQL = '' then
              SQL := ' TAREFA.TARECSTATUS = "N"'
           else
              SQL := SQL + ' and TAREFA.TARECSTATUS = "N"';
         end;
  end;

  if edContendo.Text <> '' then
     begin
       if SQL = '' then
          SQL := ' TAREFA.TAREA30TITULO like "%' + edContendo.Text + '"'
       else
          SQL := SQL + ' TAREFA.TAREA30TITULO like "%' + edContendo.Text + '"';
     end;

  SQLResultado.Close;
  SQLResultado.MacroByName('MFiltro').AsString := SQL;
  SQLResultado.Open;
end;

procedure TFormTelaPesquisaTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active   then SQLCliente.Active := True;
  if not SQLCLIenteProspect.Active   then SQLCLIenteProspect.Active := True;
  if not SQLTarefa.Active            then SQLTarefa.Active  := True;
  if not SQLCidade.Active            then SQLCidade.Active  := True;
  if not SQLCidadeProcpect.Active    then SQLCidadeProcpect.Active  := True;
  if not SQLUsuario.Active           then SQLUsuario.Active := True;
  gboCliente.Visible                 := Pos('Prospect', Application.Title) <= 0;
  gboClienteProspect.Visible         := Pos('Prospect', Application.Title) > 0;
end;

procedure TFormTelaPesquisaTarefa.DtDigitacaoDeChange(Sender: TObject);
begin
  inherited;
  if DtDigitacaoDe.Date > DtDigitacaoAte.Date then
     DtDigitacaoAte.Date := DtDigitacaoDe.Date;
//  btPesquisar.Click;
end;

procedure TFormTelaPesquisaTarefa.dtInicioDeChange(Sender: TObject);
begin
  inherited;
  if dtInicioDe.Date > dtInicioAte.Date then
     dtInicioAte.Date := dtInicioDe.Date;
  btPesquisar.Click;
end;

procedure TFormTelaPesquisaTarefa.dtTerminoDeChange(Sender: TObject);
begin
  inherited;
  if dtTerminoDe.Date > dtTerminoAte.Date then
     dtTerminoAte.Date := dtTerminoDe.Date;
  btPesquisar.Click;
end;

procedure TFormTelaPesquisaTarefa.RxDBLookupCombo1Change(Sender: TObject);
begin
  inherited;
  btPesquisar.Click;
end;

procedure TFormTelaPesquisaTarefa.DBGridTarefaDblClick(Sender: TObject);
begin
  inherited;
  if not SQLResultadoHELPA13ID.IsNull then
     begin
       DM.ParametroExterno := ' HELPA13ID = "' + SQLResultadoHELPA13ID.AsString + '"';
       CriaFormulario(TFormCadastroHelpDesk,'FormCadastroHelpDesk',False,False,'');
     end;
  if not SQLResultadoPRNEA13ID.IsNull then
     begin
       DM.ParametroExterno := ' PRNEA13ID = "' + SQLResultadoPRNEA13ID.AsString + '"';
       CriaFormulario(TFormCadastroNegocioComposto,'FormCadastroNegocioComposto',False,False,'');
     end;
  if not SQLResultadoPRCLA13ID.IsNull then
     begin
       DM.ParametroExterno := ' PRCLA13ID = "' + SQLResultadoPRCLA13ID.AsString + '"';
       CriaFormulario(TFormCadastroClientePropect,'FormCadastroClientePropect',False,False,'');
     end;
end;

procedure TFormTelaPesquisaTarefa.DBGridTarefaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLResultadoTARECSTATUS.AsString = 'A' then
     DBGridTarefa.Canvas.Font.Color := clBlack;
  if SQLResultadoTARECSTATUS.AsString = 'N' then
     DBGridTarefa.Canvas.Font.Color := $004A4AFF;
  if SQLResultadoTARECSTATUS.IsNull then
     DBGridTarefa.Canvas.Font.Color := clGreen;

  if SQLResultadoUSUAICODDEST.AsInteger = UsuarioCorrente then
     DBGridTarefa.Canvas.Font.Style := []
  else
     DBGridTarefa.Canvas.Font.Style := [fsItalic];

  if gdSelected in State then
     DBGridTarefa.Canvas.Brush.Color := $00EDE0D1;


  DBGridTarefa.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
