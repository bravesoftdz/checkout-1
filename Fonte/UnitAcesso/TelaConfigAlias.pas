unit TelaConfigAlias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TFormConfigAlias = class(TForm)
    ListBox: TListBox;
    Panel1: TPanel;
    BtnAdd: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BitBtn1: TBitBtn;
    BtnTestar: TSpeedButton;
    OpenDialog: TOpenDialog;
    Database: TDatabase;
    BitBtn2: TBitBtn;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure ListBoxDblClick(Sender: TObject);
    procedure BtnTestarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigAlias: TFormConfigAlias;

implementation

uses Acesso;

{$R *.dfm}

procedure TFormConfigAlias.BtnAddClick(Sender: TObject);
begin
  OpenDialog.Execute;
  if OpenDialog.FileName <> '' then
    ListBox.Items.Add(OpenDialog.FileName);
end;

procedure TFormConfigAlias.BtnExcluirClick(Sender: TObject);
begin
  if ListBox.ItemIndex >= 0 then
    ListBox.DeleteSelected;
end;

procedure TFormConfigAlias.ListBoxDblClick(Sender: TObject);
var
 index : Integer;
begin
  index := ListBox.ItemIndex;
  ListBox.Items[index] := InputBox('Editar','Nova Configuração',ListBox.Items[index]);
end;

procedure TFormConfigAlias.BtnTestarClick(Sender: TObject);
var
 Params : TStringList;
begin
  if Application.MessageBox(Pchar('Tem certeza que deseja modificar o banco de dados ?' + #13'A ATW não se responsabiliza pelo uso desta rotina!'),'Atenção',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
    begin
      if ListBox.ItemIndex >= 0 then
        begin
          Params := TStringList.Create;
          Params.Add('SERVER NAME='+ ListBox.Items.Strings[ListBox.ItemIndex]);
    //      ShowMessage(Params.Strings[0]);
          Database.Session.ModifyAlias('Easy_Gestao',Params);
          Database.Session.SaveConfigFile;
          try
            Database.Open;
            Application.MessageBox('Conexão OK!','Status',MB_ICONEXCLAMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND);
            Database.Close;
          except
            on E:Exception do
              begin
                Application.MessageBox(Pchar(E.message),'Erro',MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);
              end;
          end;
        end
      else
        begin
          Application.MessageBox('Nenhum Item Foi Selecionado!','Status',MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);
        end;
    end;
end;

procedure TFormConfigAlias.FormCreate(Sender: TObject);
begin
  try
    ListBox.Items.LoadFromFile(GetCurrentDir + '\ConfigAlias.ini');
  except

  end;  
end;

end.
