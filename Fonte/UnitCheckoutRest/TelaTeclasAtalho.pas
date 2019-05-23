unit TelaTeclasAtalho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxfLabel, jpeg;

type
  TFormTelaTeclasAtalho = class(TForm)
    LblNomeSistema: TdxfLabel;
    ImageFundo: TImage;
    MolduraListaItens: TImage;
    dxfLabel1: TdxfLabel;
    dxfLabel2: TdxfLabel;
    dxfLabel3: TdxfLabel;
    dxfLabel4: TdxfLabel;
    dxfLabel5: TdxfLabel;
    dxfLabel6: TdxfLabel;
    dxfLabel7: TdxfLabel;
    dxfLabel8: TdxfLabel;
    dxfLabel9: TdxfLabel;
    dxfLabel10: TdxfLabel;
    dxfLabel11: TdxfLabel;
    dxfLabel12: TdxfLabel;
    dxfLabel13: TdxfLabel;
    dxfLabel14: TdxfLabel;
    dxfLabel15: TdxfLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTeclasAtalho: TFormTelaTeclasAtalho;

implementation

uses TelaItens;

{$R *.DFM}

procedure TFormTelaTeclasAtalho.FormCreate(Sender: TObject);
begin
  ImageFundo.Picture.Assign(FormTelaItens.ImageFundo.Picture) ;
end;

procedure TFormTelaTeclasAtalho.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

end.
