unit BarraAtalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvXPCore, JvXPBar, Menus, StrUtils, Placemnt, ExtCtrls, IniFiles,
  JvExControls, JvComponent;

type
  TFormBarraAtalho = class(TForm)
    xpbAtalhos: TJvXPBar;
    PopupMenu: TPopupMenu;
    mnBarraFechar: TMenuItem;
    N1: TMenuItem;
    FormStorage: TFormStorage;
    mnBarraAbriraoIniciar: TMenuItem;
    procedure xpbAtalhosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnBarraFecharClick(Sender: TObject);
    procedure xpbAtalhosItemClick(Sender: TObject; Item: TJvXPBarItem);
    procedure FormStorageRestorePlacement(Sender: TObject);
    function IsWinXP: Boolean;
  private
    Confs : TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarraAtalho: TFormBarraAtalho;

implementation

uses Principal, PrincipalTemplate, UnitLibrary;

{$R *.dfm}

procedure TFormBarraAtalho.xpbAtalhosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if ssCtrl in Shift then
      begin
   	ReleaseCapture;
   	Perform(WM_NCLBUTTONDOWN, HTCAPTION ,0);
      end;
end;

procedure TFormBarraAtalho.FormShow(Sender: TObject);
begin
   Canvas.Brush.Style := bsClear;
end;

procedure TFormBarraAtalho.FormCreate(Sender: TObject);
Var I, X, Y : Integer;
    NovoMenu : TMenuItem;
begin

  if IsWinXP then
     begin
        BorderStyle := bsNone;
        Color := clBlue;
        TransparentColorValue := clBlue;
     end
  else
     begin
        BorderStyle := bsToolWindow;
        Color := clBtnFace;
        xpbAtalhos.RollMode  := rmFixed;
     end;

  FormStorage.IniFileName := ExtractFilePath(Application.ExeName) + '\' + Application.Title + '-BarraAtalhos.ini';
  FormStorage.RestoreFormPlacement;

  for I := 0 to FormPrincipal.MainMenu.Items.Count - 1 do
     begin
       for X := 0 to FormPrincipal.MainMenu.Items.Items[I].Count - 1 do
          begin
            if (FormPrincipal.MainMenu.Items.Items[I].Items[X].Count = 0) or
               (FormPrincipal.MainMenu.Items.Items[I].Items[X].Caption = '-') then
               begin
                  NovoMenu := TMenuItem.Create(PopupMenu);
                  NovoMenu.Caption   := FormPrincipal.MainMenu.Items.Items[I].Items[X].Caption;
                  NovoMenu.Hint	     := FormPrincipal.MainMenu.Items.Items[I].Items[X].Name;
                  NovoMenu.OnClick   := mnBarraFecharClick;
                  NovoMenu.AutoCheck := True;
                  NovoMenu.Checked   := xpbAtalhos.Items.Find(AnsiReplaceStr(NovoMenu.Caption, '&', '')) <> Nil;
                  PopupMenu.Items.Add(NovoMenu);
               end
            else
               if FormPrincipal.MainMenu.Items.Items[I].Items[X].Count > 0 then
                  begin
                     for Y := 0 to FormPrincipal.MainMenu.Items.Items[I].Items[X].Count - 1 do
                        begin
                          if (FormPrincipal.MainMenu.Items.Items[I].Items[X].Items[Y].Count = 0) or
                             (FormPrincipal.MainMenu.Items.Items[I].Items[X].Items[Y].Caption <> '-') then
                             begin
                                NovoMenu := TMenuItem.Create(PopupMenu);
                                NovoMenu.Caption := FormPrincipal.MainMenu.Items.Items[I].Items[X].Caption + ' => ' +
                                		    FormPrincipal.MainMenu.Items.Items[I].Items[X].Items[Y].Caption;
	                  	NovoMenu.Hint	   := FormPrincipal.MainMenu.Items.Items[I].Items[X].Items[Y].Name;
                                NovoMenu.OnClick   := mnBarraFecharClick;
                                NovoMenu.AutoCheck := True;
                  		NovoMenu.Checked   := xpbAtalhos.Items.Find(AnsiReplaceStr(NovoMenu.Caption, '&', '')) <> Nil;
                                PopupMenu.Items.Add(NovoMenu);
                             end;
                        end;
                  end;
          end;
     end;
end;

procedure TFormBarraAtalho.mnBarraFecharClick(Sender: TObject);
Var
NovoAtalho : TJvXPBarItem;
begin
   if TMenuItem(Sender).Tag = 1 then
      Close;

   if TMenuItem(Sender).Tag = 0 then
      begin
         if TMenuItem(Sender).Checked then
            begin
               if xpbAtalhos.Items.Find(AnsiReplaceStr(TMenuItem(Sender).Caption, '&', '')) <> Nil then
                  Informa('Este menu ja esta na Barra de Atalhos.')
               else
                  begin
                     NovoAtalho := TJvXPBarItem.Create(xpbAtalhos.Items);
                     NovoAtalho.Caption := AnsiReplaceStr(TMenuItem(Sender).Caption, '&', '');
                     NovoAtalho.Name 	  := AnsiReplaceStr(TMenuItem(Sender).Caption, '&', '');
                     NovoAtalho.Hint    := TMenuItem(Sender).Hint;
                  end;
            end
         else
            begin
                if xpbAtalhos.Items.Find(AnsiReplaceStr(TMenuItem(Sender).Caption, '&', '')) <> Nil then
                   begin
                      xpbAtalhos.Items.Find(AnsiReplaceStr(TMenuItem(Sender).Caption, '&', '')).Destroy;
                      NovoAtalho := TJvXPBarItem.Create(xpbAtalhos.Items);
                      NovoAtalho.Caption := 'Inserir novos atalhos.';
                      NovoAtalho.Name	 := 'Novo';
                      NovoAtalho.Tag := 2;
                   end;
            end;
         if xpbAtalhos.Items.Count > 1 then
            if xpbAtalhos.Items.Find('Novo') <> Nil then
               xpbAtalhos.Items.Find('Novo').Destroy;
      end;
   if TMenuItem(Sender).Tag = 2 then
     begin
       Confs := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\' + Application.Title + '-BarraAtalhos.ini');
       if TMenuItem(Sender).Checked then
         Confs.WriteString('TFormBarraAtalho','mnBarraAbriraoIniciar_Checked','True')
       else
         Confs.WriteString('TFormBarraAtalho','mnBarraAbriraoIniciar_Checked','False');
       Confs := nil;
     end;

end;

procedure TFormBarraAtalho.xpbAtalhosItemClick(Sender: TObject;
  Item: TJvXPBarItem);
Var PosMouse: TPoint;
begin
    if Item.Tag = 0 then
       begin
         if FormPrincipal.FindComponent(Item.Hint) <> Nil then
            begin
               TMenuItem(FormPrincipal.FindComponent(Item.Hint)).Click;
               xpbAtalhos.Collapsed := True;
            end;
       end
    else
       begin
          GetCursorPos(PosMouse);
          PopupMenu.Popup(PosMouse.X, PosMouse.Y);
       end;

    xpbAtalhos.Realign;
end;

procedure TFormBarraAtalho.FormStorageRestorePlacement(Sender: TObject);
var NovoAtalho : TJvXPBarItem;
begin
  if xpbAtalhos.Items.Count <= 0 then
     begin
        NovoAtalho := TJvXPBarItem.Create(xpbAtalhos.Items);
        NovoAtalho.Caption := 'Inserir novos atalhos.';
        NovoAtalho.Name	 := 'Novo';
        NovoAtalho.Tag := 2;
     end;
end;
function TFormBarraAtalho.IsWinXP: Boolean;
begin
 Result := (Win32Platform = VER_PLATFORM_WIN32_NT) and
   (Win32MajorVersion >= 5) and (Win32MinorVersion >= 1);
end;

end.
