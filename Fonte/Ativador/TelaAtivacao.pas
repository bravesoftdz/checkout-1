 unit TelaAtivacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ConerBtn, RXCtrls, ExtCtrls, DB,
  DBTables, RxQuery;

type
  TFormTelaAtivacao = class(TForm)
    Panel1: TPanel;
    lblMensagem: TRxLabel;
    PanelDadosCliente: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    BtnFecharTela: TSpeedButton;
    RxLabel5: TRxLabel;
    Vlr01: TMaskEdit;
    Vlr02: TMaskEdit;
    Vlr03: TMaskEdit;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtivacao: TFormTelaAtivacao;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaAtivacao.BtnFecharTelaClick(Sender: TObject);
begin
  close;
end;

procedure TFormTelaAtivacao.FormCreate(Sender: TObject);
begin
 if (dm.SQLConfigGeralCFGECBLOQ.AsString <> 'S') then
   lblMensagem.Caption := 'Licença de Uso Expira em ' + DM.OBSAutorizacao;
end;

end.
