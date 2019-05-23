unit TelaExportacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DateUtils,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, ComCtrls,
  DB, DBLists, DBTables, RxQuery, backup,VarSys, FileCtrl, Variants,
  Gauges, IniFiles, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacao = class(TFormTelaGeralTEMPLATE)
    Tabelas: TDatabaseItems;
    TabelasNAME: TStringField;
    SQLTabela: TRxQuery;
    BatchMoveExp: TBatchMove;
    TblExporta: TTable;
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
    EditTabela: TEdit;
    EditHoraInicio: TEdit;
    EditTempoDecorrido: TEdit;
    EditHoraTermino: TEdit;
    EditContTotRegistros: TEdit;
    EditContTabela: TEdit;
    Panel4: TPanel;
    LabelInfo: TLabel;
    SQLUpDate: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    BackupFile: TBackupFile;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    ProgressBarTabelas: TGauge;
    ButtonSendFile: TSpeedButton;
    SQLCampoPendente: TRxQuery;
    Arquivos: TListBox;
    ListaLOG: TFileListBox;
    TabelasReativar: TDatabaseItems;
    TabelaHaReativar: TTable;
    SQLReAtivar: TRxQuery;
    TabelasReativarNAME: TStringField;
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BackupFileProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    Procedure ApagaArquivos;
    procedure FormCreate(Sender: TObject);
    procedure ButtonSendFileClick(Sender: TObject);
  private
    { Private declarations }
    function  GetOut(FileName,EmailFrom : string) : Boolean;
    procedure GeraArquivoOK(NomeArquivo:string);
    function  GeraFiltroTabela(Tabela : String) : String;
  public
    { Public declarations }
  end;

var
  FormTelaExportacao: TFormTelaExportacao;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

function TFormTelaExportacao.GetOut(FileName,EmailFrom : string) : Boolean;
begin
  if DM.SendFile(FileName,EmailFrom,SQLEmpresa.FieldByName('EMPRA60EMAIL').AsString,LabelInfo) then
     Result := True
  else
     Result := False;
end;

Procedure TFormTelaExportacao.ApagaArquivos;
Var
  I:Integer;
begin
  ListaLOG.Items.Clear;
  ListaLOG.Directory:=DM.PathAplicacao + 'EXPORTA';
  ListaLOG.Mask:='*.DB;*.MB';
  ListaLOG.Update;
  ProgressBarTabelas.Progress:=0;
  ProgressBarTabelas.MaxValue:=ListaLOG.Items.Count;
  LabelInfo.Caption := 'Preparando diretório para exportação...';LabelInfo.Refresh;
  While ListaLOG.Items.Count>0 Do
    Begin
      ProgressBarTabelas.Progress:=ProgressBarTabelas.Progress+1;
      DeleteFile(DM.PathAplicacao + 'EXPORTA\'+ListaLOG.Items[0]);
      While FileExists(DM.PathAplicacao + 'EXPORTA\'+ListaLOG.Items[0]) Do
        Application.ProcessMessages;
      ListaLOG.Update;
    End;
  ProgressBarTabelas.Progress:=0;
End;

procedure TFormTelaExportacao.BtnIniciarClick(Sender: TObject);
Var
  Inicio:TDateTime;
  I,Colunas,ArqsMB:Integer;
  Email, MatrizFilial, Title, ArquivoPEnviar :String;
  Erros : TStringList;
  Arquivo : TIniFile;
  DataHoraBaseIntegracao : TDateTime;

  procedure VerificaImportacaoComErro;
      Procedure Recebido(ArquivoEnviado: String);
        begin
            if FileExists(DM.PathAplicacao + 'EXPORTA\Log\BackUp\' + ArquivoEnviado) then
               DeleteFile(DM.PathAplicacao + 'EXPORTA\Log\BackUp\' + ArquivoEnviado);
        end;

      Procedure Reenviar(ArquivoEnviado: String);
        begin
            if FileExists(DM.PathAplicacao     + 'EXPORTA\Log\BackUp\' + ArquivoEnviado) then
               CopyFile(PChar(DM.PathAplicacao + 'EXPORTA\Log\BackUp\' + ArquivoEnviado),
                        PChar(DM.PathAplicacao + 'EXPORTA\Log\' + ArquivoEnviado), True);
        end;

      Procedure Reativar(ArquivoEnviado: String);
        Var Filtro : String;
            ChaveNo, TotalReg, RegistroNo: Integer;
        begin
          Application.ProcessMessages;
        end;
  begin
    Application.ProcessMessages;
  end;

begin
  inherited;
  MatrizFilial := dm.sqllocate('EMPRESA','EMPRICOD','EMPRCMATRIZFILIAL',DM.SQLTerminalAtivo.FindField('EMPRICOD').AsString);
  if not DirectoryExists(Dm.PathAplicacao + 'Exporta') then
    begin
      Informa('O diretório de exportação não existe, o sistema irá criá-lo para você!');
      CreateDir(Dm.PathAplicacao + 'Exporta');
      CreateDir(Dm.PathAplicacao + 'Exporta\Log');
    end;

  if not DirectoryExists(Dm.PathAplicacao + 'Exporta\Log\BackUp') then
     CreateDir(Dm.PathAplicacao + 'Exporta\Log\BackUp');

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
  EditHoraInicio.Text:=FormatDateTime('hh:nn:ss',Now);
  EditHoraInicio.Refresh;
  EditTempoDecorrido.Text:=FormatDateTime('hh:nn:ss',Now-Inicio);
  EditTempoDecorrido.Refresh;
  EditContTotRegistros.Text:='0';
  EditContTotRegistros.Refresh;
  LabelInfo.Caption := 'Preparando Arquivos...';
  LabelInfo.Refresh;

  Arquivos.Items.Clear;
  Erros := TStringList.Create;
  while Not Tabelas.Eof do
    begin
      // Teste para nem exportar essas tabelas se for Filial
      if (Tabelas.FindField('NAME').AsString = 'CHEQUEEMITIDO')                                     then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COBRADOR')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COLECAO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONTACORRENTE')                                     then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONTASPAGAR')                                       then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CONVENIO')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COR')                      and (MatrizFilial = 'F') then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'COTACAOCOMPRA')                                     then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COTACAOCOMPRAITEM')                                 then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'COTACAOCOMPRAITEMFORN')                             then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'CUPOM')                    and (MatrizFilial = 'M') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CUPOMITEM')                and (MatrizFilial = 'M') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'CUPOMNUMERARIO')           and (MatrizFilial = 'M') then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'DECRETO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'DUPLICATA')                and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESA')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESACUSTO')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EMPRESASERIE')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'EXCLUSAO')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'FORNECEDOR')               and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'FUNCIONARIO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'FUNCIONARIOCONTACORRENTE') and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRADE')                    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRADETAMANHO')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'GRUPO')                    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'HISTORICOPADRAO')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'HORARIO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ICMS')                     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ICMSUF')                   and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MARCA')                    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MOTIVOBLOQUEIO')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'MOVIMENTOBANCO')                                    then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'MOVIMENTOCAIXA')           and (MatrizFilial = 'M') then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'NCM')                      and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NOTACOMPRA')                                        then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NOTACOMPRAITEM')                                    then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIO')                and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIOTOTALIZADOR')     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'NUMERARIOTOTALIZADORECF')  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OBSNF')                    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOBANCO')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOCAIXA')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOCAIXATOTALIZADOR') and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOESTOQUE')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'OPERACAOTESOURARIA')       and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PAGAMENTO')                                         then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'PEDIDOCOMPRA')                                      then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PEDIDOCOMPRAITEM')                                  then Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'PLANODECONTAS')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PLANORECEBIMENTO')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PLANORECEBIMENTOPARCELA')  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PORTADOR')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOBARRAS')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOCOMPOSICAO')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTODESCRICAO')         and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOFORNECEDOR')        and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOORDEMPESQUISA')     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOREAJUSTE')          and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDO')                                      then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDOCLIENTE')                               then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDODIA')                                   then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSALDOMES')                                   then  Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PRODUTOSERIE')                                      then  Tabelas.Next;

      if (Tabelas.FindField('NAME').AsString = 'PROFISSAO')                and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PROFISSIONAL')             and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'PROVEDORCARTAO')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RAMO')                     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RECIBO')                                            then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'RECIBOCONTA')                                       then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REMESSABANCO')                                      then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REMESSABANCOCONTASRECEBER')                         then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'REPRESENTANTE')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ROTA')                     and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'ROTEIRO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SERIE')                    and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SUBGRUPO')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'SUBRAMO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TABELAPRECO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TABELAPRECOPRODUTO')       and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TESOURARIA')                                        then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOCLIENTE')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOCONTATO')              and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPODOCUMENTO')            and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOFORNECEDOR')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TIPOLIQUIDACAO')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'TRANSPORTADORA')           and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'UNIDADE')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'USUARIO')                  and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'VARIACAO')                 and (MatrizFilial = 'F') then Tabelas.Next;
      if (Tabelas.FindField('NAME').AsString = 'VEICULO')                  and (MatrizFilial = 'F') then Tabelas.Next;

      ProgressBarTabelas.Progress := ProgressBarTabelas.Progress+1;
      EditContTabela.Text         := IntToStr(ProgressBarTabelas.Progress)+' de '+IntToStr(ProgressBarTabelas.MaxValue);EditContTabela.Refresh;
      EditTabela.Text             := Tabelas.FindField('NAME').AsString;
      EditTabela.Refresh;
      Application.Title           := IntToStr(ProgressBarTabelas.PercentDone) + ' % Exportando...';

       // Ver se tem campo PENDENTE na tabela atual!
      SQLCampoPendente.Close;
      SQLCampoPendente.MacroByName('MTabela').asString   := Tabelas.FindField('NAME').AsString;
      try
        SQLCampoPendente.Open;
      except
        Application.ProcessMessages;
      end;
      // Se existir Campo Pendente na tabela autal, ver se tem algum registro a ser exportado
      if (SQLCampoPendente.FindField('PENDENTE') <> Nil) then
        begin
          Try
            // Criar um delay de 10 minutos para nao exportar registros que estejam em Edicao na hora que o Integrador realizar o filtro
            DataHoraBaseIntegracao := IncMinute(Now, -10);
            // Testa tabela apenas pelo campo Pendente, para ficar mais rapido o sql para ver se tem algum registro a ser exportado!
            SQLTabela.Close;
            SQLTabela.MacroByName('MTabela').asString   := Tabelas.FindField('NAME').AsString;
            SQLTabela.MacroByName('Campos').asString    := 'PENDENTE';
            // ROTINA PARA FILTAR A TABELA
            SQLTabela.MacroByName('MFiltro').asString   := GeraFiltroTabela(Tabelas.FindField('NAME').AsString);
            SQLTabela.MacroByName('MFiltro2').asString  := 'REGISTRO < "'+FormatDateTime('mm/dd/yyyy hh:nn:ss',DataHoraBaseIntegracao)+'"';
            SQLTabela.Open;
            SQLTabela.First;
            If Not SQLTabela.IsEmpty Then
              Begin
                // Como tem registros ser exportados, reabrir a tabela com todos os campos dela!
                 SQLTabela.Close;
                SQLTabela.MacroByName('MTabela').asString   := Tabelas.FindField('NAME').AsString;
                SQLTabela.MacroByName('Campos').asString    := '*';
                // ROTINA PARA FILTAR A TABELA
                SQLTabela.MacroByName('MFiltro').asString   := GeraFiltroTabela(Tabelas.FindField('NAME').AsString);
                SQLTabela.MacroByName('MFiltro2').asString  := 'REGISTRO < "'+FormatDateTime('mm/dd/yyyy hh:nn:ss',DataHoraBaseIntegracao)+'"';
               // ShowMessage(SQLTabela.RealSQL.Text);
                SQLTabela.Open;
                SQLTabela.First;

                Arquivos.Items.Add(DM.PathAplicacao + 'Exporta\'+Tabelas.FindField('NAME').AsString+'.DB');
                Arquivos.Refresh;

                if TblExporta.Active then TblExporta.Close;
                TblExporta.TableName   := Tabelas.FindField('NAME').AsString;
                try
                  if TblExporta.Exists then
                    TblExporta.DeleteTable;
                  TblExporta.FieldDefs.Clear;
                  TblExporta.FieldDefs := SQLTabela.FieldDefs;
                  TblExporta.CreateTable;
                except
                  on E:Exception do
                    begin
                      TblExporta.FieldDefs.Clear;
                      TblExporta.FieldDefs := SQLTabela.FieldDefs;
                      TblExporta.CreateTable;
                      Informa(E.Message);
                    end;
                end;

                BatchMoveExp.Execute;

                EditContTotRegistros.Text := IntToStr(StrToInt(EditContTotRegistros.Text)+ BatchMoveExp.MovedCount);
                EditContTotRegistros.Refresh;
                // MUDA O STATUS DO CAMPO "PENDENTE" PARA "N"
                // Criar um delay de 10 minutos para nao exportar registros que estejam em Edicao na hora que o Integrador
                SQLUpDate.Close;
                SQLUpDate.MacroByName('MTabela').AsString  := Tabelas.FindField('NAME').AsString;
                SQLUpDate.MacroByName('MFiltro').asString  := GeraFiltroTabela(Tabelas.FindField('NAME').AsString);
                SQLUpDate.MacroByName('MFiltro2').asString := 'REGISTRO < "'+FormatDateTime('mm/dd/yyyy hh:nn:ss',DataHoraBaseIntegracao)+'"';
//                ShowMessage(SQLUpDate.RealSQL.Text);
                SQLUpDate.ExecSQL;
              End;
            SQLTabela.Close;
          Except
            Application.ProcessMessages;
          End;
        end;
      Tabelas.Next;
      Application.ProcessMessages;
      EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);EditTempoDecorrido.Refresh;
    end;

  Tabelas.Close;
  // Adiciona os Arquivos MB no LOG
  ListaLOG.Items.Clear;
  ListaLOG.Directory:=DM.PathAplicacao + 'EXPORTA';
  ListaLOG.Mask:='*.MB';
  ListaLOG.Update;
  Application.ProcessMessages;
  //Cabeçalho
  Arquivo := TIniFile.Create(DM.PathAplicacao + 'EXPORTA\AAAAAAAAAAAAA.DB');
  Arquivo.WriteString('Cab', 'DataHora', FormatDateTime('dd/mm/yyyy hh:nn:ss', Now));
  Arquivo.Free;

  Arquivos.Items.Add(DM.PathAplicacao + 'EXPORTA\AAAAAAAAAAAAA.DB');

  For ArqsMB := 0 to ListaLOG.Items.Count -1 do
    begin
      Arquivos.Items.Add(DM.PathAplicacao + 'EXPORTA\'+ ListaLOG.Items[ArqsMB]);
      Arquivos.Refresh;
    end;

  Arquivo := TIniFile.Create(DM.PathAplicacao + 'EXPORTA\ZZZZZZZZZZZZZ.DB');
  Arquivo.WriteString('Rod', 'DataHora', FormatDateTime('dd/mm/yyyy hh:nn:ss', Now));
  Arquivo.Free;

  Arquivos.Items.Add(DM.PathAplicacao + 'EXPORTA\ZZZZZZZZZZZZZ.DB');

  LabelInfo.Caption := 'Compactando Arquivos...';
  LabelInfo.Refresh;
  Application.Title := 'Compactando Arquivos...';
  Application.ProcessMessages;

  VerificaImportacaoComErro;

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
          ArquivoPEnviar := DM.PathAplicacao + 'EXPORTA\LOG\'+Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+'_'+Format('%.3d',[EmpresaCorrente])+'.LOG';
          BackupFile.Backup(Arquivos.Items, ArquivoPEnviar);
          CopyFile(PChar(ArquivoPEnviar), PChar(DM.PathAplicacao + 'EXPORTA\LOG\BACKUP\' + ExtractFileName(ArquivoPEnviar)), True);

          if ParamStr(1) <> '' then
            begin
              if DM.RetornaTipoConexao = 'F' then
                begin
                  if DM.ConectarHostFTP(LabelInfo) then
                    begin
                      GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+ '.LOG');
                      GetOut(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+'.LOG',Email);
                    end
                  else
                    begin
                     Application.MessageBox('Problemas na conexão','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                     Abort;
                    end;
                end
              else
                begin
                  GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+ '.LOG');
                  GetOut(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+'.LOG',Email);
                end;
            end
          else
            begin
              GeraArquivoOK(Format('%.3d',[SQLEmpresa.FieldByName('EMPRICOD').AsInteger])+'_'+FormatDateTime('dd-mm-yy_hh-nn-ss',Now)+ '.LOG');
            end;
        end;
      SQLEmpresa.Next;
    end;
  if DM.FTPIndy.Connected then DM.FTPIndy.Disconnect;
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
  EditTabela.Text:='';
  EditTabela.Refresh;
  LabelInfo.Caption       := 'Exportação do LOG Concluída!';
  LabelInfo.Refresh;
  if ParamStr(1) <> '' then
    begin
      Sleep(1000);
      ButtonSendFile.Click;
    end;
  Application.Title := Title;
  if Erros.Count > 0 then
    Informa('Houveram erros na exportação...' + #13 + Erros.Text);
  Erros.Clear;
  Erros.Destroy;
end;

procedure TFormTelaExportacao.FormResize(Sender: TObject);
begin
  inherited;
  PanelExp.Top:=(PanelCentral.Height-PanelExp.Height) Div 2;
  PanelExp.Left:=((PanelCentral.Width-PanelExp.Width) Div 2) + (PanelBarra.Width Div 2);
end;

procedure TFormTelaExportacao.BackupFileProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
  inherited;
  ProgressBarTabelas.Progress := Percent;
end;

procedure TFormTelaExportacao.FormCreate(Sender: TObject);
begin
  inherited;
  TblExporta.DatabaseName := Dm.PathAplicacao + 'EXPORTA';
end;

procedure TFormTelaExportacao.ButtonSendFileClick(Sender: TObject);
var
  FileList : TStrings;
  I : integer;
  Email : string;
begin
  inherited;
  ButtonSendFile.Enabled := False;
  FileList := TStringList.Create;
  DM.GetPathFiles(FileList,DM.PathAplicacao + 'EXPORTA\LOG\');
  if not SQLEmpresa.Active then
    SQLEmpresa.Open;
  SQLEmpresa.Locate('EMPRICOD',EmpresaCorrente,[]);
  Email := SQLEmpresa.FieldByName('EMPRA60EMAIL').AsString;
  if DM.RetornaTipoConexao = 'F' then
    begin
      if DM.ConectarHostFTP(LabelInfo) then
        begin
          for I := 0 to FileList.Count -1 do
            begin
              try
                SQLEmpresa.Locate('EMPRICOD',Copy(FileList.Strings[I],Length(ExtractFilePath(FileList.Strings[I])),3),[]);
                if not GetOut(FileList.Strings[I],Email) then
                  Abort;
              except
                Application.ProcessMessages;
              end;
            end;
        end
      else
       Abort;
    end
  else
    begin
      for I := 0 to FileList.Count -1 do
        begin
          SQLEmpresa.Locate('EMPRICOD',Copy(FileList.Strings[I],Length(ExtractFilePath(FileList.Strings[I])),3),[]);
          GetOut(FileList.Strings[I],Email);
          Application.ProcessMessages;
        end;
    end;
  DM.FTPIndy.Disconnect;
  FileList.Free;
  ButtonSendFile.Enabled := True;
end;

procedure TFormTelaExportacao.GeraArquivoOK(NomeArquivo:String);
var
Log : TextFile;
begin
  exit;
  AssignFile(Log,Dm.PathAplicacao + 'EXPORTA\LOG\' + Copy(NomeArquivo,1,Length(NomeArquivo) - 3) + 'OK');
  Rewrite(Log);
  Reset(Log);
  Append(Log);
  Writeln(Log,'ARQUIVO DE VERIFICACAO VIA FTP');
  CloseFile(Log);
end;

function TFormTelaExportacao.GeraFiltroTabela(Tabela : String) : String;
var
 SQLFiltro : String;
begin
  if Tabela <> '' then
    begin
      SQLFiltro := '';
      if (Tabela='CUPOM') or (Tabela='CUPOMITEM') or (Tabela='CUPOMNUMERARIO') or (Tabela='MOVIMENTOCAIXA') or (Tabela='MOVIMENTOESTOQUE') then
        begin
          if MatrizFilial = 'F' then
            SQLFiltro := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
          else
            SQLFiltro := '';
        end;

      if SQLFiltro <> '' then
        GeraFiltroTabela := SQLFiltro
      else
        GeraFiltroTabela := '0=0';
    end;
end;

end.

