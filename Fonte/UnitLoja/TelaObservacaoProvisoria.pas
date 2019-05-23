unit TelaObservacaoProvisoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, DBCtrls, Mask, VarSys, FormResources, RXCtrls, Grids,
  DBGrids;

type
  TFormTelaObservacaoProvisoria = class(TFormTelaGeralTEMPLATE)
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
    SQLContatoEMPRICOD: TIntegerField;
    SQLContatoDetalhe: TRxQuery;
    SQLContatoDetalheEMPRICOD: TIntegerField;
    SQLContatoDetalheCONTDCONTATO: TDateTimeField;
    SQLContatoDetalheCONTICOD: TIntegerField;
    SQLContatoDetalheCNTDICOD: TIntegerField;
    SQLContatoDetalheCNTDA254DETALHE: TStringField;
    SQLContatoDetalhePENDENTE: TStringField;
    SQLContatoDetalheREGISTRO: TDateTimeField;
    DSSQLContatoDetalhe: TDataSource;
    Panel5: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGridLista: TDBGrid;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    SQLContatoCONTA60CONTATO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure DSContatoStateChange(Sender: TObject);
    procedure SQLContatoBeforePost(DataSet: TDataSet);
    procedure SQLContatoDetalheAfterPost(DataSet: TDataSet);
    procedure SQLContatoDetalheBeforePost(DataSet: TDataSet);
    procedure SQLContatoDetalheNewRecord(DataSet: TDataSet);
    procedure SQLContatoDetalhePostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaObservacaoProvisoria: TFormTelaObservacaoProvisoria;

implementation

uses TelaAgendaContatos, DataModulo;

{$R *.dfm}

procedure TFormTelaObservacaoProvisoria.FormCreate(Sender: TObject);
begin
  inherited;
  SQLContato.Open;
  SQLContatoDetalhe.Open;
end;

procedure TFormTelaObservacaoProvisoria.LabelGravarClick(Sender: TObject);
begin
  inherited;
  SQLContato.Post;
  If SQLContatoDetalhe.State in DsEditModes Then
    SQLContatoDetalhe.Post;
  SQLContato.DataSource.DataSet.Close;
  SQLContato.DataSource.DataSet.Open;
  Close;
end;

procedure TFormTelaObservacaoProvisoria.BtnFecharTelaClick(
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

procedure TFormTelaObservacaoProvisoria.DSContatoStateChange(
  Sender: TObject);
begin
  inherited;
  LabelGravar.Enabled := (DSContato.State in dsEditModes);
end;

procedure TFormTelaObservacaoProvisoria.SQLContatoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormTelaObservacaoProvisoria.SQLContatoDetalheAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Close;
  DataSet.Open;
end;

procedure TFormTelaObservacaoProvisoria.SQLContatoDetalheBeforePost(
  DataSet: TDataSet);
begin
  inherited;
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

procedure TFormTelaObservacaoProvisoria.SQLContatoDetalheNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLContatoDetalheEMPRICOD.asInteger      := SQLContatoEMPRICOD.asInteger;
  SQLContatoDetalheCONTDCONTATO.asDateTime := SQLContatoCONTDCONTATO.asDateTime;
  SQLContatoDetalheCONTICOD.asInteger      := SQLContatoCONTICOD.asInteger;
end;

procedure TFormTelaObservacaoProvisoria.SQLContatoDetalhePostError(
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

end.
