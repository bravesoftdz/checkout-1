unit CadastroProdutoOrdemPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxDBComb, DBCtrls, DB, DBActns, ActnList,
  ImgList, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProdutoOrdemPesquisa = class(TFormCadastroTEMPLATE)
    SQLTemplatePDOPIORDEM: TIntegerField;
    SQLTemplatePDOPA30CAMPO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoOrdemPesquisa: TFormCadastroProdutoOrdemPesquisa;

implementation

{$R *.dfm}

procedure TFormCadastroProdutoOrdemPesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PRODUTOORDEMPESQUISA';
end;

end.
