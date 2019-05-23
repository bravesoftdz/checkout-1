unit TelaCadastroClienteRapido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Buttons, ConerBtn, Db, DBTables, MemTable,
  Mask, DBCtrls;

type
  TFormTelaCadastroClienteRapido = class(TForm)
    RxLabel4: TRxLabel;
    Shape3: TShape;
    Label1: TLabel;
    Fone: TDBEdit;
    Label2: TLabel;
    Nome: TDBEdit;
    Label3: TLabel;
    Endereco: TDBEdit;
    Label4: TLabel;
    Bairro: TDBEdit;
    Label5: TLabel;
    Cep: TDBEdit;
    Label6: TLabel;
    DtNasc: TDBEdit;
    Label7: TLabel;
    Obs: TDBEdit;
    BtnFecharMesa: TConerBtn;
    BtnSair: TConerBtn;
    TblCadClieQuick: TTable;
    DSMemClie: TDataSource;
    TblCadClieQuickCLIEA13ID: TStringField;
    TblCadClieQuickEMPRA3COD: TStringField;
    TblCadClieQuickCLIEICOD: TIntegerField;
    TblCadClieQuickCLIEA60NOME: TStringField;
    TblCadClieQuickCLIECSEXO: TStringField;
    TblCadClieQuickCLIEA10RG: TStringField;
    TblCadClieQuickCLIEA11CPF: TStringField;
    TblCadClieQuickCLIEA15FONE2: TStringField;
    TblCadClieQuickCLIEA15FONE1: TStringField;
    TblCadClieQuickCLIEA60EMAIL: TStringField;
    TblCadClieQuickCLIEA60END: TStringField;
    TblCadClieQuickCLIEA8CEP: TStringField;
    TblCadClieQuickCLIEA30BAI: TStringField;
    TblCadClieQuickCLIEA60CID: TStringField;
    TblCadClieQuickCLIEA2UF: TStringField;
    TblCadClieQuickCLIEDNASC: TDateTimeField;
    TblCadClieQuickCLIEA15ESTCIV: TStringField;
    TblCadClieQuickCLIETOBS: TStringField;
    TblCadClieQuickCLIEDCAD: TDateTimeField;
    Shape4: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFecharMesaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroClienteRapido: TFormTelaCadastroClienteRapido;

implementation

uses MovimentoCaixaRest, TelaPedidoMesa, UnitFrontLib, DataModuloRest,
  TelaTeleEntrega;

{$R *.DFM}

procedure TFormTelaCadastroClienteRapido.FormCreate(Sender: TObject);
begin
  TblCadClieQuick.Close ;
  try
    TblCadClieQuick.DeleteTable ;
  except
  end ;
  TblCadClieQuick.CreateTable ;

  TblCadClieQuick.Open ;
  TblCadClieQuick.Append ;
  if Application.FindComponent('FormTelaTeleEntrega') <> nil then
    TblCadClieQuickCLIEA15FONE1.Value := FormTelaTeleEntrega.EntradaDados.Text ;
end;

procedure TFormTelaCadastroClienteRapido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaCadastroClienteRapido.BtnSairClick(Sender: TObject);
begin
  TblCadClieQuick.Cancel ;
  Close ;
end;

procedure TFormTelaCadastroClienteRapido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
      VK_RETURN : Perform(Wm_NextDlgCtl, 0, 0) ;
      VK_F2:  ;
      VK_F3: BtnSairClick(Sender);
  else
    if ssCtrl in Shift then
      case Upcase(Char(Key)) of
        'P':  ;
      end;
  end;
end;

procedure TFormTelaCadastroClienteRapido.BtnFecharMesaClick(
  Sender: TObject);
begin
  EnviaDadosQuery('Incluir', FormTelaTeleEntrega.QryCliente, TblCadClieQuick, FOrmTelaTeleEntrega.UpdCliente) ;
  Close ;
end;

end.
