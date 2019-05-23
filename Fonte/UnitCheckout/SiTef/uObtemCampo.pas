unit uObtemCampo;

{$IFDEF FPC}
 {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils, 
   Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, ExtCtrls,
  ACBrTEFDCliSiTef;

type

{$IFNDEF FPC}
 {$R *.dfm}
{$ELSE}
 {$R *.lfm}
{$ENDIF}

{ TForm5 }

  TfObtemCampo = class(TForm)
     BitBtn1 : TBitBtn;
     BitBtn2 : TBitBtn;
     BitBtn3: TBitBtn;
     Edit1 : TEdit;
     Panel1 : TPanel;
     procedure Edit1KeyPress(Sender : TObject; var Key : char);
     procedure FormCloseQuery(Sender : TObject; var CanClose : boolean);
     procedure FormCreate(Sender : TObject);
     procedure FormShow(Sender : TObject);
  private
    { private declarations }
  public
    { public declarations }
    TipoCampo : Integer;
    Operacao  : TACBrTEFDCliSiTefOperacaoCampo;
    TamanhoMinimo, TamanhoMaximo : Integer ;
  end; 

var
  fObtemCampo : TfObtemCampo;

implementation

uses UnitLibrary;

{ TForm5 }

procedure TfObtemCampo.FormCreate(Sender : TObject);
begin
  TamanhoMinimo := 0 ;
  TamanhoMaximo := 0 ;
  Operacao      := tcString;
  TipoCampo     := 0 ;
end;

procedure TfObtemCampo.Edit1KeyPress(Sender : TObject; var Key : char);
begin
   if Key in [#13,#8] then exit ;  { Enter e BackSpace, OK }

   if Operacao in [tcDouble, tcCMC7] then
      if not (Key in ['0'..'9', DecimalSeparator]) then    { Apenas nÃºmeros }
         Key := #0 ;

   if (TamanhoMaximo > 0) and (Length( Edit1.Text ) >= TamanhoMaximo) then
      Key := #0 ;
end;

procedure TfObtemCampo.FormCloseQuery(Sender : TObject; var CanClose : boolean);
begin
   if (ModalResult = mrOK) and (TamanhoMinimo > 0) then
   begin
      if Length( Edit1.Text ) < TamanhoMinimo then
      begin
         ShowMessage('O Tamanho Mínimo para este campo e: '+IntToStr(TamanhoMinimo) );
         CanClose := False ;
         Edit1.SetFocus;
      end;
   end;


  if (ModalResult = mrOK) and (TipoCampo = 500) and (ExecSql(' select USUAICOD from USUARIO WHERE USUACPERMITEADM = ''S'' AND USUAA5SENHA = '
    +Quotedstr(Edit1.Text)).IsEmpty) then
  begin
    ShowMessage('Senha do Supervisor Inválida!');
    CanClose := False ;
    Edit1.SetFocus;
  end;

end;

procedure TfObtemCampo.FormShow(Sender : TObject);
begin
   if Operacao = tcDouble then
      Edit1.Text := '0,00' ;

   Edit1.SetFocus; 

   if (TipoCampo = 514) or (TipoCampo = 505)or (TipoCampo = 500) then //Codigo de eguranca // nro parcela
   begin
     Edit1.PasswordChar:= '*';
     Operacao := tcCMC7;
   end;
end;

end.

