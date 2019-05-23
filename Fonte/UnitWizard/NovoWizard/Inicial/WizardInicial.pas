unit WizardInicial;

interface    

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvWizardRouteMapNodes, JvWizard, JvWizardRouteMapSteps,
  JvExControls, JvComponent, DBTables, StdCtrls, ComCtrls, ShellCtrls,
  ExtCtrls, JvSlider, Buttons, ConerBtn, DB, RxQuery, Mask, DBCtrls,
  ExtDlgs, JPeg, Menus, Grids, DBGrids, StrUtils, CheckLst, RXCtrls, ShellApi,
  Handprot, JvgProgress, JvBaseDlg, JvBrowseFolder, FileCtrl, JvgHint,
  JvMenus, RxLookup, JvExDBGrids, JvDBGrid, JvgPage;

type
  PNetArr = Array of PNetResource;
  TFormWizardInicial = class(TForm)
    JvWizard: TJvWizard;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    WizardWelcomePage: TJvWizardWelcomePage;
    WizardInteriorPageBD: TJvWizardInteriorPage;
    DBShellTreeView: TShellTreeView;
    Image: TImage;
    DBShellListView: TShellListView;
    Panel1: TPanel;
    Splitter1: TSplitter;
    btIrMeuComputador: TConerBtn;
    ConerBtn1: TConerBtn;
    ConerBtn2: TConerBtn;
    WizardInteriorPageEmpresa: TJvWizardInteriorPage;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    DSSQLEmpresa: TDataSource;
    pnBancoDados: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btGravarEmpresa: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEditEnd: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    OpenPictureDialog: TOpenPictureDialog;
    WizardInteriorPageUsuario: TJvWizardInteriorPage;
    DBImage1: TDBImage;
    SQLGeral: TRxQuery;
    WizardInteriorPageTerminais: TJvWizardInteriorPage;
    WizardInteriorPageScripts: TJvWizardInteriorPage;
    WizardInteriorPageFinal: TJvWizardInteriorPage;
    Panel3: TPanel;
    Panel4: TPanel;
    edUsuario: TEdit;
    edEmail: TEdit;
    edSenha: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    btInserirUsuario: TConerBtn;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACEXCLCLI: TStringField;
    SQLUsuarioUSUACCANCPREVENDA: TStringField;
    SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField;
    SQLUsuarioUSUACLIBERACREDITO: TStringField;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    SQLUsuarioUSUACEXCLDADOSTESO: TStringField;
    DSSQLUsuario: TDataSource;
    SQLUsuarioUSUACVERDADCOMPRCLI: TStringField;
    SQLUsuarioUSUACDESBLOQCLI: TStringField;
    SQLUsuarioUSUAN2PERCDESC: TBCDField;
    SQLUsuarioUSUACVENDCLIBLOQ: TStringField;
    SQLUsuarioUSUACCANCVENDA: TStringField;
    SQLUsuarioUSUACALTVLRVENDA: TStringField;
    SQLUsuarioUSUACALTCAIXATES: TStringField;
    SQLUsuarioUSUACEXCMOVBCO: TStringField;
    SQLUsuarioUSUAA60EMAIL: TStringField;
    chkMaster: TCheckBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    RxLabel3: TRxLabel;
    ckMicros: TCheckListBox;
    RxLabel4: TRxLabel;
    SQLTerminal: TRxQuery;
    chkModulosHabilitados: TRxCheckListBox;
    RxLabel1: TRxLabel;
    BrowseForFolderDialog: TJvBrowseForFolderDialog;
    Memo: TMemo;
    SQLScript: TSQLScript;
    Panel8: TPanel;
    btExeuctarScripts: TConerBtn;
    cboAcoes: TComboBox;
    Label19: TLabel;
    edOutrsoFiltros: TEdit;
    Label20: TLabel;
    lblLinkHelpOnLine: TRxLabel;
    JvgHint: TJvgHint;
    Progress: TProgressBar;
    PopupMenu: TJvPopupMenu;
    mnLista: TMenuItem;
    mnIcones: TMenuItem;
    mnDetalhes: TMenuItem;
    mnIconesPequenos: TMenuItem;
    PopupMenuUsuario: TJvPopupMenu;
    mnRemoverUsurio: TMenuItem;
    imgLinkHelpOnLine: TImage;
    WizardInteriorPageConfigGeral: TJvWizardInteriorPage;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    DSSQLConfigGeral: TDataSource;
    SQLConfigGeral: TQuery;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    PanelCentral: TPanel;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    dblOpEntradaTransf: TRxDBLookupCombo;
    dblOpSaidaTransf: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Dialog: TOpenDialog;
    JvDBGrid1: TJvDBGrid;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    btInserirOpEstoque: TConerBtn;
    JvgPageControlScripts: TJvgPageControl;
    TabSheetScripts: TTabSheet;
    TabSheetScriptsErros: TTabSheet;
    RxLabel2: TRxLabel;
    ListaSQL: TFileListBox;
    procedure WizardInteriorPageBDEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure btIrMeuComputadorClick(Sender: TObject);
    procedure WizardInteriorPageBDExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure DBShellListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure WizardInteriorPageEmpresaEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageEmpresaExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure DBImage1DblClick(Sender: TObject);
    procedure SQLEmpresaBeforePost(DataSet: TDataSet);
    procedure mnListaClick(Sender: TObject);
    procedure SQLUsuarioBeforePost(DataSet: TDataSet);
    procedure mnRemoverUsurioClick(Sender: TObject);
    procedure btInserirUsuarioClick(Sender: TObject);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure JvWizardCancelButtonClick(Sender: TObject);
    procedure WizardInteriorPageUsuarioEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageTerminaisEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageTerminaisExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure SQLTerminalBeforePost(DataSet: TDataSet);
    procedure SQLTerminalNewRecord(DataSet: TDataSet);
    procedure SQLTerminalAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WizardInteriorPageScriptsEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    function ExecutaSQL(ItemIndex, Vez : integer; Lista : TFileListBox)  : boolean ;
    procedure btExeuctarScriptsClick(Sender: TObject);
    procedure cboAcoesChange(Sender: TObject);
    procedure lblLinkHelpOnLineMouseEnter(Sender: TObject);
    procedure lblLinkHelpOnLineMouseLeave(Sender: TObject);
    procedure lblLinkHelpOnLineClick(Sender: TObject);
    procedure WizardInteriorPageScriptsExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ButtonDialogClick(Sender: TObject);
    procedure SQLConfigGeralNewRecord(DataSet: TDataSet);
    procedure WizardInteriorPageConfigGeralEnterPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure WizardInteriorPageConfigGeralExitPage(Sender: TObject;
      const Page: TJvWizardCustomPage);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dblOpEntradaTransfDropDown(Sender: TObject);
    procedure dblOpEntradaTransfCloseUp(Sender: TObject);
    procedure WizardInteriorPageEmpresaCancelButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure WizardInteriorPageConfigGeralCancelButtonClick(
      Sender: TObject; var Stop: Boolean);
    procedure btInserirOpEstoqueClick(Sender: TObject);
    procedure MemoChange(Sender: TObject);
  private
    { Private declarations }
    ArquivoBanco, PathScripts, PathRelatorios : String;
    ModulosHabilitados : String;
    Rodou              : Boolean;
  public
    { Public declarations }
  end;

var
  FormWizardInicial: TFormWizardInicial;
  cbBuffer : DWORD  	 = 16384;
implementation

uses Splash, DataModulo;

{$R *.dfm}

{Usuario}
{Terminal}
{CargaBanco}

function TFormWizardInicial.ExecutaSQL(ItemIndex, Vez : integer; Lista : TFileListBox)  : boolean ;
begin
  Lista.ItemIndex := ItemIndex ;
  Application.ProcessMessages;  
  SQLScript.SQL.Clear ;
  SQLScript.SQL.LoadFromFile(Lista.FileName) ;
  try
    SQLScript.ExecSQL ;
    Memo.Lines.Add('S Q L   [ ' + IntToStr(ItemIndex+1) + ' ]') ;
    Memo.Lines.Add('---------------------') ;
    Memo.Lines.Add('Execução efetuada com sucesso') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Memo.Lines.Add('') ;
    Result := true ;
  except
    on E: Exception do
      begin
        if Vez = 2 then
           begin
              Memo.Lines.Add('S Q L   [ ' + IntToStr(ItemIndex+1) + ' ]') ;
              Memo.Lines.Add('---------------------') ;
              Memo.Lines.Add(SQLScript.SQL.Text) ;
              Memo.Lines.Add('                  E R R O') ;
              Memo.Lines.Add('                  -------') ;
              Memo.Lines.Add(E.Message) ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
              Memo.Lines.Add('') ;
           end;
        Result := false ;
      end ;
  end ;
end ;

function EnumerateFunc( hwnd: HWND; hdc: HDC ; lpnr: PNetResource ): Boolean;
var
  hEnum, dwResult, dwResultEnum: DWORD;
  lpnrLocal: array[0..16384 div SizeOf(TNetResource)] of TNetResource;
  i: integer;
  cEntries : Longint;
begin
  centries := -1;

  dwResult := WNetOpenEnum(
                          RESOURCE_CONTEXT,
                          RESOURCETYPE_DISK,
                          0,
                          lpnr,
                          hEnum
                          );

  if (dwResult <> NO_ERROR) then
  begin
    result := FALSE;
    Exit;
  end;

  FillChar( lpnrLocal, cbBuffer, 0 );

  dwResultEnum := WNetEnumResource(hEnum,
                                  DWORD(cEntries),
                                  @lpnrLocal,
                                  cbBuffer);

  for i := 0 to cEntries - 1 do
  begin
    if StrPas(lpnrLocal[i].lpRemoteName) <> '' then
       FormWizardInicial.ckMicros.Items.Add( StrPas(lpnrLocal[i].lpRemoteName) );
  end;

  dwResult := WNetCloseEnum(hEnum);

  if(dwResult <> NO_ERROR) then
  begin
    result := FALSE;
  end
  else
    result :=  TRUE;
end;

function ValidaCGC(CGC: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(CGC[1]);
 n2:=StrToInt(CGC[2]);
 n3:=StrToInt(CGC[3]);
 n4:=StrToInt(CGC[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(CGC[5]);
 n6:=StrToInt(CGC[6]);
 n7:=StrToInt(CGC[7]);
 n8:=StrToInt(CGC[8]);
 n9:=StrToInt(CGC[9]);
 n10:=StrToInt(CGC[10]);
 n11:=StrToInt(CGC[11]);
 n12:=StrToInt(CGC[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=CGC[13]+CGC[14];
 if calculado=digitado then
   ValidaCGC:=true
  else
   ValidaCGC:=false;
end;

procedure Informa(Texto : string);
begin
    Application.MessageBox(Pchar(Texto),'Atenção',MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
end;

procedure TFormWizardInicial.WizardInteriorPageScriptsEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
Var I : Integer;
    Servidor : Boolean;

begin
   JvgPageControlScripts.ActivePage := TabSheetScripts;

   TabSheetScriptsErros.TabVisible  := Memo.Lines.Count > 0;

   BrowseForFolderDialog.Directory := '';

   PathScripts := ArquivoBanco;
   if PathScripts[2] <> ':' then
      begin
        for I := 1 to length(PathScripts)-1 do
            if PathScripts[I] = ':' then
               if Servidor then
                  begin
                    PathScripts[I] := ' ';
                    Break;
                  end
               else
                  begin
                     PathScripts[I] := '\';
                     Servidor        := True;
                  end;

        PathScripts := '\\' + PathScripts;
        PathScripts := AnsiReplaceStr(PathScripts, ' ', '');
      end;

   SetCurrentDir(ExtractFilePath(PathScripts));
   SetCurrentDir('..');
   if DirectoryExists(GetCurrentDir + '\Scripts') then
      PathScripts := GetCurrentDir + '\Scripts'
   else
      BrowseForFolderDialog.Execute;

   if DirectoryExists(GetCurrentDir + '\Relatorios') then
      PathRelatorios := GetCurrentDir + '\Relatorios';

   if BrowseForFolderDialog.Directory <> '' then
       PathScripts := BrowseForFolderDialog.Directory;

   BrowseForFolderDialog.Directory := '';

   if DirectoryExists(PathScripts) then
      ListaSQL.Directory := PathScripts;

   SetCurrentDir(ExtractFilePath(Application.ExeName));

   Application.HintHidePause := 10000;
end;

procedure TFormWizardInicial.WizardInteriorPageBDEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
var
  Params : TStringList;
  I, UltimoDir : Integer;
  Diretorios   : TStringList;
  ERede        : String;
begin
    if ArquivoBanco = '' then
       begin
          Params := TStringList.Create;
          Session.GetAliasParams('UnitGestao', Params);
          for I := 0 to Params.Count -1 do
             if Pos('SERVER NAME=', Params.Strings[I]) > 0 then
                begin
                  ArquivoBanco := Copy(Params.Strings[I], 13, Length(Params.Strings[I]));
                  Break;
                end;
       end;

    if Diretorios = Nil then
       Diretorios := TStringList.Create;

    UltimoDir := 0;
    for I := Length(ArquivoBanco) downto 0 do
        begin
           if (ArquivoBanco[I] = ':') and (ArquivoBanco[2] <> ':') then
              if (I > 2) and (Pos(':', Diretorios.Text) = 0) then
                 Diretorios.Add(Copy(ArquivoBanco, I - 1, 2))
              else
                 Diretorios.Add('\\' + Copy(ArquivoBanco, 0, I-1) + '\')
           else
              if I = 0 then
                 Diretorios.Add(ExtractFileDrive(ArquivoBanco));

           if ArquivoBanco[I] = '\' then
              Begin
                 if UltimoDir = 0 then
                    Diretorios.Add(Copy(ArquivoBanco, I + 1, Length(ArquivoBanco) - (I +1)))
                 else
                    Diretorios.Add(Copy(ArquivoBanco, I + 1, UltimoDir - (I +1)));

                 UltimoDir := I;
              end;
        end;

    I := Diretorios.Count -1;

    while I >=  0 do
        begin
          if I = Diretorios.Count - 1 then
             DBShellTreeView.Root := ExtractFilePath(Diretorios.Strings[I])
          else
             for UltimoDir := 0 to DBShellTreeView.Selected.Count - 1 do
                 begin
                    if (Pos('\\', DBShellTreeView.Root) > 0) and (DBShellTreeView.Selected.Level < 1) then
                       ERede := ':'
                    else
                       ERede := '';

                    if (DBShellTreeView.Selected.Item[UltimoDir].Text + ERede) = Diretorios.Strings[I] then
                       begin
                          DBShellTreeView.Selected.Item[UltimoDir].Selected := True;
                          DBShellTreeView.Selected.Expand(False);
                          Break;
                       end;
                 end;
          I := I - 1;
        end;

    for I := 0 to DBShellListView.Items.Count -1 do
       if TShellFolder(DBShellListView.Items.Item[I]).DisplayName = ExtractFileName(ArquivoBanco) then
          begin
             DBShellListView.SetFocus;
             DBShellListView.Items.Item[I].Selected := True;
             Break;
          end;
end;

procedure TFormWizardInicial.btIrMeuComputadorClick(Sender: TObject);
begin
   case TWinControl(Sender).Tag of
      1 : DBShellTreeView.Root := 'rfMyComputer';
      2 : DBShellTreeView.Root := 'rfDesktop';
      3 : DBShellTreeView.Root := 'rfNetwork';
   end;
end;

procedure TFormWizardInicial.WizardInteriorPageBDExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
Var
 Params : TStringList;
 I      : Integer;
 Servidor : Boolean;
begin
   if ArquivoBanco = '' then
      begin
         Application.MessageBox('Você deve escolher um Arquivo de Banco de Dados.',
                                'Atenção', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

   if not FileExists(ArquivoBanco) then
      begin
         Application.MessageBox('Informe um Arquivo de Banco de Dados Válido.',
                                'Arquivo não existe', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

   if UpperCase(ExtractFileExt(ArquivoBanco)) <> '.GDB' then
      begin
         Application.MessageBox('A Extensão do Arquivo não corresponde a extensão requerida "GDB".',
                                'Extensão Incorreta', MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL+ MB_ICONINFORMATION);
         Abort;
      end;

  if Application.MessageBox(Pchar('Tem certeza que deseja modificar o banco de dados ?' + #13'A ATW não se responsabiliza pelo uso desta rotina!'),'Atenção',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
    begin
          if Pos('\\', ArquivoBanco) > 0 then
             begin
                ArquivoBanco := AnsiReplaceStr(ArquivoBanco, '\\', '');
                Servidor     := False;
                for I := 1 to Length(ArquivoBanco)-1 do
                   begin
                      if (ArquivoBanco[I] = '\') then
                         if Servidor then
                            begin
                               ArquivoBanco[I] := '@';
                               Break;
                            end
                         else
                            begin
                               ArquivoBanco[I] := ':';
                               Servidor        := True;
                            end;
                   end;
             end;
          ArquivoBanco := AnsiReplaceStr(ArquivoBanco, '@', ':\');

          Params := TStringList.Create;
          Params.Add('SERVER NAME=' + ArquivoBanco);
          DM.Database.Close;
          DM.Database.Session.ModifyAlias('UnitGestao',Params);
          DM.Database.Session.SaveConfigFile;
          try
            DM.Database.Open;
            Application.MessageBox('Conexão OK!','Status', MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
          except
            on E:Exception do
              begin
                Application.MessageBox(Pchar('Ocorreu um erro ao tentar salvar a configuração.' + #13 + E.message),'Erro',MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);
              end;
          end;
    end;

end;

procedure TFormWizardInicial.DBShellListViewChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
   if DBShellListView.SelectedFolder <> Nil then
      ArquivoBanco := DBShellListView.SelectedFolder.PathName;
end;

procedure TFormWizardInicial.WizardInteriorPageEmpresaEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not DM.Database.Connected then DM.Database.Open;

   if not SQLEmpresa.Active then SQLEmpresa.Active := True;

   if SQLEmpresa.IsEmpty then
      SQLEmpresa.Append;
end;

procedure TFormWizardInicial.WizardInteriorPageEmpresaExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
   if SQLEmpresa.State in dsEditModes then
      SQLEmpresa.Post;
end;

procedure TFormWizardInicial.DBImage1DblClick(Sender: TObject);
begin
   if OpenPictureDialog.Execute then
      if OpenPictureDialog.FileName <> '' then
         begin
           if not (SQLEmpresa.State in dsEditModes) then
              SQLEmpresa.Edit;
           SQLEmpresaEMPRBLOGOTIPO.LoadFromFile(OpenPictureDialog.FileName);
         end;
end;

procedure TFormWizardInicial.SQLEmpresaBeforePost(DataSet: TDataSet);
Var I : Integer;
begin
    for I := 0 to SQLEmpresa.FieldCount - 1 do
        begin
          if (SQLEmpresa.Fields.Fields[I].Tag = 1) and (SQLEmpresa.Fields.Fields[I].IsNull) then
             begin
               SQLEmpresa.Fields.Fields[I].FocusControl;
               Informa('O campo ''' + SQLEmpresa.Fields.Fields[I].DisplayLabel + ''' deve ser preenchido.');
               Abort;
             end;
        end;

    if not ValidaCGC(SQLEmpresaEMPRA14CGC.AsString) then
       begin
          SQLEmpresaEMPRA14CGC.FocusControl;
          Informa('CNPJ invalido!!! Verifique e tente novamente.');
          Abort;
       end;

    SQLGeral.Close;
    SQLGeral.SQL.Text := 'select Max(EMPRICOD) as ProximoCodigo from EMPRESA';
    SQLGeral.Open;

    SQLEmpresaEMPRICOD.AsInteger := SQLGeral.FieldByName('ProximoCodigo').AsInteger + 1;
    SQLEmpresaEMPRCMATRIZFILIAL.AsString := 'M';
    SQLEmpresaEMPRCFISJURID.AsString := 'J';
    SQLEmpresaPENDENTE.AsString := 'S';
    SQLEmpresaREGISTRO.AsDateTime := Now;
end;

procedure TFormWizardInicial.mnListaClick(Sender: TObject);
begin
     case TMenuItem(Sender).Tag of
        1 : DBShellListView.ViewStyle := vsList;
        2 : DBShellListView.ViewStyle := vsIcon;
        3 : DBShellListView.ViewStyle := vsReport;
        4 : DBShellListView.ViewStyle := vsSmallIcon;
     end;
end;

procedure TFormWizardInicial.SQLUsuarioBeforePost(DataSet: TDataSet);
begin
    SQLGeral.Close;
    SQLGeral.SQL.Text := 'select Max(USUAICOD) as ProximoCodigo from Usuario';
    SQLGeral.Open;

    SQLUsuarioUSUAICOD.AsInteger := SQLGeral.FieldByName('ProximoCodigo').AsInteger + 1;

    SQLUsuarioUSUAA60LOGIN.AsString := edUsuario.Text;
    SQLUsuarioUSUAA5SENHA.AsString  := edSenha.Text;
    SQLUsuarioUSUAA60EMAIL.AsString := edEmail.Text;
    SQLUsuarioPENDENTE.AsString := 'S';
    SQLUsuarioREGISTRO.AsDateTime := Now;
    if chkMaster.Checked then
       SQLUsuarioUSUACUSERMASTER.AsString := 'S'
    else
       SQLUsuarioUSUACUSERMASTER.AsString := 'N';
end;

procedure TFormWizardInicial.mnRemoverUsurioClick(Sender: TObject);
begin
   SQLUsuario.Delete;
end;

procedure TFormWizardInicial.btInserirUsuarioClick(Sender: TObject);
begin
   if TButton(Sender).Enabled then
      begin
        SQLUsuario.Append;
        SQLUsuario.Post;
        SQLUsuario.Close;
        SQLUsuario.Open;

        edUsuario.Text    := '';
        edEmail.Text      := '';
        edSenha.Text      := '';
        chkMaster.Checked := False;

        btInserirUsuario.Enabled := False;
      end;
end;

procedure TFormWizardInicial.edUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
   btInserirUsuario.Enabled := (Length(edUsuario.Text) > 4) and
                               (Length(edSenha.Text) > 4);
end;

procedure TFormWizardInicial.JvWizardCancelButtonClick(Sender: TObject);
begin
   Close;
end;

procedure TFormWizardInicial.WizardInteriorPageUsuarioEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLUsuario.Active then SQLUsuario.Active := True;
end;

procedure TFormWizardInicial.WizardInteriorPageTerminaisEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
var
  Myhwnd: HWND;
  Myhdc : HDC;
  Mylpnr: PNetResource;
begin
    ckMicros.Items.Clear;
    Mylpnr := nil;
    Myhwnd := Handle;
    Myhdc  := Canvas.Handle;
    EnumerateFunc( Myhwnd, Myhdc , Mylpnr );

    SQLTerminal.Close;
    SQLTerminal.Open;
end;

procedure TFormWizardInicial.WizardInteriorPageTerminaisExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
Var I, X : Integer;
begin
   for X := 0 to ckMicros.Items.Count - 1 do
      if ckMicros.Checked[X] then
         begin
           if not SQLTerminal.Locate('TERMA60NOMECOMPUT', copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X])), [loCaseInsensitive]) then
              begin
                 SQLTerminal.Append;
                 SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString := copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X]));
                 SQLTerminal.FieldByName('TERMA60DESCR').AsString      := copy(ckMicros.Items.Strings[X],3,length(ckMicros.Items.Strings[X]));
                 SQLTerminal.Post;
              end;
         end;
end;

procedure TFormWizardInicial.SQLTerminalBeforePost(DataSet: TDataSet);
begin
     SQLGeral.Close;
     SQLGeral.SQL.Text := 'select Max(TERMICOD) as Novo from TERMINAL';
     SQLGeral.Open;

     SQLTerminal.FieldByName('TERMICOD').AsInteger := SQLGeral.FieldByName('Novo').AsInteger + 1;
     SQLTerminal.FieldByName('REGISTRO').AsDateTime := Now;
     SQLTerminal.FieldByName('PENDENTE').AsString   := 'S';
end;

procedure TFormWizardInicial.SQLTerminalNewRecord(DataSet: TDataSet);
begin
  SQLTerminal.FieldByName('TERMCATIVO').Value            := 'I';
  SQLTerminal.FieldByName('TERMCTIPO').AsString          := 'C';
  SQLTerminal.FieldByName('TERMINRODECQUANT').AsString   := '2';
  SQLTerminal.FieldByName('TERMCIMPPREVENDA').AsString   := 'N';
  SQLTerminal.FieldByName('TERMCIMPBARRASPED').AsString  := 'N';
  SQLTerminal.FieldByName('TERMCAUTENTRFIMCUP').AsString := 'S';
  SQLTerminal.FieldByName('TERMCHIDECLIVENDPL').AsString := 'N';
  SQLTerminal.FieldByName('TERMCCONFFECHCUPOM').AsString := 'N';
  SQLTerminal.FieldByName('TERMCIMPCONFDIVIDA').AsString := 'S';
  SQLTerminal.FieldByName('TERMCIMPRDADINTCUP').AsString := 'S';
  SQLTerminal.FieldByName('TERMCCONFIMPCARNE').AsString  := 'N';
  SQLTerminal.FieldByName('TERMCINFDADOCLIPAD').AsString := 'N';
  SQLTerminal.FieldByName('TERMCMOSTRAIDCUPOM').AsString := 'N';
  SQLTerminal.FieldByName('TERMCMOVESTOQUE').AsString    := 'S';
  SQLTerminal.FieldByName('EMPRICOD').AsString           := SQLEmpresaEMPRICOD.AsString;
end;

procedure TFormWizardInicial.SQLTerminalAfterOpen(DataSet: TDataSet);
begin
   SQLTerminal.First;
   while not SQLTerminal.Eof do
      begin
         if ckMicros.Items.IndexOf('\\' + SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString) > -1 then
            ckMicros.Checked[ckMicros.Items.IndexOf('\\' + SQLTerminal.FieldByName('TERMA60NOMECOMPUT').AsString)] := True;
         SQLTerminal.Next;
      end;
end;

procedure TFormWizardInicial.FormActivate(Sender: TObject);
begin
  FormSplash.Hide;
end;

procedure TFormWizardInicial.JvWizardFinishButtonClick(Sender: TObject);
begin
   Close;
end;

procedure TFormWizardInicial.FormCreate(Sender: TObject);
Var I : Integer;

begin
  DM.VerificaAplicacaoHP(Tag);

  if DM.ModulosHabilitados = '9' then
     begin
       for I := 0 to chkModulosHabilitados.Items.Count -1 do
           chkModulosHabilitados.Checked[I] := True;
     end
  else
     for I  := 1 to Length(ModulosHabilitados) do
        begin
          chkModulosHabilitados.Checked[StrToInt(ModulosHabilitados[I])-1] := True;
        end;

  DM.Database.Close;
  DM.Database.Open;

  Application.Title := Caption;
end;

procedure TFormWizardInicial.btExeuctarScriptsClick(Sender: TObject);
var
    I, X : Integer;
begin
     Memo.Clear;
     Progress.Max      := ListaSQL.Items.Count * 2;
     Progress.Position := 0;
     Application.ProcessMessages;

     DM.Database.Close;
     DM.Database.Open;

     for X := 1 to 2 do
        begin
          Application.ProcessMessages;
          Memo.Lines.Clear;
          for I := 0 to ListaSQL.Items.Count-1 do
          begin
            Progress.Position := Progress.Position + 1;
            ExecutaSQL(I, X, ListaSQL);
            Progress.Update;
            Application.ProcessMessages;
          end;
          if X = 1 then
            begin
              DM.Database.Close;
              DM.Database.Open;
            end;
        end;
     try
       Memo.Lines.SaveToFile('Log.txt');
     except
     end;
     
     Progress.Position := 0;
     Rodou := True;
end;

procedure TFormWizardInicial.cboAcoesChange(Sender: TObject);
begin
   case cboAcoes.ItemIndex of
      0 : ListaSQL.Mask := '*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      1 : ListaSQL.Mask := 'Adiciona*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      2 : ListaSQL.Mask := 'Atualiza*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      3 : ListaSQL.Mask := 'Deleta*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
      4 : ListaSQL.Mask := 'Criar Tabela*' + AnsiReplaceStr(edOutrsoFiltros.Text, ' ', '*') + '*.SQL';
   end;
end;

procedure TFormWizardInicial.lblLinkHelpOnLineMouseEnter(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlue;
    TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFormWizardInicial.lblLinkHelpOnLineMouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFormWizardInicial.lblLinkHelpOnLineClick(Sender: TObject);
begin
    ShellExecute(0,'open', 'http://www.atwnet.com.br/help', '', '', SW_SHOWNORMAL);
end;

procedure TFormWizardInicial.WizardInteriorPageScriptsExitPage(Sender: TObject;
  const Page: TJvWizardCustomPage);
begin
   Application.HintHidePause := 2500;
   if not Rodou then
      begin
         if Application.MessageBox('As atualizações devem ser Realizadas antes de prosseguir.' + #13 +
                                   'Deseja Executar agora?',
                                   'Atenção', MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND + MB_SYSTEMMODAL) = idYes then
            begin
               btExeuctarScripts.Click;
               JvWizard.SelectNextPage;
            end
         else
            Abort;
      end;
end;



procedure TFormWizardInicial.SpeedButton1Click(Sender: TObject);
begin
   BrowseForFolderDialog.StatusText := 'Informe o diretório onde se encontra os relatórios';
   BrowseForFolderDialog.Execute;
   if BrowseForFolderDialog.Directory <> '' then
      begin
         PathScripts := BrowseForFolderDialog.Directory;
         SQLConfigGeralCFGEA255PATHREPORT.Value := PathScripts;
      end;
end;

procedure TFormWizardInicial.ButtonDialogClick(Sender: TObject);
begin
  Dialog.Execute;
  SQLConfigGeral.FieldByName('CFGEA255EXEDUPLICATA').AsString := Dialog.FileName;
end;

procedure TFormWizardInicial.SQLConfigGeralNewRecord(DataSet: TDataSet);
Var I : Integer;
begin
   SQLConfigGeralCFGEIEMPPADRAO.AsInteger := SQLEmpresaEMPRICOD.AsInteger;
   for I := 0 to SQLConfigGeral.FieldCount-1 do
       begin
         if (SQLConfigGeral.Fields.Fields[I].Size = 1) and
            (SQLConfigGeral.Fields.Fields[I].DataType = ftString) then
            SQLConfigGeral.Fields.Fields[I].AsString := 'N';
         if SQLConfigGeral.Fields.Fields[I].DataType in [ftInteger,ftFloat,ftCurrency, ftBCD] then
            SQLConfigGeral.Fields.Fields[I].AsInteger   := 0;
       end;
end;

procedure TFormWizardInicial.WizardInteriorPageConfigGeralEnterPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Active := True;

   btInserirOpEstoque.Visible := SQLOperacaoEstoque.IsEmpty;


   if not SQLConfigGeral.Active     then SQLConfigGeral.Active := True;

   if SQLConfigGeral.RecordCount = 0 then
      SQLConfigGeral.Append
   else
      SQLConfigGeral.Edit;

   Application.HintHidePause := 10000;
end;

procedure TFormWizardInicial.WizardInteriorPageConfigGeralExitPage(
  Sender: TObject; const Page: TJvWizardCustomPage);
begin
   if SQLConfigGeral.State in dsEditModes then
      SQLConfigGeral.Post;

   Application.HintHidePause := 2500;
end;

procedure TFormWizardInicial.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var Senha : String;
    I : Integer;
begin
    if Column.FieldName = 'USUAA5SENHA' then
       begin
         Senha := '';
         for I := 0 to Length(Column.Field.AsString) - 1 do
             Senha :=  Senha + '* ';
         TDBGrid(Sender).Canvas.TextOut(Rect.Left, Rect.Top, Senha);
       end;
end;

procedure TFormWizardInicial.dblOpEntradaTransfDropDown(Sender: TObject);
begin
    TControl(Sender).ShowHint := False;
end;

procedure TFormWizardInicial.dblOpEntradaTransfCloseUp(Sender: TObject);
begin
    TControl(Sender).ShowHint := True;
end;

procedure TFormWizardInicial.WizardInteriorPageEmpresaCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
  if SQLEmpresa.State in dsEditModes then
     SQLEmpresa.Cancel;
end;

procedure TFormWizardInicial.WizardInteriorPageConfigGeralCancelButtonClick(
  Sender: TObject; var Stop: Boolean);
begin
    if SQLConfigGeral.State in dsEditModes then
     SQLConfigGeral.Cancel;
end;

procedure TFormWizardInicial.btInserirOpEstoqueClick(Sender: TObject);
begin
   ListaSQL.Mask := 'Inserir*Opera*Estoque*.sqi';
   if ListaSQL.Count = 0 then
      begin
        Application.MessageBox('Não foi encontrado nenhum Script de Inserção de Dados na Tabela Operação de estoque.', 'Atenção', MB_OK+ MB_ICONINFORMATION+MB_SYSTEMMODAL);
        Abort;
      end;
   btExeuctarScripts.Click;
   ListaSQL.Mask := '*.sql';

   WizardInteriorPageConfigGeralEnterPage(Nil, Nil);
end;

procedure TFormWizardInicial.MemoChange(Sender: TObject);
begin
   TabSheetScriptsErros.TabVisible := Memo.Lines.Count > 0; 
end;

end.
