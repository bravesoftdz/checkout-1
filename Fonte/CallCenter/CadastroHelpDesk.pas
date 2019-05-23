unit CadastroHelpDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, DateUtils, RxDBComb, dbcgrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroHelpDesk = class(TFormCadastroTEMPLATE)
    SQLTemplateHELPA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateHELPICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateHELPCCONTATO: TStringField;
    SQLTemplateHELPDINICIO: TDateTimeField;
    SQLTemplateHELPCTIPO: TStringField;
    SQLTemplateTPHPICOD: TIntegerField;
    SQLTemplateHELPCNIVEL: TStringField;
    SQLTemplateHELPDTERMINO: TDateTimeField;
    SQLTemplateHELPCPERGUNTACHAVE: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    EditContato: TDBEdit;
    PanelSolicitacao: TPanel;
    SQLTemplateHELPTSOLICITACAO: TMemoField;
    a: TMemoField;
    SQLTemplatePRODICOD: TIntegerField;
    DBEdit1: TDBEdit;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLClienteProduto: TRxQuery;
    DSSQLClienteProduto: TDataSource;
    SQLClienteProdutoCLIEA13ID: TStringField;
    SQLClienteProdutoPRODICOD: TIntegerField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    Label5: TLabel;
    Timer: TTimer;
    SQLClienteProdutoPRODA60DESCR: TStringField;
    DBComboProduto: TRxDBLookupCombo;
    PanelBottom: TPanel;
    Label6: TLabel;
    MemoPergunta: TDBMemo;
    LabelTempo: TLabel;
    ComboTipoHelp: TRxDBLookupCombo;
    Label7: TLabel;
    SQLTipoHelp: TRxQuery;
    DSSQLTipoHelp: TDataSource;
    SQLTipoHelpTPHPICOD: TIntegerField;
    SQLTipoHelpTPHPA60DESCR: TStringField;
    SQLTipoHelpTPHPCGERATAREFA: TStringField;
    SQLClienteCLHPDCADASTRO: TDateTimeField;
    SQLClienteCLHPDFIRSTHELP: TDateTimeField;
    SQLClienteCLHPDLASTHELP: TDateTimeField;
    SQLClienteCLHPINROHELP: TIntegerField;
    SQLClienteCLHPDFIRSTRESET: TDateTimeField;
    SQLClienteCLHPDLASTRESET: TDateTimeField;
    SQLClienteCLHPINRORESETS: TIntegerField;
    SQLClienteCLHPTDADOSTEC: TMemoField;
    PainelPesquisa: TPanel;
    DSSQLHelp: TDataSource;
    PanelDadosPesquisa: TPanel;
    PainelSolucao: TPanel;
    PanelSolucao: TPanel;
    Label4: TLabel;
    MemoSolucao: TDBMemo;
    PainelPrioridadeNivel: TPanel;
    Label8: TLabel;
    DBComboNivelHelp: TRxDBComboBox;
    PainelSolicitacao: TPanel;
    MemoSolicitacao: TDBMemo;
    Label3: TLabel;
    SplitterDeCima: TSplitter;
    Panel4: TPanel;
    SplitterDeBaixo: TSplitter;
    DBGridResultPesquisa: TDBGrid;
    Panel6: TPanel;
    CheckTipoPesquisa: TCheckBox;
    BtPesuisaOK: TSpeedButton;
    PesquisaPalavra: TEdit;
    Label9: TLabel;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLHelp: TRxQuery;
    SQLHelpHELPA13ID: TStringField;
    SQLHelpEMPRICOD: TIntegerField;
    SQLHelpTERMICOD: TIntegerField;
    SQLHelpHELPICOD: TIntegerField;
    SQLHelpCLIEA13ID: TStringField;
    SQLHelpHELPCCONTATO: TStringField;
    SQLHelpHELPDINICIO: TDateTimeField;
    SQLHelpHELPTSOLICITACAO: TMemoField;
    SQLHelpHELPTSOLUCAO: TMemoField;
    SQLHelpHELPCTIPO: TStringField;
    SQLHelpTPHPICOD: TIntegerField;
    SQLHelpHELPCNIVEL: TStringField;
    SQLHelpHELPDTERMINO: TDateTimeField;
    SQLHelpHELPCPERGUNTACHAVE: TStringField;
    SQLHelpPRODICOD: TIntegerField;
    SQLHelpPENDENTE: TStringField;
    SQLHelpREGISTRO: TDateTimeField;
    BtEsconder: TSpeedButton;
    TabSheetHistorico: TTabSheet;
    DBCtrlGrid: TDBCtrlGrid;
    pnDBControlClient: TPanel;
    dsSQLHistorico: TDataSource;
    SQLHistorico: TRxQuery;
    SQLHistoricoHELPTSOLICITACAO: TMemoField;
    SQLHistoricoHELPTSOLUCAO: TMemoField;
    SQLHistoricoHELPCTIPO: TStringField;
    SQLHistoricoTPHPICOD: TIntegerField;
    SQLHistoricoHELPCNIVEL: TStringField;
    SQLHistoricoTPHPA60DESCR: TStringField;
    SQLHistoricoHELPDINICIO: TDateTimeField;
    SQLHistoricoHELPDTERMINO: TDateTimeField;
    pnTop: TPanel;
    btnLinhaUp: TSpeedButton;
    btnLinhaDown: TSpeedButton;
    pnDBControlBottom: TPanel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    SQLTemplateHELPHTEMPOATEND: TDateTimeField;
    Panel7: TPanel;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    Panel8: TPanel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    mnGerarTarefa: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure EditContatoExit(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure ComboProdutoExit(Sender: TObject);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure TimerTimer(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DBComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure AtualizaDadosClientes(IDCliente : String);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure PesquisaPalavraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtPesuisaOKClick(Sender: TObject);
    procedure BtEsconderClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnLinhaUpClick(Sender: TObject);
    procedure btnLinhaDownClick(Sender: TObject);
    procedure DBGridResultPesquisaDblClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure mnGerarTarefaClick(Sender: TObject);
    procedure PopupMenuDiversosPopup(Sender: TObject);
  private
    { Private declarations }
    ParametroInterno : String;
  public
  Tempo : TDateTime;
    { Public declarations }
  end;

var
  FormCadastroHelpDesk: TFormCadastroHelpDesk;
  KeyCharsSet: set of Char = [ '.', ',', '''', ';', ':', '?', '>', ' ',#13,#10,#9,'´', '`','!'];
implementation

uses UnitLibrary, TelaDadosCliente, DataModulo,
  FormResources, TelaConsultaAtendimento,
  Principal, VarSYS, TelaCadastroTarefa, TelaPesquisaChave,
  CallCenterLibrary;

{$R *.dfm}

procedure TFormCadastroHelpDesk.FormCreate(Sender: TObject);
begin
  inherited;
  PainelSolucao.Height := 88;
  Tabela := 'HELPDESK';
  if not SQLTipoHelp.Active then SQLTipoHelp.Open;
end;

procedure TFormCadastroHelpDesk.EditContatoExit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
  if EditContato.Text = '' then
    begin
      Informa('Por favor informe o contato do cliente antes de prosseguir!');
      EditContato.SetFocus;
    end;
end;

procedure TFormCadastroHelpDesk.SQLTemplateAfterInsert(DataSet: TDataSet);
label a;
begin
  inherited;
  //SELECIONA O CLIENTE
  Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
  a:
  FormTelaDadosCliente.ShowModal;
  if FormTelaDadosCliente.ModalResult = MrOk then
    begin
      inherited;
      if FormTelaDadosCliente.ComboCliente.Text = '...' then
        begin
           Informa('Você deve escolher um cliente antes de iniciar o atendiemtno.');
           goto a;
        end
      else
        begin
          SQLTemplate.FieldByName('CLIEA13ID').AsString     := FormTelaDadosCliente.ComboCliente.Value;
          SQLTemplate.FieldByName('HELPDINICIO').AsDateTime := Now;
          FormTelaDadosCliente.Close;
        end;
    end
  else
    begin
      SQLTemplate.Cancel;
    end;
  FormTelaDadosCliente.Free;
end;

procedure TFormCadastroHelpDesk.ComboProdutoExit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
  if DBComboProduto.Value = '' then
    begin
      Informa('Por faovr informe o produto do cliente antes de prosseguir!');
      DBComboProduto.SetFocus;
    end;
end;

procedure TFormCadastroHelpDesk.SQLTemplateBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Tempo := 0;
  LabelTempo.Caption := DateToStr(Tempo);
end;

procedure TFormCadastroHelpDesk.TimerTimer(Sender: TObject);
begin
  inherited;
  Tempo := IncSecond(Tempo,1);
  LabelTempo.Caption := FormatDateTime('hh:nn:ss',Tempo);
  LabelTempo.Update;
end;

procedure TFormCadastroHelpDesk.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.State in DsEditModes then
    Timer.Enabled := True
  else
    Timer.Enabled := False;

  if BtEsconder.Visible then
     BtEsconder.Click;
end;

procedure TFormCadastroHelpDesk.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     if (SQLTemplateHELPHTEMPOATEND.IsNull) or
        (SQLTemplateHELPHTEMPOATEND.AsDateTime = 0)  then
        Tempo := 0
     else
        Tempo := SQLTemplateHELPHTEMPOATEND.AsDateTime;
  LabelTempo.Caption := FormatDateTime('hh:nn:ss',Tempo);

  SQLClienteProduto.Close;
  SQLClienteProduto.Open;
end;

procedure TFormCadastroHelpDesk.DBComboProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormCadastroHelpDesk.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplate.State in dsEditModes then
     SQLTemplateHELPHTEMPOATEND.AsDateTime := Tempo;
  inherited;
  SQlTemplate.FieldByName('HELPDTERMINO').AsDateTime := Now;
  AtualizaDadosClientes(SQLTemplate.FieldByName('CLIEA13ID').AsString);
  SQLTemplateEMPRICOD.AsInteger  := EmpresaCorrente;
  SQLTemplateTERMICOD.AsInteger  := TerminalCorrente;
end;

procedure TFormCadastroHelpDesk.AtualizaDadosClientes(IDCliente : String);
var
  SQLClienteDados : TRxQuery;
begin
  SQLClienteDados := TRxQuery.Create(DM);
  SQLClienteDados.DatabaseName := 'DB';
  SQLClienteDados.RequestLive := True;
  SQLClienteDados.Close;
  SQLClienteDados.SQL.Clear;
  SQLClienteDados.SQL.ADD('SELECT * FROM CLIENTEHELPDESK WHERE CLIEA13ID = "' + IDCliente + '"');
  SQLClienteDados.Open;
  if not SQLClienteDados.IsEmpty then
    begin
     SQLClienteDados.Edit;
      if SQLClienteDados.FieldByName('CLHPDFIRSTHELP').AsVariant = Null then
        SQLClienteDados.FieldByName('CLHPDFIRSTHELP').AsDateTime := Now;
      SQLClienteDados.FieldByName('CLHPDLASTHELP').AsDateTime    := Now;
      if SQLClienteDados.FieldByName('CLHPINROHELP').AsInteger > 0 then
        SQLClienteDados.FieldByName('CLHPINROHELP').AsInteger   := SQLClienteDados.FieldByName('CLHPINROHELP').AsInteger + 1
      else
        SQLClienteDados.FieldByName('CLHPINROHELP').AsInteger   := 1;      
      SQLClienteDados.Post;      
    end;
  SQLClienteDados.Close;
  SQLClienteDados.Free;  
  SQLCliente.Close;
  SQLCliente.Open;

end;
procedure TFormCadastroHelpDesk.SQLTemplateAfterPost(DataSet: TDataSet);

begin
  inherited;
  if SQLTipoHelpTPHPCGERATAREFA.AsString = 'S' then
      begin
        DM.CodAtendimento := SQLTemplateHELPA13ID.AsString;
        DM.CodCliente     := SQLTemplateCLIEA13ID.AsString;
        if Application.FindComponent('FormTelaCadastroTarefa') = Nil then
           Application.CreateForm(TFormTelaCadastroTarefa,FormTelaCadastroTarefa);
        FormTelaCadastroTarefa.ShowModal;
        FormTelaCadastroTarefa.Close;
        FormTelaCadastroTarefa.Free;
      end;
end;

procedure TFormCadastroHelpDesk.PesquisaPalavraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtPesuisaOK.Click;
end;

procedure TFormCadastroHelpDesk.BtPesuisaOKClick(Sender: TObject);
var  I, TotPalavra, PalavraAtual : integer;
     SQL, Palavra, TipoPesquisa: string;
begin
  if (SQLTemplate.State in DsEditModes) then
    begin
      Totpalavra :=  TotalPalavras(PesquisaPalavra.Text);
      SQLHelp.Close;
      Palavra:='';
      if DBComboProduto.Text <> '' then
         SQL := 'SELECT * FROM HELPDESK WHERE PRODICOD = "' + SQLTemplatePRODICOD.AsString + '" AND HELPCPERGUNTACHAVE LIKE "%'
      else
         SQL := 'SELECT * FROM HELPDESK WHERE HELPCPERGUNTACHAVE LIKE ''%';
      PalavraAtual := 0;
      if CheckTipoPesquisa.Checked then
        TipoPesquisa := ' AND '
      else
        TipoPesquisa := ' OR ';
      for I := 1 to length(PesquisaPalavra.Text) do
        begin
            if not(PesquisaPalavra.Text[i] in KeyCharsSet) then
              Palavra := Palavra + PesquisaPalavra.Text[i]
            else
              begin
               if (TotPalavra > 1) and (palavra <> '') and (PalavraAtual < TotPalavra) then
                 Begin
                   PalavraAtual := PalavraAtual + 1;
                   if not (PalavraAtual = TotPalavra) then
                      SQL := SQL + Palavra + '%"' + TipoPesquisa + ' HELPCPERGUNTACHAVE LIKE "%'
                   else
                      SQL := SQL + Palavra;
                 end
               else
                 if (Palavra <> '') and (PalavraAtual < TotPalavra) then
                   SQL := SQL + Palavra;
                 Palavra :='';
              end;
        end;
      if (Palavra <> '') and (PalavraAtual < TotPalavra)then
        SQL := SQL + Palavra;
      SQL := SQL + '%"';
      SQLHelp.SQL.Text := SQL;
      SQLHelp.Open;
      if not SQLHelp.IsEmpty then
        begin
          PanelSolicitacao.Height := 217;
          SplitterDeBaixo.Repaint;
          SplitterDeBaixo.Refresh;
          BtEsconder.Visible := true;
        end
      else
        Informa('Não foram encontrados dados com as palavras fornecidas.');
  end;
end;

procedure TFormCadastroHelpDesk.BtEsconderClick(Sender: TObject);
begin
  inherited;
    begin
      PanelSolicitacao.Height := 121;
      SplitterDeBaixo.Repaint;
      SplitterDeBaixo.Refresh;
      BtEsconder.Visible := False;
      SQLHelp.Close;
      PesquisaPalavra.Clear;
    end;
end;

procedure TFormCadastroHelpDesk.Button3Click(Sender: TObject);
begin
  inherited;
  PanelCodigoDescricao.Visible := True;
  TabSheetHistorico.Show;
end;

procedure TFormCadastroHelpDesk.btnLinhaUpClick(Sender: TObject);
begin
  inherited;
  DBCtrlGrid.RowCount := DBCtrlGrid.RowCount + 1;
  DBCtrlGrid.Realign;
  DBCtrlGrid.Update;
end;

procedure TFormCadastroHelpDesk.btnLinhaDownClick(Sender: TObject);
begin
  inherited;
  DBCtrlGrid.RowCount := DBCtrlGrid.RowCount - 1;
  DBCtrlGrid.Realign;
  DBCtrlGrid.Update;

end;

procedure TFormCadastroHelpDesk.DBGridResultPesquisaDblClick(Sender: TObject);
begin
  inherited;
  if SQLHelp.Active then
    begin
      DM.codatendimento := SQLHelpHELPA13ID.AsString;
      DM.GridAtendimento := 'N';
      Application.CreateForm(TFormTelaConsultaAtendimento,FormTelaConsultaAtendimento);
      FormTelaConsultaAtendimento.ShowModal;
    end;
end;

procedure TFormCadastroHelpDesk.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateHELPHTEMPOATEND.AsDateTime := 0;
end;

procedure TFormCadastroHelpDesk.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SQLHistorico.Close;
  SQLHistorico.MacroByName('MFiltro').AsString := ' CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and PRODICOD = ' + IntToStr(SQLTemplatePRODICOD.AsInteger);
  SQLHistorico.Open;
end;

procedure TFormCadastroHelpDesk.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if ParametroInterno <> '' then
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := ParametroInterno
       else
          if (Pos(ParametroInterno, SQLTemplate.MacroByName('MFiltro').AsString) = 0) and
             (Length(ParametroInterno) <> Length(SQLTemplate.MacroByName('MFiltro').AsString)) then
             SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + ParametroInterno;
     end;
end;

procedure TFormCadastroHelpDesk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.ParametroExterno := '';
end;

procedure TFormCadastroHelpDesk.FormActivate(Sender: TObject);
var Pos : Pointer;
begin
  inherited;
  if (DM.ParametroExterno <> '') then
     begin
        ParametroInterno    := DM.ParametroExterno;
        DM.ParametroExterno := '';
     end;

  Pos := SQLTemplate.GetBookmark;
  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLTemplate.GotoBookmark(Pos);
end;

procedure TFormCadastroHelpDesk.mnGerarTarefaClick(Sender: TObject);
begin
  inherited;
  DM.CodAtendimento := SQLTemplateHELPA13ID.AsString;
  DM.CodCliente     := SQLTemplateCLIEA13ID.AsString;
  if Application.FindComponent('FormTelaCadastroTarefa') = Nil then
     Application.CreateForm(TFormTelaCadastroTarefa,FormTelaCadastroTarefa);
  FormTelaCadastroTarefa.ShowModal;
  FormTelaCadastroTarefa.Close;
  FormTelaCadastroTarefa.Free;
end;

procedure TFormCadastroHelpDesk.PopupMenuDiversosPopup(Sender: TObject);
begin
  inherited;
  mnGerarTarefa.Enabled := SQLTipoHelpTPHPCGERATAREFA.AsString = 'S';
end;

end.
