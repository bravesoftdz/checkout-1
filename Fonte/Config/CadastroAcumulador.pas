unit CadastroAcumulador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroAcumulador = class(TFormCadastroTEMPLATE)
    SQLTemplateACUMICOD: TIntegerField;
    SQLTemplateACUMA60DESCR: TStringField;
    SQLTemplateACUMICODASSOC: TIntegerField;
    SQLTemplateACUMCICMS: TStringField;
    SQLTemplateACUMCIPI: TStringField;
    SQLTemplateACUMCISSQN: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    SQLOperacaoEstoque: TRxQuery;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    Panel4: TPanel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAcumulador: TFormCadastroAcumulador;

implementation

{$R *.dfm}

procedure TFormCadastroAcumulador.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ACUMULADOR';
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open; 
end;

end.
