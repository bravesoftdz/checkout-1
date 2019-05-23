unit udmECF;

interface

uses
  SysUtils, Classes, ACBrBase, ACBrECF, IniFiles, Forms, dialogs, ACBrTEFD, Controls,
  ACBrDevice, ACBrTEFDClass, ACBrUtil , ACBrTEFDCliSiTef, TypInfo, DateUtils;

type
  TevMostrarMensagem = Procedure(pMsg:String) of object;
  TevGetMensagem = Function:String of object;

  TdmECF = class(TDataModule)
    ACBrECF1: TACBrECF;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ACBrECF1MsgPoucoPapel(Sender: TObject);
    procedure ACBrECF1ErrorCancelaCupom(var Tratado: Boolean);
  private

    fCancelado : Boolean ;
    fModelo: Integer;
    fECFVirtual: Integer;
    fPorta: String;
    fTimeOut: Integer;
    fIntervaloAposComando: Integer;
    fTentarNovamente: Boolean;
    fControlePorta: Boolean;
    fBloqueiaMouseTeclado: boolean;
    fExibeMsgAguarde: Boolean;
    fArredondaPorQtd: Boolean;
    fDescricaoGrande: Boolean;
    fArredondamentoItemMFD: boolean;
    fGavetaSinalInvertido: boolean;
    fMensagemAguarde: String;
    fOperador: String;
    fBandWidth: Integer;
    fRelatorioGerencial:TStringList;
    fSiTEFIniciado:Boolean;
    fevMostrarInstrucoes: TevMostrarMensagem;
    fevMostrarMensagemCliente: TevMostrarMensagem;
    fevMostrarMensagemOperador: TevMostrarMensagem;
    fevGetMensagem: TevGetMensagem;
    procedure LerINI;
    { Private declarations }
  public
    { Public declarations }
    EmitiuPagamento, fNaoFiscal: Boolean;
    fCPF_CNPJ:String;
    property Modelo:Integer read fModelo write fModelo;
    property ECFVirtual:Integer read fECFVirtual write fECFVirtual;
    property Porta:String read fPorta write fPorta;
    property TimeOut:Integer read fTimeOut write fTimeOut;
    property IntervaloAposComando:Integer read fIntervaloAposComando write fIntervaloAposComando;
    property TentarNovamente:Boolean read fTentarNovamente write fTentarNovamente;
    property ControlePorta:Boolean read fControlePorta write fControlePorta;
    property BloqueiaMouseTeclado:boolean read fBloqueiaMouseTeclado write fBloqueiaMouseTeclado;
    property ExibeMsgAguarde:Boolean read fExibeMsgAguarde write fExibeMsgAguarde;
    property ArredondaPorQtd:Boolean read fArredondaPorQtd write fArredondaPorQtd;
    property DescricaoGrande:Boolean read fDescricaoGrande write fDescricaoGrande;
    property ArredondamentoItemMFD:boolean read fArredondamentoItemMFD write fArredondamentoItemMFD;
    property GavetaSinalInvertido:boolean read fGavetaSinalInvertido write fGavetaSinalInvertido;
    property MensagemAguarde:String read fMensagemAguarde write fMensagemAguarde;
    property Operador:String read fOperador write fOperador;
    property BandWidth:Integer read fBandWidth write fBandWidth;
    Function AbrirPorta:boolean;
    Function FecharCNFV:Boolean;
    Function FecharPortaECF:Boolean;
    Function FechamentoRelatorioGerencial:Boolean;
    function CancelarCupomFiscal:boolean;
    Function ImprimeItemECF(Numitem, Codigo, Descricao, Tributo, TipoDesc, Unid : String ; Qtde, Valor, Percdesc, Vlrdesco : Double ; NumDecQuant : integer):Boolean;
    function CancelarItemECF(Posicao:String):Boolean;
    function AbrirCupomFiscal(var NroCupom:String):boolean;
    function SubTotal():boolean;
    function Leitura_X() : Boolean ;
    function AbrirGaveta:Boolean;
    function FecharCupomFiscal():Boolean ;
    function GetNroCupomFiscal:String;

    function AbrirGaveta_NAOFISCAL() : Boolean;
    function ImprimeTextoSimples_NAOFISCAL(Texto:string) : boolean ;
    function ImprimeTextoFormatado_NAOFISCAL(Texto:string) : boolean;
    Function ImprimirRelatorioGerencial:boolean; overload;
    Function ImprimirRelatorioGerencial(pDados:TStrings):boolean; overload;

    function FecharPortaNAOFISCAL:Boolean;
    function EnviaComando_NAOFISCAL(Texto:String):Boolean;
    function AutenticaDoc_NAOFISCAL(Texto:String):Boolean;
    function AcionaGuilhotina_NAOFISCAL(Modo:integer) : boolean ;
    function Reducao_Z:Boolean;
    procedure IdentificaConsumidor(DocumentoCli, NomeCli, EnderecoCli:String);
    function Sangria(Valor: Double; Obs: AnsiString;
      DescricaoCNF: String; DescricaoFPG: String; IndiceBMP: Integer ) : boolean ;
    function Suprimento(Valor: Double; DescricaoFPG: String) : boolean ;
    procedure EfetuaPagamento(FormaPagamento:Integer; Valor:Double; TipoPagamento:String);
    procedure EstornarPagamento(FormaPagamento:Integer; Valor:Double);
    Function ExecutaOperacaoSiTEF(FormaPagamento: Integer; Valor: Double):Boolean;
  end;

var
  dmECF: TdmECF;

implementation

uses UnitLibrary;

{$R *.dfm}

function TdmECF.AbrirCupomFiscal(var NroCupom: String): boolean;
begin
  AbrirPorta;

  if fNaoFiscal then
    ACBrECF1.AbreNaoFiscal(fCPF_CNPJ)
  else
    ACBrECF1.AbreCupom();

  Result := True;
  EmitiuPagamento:= False;
end;

function TdmECF.AbrirGaveta: Boolean;
begin
  AbrirPorta;
  ACBrECF1.AbreGaveta;
  Result := True;
end;

function TdmECF.AbrirGaveta_NAOFISCAL(): Boolean;
begin
  AbrirPorta;
  ACBrECF1.AbreGaveta;
  Result := True;
end;

function TdmECF.AbrirPorta:Boolean;
begin
  if not ACBrECF1.Ativo then
  begin
    ACBrECF1.Porta := Porta;
    ACBrECF1.Modelo := TACBrECFModelo(Modelo);
    ACBrECF1.Ativar;
  end;

  Result := ACBrECF1.Ativo;
end;

function TdmECF.AcionaGuilhotina_NAOFISCAL(Modo: integer): boolean;
begin
  AbrirPorta;
  ACBrECF1.CortaPapel();
  Result := True;
end;

function TdmECF.AutenticaDoc_NAOFISCAL(Texto: String): Boolean;
begin
  AbrirPorta;
  fRelatorioGerencial.Add(Texto);
  Result := True;
end;

function TdmECF.CancelarCupomFiscal: boolean;
begin   
  AbrirPorta;
  ACBrECF1.CancelaCupom();
  Result := True;
end;

function TdmECF.CancelarItemECF(Posicao: String): Boolean;
begin
  if fNaoFiscal then
    ACBrECF1.CancelaItemNaoFiscal(StrToIntDef(Posicao,0))
  else
    ACBrECF1.CancelaItemVendido(StrToIntDef(Posicao,0));
    
  Result := true;
end;

procedure TdmECF.DataModuleCreate(Sender: TObject);
begin
  LerINI;
  fRelatorioGerencial:= TStringList.Create;
  EmitiuPagamento:= False;
  
end;

function TdmECF.EnviaComando_NAOFISCAL(Texto: String): Boolean;
begin
  AbrirPorta;
  ACBrECF1.EnviaComando(Texto);
  Result := True;
end;

function TdmECF.FechamentoRelatorioGerencial: Boolean;
begin
  AbrirPorta;
  Result := True;
end;

function TdmECF.FecharCNFV: Boolean;
begin
  ImprimirRelatorioGerencial;
  Result := True;
end;

function TdmECF.FecharCupomFiscal(): Boolean;
begin 
  if fNaoFiscal then
    ACBrECF1.FechaNaoFiscal()
  else
    ACBrECF1.FechaCupom();
    
  Result := True;
  EmitiuPagamento:= False; 
end;

function TdmECF.FecharPortaECF: Boolean;
begin
  //ACBrECF1.FechaCupom();
  Result := True;
end;

function TdmECF.FecharPortaNAOFISCAL: Boolean;
begin
  ImprimirRelatorioGerencial;
end;

function TdmECF.GetNroCupomFiscal: String;
begin
  AbrirPorta;
  Result := ACBrECF1.NumCupom;
end;

function TdmECF.ImprimeItemECF(Numitem, Codigo, Descricao, Tributo,
  TipoDesc, Unid: String; Qtde, Valor, Percdesc, Vlrdesco: Double;
  NumDecQuant: integer): Boolean;
begin
  if fNaoFiscal then
    ACBrECF1.RegistraItemNaoFiscal(Codigo, Valor, '')
  else
    ACBrECF1.VendeItem(Codigo, Descricao, Tributo, Qtde, Valor, Vlrdesco, Unid, TipoDesc);
    
  Result := true;
end;

function TdmECF.ImprimeTextoFormatado_NAOFISCAL(Texto: string): boolean;
begin
  AbrirPorta;
  fRelatorioGerencial.Add(Texto);
  Result := True;
end;

function TdmECF.ImprimeTextoSimples_NAOFISCAL(Texto: string): boolean;
begin
  AbrirPorta;
  fRelatorioGerencial.Add(Texto);
  Result := True;
end;

function TdmECF.ImprimirRelatorioGerencial: boolean;
begin
  AbrirPorta;
  if fRelatorioGerencial.Count > 0 then
  begin
    //ACBrECF1.AbreRelatorioGerencial();
    ACBrECF1.RelatorioGerencial(fRelatorioGerencial);
    //ACBrECF1.FechaRelatorio;
    fRelatorioGerencial.Clear;
  end;
  Result := True;
end;

function TdmECF.ImprimirRelatorioGerencial(pDados: TStrings): boolean;
begin
  AbrirPorta;
  if pDados.Count > 0 then
  begin
    ACBrECF1.AbreRelatorioGerencial();
    ACBrECF1.RelatorioGerencial(pDados);
    ACBrECF1.FechaRelatorio;
  end;
  Result := True;
end;

function TdmECF.Leitura_X: Boolean;
begin
  AbrirPorta;
  ACBrECF1.LeituraX;
  Result := True;
end;

procedure TdmECF.LerINI;
Var
  ArqINI: String;
  INI: TIniFile;
  Ok: Boolean;
begin
  ArqINI := ExtractFilePath(Application.ExeName) + 'confECF.ini';

  INI := TIniFile.Create(ArqINI);
  try
    Modelo := INI.ReadInteger('ECF', 'Modelo', 0);
    ECFVirtual := INI.ReadInteger('ECF', 'Virtual', 0);
    //cbxECFVirtualChange(nil);
    Porta := INI.ReadString('ECF', 'Porta', '');
    TimeOut := INI.ReadInteger('ECF', 'TimeOut', 0);
    IntervaloAposComando := INI.ReadInteger('ECF', 'IntervaloAposComando', 0);
    TentarNovamente := INI.ReadBool('ECF', 'TentarNovamente', false);
    ControlePorta := INI.ReadBool('ECF', 'ControlePorta', true);
    BloqueiaMouseTeclado := INI.ReadBool('ECF', 'BloqueiaMouseTeclado', true);
    ExibeMsgAguarde := INI.ReadBool('ECF', 'ExibeMsgAguarde', false);
    ArredondaPorQtd := INI.ReadBool('ECF', 'ArredondaPorQtd', false);
    DescricaoGrande := INI.ReadBool('ECF', 'DescricaoGrande', false);
    ArredondamentoItemMFD := INI.ReadBool('ECF', 'ArredondamentoItemMFD', false);
    GavetaSinalInvertido := INI.ReadBool('ECF', 'GavetaSinalInvertido', false);
    MensagemAguarde := StringReplace(INI.ReadString('ECF', 'MensagemAguarde', ''), '|', sLineBreak, [rfReplaceAll]);
    ACBrECF1.Device.ParamsString := INI.ReadString('ECF', 'SerialParams', '');
    Operador := INI.ReadString('ECF', 'Operador', '');
    BandWidth := INI.ReadInteger('ECF', 'BandWidth', 0);
  finally
    INI.Free;
  end;
end;

function TdmECF.Reducao_Z: Boolean;
begin
  AbrirPorta;
  ACBrECF1.ReducaoZ;
  Result := True;
end;

function TdmECF.SubTotal: boolean;
begin
  if fNaoFiscal then
    ACBrECF1.SubtotalizaNaoFiscal()
  else
    ACBrECF1.SubtotalizaCupom();
    
  Result := True;
end;

procedure TdmECF.DataModuleDestroy(Sender: TObject);
begin
  if ACBrECF1.Ativo then
    ACBrECF1.Desativar;                      

  
end;

procedure TdmECF.ACBrECF1MsgPoucoPapel(Sender: TObject);
Var
  OldTecladoBloqueado : Boolean ;
begin
  try
     ShowMessage( ACBrStr('ATENÇÃO. Detectada proximadade do fim da Bobina') );
  finally
  end ;
end;

procedure TdmECF.ACBrECF1ErrorCancelaCupom(var Tratado: Boolean);
begin
  //Tratado := True;      
  ShowMessage('Problema ao cancelar o cupom!'+#13+'Após emitir um relatório gerencial(Confissão de Divida) não é possivel cancelar o cupom!');  
end;

procedure TdmECF.IdentificaConsumidor(DocumentoCli, NomeCli, EnderecoCli:String);
begin
  AbrirPorta;
  if length(Trim(EnderecoCli)) < 8 then
    EnderecoCli := '';

  ACBrECF1.IdentificaConsumidor(DocumentoCli, NomeCli, EnderecoCli);
end;

function TdmECF.Sangria(Valor: Double; Obs: AnsiString;
   DescricaoCNF: String; DescricaoFPG: String; IndiceBMP: Integer ): boolean;
begin
  AbrirPorta;
  ACBrECF1.Sangria(Valor, Obs, DescricaoCNF, DescricaoFPG, IndiceBMP);
  Result := True;
end;

function TdmECF.Suprimento(Valor: Double; DescricaoFPG: String): boolean;
begin
  AbrirPorta;
  ACBrECF1.Suprimento(Valor, 'SUPRIMENTO', 'SUPRIMENTO', DescricaoFPG);
  Result := True;
end;

procedure TdmECF.EfetuaPagamento(FormaPagamento: Integer; Valor: Double; TipoPagamento:String);
begin
  AbrirPorta;

  if Valor = 0 then
    Valor := ACBrECF1.GrandeTotal;

  if fNaoFiscal then
    ACBrECF1.EfetuaPagamentoNaoFiscal(IntToStr(FormaPagamento), Valor)
  else
    ACBrECF1.EfetuaPagamento(IntToStr(FormaPagamento), Valor);

  EmitiuPagamento:= True;

end;

procedure TdmECF.EstornarPagamento(FormaPagamento: Integer; Valor: Double);
begin
  AbrirPorta;

  ACBrECF1.EstornaPagamento(IntToStr(FormaPagamento), IntToStr(FormaPagamento), Valor);
  EmitiuPagamento := False;
end;


function TdmECF.ExecutaOperacaoSiTEF(FormaPagamento: Integer; Valor: Double):Boolean;
begin
  Result := False;
end;

end.
