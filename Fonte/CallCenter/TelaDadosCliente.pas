unit TelaDadosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Buttons, RxLookup, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, ExtCtrls, ConerBtn;

type
  TFormTelaDadosCliente = class(TForm)
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLHPDCADASTRO: TDateTimeField;
    SQLClienteCLHPDFIRSTHELP: TDateTimeField;
    SQLClienteCLHPDLASTHELP: TDateTimeField;
    SQLClienteCLHPINROHELP: TIntegerField;
    SQLClienteCLHPDFIRSTRESET: TDateTimeField;
    SQLClienteCLHPDLASTRESET: TDateTimeField;
    SQLClienteCLHPINRORESETS: TIntegerField;
    SQLClienteCLHPTDADOSTEC: TMemoField;
    SQLBloqueio: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    ComboCliente: TRxDBLookupCombo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblBloqueio: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEditBloqueio: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    SpeedButton1: TConerBtn;
    ConerBtn1: TConerBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSSQLClienteDataChange(Sender: TObject; Field: TField);
    procedure ComboClienteChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AcessaClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCliente: TFormTelaDadosCliente;

implementation

uses UnitLibrary, Principal, DataModulo,
  FormResources, CadastroClienteHelpDesk;

{$R *.dfm}

procedure TFormTelaDadosCliente.FormCreate(Sender: TObject);
begin
 if not SQLCliente.Active then SQLCliente.Open;
    if ComboCliente.Text = '...' then
       begin
           DBEdit1.Visible := false;
           DBEdit2.Visible := false;
           DBEdit3.Visible := false;
           DBEdit4.Visible := false;
           DBEdit5.Visible := false;
           DBEdit6.Visible := false;
           DBEdit7.Visible := false;
           DBEditBloqueio.Visible := False;
           DBMemo1.Visible := false;
       end
    else
       begin
           DBEdit1.Visible := True;
           DBEdit2.Visible := True;
           DBEdit3.Visible := True;
           DBEdit4.Visible := True;
           DBEdit5.Visible := True;
           DBEdit6.Visible := True;
           DBEdit7.Visible := True;
           DBEditBloqueio.Visible := True;
           DBMemo1.Visible := True;
       end;

end;

procedure TFormTelaDadosCliente.BitBtn1Click(Sender: TObject);
begin
  if SQLBloqueio.IsEmpty then
    if ComboCliente.Value <> '' then
      begin
        FormTelaDadosCliente.ModalResult := MrOk;
      end
    else
      begin
        Informa('Você deve selecionar um cliente antes de continuar!');
        ComboCliente.SetFocus;
      end
  else
    begin
      Informa('Este cliente esta bloqueado'+char(#13)+'Motivo bloqueio: ' + SQLBloqueio.FindField('mtbla60descr').AsString);
      FormTelaDadosCliente.ModalResult := MrCancel;
    end;
end;

procedure TFormTelaDadosCliente.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFormTelaDadosCliente.DSSQLClienteDataChange(Sender: TObject;
  Field: TField);
begin
    SQLBloqueio.Close;
    SQLBloqueio.SQL.Text := 'select mtbla60descr from motivobloqueio where MTBLICOD in (select MTBLICOD from cliente where cliea13id = '''+SQLClienteCLIEA13ID.AsString+''')';
    SQLBloqueio.Open;
    if not SQLBloqueio.IsEmpty then
      begin
        lblBloqueio.Visible := true;
        DBEditBloqueio.Visible := true;
      end
    else
      begin
        lblBloqueio.Visible := false;
        DBEditBloqueio.Visible := false;
      end;

end;

procedure TFormTelaDadosCliente.ComboClienteChange(Sender: TObject);
begin
    if ComboCliente.Text = '...' then
       begin
           DBEdit1.Visible := false;
           DBEdit2.Visible := false;
           DBEdit3.Visible := false;
           DBEdit4.Visible := false;
           DBEdit5.Visible := false;
           DBEdit6.Visible := false;
           DBEdit7.Visible := false;
           DBMemo1.Visible := false;
           DBEditBloqueio.Visible := false;
       end
    else
       begin
           DBEdit1.Visible := True;
           DBEdit2.Visible := True;
           DBEdit3.Visible := True;
           DBEdit4.Visible := True;
           DBEdit5.Visible := True;
           DBEdit6.Visible := True;
           DBEdit7.Visible := True;
           DBMemo1.Visible := True;
           DBEditBloqueio.Visible := True;
       end;

end;

procedure TFormTelaDadosCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;
end;

procedure TFormTelaDadosCliente.AcessaClienteClick(Sender: TObject);
begin
  CriaFormulario(TFormCadastroClienteHelpDesk,'FormCadastroClienteHelpDesk',false,true,'');
  FormCadastroClienteHelpDesk.Show;

end;

end.
