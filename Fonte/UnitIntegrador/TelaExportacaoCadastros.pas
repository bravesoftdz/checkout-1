unit TelaExportacaoCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Gauges, StdCtrls, ExtCtrls, FileCtrl, DB,
  DBTables, backup, RxQuery, DBLists, Buttons, jpeg, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoCadastros = class(TFormTelaGeralTEMPLATE)
    Tabelas: TDatabaseItems;
    TabelasNAME: TStringField;
    SQLTabela: TRxQuery;
    SQLUpDate: TRxQuery;
    BackupFile: TBackupFile;
    TblExporta: TTable;
    BatchMoveExp: TBatchMove;
    SQLIntegracao: TRxQuery;
    SQLIntegracaoINTEA13ID: TStringField;
    SQLIntegracaoEMPRICOD: TIntegerField;
    SQLIntegracaoINTEICOD: TIntegerField;
    SQLIntegracaoEMPRICODDEST: TIntegerField;
    SQLIntegracaoINTEDGERACAO: TDateTimeField;
    SQLIntegracaoINTEDRECEBIMENTO: TDateTimeField;
    SQLIntegracaoINTEA30NOMEARQ: TStringField;
    SQLIntegracaoPENDENTE: TStringField;
    SQLIntegracaoREGISTRO: TDateTimeField;
    UpdateSQLIntegracao: TUpdateSQL;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    DSIntegracao: TDataSource;
    Arquivos: TListBox;
    ListaLOG: TFileListBox;
    PanelExp: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    BtnIniciar: TSpeedButton;
    ButtonSendFile: TSpeedButton;
    EditTabela: TEdit;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    EditContTotRegistros: TEdit;
    EditContTabela: TEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    ProgressBarTabelas: TGauge;
    SQLReativacao: TRxQuery;
    procedure BtnIniciarClick(Sender: TObject);
    procedure ApagaArquivos;
    procedure GetOut(FileName,EmailFrom : string);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaExportacaoCadastros: TFormTelaExportacaoCadastros;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaExportacaoCadastros.BtnIniciarClick(Sender: TObject);
Var
  Inicio:TDateTime;
  I,ArqsMB:Integer;
  Email, MatrizFilial,  Title :String;
begin
  inherited;
  // deleta os arquivos do diretório EXPORTA...
  ApagaArquivos;
  //////////////////////////////////////////
  Tabelas.Open;
  Tabelas.First;
  BtnIniciar.Enabled:=False;
  ProgressBarTabelas.MaxValue:=Tabelas.RecordCount;
  ProgressBarTabelas.Progress:=0;
  Title := Application.Title;
  Inicio := Now;
  EditHoraInicio.Text:=FormatDateTime('hh:nn:ss',Now);EditHoraInicio.Refresh;
  EditTempoDecorrido.Text:=FormatDateTime('hh:nn:ss',Now-Inicio);EditTempoDecorrido.Refresh;
  EditContTotRegistros.Text:='0';EditContTotRegistros.Refresh;
  LabelInfo.Caption := 'Preparando Arquivos...';LabelInfo.Refresh;
  Arquivos.Items.Clear;
  while Not Tabelas.Eof do
    begin
      if TabelaNaListaExportaCadastro(Tabelas.FindField('NAME').AsString) then
        begin
          ProgressBarTabelas.Progress:=ProgressBarTabelas.Progress+1;
          EditContTabela.Text:= IntToStr(ProgressBarTabelas.Progress)+' de '+IntToStr(ProgressBarTabelas.MaxValue);EditContTabela.Refresh;
          EditTabela.Text:=Tabelas.FindField('NAME').AsString;EditTabela.Refresh;
          Application.Title := IntToStr(ProgressBarTabelas.PercentDone) + ' % Exportando...';

          // Reativação
          SQLReativacao.Close;
          SQLReativacao.MacroByName('MTabela').AsString := Tabelas.FindField('NAME').AsString;
          try
            SQLReativacao.ExecSQL;
          except
          end;

          SQLTabela.MacroByName('MTabela').asString   := Tabelas.FindField('NAME').AsString;
          Try
            SQLTabela.Open;
            SQLTabela.First;
            If Not SQLTabela.Eof Then
              Begin
                Arquivos.Items.Add(DM.PathAplicacao + '\EXPORTA\'+Tabelas.FindField('NAME').AsString+'.DB');
                Arquivos.Refresh;
                TblExporta.TableName:=Tabelas.FindField('NAME').AsString;
                If TblExporta.Exists Then
                  TblExporta.DeleteTable;
                BatchMoveExp.Execute;
                EditContTotRegistros.Text := IntToStr(StrToInt(EditContTotRegistros.Text)+ BatchMoveExp.MovedCount);EditContTotRegistros.Refresh;
              End;
            SQLTabela.Close;
            SQLUpDate.Close;
            SQLUpDate.MacroByName('MTabela').asString   := Tabelas.FindField('NAME').AsString;
            SQLUpDate.ExecSQL;
          Except
          End;
        end;
      Tabelas.Next;
      EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);
      EditTempoDecorrido.Refresh;
    end;
  Tabelas.Close;
  // Adiciona os Arquivos MB no LOG
  ListaLOG.Mask:='*.MB';
  For ArqsMB := 0 to ListaLOG.Items.Count -1 do
    begin
      Arquivos.Items.Add(DM.PathAplicacao + '\EXPORTA\'+ ListaLOG.Items[I]); Arquivos.Refresh;
    end;
  LabelInfo.Caption := 'Compactando Arquivos...';LabelInfo.Refresh;
  Application.Title := 'Compactando Arquivos...';
  Application.ProcessMessages;
  SQLEmpresa.Open;
  SQLEmpresa.Locate('EMPRICOD',EmpresaCorrente,[]);
  MatrizFilial := SQLEmpresaEMPRCMATRIZFILIAL.asString;
  Email := SQLEmpresa.FieldByName('EMPRA60EMAIL').AsString;
  ProgressBarTabelas.MaxValue := 100;
  SQLEmpresa.First;
  While Not SQLEmpresa.Eof Do
    Begin
      If ((MatrizFilial='M') and (SQLEmpresaEMPRICOD.asInteger<>EmpresaCorrente)) or
         ((MatrizFilial='F') and (SQLEmpresaEMPRCMATRIZFILIAL.asString='M')) Then
        Begin
          ProgressBarTabelas.Progress := 0;
          BackupFile.Backup(Arquivos.Items,DM.PathAplicacao + '\EXPORTA\LOG\'+Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+'.LOG');
          if ParamStr(1) <> '' then
            begin
              if DM.RetornaTipoConexao = 'F' then
                begin
                  if DM.ConectarHostFTP(LabelInfo) then
                    begin
//                      GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+ '.LOG');
                      GetOut(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+'.LOG',Email);
                    end
                  else
                    begin
                     Application.MessageBox('Problemas na conexão','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                     Abort;
                    end;
                end
              else
                begin
//                  GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+ '.LOG');
                  GetOut(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+'.LOG',Email);
                end;
            end
          else
            begin
//              GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+ '.LOG');
            end;
        end;
      SQLEmpresa.Next;
    end;
  DM.FTPIndy.Disconnect;
  LabelInfo.Caption := 'Excluindo Arquivos Temporários...';LabelInfo.Refresh;
  Application.Title := 'Excluindo Arquivos Temporários...';
  Application.ProcessMessages;
  ProgressBarTabelas.Progress:=0;
  ProgressBarTabelas.MaxValue:=Arquivos.Items.Count;
  For I:=0 To Arquivos.Items.Count-1 Do
    Begin
      ProgressBarTabelas.Progress:=ProgressBarTabelas.Progress+1;
      DeleteFile(Arquivos.Items[I]);
    End;
  Arquivos.Items.Clear;
  ProgressBarTabelas.Progress:=0;
  EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);EditTempoDecorrido.Refresh;
  EditHoraTermino.Text    := FormatDateTime('hh:nn:ss',Now);EditHoraTermino.Refresh;
  EditTabela.Text:='';EditTabela.Refresh;
  LabelInfo.Caption       := 'Exportação do LOG Concluída!';
  LabelInfo.Refresh;
  if ParamStr(1) <> '' then
    ButtonSendFile.Click;
  Application.Title := Title;
end;
Procedure TFormTelaExportacaoCadastros.ApagaArquivos;
begin
  ListaLOG.Items.Clear;
  ListaLOG.Directory:=DM.PathAplicacao + '\EXPORTA';
  ListaLOG.Mask:='*.DB;*.MB';
  ListaLOG.Update;
  ProgressBarTabelas.Progress:=0;
  ProgressBarTabelas.MaxValue:=ListaLOG.Items.Count;
  LabelInfo.Caption := 'Preparando diretório para exportação...';LabelInfo.Refresh;
  While ListaLOG.Items.Count>0 Do
    Begin
      ProgressBarTabelas.Progress:=ProgressBarTabelas.Progress+1;
      DeleteFile(DM.PathAplicacao + '\EXPORTA\'+ListaLOG.Items[0]);
      While FileExists(DM.PathAplicacao + '\EXPORTA\'+ListaLOG.Items[0]) Do
        begin
          Application.ProcessMessages;
        end;
      ListaLOG.Update;
    End;
  ProgressBarTabelas.Progress:=0;
End;
procedure TFormTelaExportacaoCadastros.GetOut(FileName,EmailFrom : string);
begin
  if DM.SendFile(FileName,EmailFrom,SQLEmpresa.FieldByName('EMPRA60EMAIL').AsString,LabelInfo) then
    begin
      if not SQLIntegracao.Active then
        SQLIntegracao.Open;
      SQLIntegracao.Append;
      SQLIntegracaoEMPRICODDEST.asInteger  := SQLEmpresaEMPRICOD.asInteger;
      SQLIntegracaoINTEA30NOMEARQ.asString := FileName;
      SQLIntegracaoINTEDGERACAO.asDateTime := Now;
      SQLIntegracaoPENDENTE.Value          := 'S';
      SQLIntegracaoREGISTRO.AsDateTime     := Now;
      SQLIntegracao.Post;
      SQLIntegracao.Close;
    end
  else
    Application.MessageBox(PChar('Não foi possível enviar o seguinte arquivo: ' + DM.PathAplicacao + '\EXPORTA\LOG\'+Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yyyy_hh-nn',Now)+'.LOG'),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
end;

procedure TFormTelaExportacaoCadastros.FormCreate(Sender: TObject);
begin
  inherited;
  TblExporta.DatabaseName := Dm.PathAplicacao + '\EXPORTA';
end;

end.
