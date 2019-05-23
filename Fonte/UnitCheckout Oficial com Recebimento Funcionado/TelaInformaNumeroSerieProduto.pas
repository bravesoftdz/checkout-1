unit TelaInformaNumeroSerieProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, RXCtrls;

type
  TFormTelaInformaNumeroSerieProduto = class(TForm)
    EditNroSerie: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SQLConsulta: TQuery;
    LblNomeSistema: TRxLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaInformaNumeroSerieProduto: TFormTelaInformaNumeroSerieProduto;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaInformaNumeroSerieProduto.BitBtn1Click(Sender: TObject);
begin
  SQLConsulta.Close;
  SQLConsulta.SQL.Clear;
  SQLConsulta.SQL.Add('SELECT * FROM PRODUTOSERIE WHERE PRSEA60NROSERIE = "' + EditNroSerie.Text + '"');
  SQLConsulta.Open;
  if SQLConsulta.IsEmpty then
    begin
      if not Pergunta('NAO','Não foi encontrado nenhum outro registro para este número de série, deseja continuar ?') then
        Abort;
    end;
  FormTelaInformaNumeroSerieProduto.ModalResult := MrOK;
end;

end.
