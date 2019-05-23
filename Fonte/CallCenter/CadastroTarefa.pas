unit CadastroTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, StdCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, dateutils,
  RxLookup, ConerBtn, dbcgrids, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTarefa = class(TFormCadastroTEMPLATE)
    MemoDescTarefa: TDBMemo;
    Label9: TLabel;
    SQLCliente: TQuery;
    SQLTipoTarefa: TQuery;
    DSSQLTipoTarefa: TDataSource;
    SQLUsuariosEmail: TRxQuery;
    dsSQLUsuariosEmail: TDataSource;
    SQLUsuariosEmailCLASSICOD: TIntegerField;
    SQLUsuariosEmailUSUAICOD: TIntegerField;
    SQLUsuariosEmailUSUAA60EMAIL: TStringField;
    TabSheetHelpDesk: TTabSheet;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBMemo2: TDBMemo;
    dsSQLCliente: TDataSource;
    SQLUsuariosEmailUSUAA60LOGIN: TStringField;
    SQLTipoTarefaTPTAICOD: TIntegerField;
    SQLTipoTarefaTPTAA30DESCRICAO: TStringField;
    SQLTipoTarefaTPTACINTEXT: TStringField;
    SQLTipoTarefaTPTACCHECKLIST: TStringField;
    Button5: TRxSpeedButton;
    SQLTarefaHistorico: TRxQuery;
    dsSQLTarefaHistorico: TDataSource;
    TabSheetHistorico: TTabSheet;
    pnHistorico: TPanel;
    Label17: TLabel;
    DBCtrlGridHistorico: TDBCtrlGrid;
    pnMaisMenosCol: TPanel;
    btMenosCol: TSpeedButton;
    btMaisCol: TSpeedButton;
    DBMemoTarefaHistorico: TDBMemo;
    btHistorico: TSpeedButton;
    SQLTipoTarefaTPTAA13PRAZOMAX: TStringField;
    mnIniciarTarefa: TMenuItem;
    mnConcluirTarefa: TMenuItem;
    Button4: TRxSpeedButton;
    TabSheetCheckList: TTabSheet;
    Panel4: TPanel;
    Label14: TLabel;
    DBMemo3: TDBMemo;
    Label15: TLabel;
    mmCheckList: TMemo;
    btAddCheckList: TConerBtn;
    SQLTipoTarefaTPTAA1000CHECKLIST: TMemoField;
    N1: TMenuItem;
    mnAssociarCliente: TMenuItem;
    mnImprimirTarefa: TMenuItem;
    tblImpressaoTarefa: TTable;
    Report: TCrpe;
    tblImpressaoTarefaHistorico: TTable;
    SQLTarefaHistoricoTAREA13ID: TStringField;
    SQLTarefaHistoricoTRHTICOD: TIntegerField;
    SQLTarefaHistoricoUSUAICOD: TIntegerField;
    SQLTarefaHistoricoREGISTRO: TDateTimeField;
    SQLTarefaHistoricoPENDENTE: TStringField;
    SQLTarefaHistoricoTRHTDHORAINICIO: TDateTimeField;
    SQLTarefaHistoricoTRHTDHORAFINAL: TDateTimeField;
    SQLTarefaHistoricoTRHTEA60RESPATENEMP: TStringField;
    SQLTarefaHistoricoTRHTA30NROOS: TStringField;
    SQLTarefaHistoricoTRHTA1000HISTORICO: TMemoField;
    tblImpressaoTarefaHistoricoTAREA13ID: TStringField;
    tblImpressaoTarefaHistoricoTRHTICOD: TIntegerField;
    tblImpressaoTarefaHistoricoUSUAICOD: TIntegerField;
    tblImpressaoTarefaHistoricoTRHTDHORAINICIO: TDateTimeField;
    tblImpressaoTarefaHistoricoTRHTDHORAFINAL: TDateTimeField;
    tblImpressaoTarefaHistoricoTRHTEA60RESPATENEMP: TStringField;
    tblImpressaoTarefaHistoricoTRHTA30NROOS: TStringField;
    tblImpressaoTarefaHistoricoTRHTA1000HISTORICO: TMemoField;
    tblImpressaoTarefaHistoricoPENDENTE: TStringField;
    tblImpressaoTarefaHistoricoREGISTRO: TDateTimeField;
    BatchMove: TBatchMove;
    SQLTemplateTAREA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateTAREICOD: TIntegerField;
    SQLTemplateTAREA30TITULO: TStringField;
    SQLTemplateTAREDDIGITACAO: TDateTimeField;
    SQLTemplateTAREDLEMBRETE: TDateTimeField;
    SQLTemplateTAREHLEMBRETE: TStringField;
    SQLTemplateTARETSOLICITACAO: TMemoField;
    SQLTemplateTARECPENDENTE: TStringField;
    SQLTemplateTAREDINICIO: TDateTimeField;
    SQLTemplateTAREDTERMINO: TDateTimeField;
    SQLTemplateTPTAICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplatePRNEA13ID: TStringField;
    SQLTemplateTAREDPRAZOMAX: TDateTimeField;
    SQLTemplateTAREDULTAGEND: TDateTimeField;
    SQLTemplateTAREA60MOTIVOADIO: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAICODDEST: TIntegerField;
    SQLTemplateCLASSICOD: TIntegerField;
    SQLTemplateTAREA1000CHECKLIST: TMemoField;
    SQLTemplateTARECATULIZEMAIL: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLAtendimento: TRxQuery;
    SQLAtendimentoHELPA13ID: TStringField;
    SQLAtendimentoHELPCCONTATO: TStringField;
    SQLAtendimentoHELPDINICIO: TDateTimeField;
    SQLAtendimentoHELPTSOLICITACAO: TMemoField;
    SQLAtendimentoHELPTSOLUCAO: TMemoField;
    SQLAtendimentoHELPDTERMINO: TDateTimeField;
    dsSQLAtendimento: TDataSource;
    Panel6: TPanel;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    TabSheetProspect: TTabSheet;
    Panel7: TPanel;
    SQLProspect: TRxQuery;
    SQLProspectPRNEA13ID: TStringField;
    SQLProspectPRCLA13ID: TStringField;
    SQLProspectPRNEDEMISSAO: TDateTimeField;
    SQLProspectPRNEA100DESCRICAO: TStringField;
    SQLProspectPRNEA60CONTATO: TStringField;
    SQLProspectPRNEA15CONTATOFONE1: TStringField;
    SQLProspectPRNEN2VALOR: TBCDField;
    SQLProspectPRNEA254OBS: TStringField;
    SQLProspectPRNEA60END: TStringField;
    SQLProspectPRNEA60CIDADE: TStringField;
    SQLProspectPRNEA2UF: TStringField;
    SQLProspectPRNEA60EMAIL: TStringField;
    SQLProspectPRNEA60BAIRRO: TStringField;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    DSSQLProspect: TDataSource;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    Label30: TLabel;
    DBEdit19: TDBEdit;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    DBMemo4: TDBMemo;
    SQLClienteProspect: TQuery;
    dsSQLClienteProspect: TDataSource;
    pnPrazo: TPanel;
    lblPrazoMax: TLabel;
    lblPrazoMaximoConclusao: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    DBTituloTarefa: TDBEdit;
    DBHoraLembrete: TDBEdit;
    DBDataLembrete: TDBDateEdit;
    btConcluir: TSpeedButton;
    SQLTemplateUsuarioDestino: TStringField;
    SQLTemplateClasseUsuarioDestino: TStringField;
    SQLClienteProspectPRCLA60RAZAOSOC: TStringField;
    SQLClienteProspectPRCLA60ENDCOM: TStringField;
    SQLClienteProspectPRCLA60CIDCOM: TStringField;
    SQLClienteProspectPRCLA60BAICOM: TStringField;
    SQLClienteProspectPRCLA2UFCOM: TStringField;
    SQLClienteProspectPRCLA13ID: TStringField;
    SQLTemplateTAREA13MODOTAREFA: TStringField;
    gboAceite: TGroupBox;
    btAceitar: TConerBtn;
    btRecusar: TConerBtn;
    SQLTemplateTARECSTATUS: TStringField;
    pnSecundario: TPanel;
    gboCliente: TGroupBox;
    Label1: TLabel;
    AcessaCadastroCLiente: TSpeedButton;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    edCliCidade: TDBEdit;
    edCliTitular: TDBEdit;
    edCliUF: TDBEdit;
    dblCliente: TRxDBLookupCombo;
    gboTipoTarefa: TGroupBox;
    Label10: TLabel;
    DBCLTpTarefa: TDBLookupComboBox;
    pnGrupoUsuario: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    btAtribuirTarefa: TConerBtn;
    gboOutrasInfo: TGroupBox;
    lstOutrasInformacoes: TListBox;
    pnLegenda: TPanel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    tblImpressaoTarefaTAREA13ID: TStringField;
    tblImpressaoTarefaEMPRICOD: TIntegerField;
    tblImpressaoTarefaTERMICOD: TIntegerField;
    tblImpressaoTarefaTAREICOD: TIntegerField;
    tblImpressaoTarefaTAREA30TITULO: TStringField;
    tblImpressaoTarefaTAREDDIGITACAO: TDateTimeField;
    tblImpressaoTarefaTAREDLEMBRETE: TDateTimeField;
    tblImpressaoTarefaTAREHLEMBRETE: TStringField;
    tblImpressaoTarefaTARETSOLICITACAO: TMemoField;
    tblImpressaoTarefaTARECPENDENTE: TStringField;
    tblImpressaoTarefaTAREDINICIO: TDateTimeField;
    tblImpressaoTarefaTAREDTERMINO: TDateTimeField;
    tblImpressaoTarefaTPTAICOD: TIntegerField;
    tblImpressaoTarefaCLIEA13ID: TStringField;
    tblImpressaoTarefaPRCLA13ID: TStringField;
    tblImpressaoTarefaHELPA13ID: TStringField;
    tblImpressaoTarefaPRNEA13ID: TStringField;
    tblImpressaoTarefaTAREDPRAZOMAX: TDateTimeField;
    tblImpressaoTarefaTAREDULTAGEND: TDateTimeField;
    tblImpressaoTarefaTAREA60MOTIVOADIO: TStringField;
    tblImpressaoTarefaUSUAICOD: TIntegerField;
    tblImpressaoTarefaUSUAICODDEST: TIntegerField;
    tblImpressaoTarefaCLASSICOD: TIntegerField;
    tblImpressaoTarefaTAREA1000CHECKLIST: TMemoField;
    tblImpressaoTarefaTARECATULIZEMAIL: TStringField;
    tblImpressaoTarefaREGISTRO: TDateTimeField;
    tblImpressaoTarefaPENDENTE: TStringField;
    tblImpressaoTarefaUsuarioDestino: TStringField;
    tblImpressaoTarefaClasseUsuarioDestino: TStringField;
    tblImpressaoTarefaTAREA13MODOTAREFA: TStringField;
    tblImpressaoTarefaTARECSTATUS: TStringField;
    SQLTemplateClienteNome: TStringField;
    SQLTemplateClienteCidade: TStringField;
    SQLTemplateClienteUF: TStringField;
    tblImpressaoTarefaClienteNome: TStringField;
    tblImpressaoTarefaClienteCidade: TStringField;
    tblImpressaoTarefaClienteUF: TStringField;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure AcessaCadastroCLienteClick(Sender: TObject);
    procedure DBHoraLembreteExit(Sender: TObject);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAtribuirTarefaClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DBHoraLembreteDblClick(Sender: TObject);
    procedure btMenosColClick(Sender: TObject);
    procedure btMaisColClick(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure btHistoricoClick(Sender: TObject);
    procedure mnIniciarTarefaClick(Sender: TObject);
    procedure mnConcluirTarefaClick(Sender: TObject);
    procedure DBCLTpTarefaClick(Sender: TObject);
    procedure btAddCheckListClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure mnAssociarClienteClick(Sender: TObject);
    procedure EnviaEmail;
    procedure mnImprimirTarefaClick(Sender: TObject);
    procedure ReportError(Sender: TObject; const ErrorNum: Smallint;
      const ErrorString: String; var IgnoreError: TCrBoolean);
    procedure btConcluirClick(Sender: TObject);
    procedure btAceitarClick(Sender: TObject);
    procedure btRecusarClick(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure lstOutrasInformacoesDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormCadastroTarefa: TFormCadastroTarefa;
  CodCli : string;

implementation

uses DataModulo, UnitLibrary, VarSYS, FormResources,
  TelaSelecaoUsuarioTarefa, TelaTarefaHistorico, TelaDataConclusao,
  TelaConsultaCliente, CadastroClientePropect;

{$R *.dfm}

procedure TFormCadastroTarefa.FormCreate(Sender: TObject);
Var I : Integer;
begin
  inherited;
  TABELA := 'TAREFA';
  if Pos('Prospect', Application.Title) > 0 then
     begin
        with dblCliente do
           begin
             DataField     := 'PRCLA13ID';
             LookupSource  := dsSQLClienteProspect;
             LookupField   := 'PRCLA13ID';
             LookupDisplay := 'PRCLA13ID;PRCLA60RAZAOSOC';
           end;
        edCliCidade.DataSource  := dsSQLClienteProspect;
        edCliCidade.DataField   := 'PRCLA60CIDCOM';
        edCliTitular.DataSource := Nil;
        edCliTitular.DataField  := 'CLIEA60TITULAR';
        edCliUF.DataSource      := dsSQLClienteProspect;
        edCliUF.DataField       := 'PRCLA2UFCOM';
        for I := 0 to DBGridLista.Columns.Count - 1 do
          begin
             if DBGridLista.Columns.Items[I].FieldName = 'PRCLA13ID' then
                DBGridLista.Columns.Items[I].Visible := True;
             if DBGridLista.Columns.Items[I].FieldName = 'CLIEA13ID' then
                DBGridLista.Columns.Items[I].Visible := False;
          end;
        if not SQLClienteProspect.Active then SQLClienteProspect.Active := True;
        Button5.Visible := False;
     end
  else
     begin
        with dblCliente do
           begin
             DataField     := 'CLIEA13ID';
             LookupSource  := dsSQLCliente;
             LookupField   := 'CLIEA13ID';
             LookupDisplay := 'CLIEA13ID;CLIEA60RAZAOSOC';
           end;
        edCliCidade.DataSource  := dsSQLCliente;
        edCliCidade.DataField   := 'CLIEA60CIDRES';
        edCliTitular.DataSource := dsSQLCliente;
        edCliTitular.DataField  := 'CLIEA60TITULAR';
        edCliUF.DataSource      := dsSQLCliente;
        edCliUF.DataField       := 'CLIEA2UFRES';
        for I := 0 to DBGridLista.Columns.Count - 1 do
          begin
             if DBGridLista.Columns.Items[I].FieldName = 'PRCLA13ID' then
                DBGridLista.Columns.Items[I].Visible := False;
             if DBGridLista.Columns.Items[I].FieldName = 'CLIEA13ID' then
                DBGridLista.Columns.Items[I].Visible := True;
          end;
        if not SQLCliente.Active then SQLCliente.Active := True;
        Button4.Visible := True;
     end;
  if not SQLTipoTarefa.Active then SQLTipoTarefa.Active := True;

end;

procedure TFormCadastroTarefa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTARECSTATUS.AsString       := 'A';
  SQLTemplateEMPRICOD.AsInteger         := EmpresaCorrente;
  SQLTemplateUSUAICOD.AsInteger         := UsuarioCorrente;
  SQLTemplateTERMICOD.AsInteger         := TerminalCorrente;
  SQLTemplateTARECPENDENTE.AsString     := 'S';
  if (not SQLTemplateCLIEA13ID.IsNull) or (not SQLTemplatePRCLA13ID.IsNull) then
    begin
      if (Pos('Prospect', Application.Title) > 0) then
         SQLTemplateTAREA13MODOTAREFA.AsString := 'PROSPECT'
      else
         SQLTemplateTAREA13MODOTAREFA.AsString := 'CALLCENTER';
    end
  else
    SQLTemplateTAREA13MODOTAREFA.AsString := 'GERAL';

  gboCliente.Visible                    := True;
  if DM.CodAtendimento <> '' then
     begin
       SQLTemplateHELPA13ID.Value := DM.CodAtendimento;
       SQLTemplateCLIEA13ID.Value := DM.CodCliente;
       DM.CodAtendimento := '';
     end;
end;

procedure TFormCadastroTarefa.EnviaEmail;
begin
    if Application.MessageBox('Você deseja enviar um e-mail de notificaçao para o Grupo/Usuário?','Notificação via e-mail', MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND + MB_SYSTEMMODAL) = idNo then
       Exit;
    if not SQLTemplateCLASSICOD.IsNull and SQLTemplateUSUAICODDEST.IsNull then
      begin
        SQLUsuariosEmail.Close;
        SQLUsuariosEmail.MacroByName('Filtro').AsString := ' CLASSICOD = ''' + SQLTemplateCLASSICOD.AsString + '''';
        SQLUsuariosEmail.Open;
        DM.EnviarEmail.PostMessage.Body.Text := 'Há uma nova tarefa para seu grupo' + Char(13) +
                                                'Tarefa Nº '+SQLTemplateTAREA13ID.AsString + Char(13) +
                                                'Prazo de Máximo de Retorno: ' + lblPrazoMaximoConclusao.Caption;
      end;

    if not SQLTemplateUSUAICODDEST.IsNull then
      begin
        SQLUsuariosEmail.Close;
        SQLUsuariosEmail.MacroByName('Filtro').AsString := ' USUAICOD = ''' + SQLTemplateUSUAICODDEST.AsString + '''';
        SQLUsuariosEmail.Open;
        DM.EnviarEmail.PostMessage.Body.Text := 'Há uma nova tarefa para você' + Char(13) +
                                                'Tarefa Nº '+SQLTemplateTAREA13ID.AsString + Char(13) +
                                                'Prazo de Máximo de Retorno: ' + lblPrazoMaximoConclusao.Caption;
      end;

    if not SQLTemplateCLASSICOD.IsNull or not SQLTemplateUSUAICODDEST.IsNull then
       begin
          if not SQLUsuariosEmailUSUAA60EMAIL.IsNull then
            while not SQLUsuariosEmail.Eof do
              begin
                if DM.EnviarEmail.PostMessage.ToAddress.Text = '' then
                   DM.EnviarEmail.PostMessage.ToAddress.Text := AnsiLowerCase(SQLUsuariosEmailUSUAA60EMAIL.AsString)
                else
                   DM.EnviarEmail.PostMessage.ToAddress.Text := dm.EnviarEmail.PostMessage.ToAddress.Text + ', ' + AnsiLowerCase(SQLUsuariosEmailUSUAA60EMAIL.AsString);
                SQLUsuariosEmail.Next;
              end
          else
             begin
               Informa('Não há registro de E-Mail para o Usuário de Destino da Tarefa.');
               Exit;
             end;
          if not dm.EnviarEmail.Connected then dm.EnviarEmail.Connect;
          DM.EnviarEmail.SendMail;
          DM.EnviarEmail.Disconnect;
       end
    else
       Informa('Não foi possivel enviar o e-mail de informção.' + Char(#13) +
               'Verifique se foi indicado um Grupo ou Usuário para a Tarefa. Obrigado');
end;

procedure TFormCadastroTarefa.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  AcessaCadastroCLiente.Enabled := SQLTemplate.State in dsEditModes;
  if SQLTemplate.State in dsEditModes then
     DBTituloTarefa.SetFocus;
  Button4.Enabled := not SQLTemplate.IsEmpty;
  btAddCheckList.Enabled := SQLTemplate.State in dsEditModes;
  mmCheckList.Enabled    := SQLTemplate.State in dsEditModes;
  mmCheckList.Clear;
end;

procedure TFormCadastroTarefa.SQLTemplateBeforePost(DataSet: TDataSet);
var
  Nova : TDateTime;
begin
  if not (SQLTemplateTAREDLEMBRETE.IsNull) and (DBHoraLembrete.text = '  :  ') then
    begin
      raise Exception.Create ('O campo hora do lembrete deve ser informado.');
      DBHoraLembrete.SetFocus;
    end
  else
    begin
      if not SQLTipoTarefaTPTAA13PRAZOMAX.IsNull then
        begin
          if SQLTipoTarefaTPTAA13PRAZOMAX.AsString <> '1' then  // 0 = Imediato 1 = Indeterminado
            begin
              Nova := IncHour(Now, SQLTipoTarefaTPTAA13PRAZOMAX.AsInteger);
              SQLTemplateTAREDPRAZOMAX.AsDateTime := Nova;
            end
          else
              SQLTemplateTAREDPRAZOMAX.Value := Now;
        end;

    SQLTemplateTAREDDIGITACAO.AsDateTime := Now;

    if SQLTemplateUSUAICODDEST.IsNull and SQLTemplateCLASSICOD.IsNull then
       begin
         SQLTemplateUSUAICODDEST.AsInteger := UsuarioCorrente;
         if SQLLocate('CLASSEUSUARIO','USUAICOD','CLASSICOD',IntToStr(UsuarioCorrente)) <> '' then
            SQLTemplateCLASSICOD.AsVariant := StrToInt(SQLLocate('CLASSEUSUARIO','USUAICOD','CLASSICOD',IntToStr(UsuarioCorrente)));
       end;
  end;

  inherited;

  if SQLTemplateTARECATULIZEMAIL.AsString = 'S' then
     EnviaEmail;
end;


procedure TFormCadastroTarefa.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not SQLTemplateTAREDPRAZOMAX.IsNull then
     begin
       pnPrazo.Visible := True;
       if SQLTemplateTAREDPRAZOMAX.Value <> 1 then
          begin
             if SQLTemplateTAREDPRAZOMAX.AsDateTime < Now then
                lblPrazoMaximoConclusao.Font.Color := clRed
             else
                lblPrazoMaximoConclusao.Font.Color := clNavy;
             lblPrazoMaximoConclusao.Caption := FormatDateTime('dd/mm/yyyy hh:mm', SQLTemplateTAREDPRAZOMAX.AsDateTime)
          end
       else
          lblPrazoMaximoConclusao.Caption := 'Indeterminado..';
     end
  else
     pnPrazo.Visible := False;

  lstOutrasInformacoes.Clear;

  if not SQLTemplateTAREDINICIO.IsNull then
     lstOutrasInformacoes.Items.Add('Tarefa Iniciada em : ' + FormatDateTime('dd/mm/yyy hh:mm', SQLTemplateTAREDINICIO.AsDateTime));

  if not SQLTemplateTAREDTERMINO.IsNull then
     lstOutrasInformacoes.Items.Add('Tarefa Concluida em: ' + FormatDateTime('dd/mm/yyy hh:mm', SQLTemplateTAREDTERMINO.AsDateTime));

  if SQLTemplateTARECSTATUS.AsString = 'N' then
     lstOutrasInformacoes.Items.Add('Tarefa Recusada');

  gboOutrasInfo.Visible         := lstOutrasInformacoes.Items.Count > 0;

  mnIniciarTarefa.Enabled       := SQLTemplateTAREDINICIO.IsNull and (SQLTemplateTARECSTATUS.AsString = 'A');
  mnConcluirTarefa.Enabled      := (not mnIniciarTarefa.Enabled) and (SQLTemplateTARECPENDENTE.AsString = 'S') and (SQLTemplateTARECSTATUS.AsString = 'A');
  mnAssociarCliente.Enabled     := SQLTemplateCLIEA13ID.IsNull or SQLTemplatePRCLA13ID.IsNull and (SQLTemplateTARECSTATUS.AsString = 'A');
  if (not mnIniciarTarefa.Enabled) and (SQLTemplateTARECPENDENTE.AsString = 'S') and (SQLTemplateTARECSTATUS.AsString = 'A') then
     begin
        btConcluir.Tag     := 1;
        btConcluir.Caption := 'Concluir';
     end
  else
     begin
        btConcluir.Tag     := 0;
        btConcluir.Caption := 'Iniciar';
     end;

  AcessaCadastroCLiente.Enabled := SQLTemplate.State in dsEditModes;

  Button3.Enabled    := not SQLTemplateHELPA13ID.IsNull or not SQLTemplatePRNEA13ID.IsNull;

  gboAceite.Visible  := SQLTemplateTARECSTATUS.IsNull;

  pnSecundario.Refresh;
end;

procedure TFormCadastroTarefa.AcessaCadastroCLienteClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    begin
      if Pos('Prospect', Application.Title) > 0 then
         begin
            FieldLookup := SQLTEmplate.FieldByName('PRCLA13ID');
            FieldOrigem := 'PRCLA13ID';
            DataSetLookup := SQLClienteProspect;
            CriaFormulario(TFormCadastroClientePropect,'FormCadastroClientePropect',False,True,'Tarefa: ' + SQLTemplateTAREA30TITULO.AsString);
         end
      else
         begin
            FieldLookup := SQLTEmplate.FieldByName('CLIEA13ID');
            FieldOrigem := 'CLIEA13ID';
            DataSetLookup := SQLCliente;
            CriaFormulario(TFormTelaConsultaCliente,'FormTelaConsultaCliente',False,True,'Tarefa: ' + SQLTemplateTAREA30TITULO.AsString);
         end;
    end;
end;

procedure TFormCadastroTarefa.DBHoraLembreteExit(Sender: TObject);
var Hora, Minutos,a,b : word;
begin
  inherited;
  if DBHoraLembrete.Enabled then
    if not (SQLTemplateTAREDLEMBRETE.IsNull) and (DBHoraLembrete.text = '  :  ') then
      begin
        informa('Informe uma hora para o lembrete.');
        DBHoraLembrete.SetFocus;
      end
    else
      begin
        hora := strtoint(copy(DBHoraLembrete.Text,0,2));
        minutos := strtoint(copy(DBHoraLembrete.Text,4,2));
        a := 0;
        b := 0;
        if not IsValidTime(hora,minutos,a,b) then
          begin
            Informa('Informe uma hora válida.');
            DBHoraLembrete.SetFocus;
          end;
      end;

end;

procedure TFormCadastroTarefa.dblClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaCadastroCLiente.Click;
end;

procedure TFormCadastroTarefa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := nil;
  FieldLookup := nil;
  FieldOrigem := '';
  DataSetLookup := nil;
end;

procedure TFormCadastroTarefa.btAtribuirTarefaClick(Sender: TObject);
begin
  inherited;
  DM.CodClasse  := SQLTemplateCLASSICOD.AsString;
  DM.CodUsuario := SQLTemplateUSUAICODDEST.AsString;
  if Application.FindComponent('FormTelaSelecaoUsuarioTarefa') = Nil then
     Application.CreateForm(TFormTelaSelecaoUsuarioTarefa,FormTelaSelecaoUsuarioTarefa);
  FormTelaSelecaoUsuarioTarefa.ShowModal;
  if FormTelaSelecaoUsuarioTarefa.ModalResult = MrOk then
    begin
      if (FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '...') or
         (FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '...') then
        begin
          if FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '...' then
             SQLTemplateUSUAICODDEST.AsInteger := FormTelaSelecaoUsuarioTarefa.SQLUsuariosUSUAICOD.AsInteger;
          if (FormTelaSelecaoUsuarioTarefa.DBLookupComboUsuario.Text <> '...') and (FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '...') then
             SQLTemplateUSUAICODDEST.AsInteger := FormTelaSelecaoUsuarioTarefa.SQLUsuariosUSUAICOD.AsInteger;
          if FormTelaSelecaoUsuarioTarefa.DBLComboGrupoUsusario.Text <> '...' then
             SQLTemplateCLASSICOD.AsInteger := FormTelaSelecaoUsuarioTarefa.SQLClasseCLASSICOD.AsInteger;
        end
      else
        Informa('Não foi selecionado nenhum Destinatário para esta Tarefa.');
    end;

  pnGrupoUsuario.Visible := (not SQLTemplateCLASSICOD.IsNull) or (not SQLTemplateUSUAICODDEST.IsNull);
  btAtribuirTarefa.Visible := (SQLTemplateCLASSICOD.IsNull and SQLTemplateUSUAICODDEST.IsNull);

end;

procedure TFormCadastroTarefa.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  pnGrupoUsuario.Visible := (not SQLTemplateCLASSICOD.IsNull) or (not SQLTemplateUSUAICODDEST.IsNull);
  btAtribuirTarefa.Visible := (SQLTemplateCLASSICOD.IsNull and SQLTemplateUSUAICODDEST.IsNull);

  if not (SQLTemplate.State in dsEditModes) then
     gboCliente.Visible := (not SQLTemplateCLIEA13ID.IsNull) or (not SQLTemplatePRCLA13ID.IsNull);

  SQLTarefaHistorico.Close;
  SQLTarefaHistorico.MacroByName('MFiltro').AsString := ' TAREA13ID = "' + SQLTemplateTAREA13ID.AsString + '"';
  SQLTarefaHistorico.Open;

  if TabSheetProspect.Showing and SQLTemplatePRNEA13ID.IsNull then
     TabSheetDadosPrincipais.Show;

  if TabSheetHelpDesk.Showing and SQLTemplateHELPA13ID.IsNull then
     TabSheetDadosPrincipais.Show;

end;

procedure TFormCadastroTarefa.DBHoraLembreteDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     SQLTemplateTAREHLEMBRETE.AsString := FormatDateTime('hh:mm',Now);
end;

procedure TFormCadastroTarefa.btMenosColClick(Sender: TObject);
begin
  inherited;
  DBCtrlGridHistorico.RowCount := DBCtrlGridHistorico.RowCount - 1;
end;

procedure TFormCadastroTarefa.btMaisColClick(Sender: TObject);
begin
  inherited;
  DBCtrlGridHistorico.RowCount := DBCtrlGridHistorico.RowCount + 1;
end;

procedure TFormCadastroTarefa.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  inherited;
// Verifica se a janela esta sendo chamada de outra...
  if (Pos('Tarefa :', Self.Caption) > 0) then
     if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
        SQLTemplate.MacroByName('MFiltro').AsString := ' TAREA13ID = "' + Copy(Self.Caption, 10, 13) + '"'
     else
        SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + ' and TAREA13ID = "' + Copy(Self.Caption, 10, 23) + '"';

//Verifica qual programa esta chamando a janela e muda o Filtro
  if Pos('Prospect', Application.Title) > 0 then
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"'
       else
          SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + ' and TAREA13MODOTAREFA = "PROSPECT" or TAREA13MODOTAREFA = "GERAL"';
     end
  else
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := ' TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"'
       else
          SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + ' and TAREA13MODOTAREFA = "CALLCENTER" or TAREA13MODOTAREFA = "GERAL"';
     end;
end;

procedure TFormCadastroTarefa.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplateCLASSICOD.IsNull then
     SQLTemplateClasseUsuarioDestino.AsString := SQLLocate('CLASSE','CLASSICOD','CLASSA60DESCRICAO',IntToStr(SQLTemplateCLASSICOD.AsInteger))
  else
     SQLTemplateClasseUsuarioDestino.AsString := '';
  if not SQLTemplateUSUAICODDEST.IsNull then
     SQLTemplateUsuarioDestino.AsString := SQLLocate('USUARIO','USUAICOD','USUAA60LOGIN',IntToStr(SQLTemplateUSUAICODDEST.AsInteger))
  else
     SQLTemplateUsuarioDestino.AsString := '';

  if Pos('Prospect', Application.Title) > 0 then
     begin
        if DM.ProcuraRegistro('PROSPECTCLIENTE',['PRCLA13ID'],[SQLTemplatePRCLA13ID.AsString],1) then
           begin
              SQLTemplateClienteNome.AsString := DM.SQLTemplate.FieldByName('PRCLA60RAZAOSOC').AsString;
              SQLTemplateClienteCidade.AsString := DM.SQLTemplate.FieldByName('PRCLA60CIDCOM').AsString;
              SQLTemplateClienteUF.AsString := DM.SQLTemplate.FieldByName('PRCLA2UFCOM').AsString;
           end;
     end
  else
     begin
        if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.AsString],1) then
           begin
              SQLTemplateClienteNome.AsString := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
              SQLTemplateClienteCidade.AsString := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
              SQLTemplateClienteUF.AsString := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
           end;
     end;

end;

procedure TFormCadastroTarefa.btHistoricoClick(Sender: TObject);
begin
  inherited;
  DM.HistoricoHorario := SQLTipoTarefaTPTACINTEXT.AsString = 'E';
  DSMasterSys := DSTemplate;
  Application.CreateForm(TFormTelaTarefaHistorico,FormTelaTarefaHistorico);
  if not FormTelaTarefaHistorico.SQLHistoricoTarefa.Active then
     FormTelaTarefaHistorico.SQLHistoricoTarefa.Active := True;
  FormTelaTarefaHistorico.SQLHistoricoTarefa.Append;
  FormTelaTarefaHistorico.ShowModal;
  if FormTelaTarefaHistorico.ModalResult = MrOk then
     begin
        FormTelaTarefaHistorico.SQLHistoricoTarefa.Post;
        SQLTarefaHistorico.Close;
        SQLTarefaHistorico.Open;
     end
  else
     FormTelaTarefaHistorico.SQLHistoricoTarefa.Cancel;

  FormTelaTarefaHistorico.Close;
  FormTelaTarefaHistorico.Free;
  DSMasterSys := Nil;

end;

procedure TFormCadastroTarefa.mnIniciarTarefaClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;
  if SQLTemplateUSUAICOD.IsNull then
     Informa('Não é permitido iniciar uma tarefa sem um usuário associado.')
  else
    begin
      if Application.FindComponent('FormTelaDataConclusao') = Nil then
         Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
      FormTelaDataConclusao.ShowModal;
      if FormTelaDataConclusao.ModalResult = MrOk then
         SQLTemplateTAREDINICIO.AsDateTime := FormTelaDataConclusao.HoraConclusao.DateTime;
      FormTelaDataConclusao.Close;
      FormTelaDataConclusao.Free;
    end;
end;

procedure TFormCadastroTarefa.mnConcluirTarefaClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;

   if SQLTemplateTAREDINICIO.IsNull then
      begin
        Informa('Você não pode concluir uma tarefa não iniciada.');
        SQLTemplateTARECPENDENTE.AsString := 'S';
        Abort;
      end
    else
      begin
        Application.CreateForm(TFormTelaDataConclusao,FormTelaDataConclusao);
        FormTelaDataConclusao.ShowModal;
        if FormTelaDataConclusao.ModalResult = MrOk then
          begin
            SQLTemplateTAREDTERMINO.AsDateTime := FormTelaDataConclusao.HoraConclusao.DateTime;
            FormTelaDataConclusao.Close;
          end
        else
          if FormTelaDataConclusao.ModalResult = MrCancel then
             begin
               SQLTemplateTARECPENDENTE.AsString := 'S';
               Abort;
             end;
      end;

  SQLTemplateTARECPENDENTE.AsString := 'N';
end;

procedure TFormCadastroTarefa.DBCLTpTarefaClick(Sender: TObject);
begin
  inherited;
  Button5.Enabled := SQLTipoTarefaTPTACCHECKLIST.AsString = 'S';
  if SQLTipoTarefaTPTACCHECKLIST.AsString = 'S' then
     SQLTemplateTAREA1000CHECKLIST.AsString := SQLTipoTarefaTPTAA1000CHECKLIST.AsString;

end;

procedure TFormCadastroTarefa.btAddCheckListClick(Sender: TObject);
begin
  inherited;
  SQLTemplateTAREA1000CHECKLIST.AsString := SQLTemplateTAREA1000CHECKLIST.AsString + Char(#13) +
                                            mmCheckList.Text;
end;

procedure TFormCadastroTarefa.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  SQLCount.Close;
  SQLCount.SQL.Text := 'delete from TAREFAHISTORICO where TAREA13ID = "' + SQLTemplateTAREA13ID.AsString + '"';
  inherited;
  SQLCount.ExecSQL;
end;

procedure TFormCadastroTarefa.mnAssociarClienteClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;
  gboCliente.Visible := True;
  dblCliente.SetFocus;
end;

procedure TFormCadastroTarefa.mnImprimirTarefaClick(Sender: TObject);
Var I : Integer;
begin
  inherited;
  try
     tblImpressaoTarefa.Close;
     tblImpressaoTarefa.DeleteTable;
     tblImpressaoTarefa.CreateTable;
  except
     tblImpressaoTarefa.CreateTable;
  end;

  try
     tblImpressaoTarefaHistorico.Close;
     tblImpressaoTarefaHistorico.DeleteTable;
     tblImpressaoTarefaHistorico.CreateTable;
  except
     tblImpressaoTarefaHistorico.CreateTable;
  end;


  if not tblImpressaoTarefa.Active then tblImpressaoTarefa.Active := True;
  tblImpressaoTarefa.Append;
  for I := 0 to SQLTemplate.FieldCount - 1 do
      tblImpressaoTarefa.FieldByName(SQLTemplate.Fields.Fields[I].FieldName).AsVariant := SQLTemplate.Fields.Fields[I].AsVariant;
  tblImpressaoTarefa.Post;
  tblImpressaoTarefa.Close;

  BatchMove.Destination := tblImpressaoTarefaHistorico;
  BatchMove.Source      := SQLTarefaHistorico;
  BatchMove.Mode        := batCopy;
  BatchMove.Execute;

  tblImpressaoTarefa.AddIndex('TAREA13ID_INDEX','TAREA13ID',[IXPRIMARY]);
  tblImpressaoTarefaHistorico.AddIndex('TRHTICOD_INDEX','TAREA13ID;TRHTICOD',[IXPRIMARY]);

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Tarefa.rpt' ;
  Report.WindowStyle.Title := 'Tarefa : ' + SQLTemplateTAREA13ID.AsString;
  Report.ReportTitle       := 'Tarefa : ' + SQLTemplateTAREA13ID.AsString;

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'OutrasInfo';
  if lstOutrasInformacoes.Items.Count > 0 then
     Report.Formulas.Formula.Text := '"Outras Informações:"';
  For I := 0 to lstOutrasInformacoes.Items.Count - 1 do
     if Report.Formulas.Formula.Text = '' then
        Report.Formulas.Formula.Text := '"' + lstOutrasInformacoes.Items.Strings[I] + '"'
     else
        Report.Formulas.Formula.Text := Report.Formulas.Formula.Text + ' + chr(13) + "' + lstOutrasInformacoes.Items.Strings[I] + '"';
  Report.Formulas.Send;

  Report.Execute;
end;

procedure TFormCadastroTarefa.ReportError(Sender: TObject;
  const ErrorNum: Smallint; const ErrorString: String;
  var IgnoreError: TCrBoolean);
begin
  inherited;
  if ErrorNum = 114 then
     begin
       Informa('Relatório não encontrado no Diretório "' + DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '"');
       IgnoreError := cTrue;
       Abort;
     end;
end;

procedure TFormCadastroTarefa.btConcluirClick(Sender: TObject);
begin
  inherited;
  if TWinControl(Sender).Tag = 1 then
     mnConcluirTarefa.Click
  else
     mnIniciarTarefa.Click;
end;

procedure TFormCadastroTarefa.btAceitarClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;
  SQLTemplateTARECSTATUS.AsString := 'A';
end;

procedure TFormCadastroTarefa.btRecusarClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     SQLTemplate.Edit;
  SQLTemplateTARECSTATUS.AsString := 'N';
end;

procedure TFormCadastroTarefa.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateUSUAICODDEST.AsInteger <> UsuarioCorrente then
     begin
       Informa('O Usuário Logado não é o Autor da Tarefa.' + Char(13) +
               'Assim não pode altera-la.');
       Abort;
     end;
end;

procedure TFormCadastroTarefa.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLTemplateTARECSTATUS.AsString = 'A' then
     DBGridLista.Canvas.Font.Color := clWhite;

  if SQLTemplateTARECSTATUS.AsString = 'N' then
     DBGridLista.Canvas.Font.Color := $004A4AFF;
     
  if SQLTemplateTARECSTATUS.IsNull then
     DBGridLista.Canvas.Font.Color := clGreen;

  if SQLTemplateUSUAICODDEST.AsInteger = UsuarioCorrente then
     DBGridLista.Canvas.Font.Style := []
  else
     DBGridLista.Canvas.Font.Style := [fsItalic];

  DBGridLista.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCadastroTarefa.Button1Click(Sender: TObject);
begin
  inherited;
  if TComponent(Sender).Name = 'Button3' then
     begin
        if not SQLTemplateHELPA13ID.IsNull then
           begin
             if not SQLAtendimento.Active then SQLAtendimento.Active := True;
             TabSheetHelpDesk.Show;
           end
        else
          if not SQLTemplatePRNEA13ID.IsNull then
             begin
               if not SQLProspect.Active then SQLProspect.Active := True;
               TabSheetProspect.Show;
             end;
     end;
  if TComponent(Sender).Name = 'Button4' then
     TabSheetCheckList.Show;
  if TComponent(Sender).Name = 'Button5' then
     TabSheetHistorico.Show;
end;

procedure TFormCadastroTarefa.lstOutrasInformacoesDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
  inherited;
  if Pos('Recusada', TListBox(Control).Items.Strings[Index]) > 0 then
     TListBox(Control).Canvas.Font.Color := clRed
  else
     TListBox(Control).Canvas.Font.Color := clBlack;

  TListBox(Control).Canvas.TextRect(Rect, Rect.Top, Rect.Left, TListBox(Control).Items.Strings[Index]);;
end;

end.
