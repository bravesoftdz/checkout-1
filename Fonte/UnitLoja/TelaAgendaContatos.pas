unit TelaAgendaContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  DB, DBTables, RxQuery, RxLookup, Grids, DBGrids, Menus, VarSys, FormResources,
  Mask, ToolEdit, RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAgendaContatos = class(TFormTelaGeralTEMPLATE)
    SQLContato: TRxQuery;
    LabelReg: TLabel;
    DBGridLista: TDBGrid;
    DSContato: TDataSource;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    PopupMenuContato: TPopupMenu;
    ObservaoProvisria1: TMenuItem;
    InformarRetorno1: TMenuItem;
    VerificarHistrico1: TMenuItem;
    Panel5: TPanel;
    Label7: TLabel;
    ComboTipoContato: TRxDBLookupCombo;
    VisualizarContatos1: TMenuItem;
    DSTipoContato: TDataSource;
    Label1: TLabel;
    De: TDateEdit;
    VisualizarReferncias1: TMenuItem;
    VisualizaroCliente1: TMenuItem;
    Label2: TLabel;
    EditCliente: TEdit;
    ExcluirContato1: TMenuItem;
    SQLExcluiDetalhes: TRxQuery;
    ransferirContato1: TMenuItem;
    SQLTransferirContato: TRxQuery;
    SQLTransferirContatoCONTDCONTATO: TDateTimeField;
    DSSQLTransferirContato: TDataSource;
    SQLTransferirContatoCONTICOD: TIntegerField;
    SQLTransferirContatoEMPRICOD: TIntegerField;
    ransferirContatoDataEspecfica1: TMenuItem;
    Label3: TLabel;
    EditUFCLiente: TEdit;
    Label4: TLabel;
    Ate: TDateEdit;
    GroupOrdem: TRadioGroup;
    SQLContatoEMPRICOD: TIntegerField;
    SQLContatoCONTDCONTATO: TDateTimeField;
    SQLContatoCONTICOD: TIntegerField;
    SQLContatoVENDICOD: TIntegerField;
    SQLContatoCLIEA13ID: TStringField;
    SQLContatoTPCLICOD: TIntegerField;
    SQLContatoTPCTICOD: TIntegerField;
    SQLContatoTPRTICOD: TIntegerField;
    SQLContatoTPCTICODPROX: TIntegerField;
    SQLContatoCONTDPROXCONT: TDateTimeField;
    SQLContatoCONTDREAL: TDateTimeField;
    SQLContatoCONTA255OBS: TStringField;
    SQLContatoCONTA60CONTATO: TStringField;
    SQLContatoUSUAICOD: TIntegerField;
    SQLContatoPENDENTE: TStringField;
    SQLContatoREGISTRO: TDateTimeField;
    SQLContatoCLIEA60RAZAOSOC: TStringField;
    SQLContatoCLIEA60NOMEFANT: TStringField;
    SQLContatoCLIEA60CIDRES: TStringField;
    SQLContatoCLIEA2UFRES: TStringField;
    SQLContatoCLIEA15FONE1: TStringField;
    SQLContatoTipoContatoLookUp: TStringField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLContatoUsuarioLookUp: TStringField;
    SQLExcluirContato: TRxQuery;
    BtnSelecionarDoc: TSpeedButton;
    procedure VisualizarContatos1Click(Sender: TObject);
    procedure VerificarHistrico1Click(Sender: TObject);
    procedure ObservaoProvisria1Click(Sender: TObject);
    procedure InformarRetorno1Click(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure SQLContatoAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure PopupMenuContatoPopup(Sender: TObject);
    procedure VisualizaroCliente1Click(Sender: TObject);
    procedure VisualizarReferncias1Click(Sender: TObject);
    procedure EditClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExcluirContato1Click(Sender: TObject);
    procedure ransferirContato1Click(Sender: TObject);
    procedure ransferirContatoDataEspecfica1Click(Sender: TObject);
    procedure SQLExcluirContatoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAgendaContatos: TFormTelaAgendaContatos;

implementation

uses DataModulo, TelaHistoricoContato, TelaObservacaoProvisoria,
  TelaRetornoContato, UnitLibrary, CadastroClienteContato,
  CadastroClienteReferencia, CadastroCliente;

{$R *.dfm}

procedure TFormTelaAgendaContatos.VisualizarContatos1Click(
  Sender: TObject);
begin
  inherited;
  DSMasterSys := DSContato;
  CriaFormulario(TFormCadastroClienteContato,
                 'FormCadastroClienteContato',
                 False,
                 True,
                 False, 'Cliente ' + SQLContatoCLIEA60RAZAOSOC.asString);
end;

procedure TFormTelaAgendaContatos.VerificarHistrico1Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSContato;
  CriaFormulario(TFormTelaHistoricoContato,'FormTelaHistoricoContato',False,False,False, '');
end;

procedure TFormTelaAgendaContatos.ObservaoProvisria1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaObservacaoProvisoria,'FormTelaObservacaoProvisoria',False,False,False, '');
end;

procedure TFormTelaAgendaContatos.InformarRetorno1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaRetornoContato,'FormTelaRetornoContato',False,False,False, '');
end;

procedure TFormTelaAgendaContatos.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;
  Try
    StrToDate(De.Text);
  Except
    Informa('Data Base Inicial Inv�lida!');
    De.SetFocus;
    Abort;
  End;
  Try
    StrToDate(Ate.Text);
  Except
    Informa('Data Base Final Inv�lida!');
    De.SetFocus;
    Abort;
  End;
  SQLContato.Close;
  SQLContato.MacroByName('MEmpresa').asString := '0=0';
  If (EditCliente.Text<>'') Then
    Begin
      If EditCliente.Text[1]='*' Then
        SQLContato.MacroByName('MCliente').asString := 'CLIENTE.CLIEA60RAZAOSOC LIKE "%'+Copy(EditCliente.Text,2,Length(EditCliente.Text)-1)+'%"'
      Else
        SQLContato.MacroByName('MCliente').asString := 'CLIENTE.CLIEA60RAZAOSOC LIKE "'+EditCliente.Text+'%"';
    End
  Else
    SQLContato.MacroByName('MCliente').asString := '0=0';

  If (EditUFCLiente.Text<>'') Then
    SQLContato.MacroByName('MUFCliente').asString := 'CLIENTE.CLIEA2UFRES = "'+EditUFCLiente.Text+'"'
  Else
    SQLContato.MacroByName('MUFCliente').asString := '0=0';

  If ComboTipoContato.Value<>'' Then
    SQLContato.MacroByName('MTipoContato').asString := 'CONTATO.TPCTICOD='+ComboTipoContato.Value
  Else
    SQLContato.MacroByName('MTipoContato').asString  := '0=0';

  SQLContato.MacroByName('MData').asString           := 'CONTATO.CONTDCONTATO>="'+FormatDateTime('mm/dd/yyyy',De.Date)+'" and CONTATO.CONTDCONTATO<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
  Case GroupOrdem.ItemIndex Of
    0:SQLContato.MacroByName('MOrdem').asString          := 'ASC';
    1:SQLContato.MacroByName('MOrdem').asString          := 'DESC';
  End;
  SQLContato.Open;
end;

procedure TFormTelaAgendaContatos.SQLContatoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  If SQLContato.RecordCount=0 Then
    LabelReg.Caption:='Nenhum Contato Selecionado.'
  Else
    LabelReg.Caption:=IntToStr(SQLContato.RecordCount)+' Contatos Selecionados.';
end;

procedure TFormTelaAgendaContatos.FormCreate(Sender: TObject);
begin
  inherited;
  De.Date  := Date;
  Ate.Date := Date;
  SQLTipoContato.Open;
end;

procedure TFormTelaAgendaContatos.PopupMenuContatoPopup(Sender: TObject);
begin
  inherited;
  If (Not SQLContato.Active) or (SQLContato.RecordCount=0) Then Abort;
end;

procedure TFormTelaAgendaContatos.VisualizaroCliente1Click(
  Sender: TObject);
begin
  inherited;
  ClienteEspecifico := SQLContatoCLIEA13ID.asString;
  CriaFormulario(TFormCadastroCliente,
                 'FormCadastroCliente',
                  False,
                  False,
                  False,'');
end;

procedure TFormTelaAgendaContatos.VisualizarReferncias1Click(
  Sender: TObject);
begin
  inherited;
  DSMasterSys := DSContato;
  CriaFormulario(TFormCadastroClienteReferencia,
                 'FormCadastroClienteReferencia',
                 True,
                 False,
                 False,
                 'Cliente ' + SQLContatoCLIEA60RAZAOSOC.asString);
end;

procedure TFormTelaAgendaContatos.EditClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_Return Then
    BtnSelecionarDoc.Click;
end;

procedure TFormTelaAgendaContatos.ExcluirContato1Click(Sender: TObject);
begin
  inherited;
  if (DBGridLista.SelectedRows.Count<>0) Then
    Begin
      If (Pergunta('NAO','Deseja Realmente Excluir o(s) Contato(s) Selecionado(s)?')) Then
        Begin
          DBGridLista.DataSource.DataSet.DisableControls;
          DBGridLista.DataSource.DataSet.First;
          while not DBGridLista.DataSource.DataSet.Eof do
            begin
              if DBGridLista.SelectedRows.CurrentRowSelected then
                Begin
                  SQLExcluirContato.Open;
                  SQLExcluirContato.Delete;
                  SQLExcluirContato.Close;
                End;
              DBGridLista.DataSource.DataSet.Next;
            end;
          DBGridLista.DataSource.DataSet.EnableControls;
          DBGridLista.DataSource.DataSet.Close;
          DBGridLista.DataSource.DataSet.Open;
        End;
    End
  Else
    Informa('Selecione um Contato');
end;

procedure TFormTelaAgendaContatos.ransferirContato1Click(Sender: TObject);
Var
  Dias:Integer;
  Codigo:Integer;
begin
  inherited;
  if (DBGridLista.SelectedRows.Count<>0) Then
    Begin
      If (Pergunta('NAO','Deseja Realmente Transferir o(s) Contato(s) Selecionado(s)?')) Then
        Try
          Dias := StrToInt(InputBox('Transferir pra daqui N dias','Digite o Nro de Dias','1'));
          DBGridLista.DataSource.DataSet.DisableControls;
          DBGridLista.DataSource.DataSet.First;
          while not DBGridLista.DataSource.DataSet.Eof do
            begin
              if DBGridLista.SelectedRows.CurrentRowSelected then
                Begin
                  SQLTransferirContato.Open;
                  SQLTransferirContato.Edit;
                  SQLTransferirContatoCONTDCONTATO.asDateTime := SQLTransferirContatoCONTDCONTATO.asDateTime + Dias;
                  SQLTransferirContatoCONTICOD.AsInteger := DM.ProximoCodigoUnico('CONTATO',SQLContato,dsContato,2);
                  SQLTransferirContato.Post;
                  SQLTransferirContato.Close;
                End;
              DBGridLista.DataSource.DataSet.Next;
            end;
          DBGridLista.DataSource.DataSet.EnableControls;
          DBGridLista.DataSource.DataSet.Close;
          DBGridLista.DataSource.DataSet.Open;
        Except
          Informa('Nro de dias inv�lido!');
        End;
    End
  Else
    Informa('Selecione um Contato');
end;

procedure TFormTelaAgendaContatos.ransferirContatoDataEspecfica1Click(
  Sender: TObject);
Var
  Data:TDateTime;
  Codigo:Integer;
begin
  inherited;
  if (DBGridLista.SelectedRows.Count<>0) Then
    Begin
      If (Pergunta('NAO','Deseja Realmente Transferir o(s) Contato(s) Selecionado(s)?')) Then
        Try
          Data := StrToDate(InputBox('Transferir pra Data Espec�fica','Digite a Data',FormatDateTime('dd/mm/yyyy',Date)));
          DBGridLista.DataSource.DataSet.DisableControls;
          DBGridLista.DataSource.DataSet.First;
          while not DBGridLista.DataSource.DataSet.Eof do
            begin
              if DBGridLista.SelectedRows.CurrentRowSelected then
                Begin
                  SQLTransferirContato.Open;
                  SQLTransferirContato.Edit;
                  SQLTransferirContatoCONTDCONTATO.asDateTime := Data;
                  SQLTransferirContatoCONTICOD.AsInteger := DM.ProximoCodigoUnico('CONTATO',SQLContato,dsContato,2);
                  SQLTransferirContato.Post;
                  SQLTransferirContato.Close;
                End;
              DBGridLista.DataSource.DataSet.Next;
            end;
          DBGridLista.DataSource.DataSet.EnableControls;
          DBGridLista.DataSource.DataSet.Close;
          DBGridLista.DataSource.DataSet.Open;
        Except
          Informa('Data Inv�lida!');
        End;
    End
  Else
    Informa('Selecione um Contato');
end;

procedure TFormTelaAgendaContatos.SQLExcluirContatoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTATO',SQLContato);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'CONTATODETALHE';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('CONTATO',SQLContato);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('CONTATODETALHE',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

end.
