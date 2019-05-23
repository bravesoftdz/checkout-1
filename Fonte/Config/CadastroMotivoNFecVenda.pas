unit CadastroMotivoNFecVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMotivoNFecVenda = class(TFormCadastroTEMPLATE)
    SQLTemplateMTNFICOD: TIntegerField;
    SQLTemplateMTNFA60DESCR: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMotivoNFecVenda: TFormCadastroMotivoNFecVenda;

implementation

{$R *.dfm}

procedure TFormCadastroMotivoNFecVenda.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MOTIVONFECHAVENDA';
end;

end.
