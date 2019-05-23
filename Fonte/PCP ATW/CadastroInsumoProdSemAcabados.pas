unit CadastroInsumoProdSemAcabados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DBCtrls, DBTables, DBActns,
  ActnList, ImgList, DB, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg;

type
  TFormCadastroInsumoProdSemAcabados = class(TFormCadastroTEMPLATE)
    SQLProduto: TRxQuery;
    SQLExec: TRxQuery;
    SQLInsumo: TRxQuery;
    DSSQLInsumo: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLInsumo: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateINSUICOD: TIntegerField;
    SQLTemplatePPINN3QTDE: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePRSAICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroInsumoProdSemAcabados: TFormCadastroInsumoProdSemAcabados;

implementation

{$R *.dfm}

procedure TFormCadastroInsumoProdSemAcabados.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTOSEMIACABINS';
  if not SQLInsumo.Active then SQLInsumo.Active := True;

end;

end.
