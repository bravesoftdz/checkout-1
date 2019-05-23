unit TelaRecargaCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, RxLookup, DB, DBTables, RxQuery, Mask, ToolEdit,
  CurrEdit, StdCtrls, Buttons, ConerBtn, jpeg, ExtCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaRecargaCartao = class(TForm)
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    EditCartao: TEdit;
    Label2: TLabel;
    EditValor: TCurrencyEdit;
    LblValor: TLabel;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    DSQryNumerario: TDataSource;
    LblNumerario: TLabel;
    ComboNumerario: TRxDBLookupCombo;
    SQLMovimentoCaixa: TRxQuery;
    SQLCliente: TRxQuery;
    lbCliente: TLabel;
    lbSaldo: TLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    ImgDesligar: TImage;
    procedure BtnOKClick(Sender: TObject);
    procedure EditCartaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRecargaCartao: TFormTelaRecargaCartao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaRecargaCartao.BtnOKClick(Sender: TObject);
var Gravou : Boolean;
begin
  if (EditCartao.Text = '') then
    begin
      Informa('Esta operação de caixa necessita de um Cartão!');
      EditCartao.SetFocus ;
      Exit;
    end ;

  if (EditValor.Value = 0) then
    begin
      Informa('Esta operação de caixa necessita um valor maior que zero!');
      EditValor.SetFocus ;
      Exit;
    end ;

  if (ComboNumerario.Text = '') then
    begin
      Informa('Esta operação de caixa necessita de um numerário!');
      ComboNumerario.SetFocus ;
      Exit;
    end ;

  // Atualizar o Cad Cliente com o Novo Saldo.
  Gravou := False;
  SQLCliente.Close;
  SQLCliente.macrobyname('MFiltro').Value := 'CLIEA35NROCARTCRED = "' + inttostr(strtoint(EditCartao.Text)) + '"';
  SQLCliente.Open;
  if not SQLCliente.IsEmpty then
    begin
      SQLCliente.edit;
      SQLCliente.fieldbyname('CLIEN2LIMITECRED').Value := SQLCliente.fieldbyname('CLIEN2LIMITECRED').Value + EditValor.Value;
      try
        Gravou := True;
        SQLCliente.post;
      except
        Gravou := False;
        SQLCliente.cancel;
      end;
    end;

   if gravou then
     GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,
                          IntToStr(TerminalAtual),
                          FormatDateTime('mm/dd/yyyy', Now),
                          ComboNumerario.Value,
                          '13', {Cod Venda a Vista}
                          IntToStr(DM.UsuarioAtual),
                          'CRT.'+EditCartao.Text,
                          EditValor.Value,
                          0,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          0,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          'C',// C=Credito , D=Debito
                          'CARGA CARTAO.' + EditCartao.Text,
                          'N',
                          '');

  if gravou then
    Showmessage('Credito Inserido com Sucesso!')
  else
    Showmessage('Erro! Tente Novamente!');
  Close;
end;

procedure TFormTelaRecargaCartao.EditCartaoExit(Sender: TObject);
begin
  // Cliente
  lbCliente.Caption  := SQLLocate('CLIENTE','CLIEA35NROCARTCRED','CLIEA60RAZAOSOC','"'+IntToStr(StrToInt(EditCartao.Text))+'"');
  lbCliente.Update;
  // Saldo
  lbSaldo.Caption := SQLLocate('CLIENTE','CLIEA35NROCARTCRED','CLIEN2LIMITECRED','"'+IntToStr(StrToInt(EditCartao.Text))+'"');
  lbSaldo.Update;

end;

procedure TFormTelaRecargaCartao.FormCreate(Sender: TObject);
begin
  SQLNumerario.Open;
  lbCliente.Caption := '';
  lbCliente.Update;
  lbSaldo.Caption := '';
  lbSaldo.Update;
  // Seta o Primeiro Numerario
  ComboNumerario.KeyValue := 1;
end;

procedure TFormTelaRecargaCartao.FormKeyPress(Sender: TObject;
  var Key: Char);
Var
  Objeto:TComponent;
begin
  if Key = char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If (Objeto is TRxDBLookUpCombo) and
         (Objeto as TRxDBLookUpCombo).IsDropDown Then
      begin
        (Objeto as TRxDBLookUpCombo).CloseUp(True);
        Application.ProcessMessages;
      end;

      Key := CHR(0) ;
      Perform(Wm_NextDlgCtl, 0, 0) ;
    end;
end;

procedure TFormTelaRecargaCartao.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
