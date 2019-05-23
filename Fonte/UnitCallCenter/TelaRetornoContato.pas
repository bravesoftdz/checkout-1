unit TelaRetornoContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, DBCtrls, Mask, VarSys, FormResources, RxLookup,
  ToolEdit, RXDBCtrl, RXCtrls, Grids, DBGrids ;

type
  TFormTelaRetornoContato = class(TFormTelaGeralTEMPLATE)
    SQLContato: TRxQuery;
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
    SQLContatoPENDENTE: TStringField;
    SQLContatoREGISTRO: TDateTimeField;
    DSContato: TDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    LabelGravar: TSpeedButton;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    SQLTipoRetorno: TRxQuery;
    SQLTipoRetornoTPRTICOD: TIntegerField;
    SQLTipoRetornoTPRTA60DESCR: TStringField;
    SQLContatoTipoContatoLookUp: TStringField;
    SQLContatoTipoRetornoLookUp: TStringField;
    SQLTipoRetornoTPCTICOD: TIntegerField;
    SQLTipoClienteTipoContato: TRxQuery;
    SQLTipoClienteTipoContatoTPCLICOD: TIntegerField;
    SQLTipoClienteTipoContatoTPCTICOD: TIntegerField;
    SQLTipoClienteTipoContatoTCTCIINTERVALO: TIntegerField;
    SQLTipoClienteTipoContatoPENDENTE: TStringField;
    SQLTipoClienteTipoContatoREGISTRO: TDateTimeField;
    SQLContatoEMPRICOD: TIntegerField;
    SQLTipoContatoQUESICOD: TIntegerField;
    SQLContatoTipoContatoQuestionarioLookUp: TIntegerField;
    SQLContatoUSUAICOD: TIntegerField;
    SQLContatoCONTA60CONTATO: TStringField;
    DBGridLista: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEditObs: TDBEdit;
    ComboRetorno: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    ProximoContato: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBDateEditProx: TDBDateEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    SQLContatoDetalhe: TRxQuery;
    DSSQLContatoDetalhe: TDataSource;
    SQLContatoDetalheEMPRICOD: TIntegerField;
    SQLContatoDetalheCONTDCONTATO: TDateTimeField;
    SQLContatoDetalheCONTICOD: TIntegerField;
    SQLContatoDetalheCNTDICOD: TIntegerField;
    SQLContatoDetalheCNTDA254DETALHE: TStringField;
    SQLContatoDetalhePENDENTE: TStringField;
    SQLContatoDetalheREGISTRO: TDateTimeField;
    SQLTipoContatoTPRTICOD: TIntegerField;
    SQLContatoRetornoAutomaticoLookUp: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure DSContatoStateChange(Sender: TObject);
    procedure SQLContatoBeforePost(DataSet: TDataSet);
    procedure SQLContatoTPRTICODChange(Sender: TField);
    procedure SQLContatoAfterEdit(DataSet: TDataSet);
    procedure SQLContatoDetalheNewRecord(DataSet: TDataSet);
    procedure SQLContatoDetalheBeforePost(DataSet: TDataSet);
    procedure SQLContatoDetalhePostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SQLContatoDetalheAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRetornoContato: TFormTelaRetornoContato;

implementation

uses TelaAgendaContatos, UnitLibrary, DataModulo, TelaQuestionario;

{$R *.dfm}

procedure TFormTelaRetornoContato.FormCreate(Sender: TObject);
begin
  inherited;
  SQLContato.Open;
  SQLContatoDetalhe.Open;
end;

procedure TFormTelaRetornoContato.LabelGravarClick(Sender: TObject);
begin
  inherited;
  If SQLContatoTipoContatoQuestionarioLookUp.AsVariant<>Null Then
    Begin
      DM.ClienteQuestionario := SQLContatoCLIEA13ID.asString;
      DM.CodigoQuestioario   := SQLContatoTipoContatoQuestionarioLookUp.asInteger;
      CriaFormulario(TFormTelaQuestionario,'FormTelaQuestionario',False,False,'');
      While DM.ClienteQuestionario = SQLContatoCLIEA13ID.asString  Do
        Application.ProcessMessages;
      If DM.ClienteQuestionario<>'' Then
        Begin
          ShowMessage('O questionário é Obrigatório!');
          Abort;
        End;
    End;
  SQLContatoUSUAICOD.asInteger := UsuarioCorrente;
  If SQLContatoDetalhe.State in DsEditModes Then
    SQLContatoDetalhe.Post;
  SQLContato.Post;
  SQLContato.DataSource.DataSet.Close;
  SQLContato.DataSource.DataSet.Open;
  Close;
end;

procedure TFormTelaRetornoContato.BtnFecharTelaClick(
  Sender: TObject);
begin
  If SQLContatoDetalhe.State in DsEditModes Then
    If Trim(SQLContatoDetalheCNTDA254DETALHE.AsString)='' Then
      SQLContatoDetalhe.Cancel
    Else
      SQLContatoDetalhe.Post;
  if (SQLContato.State in dsEditModes) then
    begin
      if Application.MessageBox('Existe Dados não gravados. Abandonar?',
        'Unit Pergunta',MB_YesNo+MB_IconQuestion) = Id_Yes then
        SQLContato.Cancel
      else
        Abort;
    end;
  inherited;
end;

procedure TFormTelaRetornoContato.DSContatoStateChange(
  Sender: TObject);
begin
  inherited;
  LabelGravar.Enabled := (DSContato.State in dsEditModes);
end;

procedure TFormTelaRetornoContato.SQLContatoBeforePost(DataSet: TDataSet);
Var
  DataProx:TDateTime;
begin
  inherited;
  If (SQLContatoTPCTICODPROX.AsVariant<>Null) and (SQLContatoCONTDPROXCONT.AsVariant=Null) Then
    Begin
      Informa('Você deve preencher com a data do próximo contato!');
      DBDateEditProx.SetFocus;
      Abort;
    End;
  If SQLContatoTPRTICOD.AsVariant=NULL Then
    Begin
      Informa('Você deve selecionar Retorno!');
      Abort;
    End;
  If SQLContatoCONTA255OBS.AsVariant=NULL Then
    Begin
      Informa('Você deve preencher com a Observação!');
      Abort;
    End;
  DM.SQLNovoContato.Open;
  DataProx := Date;
  If (SQLContatoTPCTICODPROX.AsVariant<>Null) and (SQLContatoCONTDPROXCONT.AsVariant<>Null) Then
    Begin
      DM.SQLNovoContato.Append;
      DM.SQLNovoContatoEMPRICOD.asInteger      := DM.SQLConfigGeralCFGEIEMPPADRAO.asInteger;
      DM.SQLNovoContatoCONTDCONTATO.asDateTime := SQLContatoCONTDPROXCONT.asDateTime;
      DataProx := SQLContatoCONTDPROXCONT.asDateTime;
      DM.SQLNovoContatoCLIEA13ID.asString      := SQLContatoCLIEA13ID.asString;
      DM.SQLNovoContatoVENDICOD.asInteger      := SQLContatoVENDICOD.asInteger;
      DM.SQLNovoContatoTPCTICOD.asInteger      := SQLContatoTPCTICODPROX.asInteger;
      DM.SQLNovoContatoTPCLICOD.asInteger      := SQLContatoTPCLICOD.asInteger;
      DM.SQLNovoContatoUSUAICOD.AsInteger      := UsuarioCorrente;
      DM.SQLNovoContato.Post;
    End;
  SQLTipoClienteTipoContato.Close;
  SQLTipoClienteTipoContato.ParamByName('TPCLICOD').asInteger := SQLContatoTPCLICOD.asInteger;
  SQLTipoClienteTipoContato.ParamByName('TPCTICOD').asInteger := SQLContatoTPCTICOD.asInteger;;
  SQLTipoClienteTipoContato.Open; SQLTipoClienteTipoContato.First;
  While Not SQLTipoClienteTipoContato.Eof Do
    Begin
      DM.SQLNovoContato.Append;
      DM.SQLNovoContatoEMPRICOD.asInteger      := DM.SQLConfigGeralCFGEIEMPPADRAO.asInteger;
      DM.SQLNovoContatoCONTDCONTATO.asDateTime := DataProx + SQLTipoClienteTipoContato.FindField('TCTCIINTERVALO').asInteger;
      DM.SQLNovoContatoCLIEA13ID.asString      := SQLContatoCLIEA13ID.asString;
      DM.SQLNovoContatoVENDICOD.asInteger      := SQLContatoVENDICOD.asInteger;
      DM.SQLNovoContatoTPCTICOD.asInteger      := SQLTipoClienteTipoContato.FindField('TPCTICOD').asInteger;
      DM.SQLNovoContatoTPCLICOD.asInteger      := SQLContatoTPCLICOD.asInteger;
      DM.SQLNovoContatoUSUAICOD.AsInteger      := UsuarioCorrente;
      DM.SQLNovoContato.Post;
      SQLTipoClienteTipoContato.Next;
    End;
  DM.SQLNovoContato.Close;
  SQLTipoClienteTipoContato.Close;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormTelaRetornoContato.SQLContatoTPRTICODChange(Sender: TField);
begin
  inherited;
  If SQLTipoRetornoTPCTICOD.AsVariant<>Null Then
    Begin
      ProximoContato.Visible := True;
      SQLContatoTPCTICODPROX.AsVariant  := SQLTipoRetornoTPCTICOD.AsVariant;
    End
  Else
    Begin
      ProximoContato.Visible := False;
      SQLContatoTPCTICODPROX.AsVariant:=Null;
      SQLContatoCONTDPROXCONT.AsVariant:=Null;
    End;
end;

procedure TFormTelaRetornoContato.SQLContatoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  SQLContatoCONTDREAL.asDateTime := Now;
end;

procedure TFormTelaRetornoContato.SQLContatoDetalheNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLContatoDetalheEMPRICOD.asInteger      := SQLContatoEMPRICOD.asInteger;
  SQLContatoDetalheCONTDCONTATO.asDateTime := SQLContatoCONTDCONTATO.asDateTime;
  SQLContatoDetalheCONTICOD.asInteger      := SQLContatoCONTICOD.asInteger;
end;

procedure TFormTelaRetornoContato.SQLContatoDetalheBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If Trim(DataSet.FindField('CNTDA254DETALHE').asString) = '' Then
    Begin
      ShowMessage('Um Detalhamento não pode ser vazio!');
      Abort;
    End;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Case DataSet.State Of
    DsInsert: begin
                if (DataSet.Tag in [1,2,3]) Then
                  DM.CodigoAutomatico('CONTATODETALHE', DSSQLContatoDetalhe, DataSet, 3, 0);
              End;
  end;
end;

procedure TFormTelaRetornoContato.SQLContatoDetalhePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Case DataSet.State Of
    DsInsert:
      Begin
        Case DataSet.Tag Of
        1,2:DM.CodigoAutomatico('CONTATODETALHE', DSSQLContatoDetalhe, DataSet, 3, 0);
         End;
        Action:=DaRetry;
      End;
  end;
end;

procedure TFormTelaRetornoContato.SQLContatoDetalheAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Close;
  DataSet.Open;
end;

procedure TFormTelaRetornoContato.FormActivate(Sender: TObject);
begin
  inherited;
  If SQLContatoRetornoAutomaticoLookUp.AsVariant<>Null Then
    Begin
      SQLContato.Edit;
      SQLContatoCONTA255OBS.AsString := 'RETORNO AUTOMÁTICO';
      SQLTipoRetorno.Locate('TPRTICOD',SQLContatoRetornoAutomaticoLookUp.asInteger,[LoCaseInsensitive]);
      SQLContatoTPRTICOD.AsInteger   := SQLContatoRetornoAutomaticoLookUp.asInteger;
      LabelGravar.Click;
    End;
end;

end.
