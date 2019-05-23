unit Acesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, RXShell, Menus, StdCtrls, ComCtrls, ShellApi,
  GIFCtrl, Buttons, ConerBtn, IniFiles, jpeg, RxGIF, FileCtrl, DB, DBTables,
  IBDatabase, IBCustomDataSet, IBUpdateSQL, IBQuery, dxGDIPlusClasses,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection;

type
  TFormPrincipal = class(TForm)
    TrayIcon: TRxTrayIcon;
    MenuTryIcon: TPopupMenu;
    ButtonClose: TMenuItem;
    Separator: TMenuItem;
    BancodeDados1: TMenuItem;
    N1: TMenuItem;
    MnRealizarCopiadeSeguranca: TMenuItem;
    Timer: TTimer;
    MnAtualizarExec: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Link1Checkout: TLabel;
    Link2Faturamento: TLabel;
    LinkIntegrador: TLabel;
    Link4Adm: TLabel;
    Link5Financeiro: TLabel;
    LinkConfigurador: TLabel;
    TimerImpressaoRestaurante: TTimer;
    lbImpPedido: TLabel;
    Zdb: TZConnection;
    zConsulta: TZQuery;
    zPrevenda: TZQuery;
    zPrevendaItem: TZQuery;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNomeEmpresa: TStringField;
    TblTicketPreVendaCabFoneEmpresa: TStringField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaCabNomeClienteVenda: TStringField;
    TblTicketPreVendaCabDocumentoClienteVenda: TStringField;
    TblTicketPreVendaCabEnderecoClienteVenda: TStringField;
    TblTicketPreVendaCabCidadeClienteVenda: TStringField;
    TblTicketPreVendaCabOBSImpressaoCupom: TStringField;
    TblTicketPreVendaCabTERMICOD: TIntegerField;
    TblTicketPreVendaCabPRVDICOD: TIntegerField;
    TblTicketPreVendaCabFoneClienteVenda: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    TblTicketPreVendaCabClienteDependente: TIntegerField;
    TblTicketPreVendaCabPlacaVeiculo: TStringField;
    TblTicketPreVendaCabMesaCodigo: TIntegerField;
    TblTicketPreVendaCabContaCodigo: TIntegerField;
    TblTicketPreVendaCabTroco: TFloatField;
    TblTicketPreVendaCabDisplayNumero: TIntegerField;
    TblTicketPreVendaCabLevarCasa: TStringField;
    TblTicketPreVendaCabBairroClienteVenda: TStringField;
    TblTicketPreVendaCabMotoboy: TStringField;
    TblTicketPreVendaCabTaxaTele: TFloatField;
    TblTicketPreVendaCabSequencial: TIntegerField;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemComplemento: TStringField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    TblTicketPreVendaItemImpCozinha: TStringField;
    TblTicketPreVendaItemImpVale: TStringField;
    TblTicketPreVendaItemPRODA30COZINHA: TStringField;
    TblTicketPreVendaCabBusca: TStringField;
    TblTicketPreVendaCabDataEmissao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonSairClick(Sender: TObject);
    procedure LojaAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
    procedure BancodeDados1Click(Sender: TObject);
    procedure MnRealizarCopiadeSegurancaClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure MnAtualizarExecClick(Sender: TObject);
    procedure Link1CheckoutClick(Sender: TObject);
    procedure Link2FaturamentoClick(Sender: TObject);
    procedure Link5FinanceiroClick(Sender: TObject);
    procedure Link9SairClick(Sender: TObject);
    procedure Link4AdmClick(Sender: TObject);
    procedure LinkIntegradorClick(Sender: TObject);
    procedure LinkConfiguradorClick(Sender: TObject);
    procedure LinkAtivadorClick(Sender: TObject);
    procedure LinkAcessoRemotoClick(Sender: TObject);
    procedure LinkChatSuporteClick(Sender: TObject);
    procedure TimerImpressaoRestauranteTimer(Sender: TObject);
  private
    { Private declarations }
    AutoUpDate, Form : TIniFile;
    procedure RestoreWindow(Window : THandle);
    procedure OpenFile(PathFile : string);
    procedure MakeParty(TitleApplication, ApplicationName : string);
    procedure SetForm(FormName : string);
    function  ExisteModulo(PathFile : string) : Boolean;
    procedure Delay(Seconds : integer);
  public
      Path, HoraINI, HoraFIM, Intervalo, LinhaTXT, UsaTablet, idEmpresaTablet, HostName, PathBancoServer : String;
      Texto : TextFile;
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses WaitWindow, WindowsLibrary, TelaConfigAlias, AjudaManutencao, Backup,
  TelaAtualizaVersao;

{$R *.dfm}

procedure TFormPrincipal.RestoreWindow(Window : THandle);
var
 I : Integer;
begin
  ShowWindow(Window,SW_SHOWNORMAL);
  BringWindowToTop(Window);
  for I := 0 to 5 do
    begin
      FlashWindow(Window,True);
      Sleep(250);
    end;
  FlashWindow(Window,False);
  BringToFront;
  SetForegroundWindow(Window);
  FormPrincipal.Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.OpenFile(PathFile : string);
begin
  ShellExecute(0,'Open',Pchar(PathFile),'',Pchar(Path),SW_SHOWNORMAL);
  Application.Minimize;
  Hide;
  Application.ShowMainForm := False;
  Application.ProcessMessages;
end;
function TFormPrincipal.ExisteModulo(PathFile : string) : Boolean;
begin
  ExisteModulo := True;
  Exit;
  if FileExists(PathFile) then
    ExisteModulo := True
  else
    ExisteModulo := False;
end;
procedure TFormPrincipal.MakeParty(TitleApplication,ApplicationName : string);
var
  ApplicationExists : THandle;
  Local : double;
  BackUpList : TStrings;
  Log : TextFile;
begin
  if not ExisteModulo(ApplicationName) then
    begin
      Application.MessageBox('Este módulo não está habilitado ou não existe, favor entrar em contato com seu revendedor para halitá-lo!','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
      Application.Minimize;
//      Hide;
      Application.ShowMainForm := False;
      Application.ProcessMessages;
    end;
  ApplicationExists := FindWindow('Tapplication',PChar(TitleApplication));
  if ApplicationExists > 0 then
    RestoreWindow(ApplicationExists)
  else
    OpenFile(Path + ApplicationName);
end;

procedure TFormPrincipal.SetForm(FormName : string);
begin
  Form := TIniFile.Create(GetCurrentDir + '\SystemControls.ini');
  Form.WriteString('Form','Name',FormName);
  Form.UpdateFile;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Hd: THandle;
    Linha, IntervaloImpressao : String;
    IniFile : TIniFile;
begin
  Path := GetCurrentDir + '\';

  Timer.Enabled := False;
  TimerImpressaoRestaurante.Enabled := False;

  IniFile          := TIniFile.Create (Path+'Parceiro.INI');
  HostName         := IniFile.ReadString('SERVIDOR','HostName','');
  PathBancoServer  := IniFile.ReadString('SERVIDOR','Database',''); {Pega caminho banco oficial para usar em rotina de impressao cozinha}
  idEmpresaTablet  := IniFile.ReadString('Restaurante','idEmpresaTablet','1'); {id da empresa}
  UsaTablet        := IniFile.ReadString('Restaurante','UsaTablet','N'); {Testa se vai usar Tablets fazendo pedidos}
  IntervaloImpressao  := IniFile.ReadString('Restaurante','TempoTestaImpressaoPendente','1000');
  IniFile.Free;

  if UsaTablet = 'S' then
    begin
      TimerImpressaoRestaurante.Enabled := True;
      TimerImpressaoRestaurante.Interval := strtoint(IntervaloImpressao);
      lbImpPedido.Visible := True;
    end
  else
    begin
      TimerImpressaoRestaurante.Enabled := False;
      lbImpPedido.Visible := False;
    end;

  if FileExists('C:\Easy2Solutions\IntegradorAutoMatriz.TXT') then
    begin
      AssignFile(Texto,'C:\Easy2Solutions\IntegradorAutoMatriz.TXT');
      Reset(Texto);
      While not EOF(Texto) Do
        begin
          Readln(Texto,Linha);
          if Trim(Copy(Linha,1,18)) = 'HORA INICIO' then
            HoraINI := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'HORA FIM' then
            HoraFIM := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'INTERVALO MINUTOS' then
            Intervalo := Copy(Linha,21,25);
        end;
      CloseFile(Texto);
      if Intervalo <> '' then
        begin
          try
            Timer.Interval := StrToInt(Intervalo) * 1000 * 60;
            Timer.Enabled := True;
          except
            Application.ProcessMessages;
          end;
        end;
    end;
  if FileExists('C:\Easy2Solutions\IntegradorAutoFilial.TXT') then
    begin
      AssignFile(Texto,'C:\Easy2Solutions\IntegradorAutoFilial.TXT');
      Reset(Texto);
      While not EOF(Texto) Do
        begin
          Readln(Texto,Linha);
          if Trim(Copy(Linha,1,18)) = 'HORA INICIO' then
            HoraINI := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'HORA FIM' then
            HoraFIM := Copy(Linha,21,25);
          if Trim(Copy(Linha,1,18)) = 'INTERVALO MINUTOS' then
            Intervalo := Copy(Linha,21,25);
        end;
      CloseFile(Texto);
      if Intervalo <> '' then
        begin
          try
            Timer.Interval := StrToInt(Intervalo) * 1000 * 60;
            Timer.Enabled := True;
          except
            Application.ProcessMessages;
          end;
        end;
    end;

  if ParamStr(1) = 'Min' then
    ButtonSairClick(nil);

  TrayIcon.Show;
end;

procedure TFormPrincipal.ButtonFecharClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.ShowMainForm := False;
  Hide;
  Application.ProcessMessages;
  Abort;
end;

procedure TFormPrincipal.FormHide(Sender: TObject);
begin
  if Application.ShowMainForm = True then
    Application.ShowMainForm := False;
end;

procedure TFormPrincipal.TrayIconClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Application.ShowMainForm := True;
  Show;
  Application.BringToFront;
end;

procedure TFormPrincipal.ButtonCloseClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(27) then
    ButtonSairClick(Sender);
end;

procedure TFormPrincipal.ButtonSairClick(Sender: TObject);
begin
  Application.ShowMainForm := False;
  Hide;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.LojaAdvancedDrawItem(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
begin
  TMenuItem(Sender).Enabled := ExisteModulo('Loja.exe');
end;

procedure TFormPrincipal.BancodeDados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConfigAlias,FormConfigAlias);
  FormConfigAlias.ShowModal;
  if FormConfigAlias.ModalResult = MrOK then
    begin
      FormConfigAlias.Database.Session.SaveConfigFile;
      FormConfigAlias.ListBox.Items.SaveToFile(Path + 'ConfigAlias.ini');
//      FormConfigAlias.Database.Params.SaveToFile(Path + 'CaminhoAtualBanco.ini');
    end;
  FormConfigAlias.Destroy;
end;

procedure TFormPrincipal.MnRealizarCopiadeSegurancaClick(Sender: TObject);
begin
  Application.CreateForm(TFormBackup, FormBackup);
  FormBackup.Show;
end;

procedure TFormPrincipal.TimerTimer(Sender: TObject);
begin
  // Chama o Integrador Automatico conforme Temporizador
  if ( time >= StrToTime(HoraINI) ) and ( time <= StrToTime(HoraFIM) ) then
    begin
      if FileExists('C:\Easy2Solutions\IntegradorAutoMatriz.TXT') then
        WinExec(Pchar('C:\Easy2Solutions\Gestao\Integrador.exe MATRIZ'),SW_MINIMIZE);
      if FileExists('C:\Easy2Solutions\IntegradorAutoFilial.TXT') then
        WinExec(Pchar('C:\Easy2Solutions\Gestao\Integrador.exe FILIAL'),SW_MINIMIZE);
    end;
end;

procedure TFormPrincipal.MnAtualizarExecClick(Sender: TObject);
begin
{  Application.CreateForm(TFormTelaAtualizaVersao, FormTelaAtualizaVersao);
  FormTelaAtualizaVersao.Show;}
end;

procedure TFormPrincipal.Link1CheckoutClick(Sender: TObject);
begin
  MakeParty('ADVANCED CONTROL PDV','Checkout.exe');
end;

procedure TFormPrincipal.Link2FaturamentoClick(Sender: TObject);
begin
  MakeParty('Advanced Control Faturamento','Faturamento.exe');
end;

procedure TFormPrincipal.Link5FinanceiroClick(Sender: TObject);
begin
  MakeParty('Advanced Control Financeiro','Financeiro.exe');
end;

procedure TFormPrincipal.Link4AdmClick(Sender: TObject);
begin
  MakeParty('Advanced Control Administrativo','Loja.exe');
end;

procedure TFormPrincipal.LinkIntegradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Integrador','Integrador.exe');
end;

procedure TFormPrincipal.LinkConfiguradorClick(Sender: TObject);
begin
  MakeParty('Advanced Control Configurador','Configurador.exe');
end;

procedure TFormPrincipal.LinkAtivadorClick(Sender: TObject);
begin
  if FileExists('C:\Easy2Solutions\Gestao\Ativador.EXE') then
    WinExec(Pchar('C:\Easy2Solutions\Gestao\Ativador.EXE'),SW_SHOW);
end;

procedure TFormPrincipal.LinkAcessoRemotoClick(Sender: TObject);
begin
  MakeParty('Advanced Control Configurador','C:\Easy2Solutions\Instaladores\AA_v3.exe');
end;

procedure TFormPrincipal.LinkChatSuporteClick(Sender: TObject);
begin
//  MakeParty('Advanced Control Configurador','http://www.interface.agoraos.com.br/automasystem/');
    shellExecute(0, 'open', PChar('http://interface.agoraos.com.br/automasystem/'), '', '', SW_SHOWNORMAL);
end;

procedure TFormPrincipal.Link9SairClick(Sender: TObject);
begin
  Free;
  Application.Terminate;
end;

procedure TFormPrincipal.TimerImpressaoRestauranteTimer(Sender: TObject);
var Erro : Boolean;
    CaminhoNomeArquivo, Linha, xVendedor : String;
    I : Integer;
    Arquivo : TextFile;
    hMutex :THandle;
    Aplicativo :THandle;
begin
  TimerImpressaoRestaurante.Enabled := False;
  lbImpPedido.Visible := True;
  // Testa se tem algum pedido a ser impresso
  try
    lbImpPedido.Caption := 'Tentando Conectar no Banco de Dados do Servidor!';
    lbImpPedido.Update;
    Erro := False;
    Zdb.Connected := False;
    Zdb.HostName  := HostName;
    Zdb.Database  := PathBancoServer;
    Zdb.Connected := True;
  except
    Erro := True;
    Zdb.Connected := False;
    lbImpPedido.Caption := 'Falha ao conectar no Banco de Dados! Verifique arquivo Parceiro.INI';
    lbImpPedido.Update;
  end;

  if not Erro then
    begin
      {Filtra pedidos que ainda nao foram impressos}
      lbImpPedido.Caption := 'Servidor de Impressao de Pedidos Tablets Ativo!';
      lbImpPedido.Update;
      zPrevenda.close;
      zPrevenda.SQL.clear;
      zPrevenda.SQL.Text := 'Select * from Prevenda where PRVDN2TOTITENS>0 and PRVDCIMPORT=''N'' and PDVCPRECONCLU=''S'' and PRVDCIMPRESSO<>''S'' and EMPRICOD='+idEmpresaTablet+' order by PRVDICOD asc' ;
      zPrevenda.open;
      if not zPrevenda.IsEmpty then
        begin
          while not zPrevenda.eof do
            begin
              Erro := False;
              {Testa se o total de itens confere com o total gravado no cabecalho}
              zPrevendaItem.close;
              zPrevendaItem.sql.clear;
              zPrevendaItem.sql.Add('select count(PRVDICOD) from prevendaitem');
              zPrevendaItem.sql.Add('where TERMICOD='+zPrevenda.fieldbyname('TERMICOD').AsString + ' and PRVDICOD='+zPrevenda.fieldbyname('PRVDICOD').Asstring);
              zPrevendaItem.open;
              if zPrevenda.fieldbyname('TOTAL_ITENS').Value = zPrevendaitem.fieldbyname('count').Value then
                begin
                  if FileExists('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE') then
                    begin
                      WinExec(Pchar('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE ' + zPrevenda.FieldByName('termicod').AsString +' '+zPrevenda.FieldByName('prvdicod').AsString),sw_Show);
                    end
                  else
                    begin
                      //IMPRIMIR P/COZINHA APENAS OS NOVOS PRODUTOS SOLICITADOS PELO CLIENTE
                      try TblTicketPreVendaCab.Close         except Application.ProcessMessages end ;
                      try TblTicketPreVendaCab.DeleteTable   except Application.ProcessMessages end ;
                      try TblTicketPreVendaCab.CreateTable   except Application.ProcessMessages end ;
                      try TblTicketPreVendaCab.Open          except Application.ProcessMessages end ;

                      try TblTicketPreVendaItem.Close        except Application.ProcessMessages end ;
                      try TblTicketPreVendaItem.DeleteTable  except Application.ProcessMessages end ;
                      try TblTicketPreVendaItem.CreateTable  except Application.ProcessMessages end ;
                      try TblTicketPreVendaItem.Open         except Application.ProcessMessages end ;

                      // Consulta Vendedor
                      zConsulta.Close;
                      zConsulta.sql.Clear;
                      zConsulta.sql.Text := 'Select VENDA60NOME from Vendedor where VENDICOD = ' + zPrevenda.fieldbyname('VENDICOD').AsString ;
                      zConsulta.Open;

                      // Grava Cab do Ticket
                      while not TblTicketPreVendaCab.eof do
                        TblTicketPreVendaCab.delete;

                      TblTicketPreVendaCab.Append;
                      TblTicketPreVendaCabDataEmissao.Value      := zPrevenda.fieldbyName('PDVDDHVENDA').AsString ;
                      TblTicketPreVendaCabTicketNumero.AsString  := zPrevenda.fieldbyname('PRVDICOD').AsString;
                      TblTicketPreVendaCabTERMICOD.AsString      := zPrevenda.fieldbyname('TERMICOD').AsString;
                      TblTicketPreVendaCabVendedor.AsString      := zConsulta.fieldbyname('VENDA60NOME').AsString ;
                      TblTicketPreVendaCabPRVDICOD.AsString      := zPrevenda.fieldbyname('PRVDICOD').AsString;
                      TblTicketPreVendaCabMESACODIGO.AsString    := zPrevenda.fieldbyname('MESAICOD').AsString;
                      TblTicketPreVendaCabCONTACODIGO.AsString   := zPrevenda.fieldbyname('CONTAICOD').AsString;
                      TblTicketPreVendaCabTotalGeral.AsString    := zPrevenda.fieldbyname('PRVDN2TOTITENS').AsString;
                      TblTicketPreVendaCabTipoVenda.Value        := 'MESA';
                      TblTicketPreVendaCab.Post;

                      // Grava Itens do Ticket
                      while not TblTicketPreVendaItem.eof do
                        TblTicketPreVendaItem.delete;

                      zPrevendaItem.close;
                      zPrevendaItem.sql.clear;
                      zPrevendaItem.SQL.Add(' select i.*, p.PRODA60DESCR, p.PRODCIMPCOZINHA, p.PRODCIMPVALE, p.PRODA30COZINHA from PrevendaItem i, Produto p ');
                      zPrevendaItem.SQL.Add(' where i.PRODICOD = p.PRODICOD and ');
                      zPrevendaItem.SQL.Add(' i.TERMICOD='+zPrevenda.fieldbyname('TERMICOD').AsString + ' and i.PRVDICOD='+zPrevenda.fieldbyname('PRVDICOD').Asstring);
                      zPrevendaItem.open;
                      while not zPrevendaItem.EOF do
                        begin
                          TblTicketPreVendaItem.Append;
                          TblTicketPreVendaItemCodigo.Value         := zPrevendaItem.fieldbyname('PRODICOD').AsInteger;
                          TblTicketPreVendaItemDescricao.Value      := zPrevendaItem.fieldbyname('PRODA60DESCR').AsString;
                          TblTicketPreVendaItemComplemento.Value    := zPrevendaItem.fieldbyname('PVITTOBS').AsString;
                          TblTicketPreVendaItemImpCozinha.Value     := zPrevendaItem.fieldbyname('PRODCIMPCOZINHA').AsString;
                          TblTicketPreVendaItemImpVale.Value        := zPrevendaItem.fieldbyname('PRODCIMPVALE').AsString;
                          TblTicketPreVendaItemPRODA30COZINHA.Value := zPrevendaItem.fieldbyname('PRODA30COZINHA').AsString;
                          TblTicketPreVendaItemValorUnitario.Value  := zPrevendaItem.fieldbyname('PVITN3VLRUNIT').AsVariant;
                          TblTicketPreVendaItemQuantidade.Value     := zPrevendaItem.fieldbyname('PVITN3QTD').AsVariant;
                          TblTicketPreVendaItemValorTotal.Value     := (zPrevendaItem.fieldbyname('PVITN3VLRUNIT').Value * zPrevendaItem.fieldbyname('PVITN3QTD').Value) - zPrevendaItem.fieldbyname('PVITN2DESC').Value;
                          TblTicketPreVendaItemDesconto.Value       := zPrevendaItem.fieldbyname('PVITN2DESC').Value;
                          TblTicketPreVendaItemTroca.Value          := 'N';
                          TblTicketPreVendaItem.Post;
                          zPrevendaItem.Next;
                        end;

                      if FileExists('C:\Easy2Solutions\Gestao\ImpressaoCozinhaTablet.EXE') then
                        WinExec(Pchar('C:\Easy2Solutions\Gestao\ImpressaoCozinhaTablet.EXE'),sw_Show);
                      if FileExists('C:\Easy2Solutions\Gestao\ValeBebida.EXE') then
                        WinExec(Pchar('C:\Easy2Solutions\Gestao\ValeBebida.EXE'),sw_Show);

                      // Loop para aguardar finalizar impressao da Cozinha
                      Aplicativo := FindWindow('TApplication', 'CozinhaTablet');
                      Erro := True;
                      while Erro do // Pq esta Rodando na memoria
                        begin
                          lbImpPedido.Caption := 'Aguarde... Imprimindo Pedido Nro.'+zPrevenda.fieldbyname('PRVDICOD').Asstring;
                          lbImpPedido.update;
                          Aplicativo := FindWindow('TApplication', 'CozinhaTablet');
                          if Aplicativo = 0 then
                            Erro := False;
                        end;

                      // Loop para aguardar finalizar impressao da Bebidas
                      Aplicativo := FindWindow('TApplication', 'BebidasTablet');
                      Erro := True;
                      while Erro do // Pq esta Rodando na memoria
                        begin
                          lbImpPedido.Caption := 'Aguarde... Imprimindo Pedido Nro.'+zPrevenda.fieldbyname('PRVDICOD').Asstring;
                          lbImpPedido.update;
                          Aplicativo := FindWindow('TApplication', 'BebidasTablet');
                          if Aplicativo = 0 then
                            Erro := False;
                        end;

                      zConsulta.Close;
                      zConsulta.sql.Clear;
                      zConsulta.sql.add('Update Prevenda set PRVDCIMPRESSO = ''S''');
                      zConsulta.sql.add(' where PRVDICOD = ' + zPrevenda.fieldbyname('PRVDICOD').Asstring);
                      zConsulta.sql.add(' and TERMICOD = '   + zPrevenda.fieldbyname('TERMICOD').AsString);
                      zConsulta.ExecSQL;

                      try TblTicketPreVendaCab.Close         except Application.ProcessMessages end;
                      try TblTicketPreVendaItem.Close        except Application.ProcessMessages end;
                    end;
                end;
              zPrevenda.next;
            end;
        end;
    end;

  TimerImpressaoRestaurante.Enabled := True;
end;

//****************************************************************************//
// MÉTODO QUE AGUARDA O TEMPO PASSADO POR PARÂMETRO EM SEGUNDOS. FUNCIONA COMO//
// O SLEEP, MAS COM A VANTAGEM DE NÃO TRANCAR A APLICAÇÃO                     //
//****************************************************************************//
procedure TFormPrincipal.Delay(Seconds : integer);
var
  InitialTime : TTime;
  Hour, Minute, Second, MSecond : word;
begin
  InitialTime := Now;
  DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
  while ((Hour /3600) + (Minute / 60) + Second) < Seconds do
    begin
      DecodeTime(Now - InitialTime,Hour,Minute,Second,MSecond);
      Application.ProcessMessages;
    end;
end;

end.
