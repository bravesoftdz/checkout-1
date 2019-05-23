unit TelaImportaSPEDDaruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask, ToolEdit, FileCtrl,
  RXCtrls, jpeg, IBDatabase, DB, IBSQL, IniFiles, IBCustomDataSet, IBQuery,
  Placemnt, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormImportaSPEDDaruma = class(TForm)
    Panel1: TPanel;
    ListaArquivos: TRxCheckListBox;
    ListaLOG: TFileListBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EditDiretorio: TDirectoryEdit;
    Button1: TButton;
    BtnTodos: TSpeedButton;
    BtnNenhum: TSpeedButton;
    BtExecutar: TSpeedButton;
    ProgressBar: TProgressBar;
    Bevel1: TBevel;
    Label8: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EditHoraInicio: TEdit;
    EditHoraTermino: TEdit;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    ProgressBarFile: TProgressBar;
    IBDatabase: TIBDatabase;
    ibTrans: TIBTransaction;
    IBSQL: TIBSQL;
    IBQuery: TIBQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Memo1: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    EdtCaminhoBanco: TEdit;
    Label14: TLabel;
    FormStorage1: TFormStorage;
    CKBematech: TCheckBox;
    IBConsultaC470: TIBQuery;
    btCorrigeTXTBolao: TSpeedButton;
    Ck0200: TCheckBox;
    btSbomImbe: TSpeedButton;
    zCupom: TZQuery;
    zTerminal: TZQuery;
    zCupomItem: TZQuery;
    EditEmpresa: TEdit;
    Label15: TLabel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    procedure Button1Click(Sender: TObject);
    Procedure CarregaArquivos(Status:Boolean);
    procedure BtnTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure Carrega_0200(Info:String);
    procedure Carrega_C400(Info:String);
    procedure Carrega_C405(Info:String);
    procedure Carrega_C420(Info:String);
    procedure Carrega_C425(Info:String);
    procedure Carrega_C460(Info:String);
    procedure Carrega_C470(Info:String);
    procedure Carrega_C490(Info:String);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure IBDatabaseBeforeConnect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  LocalizaProduto(Bloco:String; nItem:String; nDescricao:String):String;
    procedure btCorrigeTXTBolaoClick(Sender: TObject);
    procedure btSbomImbeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nDataReducao : string;

  end;

var
  FormImportaSPEDDaruma: TFormImportaSPEDDaruma;
  nSerieECF: String;
  nCoo, nDataDaReducao: String;
implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;

{$R *.dfm}

procedure TFormImportaSPEDDaruma.Button1Click(Sender: TObject);
begin
  CarregaArquivos(True);
end;

Procedure TFormImportaSPEDDaruma.CarregaArquivos(Status:Boolean);
var
  I:Integer;
  Empresa : string;
begin
  ListaLOG.Directory := EditDiretorio.Text;
  ListaLOG.Mask:='*.txt';
  ListaLOG.Update;
  ListaArquivos.Items.Clear;
  for I:=0 To ListaLOG.Items.Count-1 do
    begin
      ListaArquivos.Items.Add(ListaLOG.Items[I]);
    end;
  BtnTodos.Click;
End;


procedure TFormImportaSPEDDaruma.BtnTodosClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If Not ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=True;
end;

procedure TFormImportaSPEDDaruma.BtnNenhumClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=False;
end;


procedure TFormImportaSPEDDaruma.FormCreate(Sender: TObject);
begin
 CarregaArquivos(True);
{ IBDatabase.DatabaseName := dm.DB.DatabaseName;}
// IbDatabase.Connected    := True;
// ibTrans.StartTransaction;
end;

Function TFormImportaSPEDDaruma.LocalizaProduto(Bloco:String; nItem:String; nDescricao:String):String;
begin
  // se não achou pesquisa pelo codigo de barras
  IBQuery.Close;
  IBQuery.SQL.Text := 'SELECT P.PRODICOD, P.PRODA60CODBAR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, '+
  'P.PRODN2ALIQCOFINS, P.PRODA2TIPOITEM, P.PRODA60DESCR, N.NCMA30CODIGO, '+
  'U.unida5descr, U.unida15descr, I.icmsn2aliquota FROM PRODUTO P '+
  'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
  'LEFT JOIN NCM N ON N.NCMICOD = P.NCMICOD '+
  'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD '+
  'WHERE PRODA60CODBAR = :xCod';
  IBQuery.Prepare;
  IBQuery.ParamByName('xCod').AsString := nItem;
  IBQuery.Open;

  // se nao achou por barras pesquisa pelo codigo interno
  If IBQuery.IsEmpty and (length(nItem)<7) then
  begin
    IBQuery.Close;
    IBQuery.SQL.Text := 'SELECT P.PRODICOD, P.PRODA60CODBAR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, '+
    'P.PRODN2ALIQCOFINS, P.PRODA2TIPOITEM, P.PRODA60DESCR, N.NCMA30CODIGO, '+
    'U.unida5descr, U.unida15descr, I.icmsn2aliquota  FROM PRODUTO P '+
    'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
    'LEFT JOIN NCM N ON N.NCMICOD = P.NCMICOD '+
    'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD '+
    'WHERE PRODICOD = :xCod';
    IBQuery.Prepare;
    IBQuery.ParamByName('xCod').AsString := nItem;
    IBQuery.Open;
  End;

  // se não achou acima pesquisa pelo codigo de barras no cadastro de multiplos codigos de barras na tabela PRODUTOBARRAS
  If IBQuery.IsEmpty then
  begin
    IBQuery.Close;
    IBQuery.SQL.Text := 'SELECT B.PRODICOD FROM PRODUTOBARRAS B WHERE B.PRBAA15BARRAS = :xCod';
    IBQuery.Prepare;
    IBQuery.ParamByName('xCod').AsString := nItem;
    IBQuery.Open;
    if not IBQuery.IsEmpty then
      begin
        nItem := IBQuery.FieldByName('PRODICOD').AsString;
        IBQuery.Close;
        IBQuery.SQL.Text := 'SELECT P.PRODICOD, P.PRODA60CODBAR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, '+
        'P.PRODN2ALIQCOFINS, P.PRODA2TIPOITEM, P.PRODA60DESCR, N.NCMA30CODIGO, '+
        'U.unida5descr, U.unida15descr, I.icmsn2aliquota  FROM PRODUTO P '+
        'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD '+
        'LEFT JOIN NCM N ON N.NCMICOD = P.NCMICOD '+
        'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD '+
        'WHERE P.PRODICOD = :xCod';
        IBQuery.Prepare;
        IBQuery.ParamByName('xCod').AsString := nItem;
        IBQuery.Open;
      end;  
  End;

  if IBQuery.IsEmpty then
    Begin
      Memo1.Lines.Add('Bloco '+Bloco+' - Falha ao Localizar produto de codigo '+ nItem + ' - '+nDescricao);
      Result := 'Error';
      Exit;
    End
  else
    Result := 'OK';
End;

procedure TFormImportaSPEDDaruma.BtExecutarClick(Sender: TObject);
var nVar, Info, Identificador : String;
    NroLinhas, Ix:Integer;
    Texto : TextFile;
begin

  IbDatabase.Connected    := True;

  if not ibTrans.InTransaction then
    ibTrans.StartTransaction;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_0200';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C400';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C405';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C420';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C425';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C460';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C470';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C490';
  ibsql.ExecQuery;

  IBSQL.Close;

  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;
  BtExecutar.Enabled := False;

    If ListaArquivos.Items.Count > 0 Then
    Begin
      ProgressBar.Max := ListaArquivos.Items.Count;
      ProgressBar.Position := 1;
      For Ix:=0 To ListaArquivos.Items.Count-1 Do
      begin
        If ListaArquivos.Checked[Ix] Then
        begin
          AssignFile(Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix]);
          Reset(Texto);

          Label13.Caption := ListaArquivos.Items[Ix];

          while not EOF(Texto) do
          begin
            Readln(Texto,info);
            NroLinhas := NroLinhas + 1;
          end;
          CloseFile(Texto);
          AssignFile( Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix] );
          Reset(Texto);

          Readln(Texto,Info);
          Identificador := Copy(Info, 1, 6) ;
          if  (Identificador <> '|0000|') and (Identificador <> '|C400|') then  // identificação do vendedor
          Begin
            MessageDlg('A T E N Ç Ã O...'+#13+#10+''+#13+#10+'Linha inicial não contem identificação de arquivo de SPED |0000|.'+#13+#10+''+#13+#10+'Verifique.', mtWarning, [mbOK], 0);
            Exit;
          end;

          CloseFile(Texto);
          AssignFile( Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix] );
          Reset(Texto);

          ProgressBarFile.Max := NroLinhas;
          Label7.Caption := IntToStr(NroLinhas);
          while not EOF(Texto) do
          begin
            Application.ProcessMessages;
            ProgressBarFile.Position := ProgressBarFile.Position + 1;

            ProgressBarfile.Update;
            Label5.Caption := IntToStr(ProgressBarFile.Position);
            Label5.Update;

            Readln(Texto,Info);
            Identificador := Copy(Info, 1, 6) ;

            if  Identificador = '|0200|' then  // identificação de produtos
              Carrega_0200(info)
            Else If (Identificador = '|C400|') and (not ck0200.Checked) then
              Carrega_C400(info)
            Else If (Identificador = '|C405|') and (not ck0200.Checked) then
              Carrega_C405(info)
            Else If (Identificador = '|C420|') and (not ck0200.Checked) then
              Carrega_C420(info)
            Else If (Identificador = '|C425|') and (not ck0200.Checked) then
              Carrega_C425(info)
            Else If (Identificador = '|C460|') and (not ck0200.Checked) then
              Carrega_C460(info)
            Else If (Identificador = '|C470|') and (not ck0200.Checked) then
              Carrega_C470(info)
            Else If (Identificador = '|C490|') and (not ck0200.Checked) then
              Carrega_C490(info);
          end; //while
          ProgressBar.Position := ProgressBar.Position + 1;
          CloseFile(Texto);
        end; // if
      end; // for
    End; // if

    if CKBematech.Checked then
      begin
        // Inclui Produtos, pq no txt da Bematech nao vem os produtos
        IBConsultaC470.Close;
        IBConsultaC470.SQL.Text := 'SELECT Distinct CODITEM From Sped_C470';
        IBConsultaC470.Prepare;
        IBConsultaC470.Open;
        if not IBConsultaC470.IsEmpty then
          begin
            while not IBConsultaC470.eof do
              begin
                if LocalizaProduto('',IBConsultaC470.fieldbyname('CODITEM').AsString ,'') = 'OK' then
                  begin
                    try
                      IBSQL.Close;
                      IBSQL.SQL.Text :=   'Insert into SPED_0200 ('+
                                          'COD_ITEM,             '+
                                          'DESCRICAO,            '+
                                          'CODIGOBARRAS,         '+
                                          'UNIDADEINVENTARIO,    '+
                                          'TIPO_ITEM,            '+
                                          'CODIGONCM,            '+
                                          'CST_ICMS ,            '+
                                          'PERCPIS,              '+
                                          'PERCCOFINS,           '+
                                          'ALIQUOTAICM)          '+
                                          'values (              '+
                                          ':nCOD_ITEM,           '+
                                          ':nDESCRICAO,          '+
                                          ':nCODIGOBARRAS,       '+
                                          ':nUNIDADEINVENTARIO,  '+
                                          ':nTIPO_ITEM,          '+
                                          ':nCODIGONCM,          '+
                                          ':nCST_ICMS ,          '+
                                          ':nPERCPIS,            '+
                                          ':nPERCCOFINS,         '+
                                          ':nALIQUOTAICM)        ';
                      IBSQL.Prepare;
                      IBSQL.ParamByName('nCOD_ITEM').AsString            := IBQuery.fieldbyName('PRODICOD').asstring;
                      IBSQL.ParamByName('nDESCRICAO').AsString           := IBQuery.fieldbyName('PRODA60DESCR').asstring;
                      IBSQL.ParamByName('nCODIGOBARRAS').AsString        := Trim(IBQuery.fieldbyName('PRODA60CODBAR').asstring);
                      IBSQL.ParamByName('nUNIDADEINVENTARIO').AsString   := IBQuery.fieldbyName('unida5descr').asstring;
                      IBSQL.ParamByName('nTIPO_ITEM').AsString           := IBQuery.FieldbyName('PRODA2TIPOITEM').value;
                      IBSQL.ParamByName('nCODIGONCM').AsString           := IBQuery.FieldbyName('NCMA30CODIGO').value;
                      IBSQL.ParamByName('nCST_ICMS').AsString            := IBQuery.fieldbyName('prodiorigem').asstring + FormatFloat('00',IBQuery.Fieldbyname('prodisittrib').Value);
                      IBSQL.ParamByName('nPERCPIS').AsFloat              := IBQuery.FieldbyName('PRODN2ALIQPIS').value;
                      IBSQL.ParamByName('nPERCCOFINS').AsFloat           := IBQuery.FieldbyName('PRODN2ALIQCOFINS').value;
                      IBSQL.ParamByName('nALIQUOTAICM').AsFloat          := IBQuery.FieldbyName('ICMSN2ALIQUOTA').value;
                      IBSQL.ExecQuery;
                      IBSQL.Close;
                    except
                      Application.ProcessMessages;
                      Memo1.Lines.Add('Bloco 0200 - Falha ao Incluir Produto de Codigo '+IBQuery.fieldbyName('PRODICOD').asstring);
                    end;
                  end;
                IBConsultaC470.Next;
              end;
          end;
      end;

    ibTrans.Commit;
    Showmessage('Importação Concluida!');
end;

procedure TFormImportaSPEDDaruma.Carrega_0200(info:String);
var i, nCampo: Integer;
    n0200,
    nCodItem,
    nDescricao,
    nCodBarras,
    nCodAnterior,
    nUnidInvent,
    nTipoItem ,
    nCodNCM,
    nEXIPI,
    nCodGem,
    nCodLst,
    naliquota,
    nCST_ICMS,
    xText:String;
    nPercPis, nPercCofins : Extended;
begin
  xText   := '';
  nCampo  :=  0;
  Label10.Caption := '0200';
  Label10.Update;
  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: n0200          := xText;
      2: nCodItem       := xText;
      3: nDescricao     := xtext;
      4: nCodBarras     := xText;
      5: nCodAnterior   := xText;
      6: nUnidInvent    := xText;
      7: nTipoItem      := xText;
      8: nCodNCM        := xText;
      9: nEXIPI         := xText;
      10: nCodGem       := xText;
      11: nCodLst       := xText;
      12: naliquota     := xText;
      End;
      xText := '';
    End;
  end;

  If LocalizaProduto('0200', nCodItem, nDescricao) <> 'OK' Then
    Exit;
  Try
  nCodItem    := IBQuery.fieldbyName('PRODICOD').asstring;
  nCodBarras  := IBQuery.fieldbyName('PRODA60CODBAR').asstring;
  if length(IBQuery.Fieldbyname('prodisittrib').Value) < 3 then
    nCST_ICMS   := IBQuery.fieldbyName('prodiorigem').asstring + FormatFloat('00',IBQuery.Fieldbyname('prodisittrib').Value)
  else
    nCST_ICMS   := FormatFloat('00',IBQuery.Fieldbyname('prodisittrib').Value);  

  nPercPis    := IBQuery.FieldbyName('PRODN2ALIQPIS').value;
  nPercCofins := IBQuery.FieldbyName('PRODN2ALIQCOFINS').value;
  nCodNCM     := IBQuery.FieldbyName('NCMA30CODIGO').value;
  Except on E:Exception do
  Begin
    ShowMessage('Falha ao localizar informações do Item '+IBQuery.fieldbyName('PRODICOD').asstring+ ' - '+ nDescricao+#13#10+
    E.Message);
  End;End;
  IBQuery.Close;

  IBQuery.SQL.Text := 'Select cod_item from SPED_0200 where cod_item = :xCod';
  IBQuery.Prepare;
  IBQuery.ParamByName('xCod').AsString := nCodItem;
  IBQuery.Open;

  If IBQuery.IsEmpty then
  Begin
    IBSQL.Close;
    IBSQL.SQL.Text :=   'Insert into SPED_0200 ('+
                        'COD_ITEM,             '+
                        'DESCRICAO,            '+
                        'CODIGOBARRAS,         '+
                        'UNIDADEINVENTARIO,    '+
                        'TIPO_ITEM,            '+
                        'CODIGONCM,            '+
                        'CST_ICMS ,            '+
                        'PERCPIS,              '+
                        'PERCCOFINS,           '+
                        'ALIQUOTAICM)          '+
                        'values (              '+
                        ':nCOD_ITEM,           '+
                        ':nDESCRICAO,          '+
                        ':nCODIGOBARRAS,       '+
                        ':nUNIDADEINVENTARIO,  '+
                        ':nTIPO_ITEM,          '+
                        ':nCODIGONCM,          '+
                        ':nCST_ICMS ,          '+
                        ':nPERCPIS,            '+
                        ':nPERCCOFINS,         '+
                        ':nALIQUOTAICM)        ';
    IBSQL.Prepare;
    IBSQL.ParamByName('nCOD_ITEM').AsString            := nCodItem;
    IBSQL.ParamByName('nDESCRICAO').AsString           := nDescricao;
    IBSQL.ParamByName('nCODIGOBARRAS').AsString        := Trim(nCodBarras);
    if UPPERCASE(nUnidInvent) <> 'XXXXXX' then
      IBSQL.ParamByName('nUNIDADEINVENTARIO').AsString   := UPPERCASE(nUnidInvent)
    else
      IBSQL.ParamByName('nUNIDADEINVENTARIO').AsString   := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',nCodItem));
    IBSQL.ParamByName('nTIPO_ITEM').AsString           := nTipoItem;
    IBSQL.ParamByName('nCODIGONCM').AsString           := nCodNCM;
    IBSQL.ParamByName('nCST_ICMS').AsString            := nCST_ICMS;
    IBSQL.ParamByName('nPERCPIS').AsFloat              := nPercPis;
    IBSQL.ParamByName('nPERCCOFINS').AsFloat           := nPercCofins;
    if nAliquota <> '0,00' then
      // para as ECFs que geram o arquivo com , (virgula) na aliquota
      if Pos(',',nAliquota) = 0 then
        IBSQL.ParamByName('nALIQUOTAICM').AsFloat        := StrToInt(naliquota) / 100 //  1700/100  = 17,00 %
      Else
        IBSQL.ParamByName('nALIQUOTAICM').AsFloat        := StrToFloat(naliquota)
    else
      IBSQL.ParamByName('nALIQUOTAICM').value            := 0;
    IBSQL.ExecQuery;
    IBSQL.Close;
  End;
  ibQuery.Close;
  ibTrans.CommitRetaining;
end;

procedure TFormImportaSPEDDaruma.Carrega_C400(info:String);
var i, nCampo: Integer;
    nC400,
    nCodMod,
    nECF_Mod,
    nECF_Fab,
    nECF_CX,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C400';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC400       := xText;
      2: nCodMod     := xText;
      3: nECF_Mod    := xtext;
      4: nECF_Fab    := xText;
      5: nECF_CX     := xText;
      End;
      xText := '';
    End;
  end;

  IBQuery.Close;
  IBQuery.SQL.Text := 'Select * from SPED_C400 where NUMEROSERIEECF = :xSERIE';
  IBQuery.Prepare;
  IBQuery.ParamByName('xSerie').AsString := nECF_FAB;
  IBQuery.Open;

  If IBQuery.IsEmpty then
  Begin
    IBSQL.Close;
    IBSQL.SQL.Text := 'INSERT INTO SPED_C400 (NUMEROSERIEECF, CODIGOMODELO, ECF_MODELO, ECF_CAIXA) VALUES (:nNUMEROSERIEECF, :nCODIGOMODELO, :nECF_MODELO, :nECF_CAIXA)';
    IBSQL.Prepare;
    IBSQL.ParamByName('nNUMEROSERIEECF').AsString       := nECF_FAB;
    IBSQL.ParamByName('nCODIGOMODELO').AsString         := nCodMod;
    IBSQL.ParamByName('nECF_MODELO').AsString           := nECF_Mod;
    IBSQL.ParamByName('nECF_CAIXA').AsString            := nECF_CX;
    IBSQL.ExecQuery;
    IBSQL.Close;
  End;
  IBQuery.Close;

  nSerieECF := nECF_FAB;

  ibTrans.CommitRetaining;

end;

procedure TFormImportaSPEDDaruma.Carrega_C405(info:String);
var i, nCampo: Integer;
    nC405,
    nCRO,
    nCRZ,
    nCOO_Final,
    nGT_Fim,
    nVLR_Bruto,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C405';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
        1: nC405        := xText;
        2: nDataReducao := xText;
        3: nCRO         := xtext;
        4: nCRZ         := xText;
        5: nCOO_Final   := xText;
        6: nGT_Fim      := TrocaVirgulaPorPonto(xText);
        7: nVLR_Bruto   := TrocaVirgulaPorPonto(xText);
      End;
      xText := '';
    End;
  end;

  {Alimento essa variavel para usar no c460 se o regsitro nao tiver data, coloco ela!}
  nDataDaReducao := nDataReducao;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C405 (NUMEROSERIEECF, DATAREDUCAO, CRO, CRZ, COO_FINAL, GT_FIM, VLR_BRUTO) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nCRO, :nCRZ, :nCOO_FINAL, :nGT_FIM, :nVLR_BRUTO)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString      := nSerieECF;
  if CKBematech.Checked then {20151101}
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataReducao,7,2)+'/'+Copy(nDataReducao,5,2)+'/'+Copy(nDataReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataReducao,0,2)+'/'+Copy(nDataReducao,3,2)+'/'+Copy(nDataReducao,5,4));
  IBSQL.ParamByName('nCRO').AsString                 := nCRO;
  IBSQL.ParamByName('nCRZ').AsString                 := nCRZ;
  IBSQL.ParamByName('nCOO_FINAL').AsString           := nCOO_Final;
  IBSQL.ParamByName('nGT_FIM').AsString              := nGT_Fim;
  IBSQL.ParamByName('nVLR_BRUTO').AsString           := nVLR_Bruto;
  IBSQL.ExecQuery;
  IBSQL.Close;

  IBTrans.CommitRetaining;
end;

procedure TFormImportaSPEDDaruma.Carrega_C420(info:String);
var i, nCampo: Integer;
    nC420,
    nTotalizador,
    nValorAcumulado,
    nNumeroTotalizador,
    nDescricaoTotalizador,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C420';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC420                := xText;
      2: nTotalizador         := xText;
      3: nValorAcumulado      := xText;
      4: nNumeroTotalizador   := xText;
      5: nDescricaoTotalizador:= xText;
      End;
      xText := '';
    End;
  end;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C420 (NUMEROSERIEECF, DATAREDUCAO, TOTALIZADOR, VALORACUMULADO, NUMEROTOTALIZADOR, DESCRICAOTOTALIZADOR) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nTOTALIZADOR, :nVALORACUMULADO, :nNUMEROTOTALIZADOR, :nDESCRICAOTOTALIZADOR)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString      := nSerieECF;

  if CKBematech.Checked then                                       
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataReducao,7,2)+'/'+Copy(nDataReducao,5,2)+'/'+Copy(nDataReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataReducao,0,2)+'/'+Copy(nDataReducao,3,2)+'/'+Copy(nDataReducao,5,4));

  IBSQL.ParamByName('nTOTALIZADOR').AsString         := nTotalizador;
  IBSQL.ParamByName('nValorAcumulado').AsFloat       := StrToFloat(nValorAcumulado);
  IBSQL.ParamByName('nNumeroTotalizador').AsString   := nNumeroTotalizador;
  IBSQL.ParamByName('nDescricaoTotalizador').AsString:= nDescricaoTotalizador;
  IBSQL.ExecQuery;
  IBSQL.Close;

  ibTrans.CommitRetaining;
end;

procedure TFormImportaSPEDDaruma.Carrega_C425(info:String);
var i, nCampo: Integer;
    nC425,
    nCodItem,
    nQuantidade,
    nUND,
    nValorItem,
    nValorPIS,
    nValorCofins,
    xText:String;
    nPercPis, nPercCofins : Extended;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C425 - Procura Produto';
  Label10.Update;


  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC425          := xText;
      2: nCodItem       := xText;
      3: nQuantidade    := xText;
      4: nUND           := xText;
      5: nValorItem     := xText;
      6: nValorPIS      := xText;
      7: nValorCofins   := xText;
      End;
      xText := '';
    End;
  end;

  if LocalizaProduto('C425', nCodItem, '') <> 'OK' then
    exit;


  Label10.Caption := 'C425 - Adiciona Prod.: '+ IBQuery.fieldbyName('PRODICOD').asstring;
  Label10.Update;

  nCodItem    := IBQuery.fieldbyName('PRODICOD').asstring;
  nPercPis    := IBQuery.FieldbyName('PRODN2ALIQPIS').value;
  nPercCofins := IBQuery.FieldbyName('PRODN2ALIQCOFINS').value;
  IBQuery.Close;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C425 (NUMEROSERIEECF, DATAREDUCAO, COD_ITEM, QUANTIDADE, UND, VALORITEM, VALORPIS, VALORCOFINS) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nCOD_ITEM, :nQUANTIDADE, :nUND, :nVALORITEM, :nVALORPIS, :nVALORCOFINS)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString   := nSerieECF;

  if CKBematech.Checked then
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataReducao,7,2)+'/'+Copy(nDataReducao,5,2)+'/'+Copy(nDataReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataReducao,0,2)+'/'+Copy(nDataReducao,3,2)+'/'+Copy(nDataReducao,5,4));

  IBSQL.ParamByName('nCOD_ITEM').AsString         := nCODITEM;
  IBSQL.ParamByName('nQUANTIDADE').AsFloat        := StrToFloat(nQUANTIDADE);
  IBSQL.ParamByName('nUND').AsString              := nUND;
  IBSQL.ParamByName('nVALORITEM').AsFloat         := StrToFloat(nVALORITEM);
  IBSQL.ParamByName('nVALORPIS').AsFloat          := StrToFloat(nValorItem) * (nPercPis / 100);
  IBSQL.ParamByName('nVALORCOFINS').AsFloat       := StrToFloat(nVALORCOFINS)  * (nPercCofins / 100);
  IBSQL.ExecQuery;
  IBSQL.Close;

  ibTrans.CommitRetaining;

end;

procedure TFormImportaSPEDDaruma.Carrega_C460(info:String);
var i, nCampo: Integer;
    nC460,
    nCodModelo,
    nCodSituacao,
    nNumeroCOO,
    nDataEmissao,
    nValorDoc,
    nValorPis,
    nValorCofins,
    nCPFCNPJ,
    nNomeAdquirente,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C460';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC460            := xText;
      2: nCodModelo       := xText;
      3: nCodSituacao     := xText;
      4: nNumeroCOO       := xText;
      5: nDataEmissao     := xText;
      6: nValorDoc        := xText;
      7: nValorPis        := xText;
      8: nValorCofins     := xText;
      9: nCPFCNPJ         := xText;
      10: nNomeAdquirente := xText;
      End;
      xText := '';
    End;
  end;

  if nDataEmissao = '' Then
    nDataEmissao := nDataDaReducao;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C460 (NUMEROSERIEECF, DATAREDUCAO, NUMEROCOO, CODMODELO, CODSITUACAO, DATAEMISSAO, VALORDOC, VALORPIS, VALORCOFINS, CPFCNPJ, NOMEADQUIRENTE) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nNUMEROCOO, :nCODMODELO, :nCODSITUACAO, :nDATAEMISSAO, :nVALORDOC, :nVALORPIS, :nVALORCOFINS, :nCPFCNPJ, :nNOMEADQUIRENTE)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString   := nSerieECF;
  if CKBematech.Checked then
    IBSQL.ParamByName('nDATAEMISSAO').asDate   := StrToDate(Copy(nDataEmissao,7,2)+'/'+Copy(nDataEmissao,5,2)+'/'+Copy(nDataEmissao,1,4))
  else
    IBSQL.ParamByName('nDATAEMISSAO').AsDate   := StrToDate(Copy(nDataEmissao,0,2)+'/'+Copy(nDataEmissao,3,2)+'/'+Copy(nDataEmissao,5,4));

  if CKBematech.Checked then
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataDaReducao,7,2)+'/'+Copy(nDataDaReducao,5,2)+'/'+Copy(nDataDaReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataDaReducao,0,2)+'/'+Copy(nDataDaReducao,3,2)+'/'+Copy(nDataDaReducao,5,4));

  IBSQL.ParamByName('nNUMEROCOO').AsString        := nNumeroCOO;
  IBSQL.ParamByName('nCODMODELO').AsString        := nCodModelo;

  If nVALORDOC <> '' Then
    begin
      IBSQL.ParamByName('nVALORDOC').AsFloat          := StrToFloat(nVALORDOC) ;
      IBSQL.ParamByName('nCODSITUACAO').AsString      := '00';
    end
  else
    begin
      IBSQL.ParamByName('nVALORDOC').AsFloat          := 0;
      IBSQL.ParamByName('nCODSITUACAO').AsString      := '02';
    end;

  If nVALORPIS <> '' Then
    IBSQL.ParamByName('nVALORPIS').AsFloat          := StrToFloat(nVALORPIS)
  Else
    IBSQL.ParamByName('nVALORPIS').AsFloat          := 0;
  If nVALORCOFINS <> '' Then
    IBSQL.ParamByName('nVALORCOFINS').AsFloat       := StrToFloat(nVALORCOFINS)
  Else
    IBSQL.ParamByName('nVALORCOFINS').AsFloat       := 0;
  IBSQL.ParamByName('nCPFCNPJ').AsString          := nCPFCNPJ;
  IBSQL.ParamByName('nNOMEADQUIRENTE').AsString   := nNOMEADQUIRENTE;
  IBSQL.ExecQuery;
  IBSQL.Close;

  nCOO := nNumeroCOO;

  IBTrans.CommitRetaining;
end;

procedure TFormImportaSPEDDaruma.Carrega_C470(info:String);
var i, nCampo: Integer;
    nC470,
    nCod_Item,
    nQuantidade,
    nQtd_Cancel,
    nUnid,
    nValorItem,
    nCST_ICMS,
    nCFOPItem,
    nAliquota,
    nValorPis,
    nValorCofins,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C470 - Procura Produto';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC470         := xText;
      2: nCod_Item     := xText;
      3: nQuantidade   := xText;
      4: nQtd_Cancel   := xText;
      5: nUnid         := xText;
      6: nValorItem    := xText;
      7: nCST_ICMS     := xText;
      8: nCFOPItem     := xText;
      9: nAliquota     := xText;
      10: nValorPis    := xText;
      11: nValorCofins := xText;
      End;
      xText := '';
    End;
  end;

  If LocalizaProduto('C470', nCod_Item, '') <> 'OK' Then
    Exit;

  nCod_Item   := IBQuery.fieldbyName('PRODICOD').asstring;

  Label10.Caption := 'C470 - Procura Produto: '+nCod_Item;
  Label10.Update;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C470 (NUMEROSERIEECF, DATAREDUCAO, NUMEROCOO, CODITEM, QUANTIDADE, QTD_CANCEL, UNID, VALORITEM, CST_ICMS, CFOPITEM, ALIQUOTA, VALORPIS, VALORCOFINS) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nNUMEROCOO, :nCODITEM, :nQUANTIDADE, :nQTD_CANCEL, :nUNID, :nVALORITEM, :nCST_ICMS, :nCFOPITEM, :nALIQUOTA, :nVALORPIS, :nVALORCOFINS)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString   := nSerieECF;

  if CKBematech.Checked then
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataDaReducao,7,2)+'/'+Copy(nDataDaReducao,5,2)+'/'+Copy(nDataDaReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataDaReducao,0,2)+'/'+Copy(nDataDaReducao,3,2)+'/'+Copy(nDataDaReducao,5,4));

  IBSQL.ParamByName('nNUMEROCOO').AsString        := nCoo;
  IBSQL.ParamByName('nCODITEM').AsString          := nCOD_ITEM;
  try
    IBSQL.ParamByName('nQUANTIDADE').AsFloat        := StrToFloat(nQUANTIDADE);
  except
    IBSQL.ParamByName('nQUANTIDADE').AsFloat        := 0;
  end;
  try
    if nQTD_CANCEL = '' then nQTD_CANCEL := '0';
    IBSQL.ParamByName('nQTD_CANCEL').AsFloat        := StrToFloat(nQTD_CANCEL);
  except
    IBSQL.ParamByName('nQTD_CANCEL').AsFloat        := 0;
  end;

  if (nCST_ICMS = '060') or (nCST_ICMS = '500') then
    nCFOPITEM := '5405'
  else
    nCFOPITEM := '5102';

  if frac(IBSQL.ParamByName('nQUANTIDADE').AsFloat) > 0 then
    IBSQL.ParamByName('nUNID').AsString           := 'KG'
  else
    IBSQL.ParamByName('nUNID').AsString           := nUNID;

  IBSQL.ParamByName('nVALORITEM').AsFloat         := StrToFloat(nVALORITEM);
  IBSQL.ParamByName('nCST_ICMS').AsString         := nCST_ICMS;
  IBSQL.ParamByName('nCFOPITEM').AsString         := nCFOPITEM;
  If (nALIQUOTA <> '') and (nALIQUOTA <> '0,00')  Then
    // para as ECFs que geram o arquivo com , (virgula) na aliquota
    if Pos(',',nAliquota) = 0 then
       IBSQL.ParamByName('nALIQUOTA').AsFloat          := StrToFloat(nALIQUOTA) / 100//  1700/100  = 17,00 %
    Else
      IBSQL.ParamByName('nALIQUOTA').AsFloat           := StrToFloat(naliquota)
  Else
    IBSQL.ParamByName('nALIQUOTA').AsFloat          := 0;

  If IBQuery.FieldByName('PRODN2ALIQPIS').Value > 0 Then
    IBSQL.ParamByName('nVALORPIS').AsFloat          := StrToFloat(nVALORITEM) * (IBQuery.FieldByName('PRODN2ALIQPIS').Value / 100)
  Else
    IBSQL.ParamByName('nVALORPIS').AsFloat          := 0;

  If IBQuery.FieldByName('PRODN2ALIQCOFINS').Value > 0 Then
    IBSQL.ParamByName('nVALORCOFINS').AsFloat       := StrToFloat(nVALORITEM) * (IBQuery.FieldByName('PRODN2ALIQCOFINS').Value / 100)
  Else
    IBSQL.ParamByName('nVALORCOFINS').AsFloat       := 0;

  IBSQL.ExecQuery;
  IBSQL.Close;
  IBQuery.Close;

  IBTrans.CommitRetaining;

end;

procedure TFormImportaSPEDDaruma.Carrega_C490(info:String);
var i, nCampo: Integer;
    nC490,
    nCST,
    nCFOPITEM,
    nAliquota,
    nValorOperacao,
    nValor_BC_ICMS,
    nValor_ICMS,
    nCod_Obs,
    xText:String;
begin
  xText   := '';
  nCampo  := 0;
  Label10.Caption := 'C490';
  Label10.Update;

  For i := 0 to Length(info) do
  begin
    if (info[i] = '|') then
    begin
      if i >= 6 then
        inc(nCampo);
    End Else
      xText := xText + info[i];

    if info[i] = '|' then
    begin
      Case nCampo of
      1: nC490         := xText;
      2: nCST          := xText;
      3: nCFOPITEM     := xText;
      4: nAliquota     := xText;
      5: nValorOperacao:= xText;
      6: nValor_BC_ICMS:= xText;
      7: nValor_ICMS   := xText;
      8: nCod_Obs      := xText;
      End;
      xText := '';
    End;
  end;

  IBSQL.Close;
  IBSQL.SQL.Text := 'INSERT INTO SPED_C490 (NUMEROSERIEECF, DATAREDUCAO, CST, CFOPITEM, ALIQUOTA, VALOROPERACAO, VALOR_BC_ICMS, VALOR_ICMS, COD_OBS) VALUES '+
                    '(:nNUMEROSERIEECF, :nDATAREDUCAO, :nCST, :nCFOPITEM, :nALIQUOTA, :nVALOROPERACAO, :nVALOR_BC_ICMS, :nVALOR_ICMS, :nCOD_OBS)';
  IBSQL.Prepare;
  IBSQL.ParamByName('nNUMEROSERIEECF').AsString   := nSerieECF;
  if CKBematech.Checked then
    IBSQL.ParamByName('nDATAREDUCAO').asDate   := StrToDate(Copy(nDataDaReducao,7,2)+'/'+Copy(nDataDaReducao,5,2)+'/'+Copy(nDataDaReducao,1,4))
  else
    IBSQL.ParamByName('nDATAREDUCAO').AsDate   := StrToDate(Copy(nDataDaReducao,0,2)+'/'+Copy(nDataDaReducao,3,2)+'/'+Copy(nDataDaReducao,5,4));

  if (nCST = '060') or (nCST = '500') then
    nCFOPITEM := '5405'
  else
    nCFOPITEM := '5102';

  IBSQL.ParamByName('nCST').AsString              := nCST;
  IBSQL.ParamByName('nCFOPITEM').AsString         := nCFOPITEM;
  IBSQL.ParamByName('nALIQUOTA').AsFloat          := StrToFloat(nALIQUOTA);
  IBSQL.ParamByName('nVALOROPERACAO').AsFloat     := StrToFloat(nVALOROPERACAO);
  IBSQL.ParamByName('nVALOR_BC_ICMS').AsFloat     := StrToFloat(nVALOR_BC_ICMS);
  IBSQL.ParamByName('nVALOR_ICMS').AsFloat        := StrToFloat(nVALOR_ICMS);
  IBSQL.ParamByName('nCOD_OBS').AsString          := nCOD_OBS;
  IBSQL.ExecQuery;
  IBSQL.Close;

  IBTrans.CommitRetaining;
end;

procedure TFormImportaSPEDDaruma.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormImportaSPEDDaruma.IBDatabaseBeforeConnect(Sender: TObject);
var IB_Gdb: String;
    Inifile: TInifile;
begin
{  IniFile := TIniFile.Create (DM.PathAplicacao+'IBGestao.ini');
  // tenta ler um valor e o testa para verificar sua existencia
  IB_Gdb:= IniFile.ReadString('IB_Local','IB_Diretory','');
  If IB_Gdb = '' then
  begin
     IniFile.WriteString('IB_Local','IB_Diretory',#39+'MicroNovo:C:\caminho\Arquivo.gdb'+#39);
     Inifile.UpdateFile;
     IB_Gdb:= 'Servidor:C:\caminho\Arquivo.gdb';
  end;
  IniFile.Free;
  IBDataBase.DatabaseName:= IB_Gdb;}
  if EdtCaminhoBanco.Text <> '' then
    IBDataBase.DatabaseName:= EdtCaminhoBanco.Text;
end;

procedure TFormImportaSPEDDaruma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormImportaSPEDDaruma.btCorrigeTXTBolaoClick(Sender: TObject);
var nVar, Info, Identificador, nCodItem, xText, xNovaLinha : String;
    i, NroLinhas, Ix, nCampo:Integer;
    Texto, ArqNew : TextFile;
begin
    If ListaArquivos.Items.Count > 0 Then
    Begin
      ProgressBar.Max := ListaArquivos.Items.Count;
      ProgressBar.Position := 1;
      For Ix:=0 To ListaArquivos.Items.Count-1 Do
      begin
        If ListaArquivos.Checked[Ix] Then
        begin
          AssignFile(Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix]);
          Reset(Texto);

          Label13.Caption := ListaArquivos.Items[Ix];

          while not EOF(Texto) do
            begin
              Readln(Texto,info);
              NroLinhas := NroLinhas + 1;
            end;
          CloseFile(Texto);
          AssignFile( Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix] );
          Reset(Texto);

          ProgressBarFile.Max := NroLinhas;
          Label7.Caption := IntToStr(NroLinhas);

          // Cria Arquivo Zerado para comecar inserir as linhas corrigidas
          AssignFile(ArqNew,EditDiretorio.Text+'\Corridido_'+ListaArquivos.Items[Ix]);
          Rewrite(ArqNew);

          while not EOF(Texto) do
          begin
            ProgressBarFile.Position := ProgressBarFile.Position + 1;

            ProgressBarfile.Update;
            Label5.Caption := IntToStr(ProgressBarFile.Position);
            Label5.Update;

            Readln(Texto,Info);
            Identificador := Copy(Info, 1, 6) ;

            xNovaLinha := Identificador;
            if (Identificador = '|C425|') or (Identificador = '|C470|') then
              begin
                xText   := '';
                nCampo  :=  0;
                for i := 0 to Length(info) do
                  begin
                    if (info[i] = '|') then
                      begin
                        if i >= 6 then
                          inc(nCampo);
                      end
                    else
                      xText := xText + info[i];

                    if info[i] = '|' then
                      begin
                        case nCampo of
                          2: begin
                               if LocalizaProduto('0200', xText, 'Proc.Produto') = 'OK' Then
                                 xNovaLinha := xNovaLinha + IBQuery.fieldbyName('PRODICOD').AsString
                               else
                                 xNovaLinha := xNovaLinha + xText;
                             end;
                        end;
                        if nCampo > 2 then
                          xNovaLinha := xNovaLinha + '|' + xText;
                        xText := '';
                      end;
                  end;

                try
                  xNovaLinha := xNovaLinha + '|';
                  Writeln(ArqNew,xNovaLinha);
                  Application.ProcessMessages;
                except
                  Application.ProcessMessages;
                end;
              end
            else
              begin
                try
                  // Cria linha igual a do arquivo original, pq nao é C425 ou C470
                  Writeln(ArqNew,Info);
                  Application.ProcessMessages;
                except
                  Application.ProcessMessages;
                end;
              end;
          end;
          ProgressBar.Position := ProgressBar.Position + 1;
          CloseFile(Texto);
          CloseFile(ArqNew);
        end;
      end;
    End;
end;

procedure TFormImportaSPEDDaruma.btSbomImbeClick(Sender: TObject);
var TerminalAtual : integer;
begin
  if editempresa.Text = '' then
    begin
      showmessage('Codigo da Empresa nao informado!');
      exit;
    end;
  if (De.Date = null) or (ate.Date = null) then
    begin
      ShowMessage('Informe as datas antes de tentar executar a rotina!');
      Exit;
    end;

  IbDatabase.Connected    := True;

  if not ibTrans.InTransaction then
    ibTrans.StartTransaction;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_0200';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C400';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C405';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C420';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C425';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C460';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C470';
  ibsql.ExecQuery;

  ibsql.Close;
  ibsql.sql.text := 'Delete from SPED_C490';
  ibsql.ExecQuery;

  IBSQL.Close;

  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;
  BtExecutar.Enabled := False;

  zCupom.close;
  zCupom.sql.clear;
  zCupom.sql.Add('select TERMICOD from cupom where EMPRICOD='+EditEmpresa.Text+' and CUPODEMIS>='''+formatdatetime('mm/dd/yyyy',De.Date)+''' and CUPODEMIS<='''+formatdatetime('mm/dd/yyyy',ate.Date)+'''') ;
  zCupom.sql.Add('group by TERMICOD');
  zCupom.open;
  TerminalAtual := 0 ;
  while not zCupom.eof do
    begin
      {Tenta criar o c400 quando trocar de terminal}
      if TerminalAtual <> zcupom.fieldbyname('TERMICOD').AsInteger then
        begin
          try
            {Filtra o Terminal}
            zTerminal.close;
            zTerminal.sql.text := 'select TERMICOD, TERMA60DESCR, TERMA20NROSERIE from terminal where TERMICOD='+zcupom.fieldbyname('TERMICOD').AsString;
            zTerminal.open;

            dm.Zupdate.Close;
            dm.Zupdate.SQL.Text := 'INSERT INTO SPED_C400 (NUMEROSERIEECF, CODIGOMODELO, ECF_MODELO, ECF_CAIXA) VALUES (:nNUMEROSERIEECF, :nCODIGOMODELO, :nECF_MODELO, :nECF_CAIXA)';
            dm.Zupdate.ParamByName('nCODIGOMODELO').AsString    := '2D';
            dm.Zupdate.ParamByName('nECF_MODELO').AsString      := zTerminal.fieldbyname('TERMA60DESCR').AsString;
            dm.Zupdate.ParamByName('nNUMEROSERIEECF').AsString  := zTerminal.fieldbyname('TERMA60DESCR').AsString; // zcupom.fieldbyname('TERMA20NROSERIE').AsString
            dm.Zupdate.ParamByName('nECF_CAIXA').AsString       := zcupom.fieldbyname('TERMICOD').AsString;
            dm.Zupdate.ExecSQL;
          except
            Application.ProcessMessages;
          end;
        end;
      {Alimenta variavel com terminal atual}
      TerminalAtual := zcupom.fieldbyname('TERMICOD').AsInteger;

      zCupom.next;
      Application.ProcessMessages;
    end;

  ProgressBar.Position := 1;

  {   if  Identificador = '|0200|' then  // identificação de produtos
        Carrega_0200(info)
      Else If (Identificador = '|C400|') and (not ck0200.Checked) then
        Carrega_C400(info)
      Else If (Identificador = '|C405|') and (not ck0200.Checked) then
        Carrega_C405(info)
      Else If (Identificador = '|C420|') and (not ck0200.Checked) then
        Carrega_C420(info)
      Else If (Identificador = '|C425|') and (not ck0200.Checked) then
        Carrega_C425(info)
      Else If (Identificador = '|C460|') and (not ck0200.Checked) then
        Carrega_C460(info)
      Else If (Identificador = '|C470|') and (not ck0200.Checked) then
        Carrega_C470(info)
      Else If (Identificador = '|C490|') and (not ck0200.Checked) then
        Carrega_C490(info); }

            ProgressBarFile.Position := ProgressBarFile.Position + 1;
            ProgressBarfile.Update;
            Label5.Caption := IntToStr(ProgressBarFile.Position);
            Label5.Update;

end;

end.
