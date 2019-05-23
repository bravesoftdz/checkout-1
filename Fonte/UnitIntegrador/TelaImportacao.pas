unit TelaImportacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, RXCtrls,
  ComCtrls, FileCtrl, backup, DB, DBTables, RxQuery, DBLists, Variants, VarSys,
  Menus, Grids, DBGrids, Gauges, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaImportacao = class(TFormTelaGeralTEMPLATE)
    PanelImp: TPanel;
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
    ListaArquivos: TRxCheckListBox;
    BtnTodos: TSpeedButton;
    BtnNenhum: TSpeedButton;
    ListaLOG: TFileListBox;
    TblImporta: TTable;
    Label2: TLabel;
    EditContLOG: TEdit;
    Label7: TLabel;
    EditContTabGeral: TEdit;
    Tabelas: TDatabaseItems;
    Campos: TTableItems;
    TabelasNAME: TStringField;
    CamposNAME: TStringField;
    CamposVALCHECKS: TIntegerField;
    SQLImporta: TRxQuery;
    SQLExclusao: TRxQuery;
    PopupMenuLista: TPopupMenu;
    DescompactaresteLOG1: TMenuItem;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    BackupFile: TBackupFile;
    SQLProdutoSaldo: TRxQuery;
    SQLMovimentoEstoque: TRxQuery;
    SQLMovimentoEstoqueEMPRICOD: TIntegerField;
    SQLMovimentoEstoqueMVESDMOV: TDateTimeField;
    SQLMovimentoEstoqueMVESICOD: TIntegerField;
    SQLMovimentoEstoqueMVESCESTOQUEOK: TStringField;
    ButtonReceiveFile: TSpeedButton;
    ProgressBarTabelas: TGauge;
    SQLProdutoSaldoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    UpdateSQLMovimento: TUpdateSQL;
    SQLExclusaoFilter: TRxQuery;
    SQLProdutoSaldoNovo: TRxQuery;
    SQLProdutoSaldoNovoEMPRICOD: TIntegerField;
    SQLProdutoSaldoNovoPRODICOD: TIntegerField;
    SQLProdutoSaldoNovoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoNovoPENDENTE: TStringField;
    SQLProdutoSaldoNovoREGISTRO: TDateTimeField;
    SQLEmpresaSaldoNovo: TRxQuery;
    SQLEmpresaSaldoNovoEMPRICOD: TIntegerField;
    SQLEmpresaSaldoNovoEMPRA60NOMEFANT: TStringField;
    procedure FormResize(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure BackupFileProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure DescompactaresteLOG1Click(Sender: TObject);
    procedure ButtonReceiveFileClick(Sender: TObject);
  private
    { Private declarations }
    Inicio:TDateTime;
    Function ConverteValor(Campo:TField;Valor:String):String;
    Procedure ExcluirRegistro;
    Function CONTASRECEBEROK:Boolean;
    Function CONTASPAGAROK:Boolean;
    function PRODUTOSALDOOK:Boolean;
    Function ObtemValor(Campo:TField):String;
    Function TipoRegistro:Char;
    Procedure ImportaRegistros;
    Procedure ImportaTabelas;
    Procedure CarregaArquivos(Status:Boolean);
    Procedure ApagaArquivos;
  public
    { Public declarations }
  end;

var
  FormTelaImportacao: TFormTelaImportacao;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

Function TFormTelaImportacao.ConverteValor(Campo:TField;Valor:String):String;
Begin
  Case Campo.DataType Of
     ftString,ftMemo:
        Result:= ''''+Valor+'''';
     ftFloat,ftBCD:
        If Pos(',',Valor)<>0 Then
          Begin
            Result:= Valor;
            Result[Pos(',',Valor)]:='.';
          End
        Else
          Result:= Valor;
     ftInteger,ftSmallint:
        Result:= Valor;
     ftDate,ftTime,ftDateTime:
        Result:= ''''+FormatDateTime('mm/dd/yyyy hh:nn:ss',StrToDateTime(Valor))+'''';
  End;
End;

Procedure TFormTelaImportacao.ExcluirRegistro;
Var
  N:Variant;
  I,J,Cont,NumCampos:Integer;
  Filtro:String;
  Chave, Dados : String;
Begin
  if (MatrizFilial = 'M') and (TabelaNaLista(TblImporta.FindField('EXCLA60TABELA').AsString)) then
    Exit;
  if TblImporta.FindField('EXCLA255CHAVE').AsString='' then Exit;
  SQLImporta.MacroByName('MTabela').asString := TblImporta.FindField('EXCLA60TABELA').AsString;
  SQLImporta.MacroByName('MFiltro').asString := '0=0';
  SQLImporta.Open;
  // NOVA ROTINA PARA MONTAR SQL DE EXCLUSAO
  //////////////////////////////////////////////////////////////////////////
  Chave   := TblImporta.FindField('EXCLA255CHAVE').AsString;
  Dados   := TblImporta.FindField('EXCLA255VALOR').AsString;
  SQLExclusaoFilter.Close;
  SQLExclusaoFilter.MacroByName('MTabela').AsString := TblImporta.FindField('EXCLA60TABELA').AsString;
  SQLExclusaoFilter.MacroByName('MFiltro').AsString := '0=0';
  SQLExclusaoFilter.Open;
  SQLExclusaoFilter.FieldDefs.Update;
  if Pos(';',Chave) > 0 then
    begin
      For J :=0 to Length(TblImporta.FindField('EXCLA255CHAVE').AsString) do
        if Pos(';',TblImporta.FindField('EXCLA255CHAVE').AsString[J]) > 0 then
          Inc(Cont);
      for I := 0 to Cont do
        begin
          if I < Cont then
            begin
              if I > 0 then
                Filtro := Filtro + ' AND ' + Copy(Chave,1,Pos(';',Chave)-1) + ' = ' +
                          ConverteValor(SQLExclusaoFilter.FindField(Copy(Chave,1,Pos(';',Chave)-1)),Copy(Dados,1,Pos('|',Dados) - 1))
              else
                Filtro := Filtro + Copy(Chave,1,Pos(';',Chave)-1) + ' = ' +
                          ConverteValor(SQLExclusaoFilter.FindField(Copy(Chave,1,Pos(';',Chave)-1)),Copy(Dados,1,Pos('|',Dados) - 1));

              Delete(Chave,1,Pos(';',Chave));
              Delete(Dados,1,Pos('|',Dados));
            end
          else
            begin
              begin
                Filtro := Filtro + ' AND ' + Chave + ' = ' +
                          ConverteValor(SQLExclusaoFilter.FindField(Chave),Dados);
                Delete(Chave,1,Pos(';',Chave));
                Delete(Dados,1,Pos('|',Dados));
              end;
            end;
        end;
    end
  else
    begin
      Filtro := Chave + ' = ' + ConverteValor(SQLExclusaoFilter.FindField(Chave),Dados);
    end;

  /////////////////////////////////////////////////////////////////////////
  // TERMINO DA ROTINA DE MONTAGEM DO SQL.

{  Cont:=0;
  for I:=1 to Length(TblImporta.FindField('EXCLA255VALOR').asString) do
    if TblImporta.FindField('EXCLA255VALOR').asString[I]='|' then
      Inc(Cont);
  N:=VarArrayCreate([0,Cont],VarVariant);
  NumCampos:=Cont+1;
  Cont:=0;J:=1;
  for I:=1 to Length(TblImporta.FindField('EXCLA255CHAVE').asString) do
    if (TblImporta.FindField('EXCLA255CHAVE').asString[I]=';') or (I=Length(TblImporta.FindField('EXCLA255CHAVE').asString)) then
      begin
        if (TblImporta.FindField('EXCLA255CHAVE').AsString[I]=';') then
          N[Cont]:=Copy(TblImporta.FindField('EXCLA255CHAVE').asString,J,I-J)
        else
          N[Cont]:=Copy(TblImporta.FindField('EXCLA255CHAVE').asString,J,I-J+1);
        J:=I+1;
        Inc(Cont);
      end;
  Cont:=0;J:=1;
  for I:=1 to Length(TblImporta.FindField('EXCLA255VALOR').asString) do
    if (TblImporta.FindField('EXCLA255VALOR').asString[I]='|') or (I=Length(TblImporta.FindField('EXCLA255VALOR').asString)) then
      begin
        if (TblImporta.FindField('EXCLA255VALOR').asString[I]='|') then
          begin
            if Copy(TblImporta.FindField('EXCLA255VALOR').asString,J,I-J)='NULL' then
              Filtro := Filtro+ N[Cont] + ' is NULL AND '
            else
              Filtro := Filtro+ N[Cont] + '=' + ConverteValor(SQLImporta.FindField(VarToStr(N[Cont])),Copy(TblImporta.FindField('EXCLA255VALOR').asString,J,I-J)) + ' AND ';
          end
        else
          if Copy(TblImporta.FindField('EXCLA255VALOR').asString,J,I-J+1)='NULL' then
            Filtro := Filtro+ N[Cont] + ' is NULL'
          else
            Filtro := Filtro+ N[Cont] + '=' + ConverteValor(SQLImporta.FindField(VarToStr(N[Cont])),Copy(TblImporta.FindField('EXCLA255VALOR').asString,J,I-J+1));
        J:=I+1;
        Inc(Cont);
      end;}

  if (Dados <> 'NULL') and (Dados <> 'NULLNULL') then
    begin
      SQLExclusaoFilter.Close;
      SQLExclusaoFilter.MacroByName('MTabela').asString := TblImporta.FindField('EXCLA60TABELA').AsString;
      SQLExclusaoFilter.MacroByName('MFiltro').asString := Filtro;
      SQLExclusaoFilter.Open;
    end;

  if (not SQLExclusaoFilter.IsEmpty) and (Dados <> 'NULL') and (Dados <> 'NULLNULL') then
    begin
      try
        SQLExclusao.Close;
        SQLExclusao.MacroByName('MTabela').asString := TblImporta.FindField('EXCLA60TABELA').AsString;
        SQLExclusao.MacroByName('MFiltro').asString := Filtro;
        SQLExclusao.ExecSQL;
      except
        Application.ProcessMessages;
      end;
    end;
end;

function TFormTelaImportacao.CONTASRECEBEROK:Boolean;
begin
  Result:=True;
  if (TblImporta.FindField('CTRCN2TOTREC').AsFloat < SQLImporta.FindField('CTRCN2TOTREC').AsFloat) and
     (not TblImporta.FindField('CTRCDESTORNO').IsNull) then
    Result:=False
  else
    if (TblImporta.FindField('CTRCN2TOTREC').asFloat < SQLImporta.FindField('CTRCN2TOTREC').asFloat) and
       ((TblImporta.FindField('CTRCDESTORNO').AsVariant <> null) and
       (TblImporta.FindField('CTRCDESTORNO').AsDateTime <> SQLImporta.FindField('CTRCDESTORNO').AsDateTime) and
       (TblImporta.FindField('CTRCDESTORNO').AsDateTime > SQLImporta.FindField('CTRCDESTORNO').AsDateTime)) then
      Result:=True
    else
      Result:=False;
  if (TblImporta.FindField('CTRCN2TOTREC').asFloat > SQLImporta.FindField('CTRCN2TOTREC').asFloat) then
    Result:= True;
end;

function TFormTelaImportacao.CONTASPAGAROK:Boolean;
begin
  Result:=True;
  if TblImporta.FindField('CTPGN2TOTPAG').AsVariant <> Null then
    if TblImporta.FindField('CTPGN2TOTPAG').asFloat < SQLImporta.FindField('CTPGN2TOTPAG').asFloat then
      Result:=False;
end;

function TFormTelaImportacao.PRODUTOSALDOOK:Boolean;
begin
  Result := False;
  try
    if TblImporta.FindField('EMPRICOD').AsVariant     <> Null then
      if TblImporta.FindField('PSLDN3QTDE').AsVariant <> Null then
        if TblImporta.FindField('EMPRICOD').AsInteger <> EmpresaCorrente then
          Result := True;
  except
    Application.ProcessMessages;
  end;
end;

Function TFormTelaImportacao.ObtemValor(Campo:TField):String;
begin
  if Campo <> nil then
    begin
      If Campo.AsVariant = Null Then
        Result := ' IS Null'
      Else
        Case Campo.DataType Of
          ftDateTime:
            Result := '=' + '"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Campo.asDateTime) + '"';
          ftMemo, ftString:
            Result := '=' + '"' + Campo.asString + '"' ;
          ftInteger:
            Result := '=' + Campo.asString ;
          ftBCD, ftFloat:
            Begin
              Result := '=' + Campo.asString ;
              If Pos(',',Result) <> 0 Then
                Result[Pos(',',Result)] := '.' ;
            End;
        End;
    end
  else
    begin
      Result:= ' IS Null'
    end;
End;

Function TFormTelaImportacao.TipoRegistro:Char;
Var
  Proximo,
  Filtro,
  FiltroUpDate,
  SQLModify,
  SQLDelete,
  SQLInsert,
  SQLInsert1:String;
  Posicao:Integer;
  ChaveOK:Boolean;
Begin
  // VERIFICA SE A TABELA ESTA NA LISTA DE TABELAS
  // QUE NAO DEVEM SER EXPORTADAS OU IMPORTADAS E EXECUTA UM EXIT;
  if ((MatrizFilial = 'M') and (TabelaNaLista(Tabelas.FindField('NAME').AsString))) then
    begin
      Result := 'A';
      Exit;
    end;
  Campos.First;
  Filtro:='';
  FiltroUpDate:='';
  SQLModify  := 'UpDate ' + Tabelas.FindField('NAME').asString + ' Set ';
  SQLDelete  := 'Delete From ' + Tabelas.FindField('NAME').asString + ' Where ';
  SQLInsert  := 'Insert Into ' + Tabelas.FindField('NAME').asString + ' (';
  SQLInsert1 := ' (';
  SQLImporta.MacroByName('MFiltro').AsString := '0=0';
  SQLImporta.Open;
  Posicao:=1;
  ChaveOK:=False;
  While Not Campos.Eof Do
    Begin
      If Posicao<>Campos.RecordCount Then
        Begin
          SQLModify:=SQLModify + Campos.FindField('NAME').asString + '=:' + Campos.FindField('NAME').asString+',';
          SQLInsert  := SQLInsert + Campos.FindField('NAME').asString + ',';
          SQLInsert1 := SQLInsert1 + ':' + Campos.FindField('NAME').asString + ',';
        End
      Else
        Begin
          SQLModify:=SQLModify + Campos.FindField('NAME').asString + '=:' + Campos.FindField('NAME').asString;
          SQLInsert  := SQLInsert + Campos.FindField('NAME').asString + ') ';
          SQLInsert1 := SQLInsert1 + ':'+Campos.FindField('NAME').asString + ') ';
        End;
      If (Campos.FindField('VALCHECKS').asString='1') and Not ChaveOK  and (Campos.FindField('NAME').asString <> 'GRUPA60DESCR') Then
        Begin
          Campos.Next;
          Proximo:='EOF';
          If Not Campos.Eof Then
            Begin
              Proximo:=Campos.FindField('VALCHECKS').AsString;
              Campos.Prior;
            End;
          If (Proximo='EOF') or (Proximo <> '1') Then
            Begin
              Filtro:=Filtro+Campos.FindField('NAME').asString+ObtemValor(TblImporta.FindField(Campos.FindField('NAME').asString));
              FiltroUpDate:=FiltroUpDate+Campos.FindField('NAME').asString+'=:OLD_'+Campos.FindField('NAME').asString;
              ChaveOK:=True;
            End
          Else
            Begin
              if (Tabelas.FindField('NAME').asString = 'GRUPO') and (Campos.FindField('NAME').asString = 'GRUPICOD') then
                begin
                  Filtro:=Filtro+Campos.FindField('NAME').asString+ObtemValor(TblImporta.FindField(Campos.FindField('NAME').asString));
                  FiltroUpDate:=FiltroUpDate+Campos.FindField('NAME').asString+'=:OLD_'+Campos.FindField('NAME').asString;
                end
              else
                begin
                  Filtro:=Filtro+Campos.FindField('NAME').asString+ObtemValor(TblImporta.FindField(Campos.FindField('NAME').asString))+' AND ';
                  FiltroUpDate:=FiltroUpDate+Campos.FindField('NAME').asString+'=:OLD_'+Campos.FindField('NAME').asString+' AND ';
                end;
            End;
        End;
      Campos.Next;
      Inc(Posicao);
    End;
  if Filtro = '' then
    begin
      Result := 'A';
      Exit;
    end;
  SQLImporta.Close;
  SQLImporta.MacroByName('MTabela').AsString:=Tabelas.FindField('NAME').asString;
  SQLImporta.MacroByName('MFiltro').AsString:=Filtro;
  SQLImporta.Open;
  SQLImporta.First;
  If SQLImporta.IsEmpty Then
    Result:='I'
  Else
    Result:='U';
End;

Procedure TFormTelaImportacao.ImportaRegistros;
var Commit : Boolean;
Begin
  If Tabelas.Locate('NAME',Copy(TblImporta.TableName,1,Pos('.',TblImporta.TableName)-1),[LoCaseInsensitive]) Then
    Begin
      TblImporta.Open;
      If Campos.Active Then
        Campos.Close;
      Campos.TableName := Tabelas.FindField('NAME').asString ;
      Campos.Open;
      TblImporta.First;
      SQLImporta.Close;
      SQLImporta.MacroByName('MTabela').AsString := Tabelas.FindField('NAME').asString;
      While Not TblImporta.Eof Do
        Begin
          Case TipoRegistro Of
            'I': Begin
                   SQLImporta.Append;
                   if (Tabelas.FindField('NAME').asString = 'PRODUTO') then
                     begin
                       If Not SQLEmpresaSaldoNovo.Active Then SQLEmpresaSaldoNovo.Open;
                       If Not SQLProdutoSaldoNovo.Active Then SQLProdutoSaldoNovo.Open;
                       SQLEmpresaSaldoNovo.First;
                       While Not SQLEmpresaSaldoNovo.Eof Do
                         Begin
                           SQLProdutoSaldoNovo.Append;
                           SQLProdutoSaldoNovoEMPRICOD.asInteger   := SQLEmpresaSaldoNovoEMPRICOD.asInteger;
                           SQLProdutoSaldoNovoPRODICOD.AsVariant   := TblImporta.FieldByName('PRODICOD').asVariant;
                           SQLProdutoSaldoNovoPSLDN3QTDE.asFloat   := 0;
                           SQLProdutoSaldoNovoPSLDN3QTDMAX.asFloat := 0;
                           SQLProdutoSaldoNovoPSLDN3QTDMIN.asFloat := 0;
                           try
                             SQLProdutoSaldoNovo.Post;
                           except
                             SQLProdutoSaldoNovo.Cancel;
                           end;
                           SQLEmpresaSaldoNovo.Next;
                         End;
                       SQLEmpresaSaldoNovo.Close;
                       SQLProdutoSaldoNovo.Close;
                     end;
                 End;
            'U':Begin
                  If ((MatrizFilial='F')
                      or not (TabelaNaLista(Tabelas.FindField('NAME').asString))) AND
                     ((Tabelas.FindField('NAME').asString <> 'CONTASRECEBER')
                       or ((Tabelas.FindField('NAME').asString = 'CONTASRECEBER')
                            and (CONTASRECEBEROK))) AND
                     ((Tabelas.FindField('NAME').asString <> 'CONTASPAGAR')
                       or ((Tabelas.FindField('NAME').asString = 'CONTASPAGAR')
                            and (CONTASPAGAROK))) AND
                     ((Tabelas.FindField('NAME').asString <> 'PRODUTOSALDO')
                       or ((Tabelas.FindField('NAME').asString = 'PRODUTOSALDO')
                            and (PRODUTOSALDOOK))) AND
                     ((Tabelas.FindField('NAME').asString <> 'MOVIMENTOESTOQUE')) AND
                     ((Tabelas.FindField('NAME').asString <> 'TERMINAL')
                       or ((Tabelas.FindField('NAME').asString = 'TERMINAL')
                            and (TblImporta.FindField('EMPRICOD').asInteger <> EmpresaCorrente))) Then
                    SQLImporta.Edit;
                End;
          End;

          If SQLImporta.State in DsEditModes Then
            Begin
              Campos.First;
              while not Campos.Eof Do
                begin
                  If (SQLImporta.FindField(Campos.FindField('NAME').asString)<>Nil) and
                     (TblImporta.FindField(Campos.FindField('NAME').asString)<>Nil) Then
                    if (MatrizFilial='F') and (AnsiUpperCase(Campos.FindField('NAME').asString) = 'PENDENTE') then
                      SQLImporta.FindField(Campos.FindField('NAME').asString).asVariant:= 'N'
                    else
                      begin
                        if (AnsiUpperCase(Campos.FindField('NAME').AsString)) = 'REGISTRO' then
                          begin
                            try
                              DateTimeToStr(TblImporta.FindField(Campos.FindField('NAME').asString).AsDateTime);
                              SQLImporta.FindField(Campos.FindField('NAME').asString).asVariant:=TblImporta.FindField(Campos.FindField('NAME').asString).asVariant;
                            except
                              SQLImporta.FindField(Campos.FindField('NAME').asString).asVariant:= Now;
                            end;
                          end
                        else
                         SQLImporta.FindField(Campos.FindField('NAME').asString).asVariant:=TblImporta.FindField(Campos.FindField('NAME').asString).asVariant;
                      end;
                  Campos.Next;
                End;
              try
                SQLImporta.Post;
                Application.ProcessMessages;
              except
                SQLImporta.Cancel;
                Application.ProcessMessages;
              end;
            {  if not SQLImporta.IsEmpty then
                if SQLImporta.UpdatesPending then
                  begin
                    SQLImporta.ApplyUpdates;
                    Commit := True;
                  end;  }
            End;
          If (Tabelas.FindField('NAME').asString='EXCLUSAO') Then
            ExcluirRegistro;
          TblImporta.Next;
          Application.ProcessMessages;
        End;

       { try
          if Commit then
            SQLImporta.CommitUpdates;
        except
          on E:Exception do
            begin
              ShowMessage('Problemas ao importar registro, ANOTE O ERRO:' + #13 +
                          'Tabela: ' + Tabelas.FindField('NAME').asString + #13 +
                          ' ERRO: ' + E.Message);
              SQLImporta.CancelUpdates;
              Application.ProcessMessages;
            end;
        end; }

      EditContTotRegistros.Text:=IntToStr(StrToInt(EditContTotRegistros.Text)+TblImporta.RecordCount);EditContTotRegistros.Update;
      Campos.Close;
      TblImporta.Close;
    end;
End;

Procedure TFormTelaImportacao.ImportaTabelas;
Var
  I:Integer;
  Title : string;
begin
  ListaLOG.Directory      := DM.PathAplicacao + '\Importa';
  TblImporta.DatabaseName := DM.PathAplicacao + 'Importa';
  ListaLOG.Mask := '*.DB';
  ListaLOG.Update;
  Title := Application.Title;
  ProgressBarTabelas.Progress := 0;
  ProgressBarTabelas.MaxValue := ListaLOG.Items.Count;
  if not DM.DB.Connected then DM.DB.Open;
  For I:=0 To ListaLOG.Items.Count-1 Do
    Begin
      EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);EditTempoDecorrido.Update;
      ProgressBarTabelas.Progress := ProgressBarTabelas.Progress +1;
      Application.Title       := IntToStr(ProgressBarTabelas.PercentDone) + ' % Importando...';
      EditContTabela.Text     := IntToStr(ProgressBarTabelas.Progress)+' de '+IntToStr(ProgressBarTabelas.MaxValue);EditContTabela.Update;
      EditContTabGeral.Text   := IntToStr(StrToInt(EditContTabGeral.Text)+1);EditContTabGeral.Update;
      TblImporta.TableName    := ListaLOG.Items[I];
      EditTabela.Text         := Copy(TblImporta.TableName,1,Pos('.',TblImporta.TableName)-1);EditTabela.Update;
      ImportaRegistros;
      Application.ProcessMessages;
    End;
  Application.Title := Title;
End;

Procedure TFormTelaImportacao.ApagaArquivos;
begin
  ListaLOG.Items.Clear;
  ListaLOG.Directory:=DM.PathAplicacao + '\Importa';
  ListaLOG.Mask:='*.DB;*.MB';
  ListaLOG.Update;
  ProgressBarTabelas.Progress:=0;
  ProgressBarTabelas.MaxValue:=ListaLOG.Items.Count;
  While ListaLOG.Items.Count>0 Do
    Begin
      ProgressBarTabelas.Progress:=ProgressBarTabelas.Progress+1;
      DeleteFile(DM.PathAplicacao + '\Importa\'+ListaLOG.Items[0]);
      While FileExists(DM.PathAplicacao + '\Importa\'+ListaLOG.Items[0]) Do
        Application.ProcessMessages;
      ListaLOG.Update;
    End;
  ProgressBarTabelas.Progress:=0;
End;

Procedure TFormTelaImportacao.CarregaArquivos(Status:Boolean);
var
  I:Integer;
  Empresa : string;
begin
  ListaLOG.Directory := DM.PathAplicacao + '\IMPORTA\LOG';
  ListaLOG.Mask:='*.LOG';
  ListaLOG.Update;
  ListaArquivos.Items.Clear;
  for I:=0 To ListaLOG.Items.Count-1 do
    begin
      try
        Empresa := Copy(ListaLOG.Items[I],1,3);
      finally
      end;
      if StrToInt(Empresa) = EmpresaCorrente then
        begin
          ListaArquivos.Items.Add(ListaLOG.Items[I]);
          //ListaArquivos.Checked[I]:=Status;
        end;
    end;
  BtnTodos.Click;
End;

procedure TFormTelaImportacao.FormResize(Sender: TObject);
begin
  inherited;
  PanelImp.Top:=(PanelCentral.Height-PanelImp.Height) Div 2;
  PanelImp.Left:=((PanelCentral.Width-PanelImp.Width) Div 2) + (PanelBarra.Width Div 2);
end;

procedure TFormTelaImportacao.BtnTodosClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If Not ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=True;
end;

procedure TFormTelaImportacao.BtnNenhumClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=False;
end;

procedure TFormTelaImportacao.FormCreate(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(Dm.PathAplicacao + '\IMPORTA') then
    begin
      Informa('O diretório de importação não existe, o sistema irá criá-lo para você!');
      CreateDir(Dm.PathAplicacao + '\IMPORTA');
      CreateDir(Dm.PathAplicacao + '\IMPORTA\LOG');
    end;

  TblImporta.DatabaseName := Dm.PathAplicacao + '\IMPORTA';
  CarregaArquivos(True);
end;

procedure TFormTelaImportacao.BtnIniciarClick(Sender: TObject);
Var
  ContLog,NumLog,I:Integer;
begin
  inherited;
  BtnIniciar.Enabled:=False;
  BtnNenhum.Enabled:=False;
  BtnTodos.Enabled:=False;
  if ParamStr(1) <> '' then
    if DM.ReceiveFile(LabelInfo) then
      Application.ProcessMessages;
  if ParamStr(1) <> '' then
    CarregaArquivos(True);
  If ListaArquivos.Items.Count > 0 Then
    Begin
      NumLog:=0;
      For I:=0 To ListaArquivos.Items.Count-1 Do
        If ListaArquivos.Checked[I] Then
          Inc(NumLog);
      If NumLog>0 Then
        Begin
          SQLEmpresa.Open;
          SQLEmpresa.Locate('EMPRICOD',EmpresaCorrente,[]);
          MatrizFilial := SQLEmpresaEMPRCMATRIZFILIAL.asString;
          SQLEmpresa.Close;
          Tabelas.Open;
          EditContTotRegistros.Text :='0';
          EditContTotRegistros.Update;
          EditContTabGeral.Text     :='0';
          EditContTotRegistros.Update;
          Inicio := Now;
          EditHoraInicio.Text:=FormatDateTime('hh:nn:ss',Now);
          EditHoraInicio.Update;
          EditTempoDecorrido.Text:=FormatDateTime('hh:nn:ss',Now-Inicio);
          EditTempoDecorrido.Update;
          EditContTotRegistros.Text:='0';
          EditContTotRegistros.Update;
          ContLog:=0;
          For I:=0 To ListaArquivos.Items.Count-1 Do
            If ListaArquivos.Checked[I] Then
              Begin
                ProgressBarTabelas.Progress:=0;
                ProgressBarTabelas.MaxValue:=100;
                LabelInfo.Caption:='Excluindo Arquivos Temporários...';
                LabelInfo.Update;
                ApagaArquivos;
                ProgressBarTabelas.Progress:=0;
                Inc(ContLog);
                EditContLOG.Text := IntToStr(ContLog)+' de '+IntToStr(NumLog);
                EditContLOG.Update;
                LabelInfo.Caption:='Descompactando Arquivo...';
                LabelInfo.Update;
                try
                  BackupFile.Restore(DM.PathAplicacao + '\IMPORTA\LOG\' + ListaArquivos.Items[I],DM.PathAplicacao + '\IMPORTA');
                except
                end;
                ProgressBarTabelas.Progress:=0;
                LabelInfo.Caption:='Importando Registros...';
                LabelInfo.Update;
                ImportaTabelas;
                DeleteFile(DM.PathAplicacao + '\IMPORTA\LOG\'+ListaArquivos.Items[I]);
                Application.ProcessMessages;
              End;
          CarregaArquivos(False);
          EditTabela.Text:='';
          EditTabela.Update;
          EditTempoDecorrido.Text := FormatDateTime('hh:nn:ss',Now-Inicio);
          EditTempoDecorrido.Update;
          EditHoraTermino.Text    := FormatDateTime('hh:nn:ss',Now);
          EditHoraTermino.Update;
          // Apagar arquivos temporários do último log
          ProgressBarTabelas.Progress:=0;
          LabelInfo.Caption:='Excluindo Arquivos Temporários...';
          LabelInfo.Update;
          ApagaArquivos;
          ///////////////////////////////////////////
          LabelInfo.Caption       := 'Importação do(s) LOG(s) Concluída!';
          LabelInfo.Update;
          Tabelas.Close;
        End
      Else
        ShowMessage('Selecione os Arquivos que deseja Importar!');
    End;
  BtnNenhum.Enabled:=True;
  BtnTodos.Enabled:=True;
  BtnIniciar.Enabled:=True;
end;

procedure TFormTelaImportacao.BackupFileProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
  inherited;
  ProgressBarTabelas.Progress:=Percent;
end;

procedure TFormTelaImportacao.DescompactaresteLOG1Click(Sender: TObject);
begin
  inherited;
  BackupFile.Restore(DM.PathAplicacao + '\IMPORTA\LOG\' + ListaArquivos.Items[ListaArquivos.ItemIndex],DM.PathAplicacao + '\IMPORTA');
  ShowMessage('Verifique os Arquivos!');
  ApagaArquivos;
end;

procedure TFormTelaImportacao.ButtonReceiveFileClick(Sender: TObject);
begin
  inherited;
  ButtonReceiveFile.Enabled := False;
  if DM.ReceiveFile(LabelInfo) then
    CarregaArquivos(True);
  ButtonReceiveFile.Enabled := True;  
end;

end.

