unit TelaHistoricoContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  Mask, Grids, DBGrids, DB, DBTables, RxQuery, RXCtrls, VarSys, RxLookup,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaHistoricoContato = class(TFormTelaGeralTEMPLATE)
    Panel4: TPanel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
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
    SQLContatoTipoContatoLookUp: TStringField;
    DSContato: TDataSource;
    DBGridLista: TDBGrid;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    SQLVendedor: TRxQuery;
    SQLContatoVendedorLookUp: TStringField;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DBGrid1: TDBGrid;
    SQLContatoDetalhe: TRxQuery;
    SQLContatoDetalheEMPRICOD: TIntegerField;
    SQLContatoDetalheCONTDCONTATO: TDateTimeField;
    SQLContatoDetalheCONTICOD: TIntegerField;
    SQLContatoDetalheCNTDICOD: TIntegerField;
    SQLContatoDetalheCNTDA254DETALHE: TStringField;
    SQLContatoDetalhePENDENTE: TStringField;
    SQLContatoDetalheREGISTRO: TDateTimeField;
    DSSQLContatoDetalhe: TDataSource;
    SQLContatoEMPRICOD: TIntegerField;
    SQLContatoCONTA60CONTATO: TStringField;
    SQLContatoUSUAICOD: TIntegerField;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLContatoUsuarioLookUp: TStringField;
    Label5: TLabel;
    ComboTipo: TRxDBLookupCombo;
    DSTipoContato: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ComboTipoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaHistoricoContato: TFormTelaHistoricoContato;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaHistoricoContato.FormCreate(Sender: TObject);
begin
  SQLContato.DataSource := DSMasterSys;
  inherited;
  DSMasterSys := Nil;
  SQLContato.Open;
  SQLContatoDetalhe.Open;
end;

procedure TFormTelaHistoricoContato.ComboTipoChange(Sender: TObject);
begin
  inherited;
  SQLContato.Close;
  If ComboTipo.Value<>'' Then
    SQLContato.MacroByName('MTipo').asString := 'TPCTICOD='+ComboTipo.Value
  Else
    SQLContato.MacroByName('MTipo').asString := '0=0';
  SQLContato.Open;
end;

end.
