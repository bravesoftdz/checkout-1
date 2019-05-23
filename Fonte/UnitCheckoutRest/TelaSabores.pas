unit TelaSabores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, AdvSmoothPanel, Grids, DBGrids, DB, DBTables, StdCtrls,
  jpeg, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, RxQuery,
  Buttons;

type
  TFormTelaSabores = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    RxLabel5: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel6: TRxLabel;
    Sabor01: TMemo;
    Sabor02: TMemo;
    Sabor03: TMemo;
    Sabor04: TMemo;
    Sabor05: TMemo;
    Sabor06: TMemo;
    DSSQLObsProduto: TDataSource;
    DBGridItens: TDBGrid;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    ImgDesligar: TImage;
    lbTitulo: TRxLabel;
    SQLObsProduto: TRxQuery;
    SQLObsProdutoOBPRA15SIGLA: TStringField;
    SQLObsProdutoOBPRA1TIPO: TStringField;
    SQLObsProdutoOBPRIORDEM: TIntegerField;
    EntradaDados: TEdit;
    Bt7: TSpeedButton;
    Bt8: TSpeedButton;
    Bt9: TSpeedButton;
    Bt4: TSpeedButton;
    Bt5: TSpeedButton;
    Bt6: TSpeedButton;
    Bt1: TSpeedButton;
    Bt2: TSpeedButton;
    Bt3: TSpeedButton;
    Bt0: TSpeedButton;
    BtBackSpace: TSpeedButton;
    BtReturn: TSpeedButton;
    RxLabel7: TRxLabel;
    EditValorTotal: TEdit;
    btApagaSabor01: TSpeedButton;
    btApagaSabor02: TSpeedButton;
    btApagaSabor03: TSpeedButton;
    btApagaSabor04: TSpeedButton;
    btApagaSabor05: TSpeedButton;
    btApagaSabor06: TSpeedButton;
    SQLObsProdutoVALOR: TFloatField;
    SQLObsProdutoPRODICOD: TIntegerField;
    rxSigla: TRxLabel;
    procedure DBGridItensDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Bt0Click(Sender: TObject);
    procedure BtBackSpaceClick(Sender: TObject);
    procedure BtReturnClick(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure EditValorTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btApagaSabor01Click(Sender: TObject);
    procedure btApagaSabor02Click(Sender: TObject);
    procedure btApagaSabor03Click(Sender: TObject);
    procedure btApagaSabor04Click(Sender: TObject);
    procedure btApagaSabor05Click(Sender: TObject);
    procedure btApagaSabor06Click(Sender: TObject);
    procedure DBGridItensExit(Sender: TObject);
    procedure DBGridItensEnter(Sender: TObject);
  private
    { Private declarations }
    TotalSabores : double;
  public
    { Public declarations }
  end;

var
  FormTelaSabores: TFormTelaSabores;

implementation

uses DataModulo, TelaItens;

{$R *.dfm}

procedure TFormTelaSabores.FormCreate(Sender: TObject);
begin
  SQLObsProduto.Close;
  SQLObsProduto.SQL.clear;
  SQLObsProduto.SQL.add('Select * from ObsProdutoRest where OBPRA1TIPO="S"');
  // and PRODICOD='+FORMTELAITENS.SQLItensVendaTempCODIGO.AsString); TIREI ESTAVA DANDO ERRO AO ABRIR O FORMULÁRIO (RUSSIMAR)
  SQLObsProduto.SQL.add('Order by OBPRA15SIGLA ASC');
  SQLObsProduto.Open;
  SQLObsProduto.first;
end;

procedure TFormTelaSabores.DBGridItensDblClick(Sender: TObject);
begin
  rxSigla.Caption := '';
  rxSigla.update;

  try
    TotalSabores := StrToFloat(EditValorTotal.text);
  except
    TotalSabores := 0;
  end;

  if SQLObsProdutoVALOR.Value > TotalSabores then
    TotalSabores := SQLObsProdutoVALOR.Value;
  EditValorTotal.text := floattostr(TotalSabores);
  EditValorTotal.update;

  if (sabor05.Text<>'') and (sabor06.Text='') then
    begin
      sabor06.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      exit;
    end;
  if (sabor04.Text<>'') and (sabor05.Text='') then
    begin
      sabor05.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      exit;
    end;
  if (sabor03.Text<>'') and (sabor04.Text='') then
    begin
      sabor04.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      exit;
    end;
  if (sabor02.Text<>'') and (sabor03.Text='') then
    begin
      sabor03.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      exit;
    end;
  if (sabor01.Text<>'') and (sabor02.Text='') then
    begin
      sabor02.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      exit;
    end;
  if sabor01.Text = '' then
    sabor01.Text := SQLObsProdutoOBPRA15SIGLA.Value;
end;

procedure TFormTelaSabores.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaSabores.EntradaDadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then
    if (EntradaDados.Text <> '') then
      begin
        SQLObsProduto.Close;
        SQLObsProduto.SQL.clear;
        SQLObsProduto.SQL.Text := 'Select * from ObsProdutoRest where OBPRA1TIPO="S" and OBPRIORDEM='+EntradaDados.Text+' and PRODICOD='+FORMTELAITENS.SQLItensVendaTempCODIGO.AsString;
        SQLObsProduto.Open;

        try
          TotalSabores := StrToFloat(EditValorTotal.text);
        except
          TotalSabores := 0;
        end;
        if SQLObsProdutoVALOR.Value > TotalSabores then
          TotalSabores := SQLObsProdutoVALOR.Value;

        EditValorTotal.text := floattostr(TotalSabores);
        EditValorTotal.update;

        if (sabor05.Text<>'') and (sabor06.Text='') then sabor06.Text := SQLObsProdutoOBPRA15SIGLA.Value;
        if (sabor04.Text<>'') and (sabor05.Text='') then sabor05.Text := SQLObsProdutoOBPRA15SIGLA.Value;
        if (sabor03.Text<>'') and (sabor04.Text='') then sabor04.Text := SQLObsProdutoOBPRA15SIGLA.Value;
        if (sabor02.Text<>'') and (sabor03.Text='') then sabor03.Text := SQLObsProdutoOBPRA15SIGLA.Value;
        if (sabor01.Text<>'') and (sabor02.Text='') then sabor02.Text := SQLObsProdutoOBPRA15SIGLA.Value;
        if (sabor01.Text = '') then sabor01.Text := SQLObsProdutoOBPRA15SIGLA.Value;

        {Reabre tabela}
        SQLObsProduto.Close;
        SQLObsProduto.SQL.clear;
        SQLObsProduto.SQL.add('Select * from ObsProdutoRest where OBPRA1TIPO="S" and PRODICOD='+FORMTELAITENS.SQLItensVendaTempCODIGO.AsString);
        SQLObsProduto.SQL.add('Order by OBPRIORDEM ASC');
        SQLObsProduto.Open;

        EntradaDados.Clear;
        EntradaDados.SetFocus;
      end;
end;

procedure TFormTelaSabores.FormShow(Sender: TObject);
begin
  EntradaDados.SetFocus;
end;

procedure TFormTelaSabores.Bt0Click(Sender: TObject);
begin
  keybd_event(48,48,0,0);
end;

procedure TFormTelaSabores.BtBackSpaceClick(Sender: TObject);
begin
  keybd_event(8,8,0,0);
end;

procedure TFormTelaSabores.BtReturnClick(Sender: TObject);
begin
  keybd_event(13,13,0,0);
end;

procedure TFormTelaSabores.Bt1Click(Sender: TObject);
begin
  keybd_event(49,49,0,0);
end;

procedure TFormTelaSabores.Bt2Click(Sender: TObject);
begin
  keybd_event(50,50,0,0);
end;

procedure TFormTelaSabores.Bt3Click(Sender: TObject);
begin
  keybd_event(51,51,0,0);
end;

procedure TFormTelaSabores.Bt4Click(Sender: TObject);
begin
  keybd_event(52,52,0,0);
end;

procedure TFormTelaSabores.Bt5Click(Sender: TObject);
begin
  keybd_event(53,53,0,0);
end;

procedure TFormTelaSabores.Bt6Click(Sender: TObject);
begin
  keybd_event(54,54,0,0);
end;

procedure TFormTelaSabores.Bt7Click(Sender: TObject);
begin
  keybd_event(55,55,0,0);
end;

procedure TFormTelaSabores.Bt8Click(Sender: TObject);
begin
  keybd_event(56,56,0,0);
end;

procedure TFormTelaSabores.Bt9Click(Sender: TObject);
begin
  keybd_event(57,57,0,0);
end;

procedure TFormTelaSabores.EditValorTotalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then
    Close;
end;

procedure TFormTelaSabores.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 8) or (key = 27) then
    begin
      rxSigla.Caption := '';
      rxSigla.update;
      SQLObsProduto.Close;
      SQLObsProduto.SQL.clear;
      SQLObsProduto.SQL.add('Select * from ObsProdutoRest where OBPRA1TIPO="S" and PRODICOD='+FORMTELAITENS.SQLItensVendaTempCODIGO.AsString);
      SQLObsProduto.SQL.add('Order by OBPRA15SIGLA ASC');
      SQLObsProduto.Open;
      SQLObsProduto.first;
    end;

  if (key >= 65) and (key <= 90) then
    begin
      rxSigla.Caption := rxSigla.Caption + char(Key);
      rxSigla.update;
      if length(rxSigla.Caption) >= 2 then
        begin
          SQLObsProduto.Close;
          SQLObsProduto.SQL.clear;
          SQLObsProduto.SQL.add('Select * from ObsProdutoRest where OBPRA1TIPO="S" and PRODICOD='+FORMTELAITENS.SQLItensVendaTempCODIGO.AsString+' and OBPRA15SIGLA like "%'+rxSigla.Caption+'%"');
          SQLObsProduto.SQL.add('Order by OBPRA15SIGLA ASC');
          SQLObsProduto.Open;
          SQLObsProduto.first;
        end;
    end;
  if (key = 13) then
    begin
      rxSigla.Caption := '';
      if (sabor05.Text<>'') and (sabor06.Text='') then sabor06.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      if (sabor04.Text<>'') and (sabor05.Text='') then sabor05.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      if (sabor03.Text<>'') and (sabor04.Text='') then sabor04.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      if (sabor02.Text<>'') and (sabor03.Text='') then sabor03.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      if (sabor01.Text<>'') and (sabor02.Text='') then sabor02.Text := SQLObsProdutoOBPRA15SIGLA.Value;
      if sabor01.Text = '' then sabor01.Text := SQLObsProdutoOBPRA15SIGLA.Value;

      try
        TotalSabores := StrToFloat(EditValorTotal.text);
      except
        TotalSabores := 0;
      end;

      if SQLObsProdutoVALOR.Value > TotalSabores then
        TotalSabores := SQLObsProdutoVALOR.Value;

      EditValorTotal.text := floattostr(TotalSabores);
      EditValorTotal.update;
    end;
end;

procedure TFormTelaSabores.btApagaSabor01Click(Sender: TObject);
begin
  sabor01.Lines.Clear;
end;

procedure TFormTelaSabores.btApagaSabor02Click(Sender: TObject);
begin
  sabor02.Lines.Clear;
end;

procedure TFormTelaSabores.btApagaSabor03Click(Sender: TObject);
begin
  sabor03.Lines.Clear;
end;

procedure TFormTelaSabores.btApagaSabor04Click(Sender: TObject);
begin
  sabor04.Lines.Clear;
end;

procedure TFormTelaSabores.btApagaSabor05Click(Sender: TObject);
begin
  sabor05.Lines.Clear;
end;

procedure TFormTelaSabores.btApagaSabor06Click(Sender: TObject);
begin
  sabor06.Lines.Clear;
end;

procedure TFormTelaSabores.DBGridItensExit(Sender: TObject);
begin
rxSigla.Caption := '';
end;

procedure TFormTelaSabores.DBGridItensEnter(Sender: TObject);
begin
  rxSigla.Caption := '';
end;

end.
