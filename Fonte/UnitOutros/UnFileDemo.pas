unit UnFileDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrmFileDemo = class(TForm)
    Panel1: TPanel;
    BtnFind: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BtnFechar: TSpeedButton;
    FindDialog1: TFindDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Memo1: TRichEdit;
    PrintProgress: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    BtnCancelaPrint: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtnCancelaPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrintAbort : Boolean;

  end;

var
  FrmFileDemo: TFrmFileDemo;
  nCopias : Integer;
  iCopias : Integer;
  
implementation

uses UnErrorPrinter, unPrintSelect;

{$R *.DFM}

procedure TFrmFileDemo.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFileDemo.BtnFindClick(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TFrmFileDemo.FindDialog1Find(Sender: TObject);
var
  I, J, PosReturn, SkipChars: Integer;
begin
  for I := 0 to Memo1.Lines.Count do
  begin
    PosReturn := Pos(UpperCase(FindDialog1.FindText),UpperCase(Memo1.Lines[I]));
    if PosReturn <> 0 then {found!}
    begin
      Skipchars := 0;
      for J := 0 to I - 1 do
        Skipchars := Skipchars + Length(Memo1.Lines[J]);
      SkipChars := SkipChars + (I*2);
      SkipChars := SkipChars + PosReturn - 1;

      Memo1.SetFocus;
      Memo1.SelStart := SkipChars;
      Memo1.SelLength := Length(FindDialog1.FindText);
      Break;
    end;
  end;

end;
procedure TFrmFileDemo.SpeedButton1Click(Sender: TObject);
begin
  Memo1.Font.Size := Memo1.Font.Size -1;
  Memo1.Refresh;
end;

procedure TFrmFileDemo.SpeedButton2Click(Sender: TObject);
begin
  Memo1.Font.Size := Memo1.Font.Size + 1;
  Memo1.Refresh;
end;

procedure TFrmFileDemo.SpeedButton4Click(Sender: TObject);
var i,x,w: Integer;
   FormImp : TfrmErrorPrinter;
begin
   nCopias  := 0;
   FrmPrinters := TFrmPrinters.Create(Self);
   if FrmPrinters.Showmodal <> mrOk then
      exit
   else begin
      //ImpDos.Arquivo := FrmPrinters.ComboBox1.Text;
      nCopias:= StrToInt(FrmPrinters.edtCopia.Text);
      FrmPrinters.Free;
   end;

   PrintAbort := False;
   PrintProgress.Top := Self.Height div 2 - 40;
   PrintProgress.Left:= Self.Width div 2 - 100;
   PrintProgress.Visible := True;
   ProgressBar1.Max      := Memo1.Lines.count * nCopias;

   BtnCancelaPrint.Setfocus;

   iCopias := 0;

{   while icopias < nCopias do
   begin
      i:= 0;
      While (i <= Memo1.Lines.Count) and (not PrintAbort) do
      begin
         If Pos('NOTAFISC',Uppercase(Self.Caption)) > 0 then
         begin
            ImpDos.Espacamento := lOitavos;
            ImpDos.Colunas     := 136;
            Impdos.Linhas      := 89;
         end else
         begin
            ImpDos.Espacamento := lSextos;
            Impdos.Linhas      := 66;
         end;
         while (not Impdos.BeginDoc) and (not PrintAbort) do
         begin
            PrintProgress.Visible := False;
            FormImp := TFrmErrorPrinter.Create(Self);
            FormImp.Showmodal;
   //         FormImp.Destroy;
            PrintProgress.Visible := True;
            if PrintAbort = True then
            begin
               PrintProgress.Visible := False;
               Exit;
            end;
         end;

         For x:= 1 to impdos.linhas do
         begin
            ImpDos.StrPos(x,0,Memo1.Lines[i],#0);
            Inc(i,1);
            ProgressBar1.Position := i;
            For w := 1 to 10000 do
               Application.ProcessMessages;
            if PrintAbort = True then
            begin
               Impdos.Enddoc;
               PrintProgress.Visible := False;
               Exit;
            end;
         end;
         impdos.Enddoc;
      end;
      inc(icopias);
   end;}
   PrintProgress.Visible := False;
end;

procedure TFrmFileDemo.BtnCancelaPrintClick(Sender: TObject);
begin
   PrintAbort := True;
   iCopias    := nCopias;
end;

end.
