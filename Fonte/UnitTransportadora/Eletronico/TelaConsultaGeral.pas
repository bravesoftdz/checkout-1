unit TelaConsultaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, Buttons, jpeg, ExtCtrls, StdCtrls, Grids,
  DBGrids;

type
  TFormTelaConsultaGeral = class(TFormTelaGeralTEMPLATE)
    DSMaster: TDataSource;
    DBGridItensFrete: TDBGrid;
    LabelRetornar: TSpeedButton;
    procedure DBGridItensFreteDblClick(Sender: TObject);
    procedure LabelRetornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaGeral: TFormTelaConsultaGeral;

implementation

uses TelaConhecimento, VarSYS;

{$R *.dfm}

procedure TFormTelaConsultaGeral.DBGridItensFreteDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFormTelaConsultaGeral.LabelRetornarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFormTelaConsultaGeral.FormCreate(Sender: TObject);
begin
  inherited;
  DSMaster.DataSet := DSMasterSys.DataSet;
end;

end.
