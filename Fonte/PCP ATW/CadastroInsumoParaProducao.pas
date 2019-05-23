unit CadastroInsumoParaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls;

type
  TFormCadastroProdutoParaProducao = class(TFormCadastroTEMPLATE)
    SQLTemplatePRPRICOD: TIntegerField;
    SQLTemplatePRPRA60DESCR: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoParaProducao: TFormCadastroProdutoParaProducao;
  DSMasterSys      : TDataSource;
implementation

uses FormResources, CadastroInsumoProdutoProducao;

{$R *.dfm}

procedure TFormCadastroProdutoParaProducao.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    CriaFormulario(TFormCadastroInsumoProdutoProducao,'FormCadastroInsumoProdutoProducao',True,False,'');

end;

procedure TFormCadastroProdutoParaProducao.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOPRODUCAO';
end;

end.
