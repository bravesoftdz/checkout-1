unit unPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, StdCtrls, Buttons, Mask, ToolEdit, ComCtrls,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses unDataModulo;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  try
    Dm.IBDataBase.DataBaseName := FilenameEdit1.Text;
    Dm.IBDataBase.Connected := True;
    Dm.ibTrans.StartTransaction;
    Panel1.Enabled          := False;
    Panel2.Enabled          := True;
    BitBtn1.Caption    := 'Conectado';
    BitBtn1.Font.Color := clGreen;

 Except on e:Exception do
  begin
    dm.ibTrans.Rollback;
    Dm.IBDataBase.Connected := False;
    Showmessage('Falha ao Conectar com a Base de Dados: '+E.message);
  end;end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var nPIS, nCofins, nBase, nICMS : Extended;
    nID:String;
begin
    BitBtn2.Enabled := False;
    Dm.ibItens.ParamByName('xDataInicial').AsDate := DateEdit1.Date;
    Dm.ibItens.ParamByName('xDataFinal').AsDate := DateEdit2.Date;
    DM.ibItens.Open;

    DM.IBITENS.Last;
    ProgressBar1.Max := DM.ibItens.RecordCount;
    dm.ibItens.First;

  WHILE NOT DM.ibItens.Eof DO
  BEGIN
    nID:= dm.ibItens.Fieldbyname('cupoa13id').asstring;
    dm.IBSQL.Close;
    If CheckBox1.Checked Then
      dm.IBSQL.SQL.Text :=  'update cupomitem set '+
      'cpitn2vlrpis = :nPis, '+
      'cpitn2vlrcofins = :nCofins, '+
      'cpitn2baseicms  = :nBase, '+
      'cpitn2vlricms   = :nICMS  '+
      'where cupoa13id = :xid and cpitipos = :xpos'
    Else
      dm.IBSQL.SQL.Text :=  'update cupomitem set '+
      'cpitn2vlrpis = :nPis, '+
      'cpitn2vlrcofins = :nCofins '+
      'where cupoa13id = :xid and cpitipos = :xpos';
    nPIS   := 0;
    nCofins:= 0;
    nBase  := 0;
    nICMS  := 0;
    While (not dm.ibitens.eof) and ( dm.ibItens.Fieldbyname('cupoa13id').asstring = nID) do
      begin
        dm.ibsql.Prepare;
        dm.ibsql.ParamByName('nPIS').Value      := ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('prodn2aliqpis').value / 100);
        nPis := nPis + ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('prodn2aliqpis').value / 100);
        dm.ibsql.ParamByName('nCOFINS').value   := ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('prodn2aliqCOFINS').value / 100);
        nCofins := nCofins + ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('prodn2aliqCOFINS').value / 100);
        dm.ibsql.ParamByName('xid').asstring            := dm.ibItens.fieldbyname('cupoa13id').asstring;
        dm.ibsql.ParamByName('xPos').AsInteger          := dm.ibItens.fieldbyname('cpitipos').asinteger;
        If CheckBox1.Checked Then
        begin
          dm.ibsql.ParamByName('nBase').Value      := ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value);
          dm.ibsql.ParamByName('nICMS').Value      := ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('Icmsn2aliquota').value / 100);
          nBase := nBase + ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) ;
          nICMS := nICMS + ((dm.ibItens.fieldbyname('cpitn3qtd').value * dm.ibItens.fieldbyname('cpitn3vlrunit').value) - dm.ibItens.fieldbyname('cpitn2desc').value) * (dm.ibItens.fieldbyname('icmsn2aliquota').value / 100);
        end;

        dm.ibsql.ExecQuery;
        dm.ibItens.Next;
        DM.ibsql.close;
        ProgressBar1.Position := ProgressBar1.position + 1;
      end;
      if CheckBox1.Checked then
        dm.ibsql.SQL.Text := 'update cupom set cupon2vlrpis = :nPIS, cupon2vlrCofins = :nCofins, cupon2baseicms = :nBase, cupon2vlricms = :nICMS  where cupoa13id = :xcupom'
      else
        dm.ibsql.SQL.Text := 'update cupom set cupon2vlrpis = :nPIS, cupon2vlrCofins = :nCofins where cupoa13id = :xcupom';
      dm.ibsql.prepare;
      dm.IBSQL.parambyname('nPis').value    := npis;
      dm.IBSQL.parambyname('nCofins').value := nCofins;
      dm.IBSQL.parambyname('xCupom').value  := nID;
      if CheckBox1.Checked then
      begin
        dm.IBSQL.parambyname('nBase').value := nBase;
        dm.IBSQL.parambyname('nICMS').value := nICMS;
      end;
      dm.IBSQL.ExecQuery;
      dm.IBSQL.Close;
  END;
    Showmessage('concluido com sucesso');
    dm.ibTrans.Commit;

end;

end.
