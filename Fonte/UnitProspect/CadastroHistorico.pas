unit CadastroHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, ToolEdit, RXDBCtrl, DBCtrls, DB, DBTables,
  DBActns, ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, RxLookup, RxDBComb,
  dbcgrids, DateUtils;

type
  TFormCadastroHistorico = class(TFormCadastroTEMPLATE)
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplatePCHTICOD: TIntegerField;
    SQLTemplatePCHTDCADASTRO: TDateTimeField;
    SQLTemplatePCHTTHISTORICO: TMemoField;
    SQLTemplatePCHTDPROXCONT: TDateTimeField;
    SQLTemplatePCHTA60CONTATO: TStringField;
    SQLTemplatePCHTA60NOMVEND: TStringField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    SQLClientePRCLA13ID: TStringField;
    SQLClientePRCLA60RAZAOSOC: TStringField;
    SQLClientePRCLA60ENDCOM: TStringField;
    SQLClientePRCLA60CIDCOM: TStringField;
    SQLClientePRCLA60BAICOM: TStringField;
    SQLClientePRCLA2UFCOM: TStringField;
    SQLClientePRCLA8CEPCOM: TStringField;
    gboContato: TGroupBox;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    SQLTemplatePRCLA60CIDCOM: TStringField;
    SQLTemplatePRCLA2UFCOM: TStringField;
    SQLClientePRCLDDTCADASTRO: TDateTimeField;
    SQLNegocio: TRxQuery;
    dsSQLNegocio: TDataSource;
    SQLTemplatePRNEDEMISSAO2: TDateField;
    SQLTemplatePRNEN2VALOR2: TFloatField;
    SQLTemplatePRCLA8CEPCOM: TStringField;
    SQLTemplatePRCLA60BAICOM: TStringField;
    SQLTemplatePRCLA60ENDCOM: TStringField;
    SQLStatus: TRxQuery;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSA60DESCR: TStringField;
    SQLStatusPRNSCPEDEMOTIVO: TStringField;
    dsSQLStatus: TDataSource;
    SQLTemplatePRNSICOD: TIntegerField;
    SQLTemplatePRNSA60DESCR: TStringField;
    gboNegocio: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    CboNegocioHistorico: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    gboCliente: TGroupBox;
    CboClienteHistorico: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    pnHistoricoAtual: TPanel;
    pnCabecalhoHistoricoAtual: TPanel;
    Label5: TLabel;
    dbeNomeContato: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnEsquertoInferior: TPanel;
    SQLHistoricoAnterior: TRxQuery;
    dsSQLHistoricoAnterior: TDataSource;
    SQLHistoricoAnteriorPCHTDCADASTRO: TDateTimeField;
    SQLHistoricoAnteriorPCHTTHISTORICO: TMemoField;
    SQLHistoricoAnteriorPCHTA60CONTATO: TStringField;
    pnContatoAnterior: TPanel;
    dbcHitoricoAnterior: TDBCtrlGrid;
    DBMemo2: TDBMemo;
    pnCabHistAnterior: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Panel4: TPanel;
    btAgendar: TSpeedButton;
    SQLTemplatePRCLA60RAZAOSOC: TStringField;
    SQLTemplatePRNEA100DESCRICAO: TStringField;
    SQLGeral: TRxQuery;
    SQLClientePRCLDULTCONT: TDateTimeField;
    SQLClientePRCLDPROXCONT: TDateTimeField;
    SQLContatosCliente: TRxQuery;
    dsSQLContatosCliente: TDataSource;
    edlContato: TRxLookupEdit;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTarefa: TRxQuery;
    SQLTarefaTAREA13ID: TStringField;
    SQLTarefaEMPRICOD: TIntegerField;
    SQLTarefaTERMICOD: TIntegerField;
    SQLTarefaTAREICOD: TIntegerField;
    SQLTarefaTAREA30TITULO: TStringField;
    SQLTarefaTAREDDIGITACAO: TDateTimeField;
    SQLTarefaTAREDLEMBRETE: TDateTimeField;
    SQLTarefaTAREHLEMBRETE: TStringField;
    SQLTarefaTARETSOLICITACAO: TMemoField;
    SQLTarefaTARECPENDENTE: TStringField;
    SQLTarefaTAREDINICIO: TDateTimeField;
    SQLTarefaTAREDTERMINO: TDateTimeField;
    SQLTarefaTPTAICOD: TIntegerField;
    SQLTarefaCLIEA13ID: TStringField;
    SQLTarefaPRCLA13ID: TStringField;
    SQLTarefaHELPA13ID: TStringField;
    SQLTarefaPRNEA13ID: TStringField;
    SQLTarefaTAREDPRAZOMAX: TDateTimeField;
    SQLTarefaTAREDULTAGEND: TDateTimeField;
    SQLTarefaTAREA60MOTIVOADIO: TStringField;
    SQLTarefaUSUAICOD: TIntegerField;
    SQLTarefaUSUAICODDEST: TIntegerField;
    SQLTarefaCLASSICOD: TIntegerField;
    SQLTarefaTAREA1000CHECKLIST: TMemoField;
    SQLTarefaTARECATULIZEMAIL: TStringField;
    SQLTarefaREGISTRO: TDateTimeField;
    SQLTarefaPENDENTE: TStringField;
    dsSQLTarefa: TDataSource;
    pnProxCont: TPanel;
    lblProxContato: TLabel;
    dtProxContato: TDBDateEdit;
    SQLTipoTarefa: TQuery;
    SQLTipoTarefaTPTAICOD: TIntegerField;
    SQLTipoTarefaTPTAA30DESCRICAO: TStringField;
    SQLTipoTarefaTPTACINTEXT: TStringField;
    SQLTipoTarefaTPTACCHECKLIST: TStringField;
    SQLTipoTarefaTPTAA13PRAZOMAX: TStringField;
    SQLTipoTarefaTPTAA1000CHECKLIST: TMemoField;
    DSSQLTipoTarefa: TDataSource;
    lblTipoTarefa: TLabel;
    DBCLTpTarefa: TDBLookupComboBox;
    SQLTarefaTAREA13MODOTAREFA: TStringField;
    SQLTemplatePCHTA13ID: TStringField;
    Panel6: TPanel;
    Label1: TLabel;
    DBMemo3: TDBMemo;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    SQLTemplatePRNEA13ID: TStringField;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSSQLVendedorDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure AtualizaHistoricoAnterior;
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure CboClienteHistoricoChange(Sender: TObject);
    procedure CboNegocioHistoricoChange(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure dsSQLClienteDataChange(Sender: TObject; Field: TField);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure edlContatoExit(Sender: TObject);
    procedure SQLTarefaBeforePost(DataSet: TDataSet);
    procedure SQLTarefaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroHistorico: TFormCadastroHistorico;

implementation

uses DataModulo, VarSYS, UnitLibrary, FormResources, CadastroTarefa, TelaFechamentoNegocio;

{$R *.dfm}

procedure TFormCadastroHistorico.FormCreate(Sender: TObject);
begin
  TABELA := 'PRCLHISTORICO';
  if not SQLVendedor.Active           then SQLVendedor.Active          := True;
  if not SQLCliente.Active            then SQLCliente.Active           := True;
  if not SQLNegocio.Active            then SQLNegocio.Active           := True;
  if not SQLHistoricoAnterior.Active  then SQLHistoricoAnterior.Active := True;
  if not SQLContatosCliente.Active    then SQLContatosCliente.Active   := True;
  if not SQLTipoTarefa.Active         then SQLTipoTarefa.Active        := True;

  if DM.TipoHistorico = 'Neg' then
     begin
       SQLTemplate.Close;
       SQLTemplate.SQL.Add(' and PRNEA13ID =:PRNEA13ID ');
       gboNegocio.Visible := True;
       CboNegocioHistorico.ReadOnly := True;
       CboClienteHistorico.ReadOnly := True;
       CboNegocioHistorico.Color   := $00E0E0E0;
       CboClienteHistorico.Color   := $00E0E0E0;
       DBGridLista.Columns.Items[1].Field := SQLTemplatePRNEA100DESCRICAO;
     end
  else
    if DM.TipoHistorico = 'Cli' then
       begin
         SQLTemplate.Close;
         SQLTemplate.SQL.Add(' and (PRCLA13ID =:PRCLA13ID) and (PRNEA13ID is null) ');
         gboNegocio.Visible := False;
         CboClienteHistorico.ReadOnly := True;
         CboClienteHistorico.Color   := $00E0E0E0;
         DBGridLista.Columns.Items[1].Field := SQLTemplatePRCLA60RAZAOSOC;
       end;
  inherited;
end;

procedure TFormCadastroHistorico.SQLTemplateBeforePost(DataSet: TDataSet);
Var Nova : TDateTime;
begin
  inherited;
  SQLTemplatePCHTDCADASTRO.AsDateTime := Now;
  SQLTemplateEMPRICOD.AsInteger       := EmpresaCorrente;

  //Se DataProximo Contato <> nulo então Gravar Agendamento
  if not (SQLTemplatePCHTDPROXCONT.IsNull) then
     begin
        if not SQLTarefa.Active then SQLTarefa.Active := True;

        SQLTarefa.Append;
        if not SQLTemplatePRNEA13ID.IsNull then
           SQLTarefaTAREA30TITULO.AsString := 'TAREFA NEGOCIO: ' + SQLTemplatePRNEA13ID.AsString
        else
          if not SQLTemplatePRCLA13ID.IsNull then
             SQLTarefaTAREA30TITULO.AsString := 'TAREFA CLIENTE: ' + SQLTemplatePRCLA13ID.AsString;
        SQLTarefaTAREDDIGITACAO.AsDateTime := Now;
        SQLTarefaTARETSOLICITACAO.AsString := 'CONTACTAR SRº(ª) ' + SQLTemplatePCHTA60CONTATO.AsString + Char(#13) +
                                              'REFERENTE: ' + SQLTemplatePCHTTHISTORICO.AsString;
        SQLTarefaTAREDPRAZOMAX.AsDateTime  := SQLTemplatePCHTDPROXCONT.AsDateTime;
        SQLTarefaTAREDLEMBRETE.AsDateTime  := SQLTemplatePCHTDPROXCONT.AsDateTime;
        SQLTarefaPRCLA13ID.AsVariant       := SQLTemplatePRCLA13ID.AsVariant;
        SQLTarefaPRNEA13ID.AsVariant       := SQLTemplatePRNEA13ID.AsVariant;
        SQLTarefaTAREHLEMBRETE.AsString    := '08:00';
        SQLTarefaUSUAICOD.AsInteger        := UsuarioCorrente;
        SQLTarefaUSUAICODDEST.AsInteger    := UsuarioCorrente;
        SQLTarefaTPTAICOD.AsInteger        := SQLTipoTarefaTPTAICOD.AsInteger;
        SQLTarefaTAREA1000CHECKLIST.AsString := SQLTipoTarefaTPTAA1000CHECKLIST.AsString;
        SQLTarefaTARECATULIZEMAIL.AsString   := 'N';
        if SQLLocate('CLASSEUSUARIO','USUAICOD','CLASSICOD', IntToStr(UsuarioCorrente)) <> '' then
           SQLTarefaCLASSICOD.AsString        := SQLLocate('CLASSEUSUARIO','USUAICOD','CLASSICOD', IntToStr(UsuarioCorrente));
        if not SQLTipoTarefaTPTAA13PRAZOMAX.IsNull then
          begin
            if SQLTipoTarefaTPTAA13PRAZOMAX.AsString <> '1' then  // 0 = Imediato 1 = Indeterminado
              begin
                Nova := IncHour(Now, SQLTipoTarefaTPTAA13PRAZOMAX.AsInteger);
                SQLTarefaTAREDPRAZOMAX.AsDateTime := Nova;
              end
            else
                SQLTarefaTAREDPRAZOMAX.value := 0;
          end;
        SQLTarefa.Post;

        SQLTemplatePCHTTHISTORICO.AsString  :=
                     SQLTemplatePCHTTHISTORICO.AsString + Char(#13) +
                     '-----------------------------------------------------------' + Char(#13) +
                     'PRÓXIMO CONTATO AGENDADO PARA: ' + FormatDateTime('dd/mm/yyyy hh:mm', SQLTemplatePCHTDPROXCONT.AsDateTime) + Char(#13) +
                     'ID TAREFA : ' + SQLTarefaTAREA13ID.AsString;
     end;
end;

procedure TFormCadastroHistorico.DSSQLVendedorDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     SQLTemplatePCHTA60NOMVEND.AsString := SQLVendedorVENDA60NOME.AsString;
end;

procedure TFormCadastroHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.TipoHistorico := '';
  if DSMasterSys <> Nil then DSMasterSys := Nil;
end;

procedure TFormCadastroHistorico.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
  if DM.TipoHistorico = 'Neg' then
     begin
        SQLTemplatePRNEA13ID.AsString      := DSMasterTemplate.DataSet.FieldByName('PRNEA13ID').AsString;
        SQLTemplatePRCLA13ID.AsString      := DSMasterTemplate.DataSet.FieldByName('PRCLA13ID').AsString;
        SQLTemplateVENDICOD.AsVariant      := DSMasterTemplate.DataSet.FieldByName('VENDICOD').AsVariant;
        SQLTemplatePCHTA60CONTATO.AsString := DSMasterTemplate.DataSet.FieldByName('PRNEA60CONTATO').AsString;
        if SQLTemplatePCHTA60CONTATO.IsNull then
           SQLTemplatePCHTA60CONTATO.FocusControl
        else
           SQLTemplatePCHTTHISTORICO.FocusControl;
     end
  else
    if DM.TipoHistorico = 'Cli' then
       SQLTemplatePRCLA13ID.AsString := DSMasterTemplate.DataSet.FieldByName('PRCLA13ID').AsString;

  if (DM.TipoHistorico <> '') and (TabSheetDadosPrincipais.Showing) then
     SQLTemplatePCHTA60CONTATO.FocusControl
  else
     SQLTemplatePRCLA13ID.FocusControl;
end;

procedure TFormCadastroHistorico.AtualizaHistoricoAnterior;
begin
  inherited;
  if not SQLTemplatePRCLA13ID.IsNull then
     begin
        SQLHistoricoAnterior.Close;

        if (CboClienteHistorico.Text <> '...') and ((CboNegocioHistorico.Text <> '...') and (gboNegocio.Visible)) then
           SQLHistoricoAnterior.MacroByName('MFiltro').AsString := '( PRCLA13ID = "' + CboClienteHistorico.KeyValue + '"' +
                                                                   ' and PRNEA13ID = "' + CboNegocioHistorico.KeyValue + '")'
        else
           if (CboClienteHistorico.Text <> '...') then
              SQLHistoricoAnterior.MacroByName('MFiltro').AsString := '( PRCLA13ID = "' + CboClienteHistorico.KeyValue + '")';

        if not SQLTemplatePCHTICOD.IsNull then
           SQLHistoricoAnterior.MacroByName('MFiltro').AsString := SQLHistoricoAnterior.MacroByName('MFiltro').AsString + ' and PCHTICOD <> ' +
                                                                   SQLTemplatePCHTICOD.AsString + ' and PCHTICOD < ' + SQLTemplatePCHTICOD.AsString;

        SQLHistoricoAnterior.Open;
     end;
end;

procedure TFormCadastroHistorico.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormCadastroHistorico.SQLTemplateAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (DM.TipoHistorico <> '') and (TabSheetDadosPrincipais.Showing) then
     dbeNomeContato.SetFocus;
end;

procedure TFormCadastroHistorico.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not CboNegocioHistorico.IsDropDown and not CboClienteHistorico.IsDropDown then
     AtualizaHistoricoAnterior;
end;

procedure TFormCadastroHistorico.CboClienteHistoricoChange(
  Sender: TObject);
begin
  inherited;
  AtualizaHistoricoAnterior;
  if CboNegocioHistorico.KeyValue = Null then
     begin
        SQLTemplatePCHTA60CONTATO.AsString := '';
        SQLTemplateVENDICOD.AsVariant      := Null;
     end;
end;

procedure TFormCadastroHistorico.CboNegocioHistoricoChange(
  Sender: TObject);
begin
  inherited;
  AtualizaHistoricoAnterior;
  if (SQLTemplate.State in dsEditModes) and not (SQLCliente.State in dsEditModes) then
     begin
        SQLTemplateVENDICOD.AsVariant      := SQLNegocio.FieldByName('VENDICOD').AsVariant;
        SQLTemplatePCHTA60CONTATO.AsString := SQLNegocio.FieldByName('PRNEA60CONTATO').AsString;
     end;
end;

procedure TFormCadastroHistorico.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
//Atualiza Datas no Cliente
  if (CboClienteHistorico.Text <> '...') and (CboNegocioHistorico.Text = '') then
     begin
        SQLCliente.Edit;
        SQLClientePRCLDULTCONT.AsDateTime := Now;

        SQLGeral.Close;
        SQLGeral.SQL.Text := 'select Max(PCHTDPROXCONT) ProxCont from PRCLHISTORICO where PRCLA13ID = "' + SQLClientePRCLA13ID.AsString + '"';
        SQLGeral.Open;
        SQLClientePRCLDPROXCONT.AsVariant := SQLGeral.FieldByName('ProxCont').AsVariant;
        SQLCliente.Post;
     end;
  // Removido Motivo: Sem utilidade para a Redimix...
  // Adilson 22/09/2004
  {   if not (SQLTemplatePCHTDPROXCONT.IsNull) then
      if Application.MessageBox('Deseja Acessar o Cadastro de Tarefas para configurar a tarefa do próximo contato?', 'Configurar Tarefa', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_SYSTEMMODAL) = idYes then
         CriaFormulario(TFormCadastroTarefa,'FormCadastroTarefa',False, False, 'Tarefa : ' + SQLTarefaTAREA13ID.AsString);}

//     Application.CreateForm(TFormTelaFechamentoNegocio,FormTelaFechamentoNegocio);
//     FormTelaFechamentoNegocio.ShowModal;
end;

procedure TFormCadastroHistorico.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  Informa('Históricos não podem ser alterados.');
  Abort;
  inherited;  
end;

procedure TFormCadastroHistorico.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  Informa('Históricos não podem ser excluidos.');
  Abort;
  inherited;
end;

procedure TFormCadastroHistorico.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if DM.TipoHistorico = 'Cli' then
     edlContato.Visible     := (SQLTemplate.State in dsEditModes);

  btAgendar.Enabled := (SQLTemplate.State in dsEditModes);
end;

procedure TFormCadastroHistorico.dsSQLClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not SQLTemplatePRCLA13ID.IsNull then
     begin
        SQLNegocio.Close;
        SQLNegocio.MacroByName('MFiltro').AsString := ' PRCLA13ID = "' + SQLTemplatePRCLA13ID.AsString + '"';
        SQLNegocio.Open;
     end;
end;

procedure TFormCadastroHistorico.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DM.TipoHistorico = 'Cli' then
     if not SQLTemplatePCHTA60CONTATO.IsNull then
         edlContato.Text := SQLTemplatePCHTA60CONTATO.AsString
     else
         edlContato.Text := '';
  DBCLTpTarefa.Visible := SQLTemplate.State in dsEditModes;
  lblTipoTarefa.Visible := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroHistorico.edlContatoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in dsEditModes) and (DM.TipoHistorico = 'Cli') then
     SQLTemplatePCHTA60CONTATO.AsString := edlContato.Text;
end;

procedure TFormCadastroHistorico.SQLTarefaBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLTarefaPENDENTE.Value := 'S';
  SQLTarefaREGISTRO.Value := Now;
  DM.CodigoAutomatico('TAREFA',dsSQLTarefa,SQLTarefa,3,0);
end;

procedure TFormCadastroHistorico.SQLTarefaNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTarefaEMPRICOD.AsInteger      := EmpresaCorrente;
  SQLTarefaUSUAICOD.AsInteger      := UsuarioCorrente;
  SQLTarefaTERMICOD.AsInteger      := TerminalCorrente;
  SQLTarefaTARECPENDENTE.AsString  := 'S';
  if Pos('Prospect', Application.Title) > 0 then
     SQLTarefaTAREA13MODOTAREFA.AsString := 'PROSPECT'
  else
     SQLTarefaTAREA13MODOTAREFA.AsString := 'CALLCENTER';
end;

end.
