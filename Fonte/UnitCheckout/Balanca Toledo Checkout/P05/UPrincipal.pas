unit UPrincipal;

interface                        

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Menus, UConstantes,IniFiles, Spin  ;

type
  TfrPrincipal = class(TForm)
    Panel1: TPanel;
    btnCapturar: TBitBtn;
    btnSair: TBitBtn;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    rgPorta: TRadioGroup;
    rgBaudRate: TRadioGroup;
    rgDataBits: TRadioGroup;
    rgParidade: TRadioGroup;
    GroupBox1: TGroupBox;
    lbLiq: TLabel;
    rgOpcoesDiponibilizar: TRadioGroup;
    tCapturar: TTimer;
    btnContinuo: TButton;
    btnMinimizar: TBitBtn;
    popTray: TPopupMenu;
    Configurar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    edDir: TEdit;
    Label1: TLabel;
    btnDir: TButton;
    lbTempoLeitura: TLabel;
    seTempoPesquisa: TSpinEdit;
    rgTipoLeitura: TRadioGroup;
    lbTara: TLabel;
    cbStopBit1: TCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure btnCapturarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnContinuoClick(Sender: TObject);
    procedure tCapturarTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDirClick(Sender: TObject);
  private
    { Private declarations }
    procedure PegaPesoBalanca;
    procedure LeituraPeso;
    procedure SalvaConfiguracoesNoArquivoINI;
    procedure LeConfiguracoesNoArquivoINI;
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation
var
  EParaFechar:Boolean;
{$R *.DFM}

procedure TfrPrincipal.LeituraPeso;
var
  Peso          : array[0..5]of char;
  PesoP05B      : array[0..14] of char;
  dadoPeso      : TDadosPeso;
begin
  lbTara.Visible := rgTipoLeitura.ItemIndex = 2;
  if rgTipoLeitura.ItemIndex = 0 then
    begin
      if PegaPeso(rgOpcoesDiponibilizar.ItemIndex,Peso,pchar(edDir.Text)) = cSucesso then
        lbLiq.Caption:=StrPas(Peso)
      else
        lbLiq.Caption:='Erro!';
    end
  else
    begin
      FillChar(PesoP05B,sizeof(PesoP05B),0);
      if PegaPesoP05B(rgOpcoesDiponibilizar.ItemIndex,rgTipoLeitura.ItemIndex-1,PesoP05B,pchar(edDir.Text)) = cSucesso then
        begin
          FillChar(dadoPeso,sizeof(dadoPeso),0);
          Move(PesoP05B,dadoPeso,length(StrPas(PesoP05B)));
          lbLiq.Caption:= trim(dadoPeso.Peso);
          lbTara.Caption := 'Tara: '+trim(dadoPeso.Tara)+' ';
        end
      else
        lbLiq.Caption:='Erro!';
    end;
end;

procedure TfrPrincipal.PegaPesoBalanca;
begin
  LeituraPeso;
end;

procedure TfrPrincipal.btnSairClick(Sender: TObject);
begin
  EParaFechar:=True;
  Close;
end;

procedure TfrPrincipal.btnCapturarClick(Sender: TObject);
begin
  tCapturar.Enabled:= False;
  Screen.Cursor:=crHourGlass;
  try
    PegaPesoBalanca;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfrPrincipal.btnAbrirClick(Sender: TObject);
begin
  if cbStopBit1.Checked then
    DeterminaUmStopBit;

  if AbrePorta(rgPorta.ItemIndex+1,rgBaudRate.ItemIndex,rgDataBits.ItemIndex,rgParidade.ItemIndex) = cSucesso then
    ShowMessage('Porta Aberta com Sucesso!!!')
  else
    ShowMessage('Falha na Abertura da Porta!!!');
end;

procedure TfrPrincipal.btnFecharClick(Sender: TObject);
begin
  if FechaPorta = cSucesso then
    ShowMessage('Porta Fechada com Sucesso!!!')
  else
    ShowMessage('Falha no Fechamento da Porta!!!');
end;

procedure TfrPrincipal.btnContinuoClick(Sender: TObject);
begin
  if btnContinuo.Tag = 1 then
    begin
      tCapturar.Enabled:= False;
      lbTempoLeitura.Enabled:= True;
      seTempoPesquisa.Enabled:= True;
      btnCapturar.Enabled:= True;
      btnContinuo.Caption:= 'Contínuo...';
      btnContinuo.Tag:= 0;
    end
  else
    begin
      lbTempoLeitura.Enabled:= False;
      seTempoPesquisa.Enabled:= False;
      tCapturar.Interval:= seTempoPesquisa.Value;
      tCapturar.Enabled:= True;
      btnCapturar.Enabled:= False;
      btnContinuo.Caption:= 'Parar';
      btnContinuo.Tag:= 1;
    end;
end;

procedure TfrPrincipal.tCapturarTimer(Sender: TObject);
begin
  tCapturar.Enabled:= False;
  try
    LeituraPeso;
  finally
    {Como este timer está rodando constantemente quando se está em modo contínuo,
     é necessário Marcar que foi realmente encerrado o programa no botão}
    if btnContinuo.Tag <> 0 then
      begin
        if EParaFechar then
          Close
        else
          tCapturar.Enabled:= True;
      end
    else
      lbLiq.Caption:='';
  end;
end;

procedure TfrPrincipal.SalvaConfiguracoesNoArquivoINI;
var
  ArquivoINI:TIniFile;
begin
  ArquivoINI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
  try
    ArquivoINI.WriteInteger(cSessaoConf,cPorta,rgPorta.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cBaudRate,rgBaudRate.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cParidade,rgParidade.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cDataBits,rgDataBits.ItemIndex);
    ArquivoINI.WriteInteger(cSessaoConf,cDiponibi,rgOpcoesDiponibilizar.ItemIndex);
//    ArquivoINI.WriteBool(cSessaoConf,cMinimizado,lmdTray.Active);
    ArquivoINI.WriteBool(cSessaoConf,cContinuo,not btnCapturar.Enabled);
    ArquivoINI.WriteString(cSessaoConf,cDirPESO,edDir.Text);
    ArquivoINI.WriteInteger(cSessaoConf,cTempoLeitura,seTempoPesquisa.Value);
    ArquivoINI.WriteInteger(cSessaoConf,cTipoLeitura,rgTipoLeitura.ItemIndex);
    ArquivoINI.WriteBool(cSessaoConf,cUmStop,cbStopBit1.Checked);
  finally
    ArquivoINI.Free;
  end;
end;

procedure TfrPrincipal.FormDestroy(Sender: TObject);
begin
  FechaPorta;
  SalvaConfiguracoesNoArquivoINI;
end;

procedure TfrPrincipal.LeConfiguracoesNoArquivoINI;
var
  ArquivoINI:TIniFile;
begin
  ArquivoINI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
  try
    rgPorta.ItemIndex                   := ArquivoINI.ReadInteger(cSessaoConf,cPorta,0);
    rgBaudRate.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cBaudRate,0);
    rgParidade.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cParidade,2);
    rgDataBits.ItemIndex                := ArquivoINI.ReadInteger(cSessaoConf,cDataBits,0);
    rgOpcoesDiponibilizar.ItemIndex     := ArquivoINI.ReadInteger(cSessaoConf,cDiponibi,0);
//    lmdTray.Active                      := ArquivoINI.ReadBool(cSessaoConf,cMinimizado,False);
    edDir.Text                          := ArquivoINI.ReadString(cSessaoConf,cDirPESO,ExtractFilePath(ParamStr(0)));
    seTempoPesquisa.Value               := ArquivoINI.ReadInteger(cSessaoConf,cTempoLeitura,100);
    rgTipoLeitura.ItemIndex             := ArquivoINI.ReadInteger(cSessaoConf,cTipoLeitura,0);
    cbStopBit1.Checked                  := ArquivoINI.ReadBool(cSessaoConf,cUmStop,false);
    edDir.Hint                          := edDir.Text;                           
    if ArquivoINI.ReadBool(cSessaoConf,cContinuo,False) then
      begin
        if cbStopBit1.Checked then
          DeterminaUmStopBit;

        if AbrePorta(rgPorta.ItemIndex+1,rgBaudRate.ItemIndex,rgDataBits.ItemIndex,rgParidade.ItemIndex) = cSucesso then
          btnContinuoClick(nil);
      end;
  finally
    ArquivoINI.Free;
  end;
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
var
  Versao : array[0..4] of char;
begin
  VersaoDLL(Versao);
  Caption       := 'Toledo Easylink - P05_P05A: Leitura dos pesos - V. '+Versao;
//  lmdTray.Hint  := Caption;
  EParaFechar   := False;
  LeConfiguracoesNoArquivoINI;
end;

procedure TfrPrincipal.btnDirClick(Sender: TObject);
begin
{  if SelectDir.Execute then
    begin
      edDir.Text:= SelectDir.SelectedFolder;
      edDir.Hint:= edDir.Text;
    end; }
end;

end.
