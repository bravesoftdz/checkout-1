unit TelaConsultaRapidaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  RXCtrls, DBActns, ActnList, EWall, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaRapidaCliente = class(TForm)
    DSTemplate: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLCliente1Aviso: TStringField;
    SQLCliente2Aviso: TStringField;
    SQLClienteSPCAviso: TStringField;
    VALOR: TEdit;
    DBGridLista: TDBGrid;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    ImgDesligar: TImage;
    procedure VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRapidaCliente: TFormTelaConsultaRapidaCliente;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaItens, DataModulo,
     LeitorCodigoBarrasCheckout;

{$R *.DFM}

procedure TFormTelaConsultaRapidaCliente.VALORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN :
        begin
          if Valor.Text = '' then
          begin
            DBGridLista.Setfocus;
            exit;
          end;
          if (Length(Valor.Text) = 13 ) and (IsNumeric(Valor.Text,'FLOAT')) then
            begin
              SQLCliente.Close ;
              SQLCliente.SQL.Clear ;
              SQLCliente.SQL.Add('select * from CLIENTE') ;
              SQLCliente.SQL.Add('where') ;
              SQLCliente.SQL.Add('CLIEA13ID = "' + Valor.Text + '"') ;
              SQLCliente.SQL.Add('order by CLIEA60RAZAOSOC') ;
              SQLCliente.Open ;
              SQLCliente.First ;
              if not SQLCliente.EOF then
                DBGridLista.Setfocus ;
            end
          else
            begin
              SQLCliente.Close ;
              SQLCliente.SQL.Clear ;
              SQLCliente.SQL.Add('select * from CLIENTE') ;
              SQLCliente.SQL.Add('where') ;
              if Pos('*', Valor.Text) > 0 then
                SQLCliente.SQL.Add('CLIEA60RAZAOSOC like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
              else
                SQLCliente.SQL.Add('CLIEA60RAZAOSOC like "' + Valor.Text + '%"') ;
              SQLCliente.SQL.Add('order by CLIEA60RAZAOSOC') ;
              SQLCliente.Open ;

              SQLCliente.First ;
              if SQLCliente.IsEmpty then
              begin
                SQLCliente.Close ;
                SQLCliente.SQL.Clear ;
                SQLCliente.SQL.Add('select * from CLIENTE') ;
                SQLCliente.SQL.Add('where') ;
                if Pos('*', Valor.Text) > 0 then
                  SQLCliente.SQL.Add('CLIEA60NOMEFANT like "%' + Copy(Valor.Text, 2, Length(Valor.Text)) + '%"')
                else
                  SQLCliente.SQL.Add('CLIEA60NOMEFANT like "' + Valor.Text + '%"') ;
                SQLCliente.SQL.Add('order by CLIEA60NOMEFANT') ;
                SQLCliente.Open ;
              end ;
              SQLCliente.First ;
              if not SQLCliente.EOF then
                DBGridLista.Setfocus ;
            end;
        end ;
    VK_DOWN :
        begin
          if DSTemplate.DataSet.IsEmpty then
            DSTemplate.DataSet.Open;
          DSTemplate.DataSet.Next;
          DBGridLista.SetFocus;
        end;
    VK_UP:
        begin
          DSTemplate.DataSet.Prior;
          DBGridLista.SetFocus;
        end;
  end ;
end;

procedure TFormTelaConsultaRapidaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end ;

procedure TFormTelaConsultaRapidaCliente.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if SQLCliente.FieldByName('CLIEA13ID').AsString <> '' then
    begin
      ClienteVenda := SQLCliente.FieldByName('CLIEA13ID').AsString ;
      ClienteRecto := SQLCliente.FieldByName('CLIEA13ID').AsString ;

      if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
        if SQLCliente.FieldByName('CLIEA60NOMEFANT').AsString <> '' then
          FormTelaFechamentoVenda.LblNomeCliente.Text := SQLCliente.FieldByName('CLIEA60NOMEFANT').AsString
        else
          FormTelaFechamentoVenda.LblNomeCliente.text := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsString ;

      FormTelaConsultaRapidaCliente.ModalResult := MrOK;
    end;
  end;
end;

procedure TFormTelaConsultaRapidaCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close ;
end;

procedure TFormTelaConsultaRapidaCliente.FormActivate(Sender: TObject);
begin
  if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
    if (FormTelaFechamentoVenda.EntradaDados.Text <> '') and (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'FLOAT')) then
      begin
        VALOR.Text := FormTelaFechamentoVenda.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter, [ssAlt]) ;
        EXIT ;
      end ;
  if Application.FindComponent('FormTelaRecebimentoCrediario') <> nil then
    if Valor.Text <> '' then
      begin
        VALORKeyDown(Sender, Enter, [ssAlt]);
        EXIT;
      end;

  if FormTelaItens.Visible then
    if (FormTelaItens.EntradaDados.Text <> '') and (not IsNumeric(FormTelaItens.EntradaDados.Text, 'FLOAT')) then
      begin
        VALOR.Text := FormTelaItens.EntradaDados.Text ;
        VALORKeyDown(Sender, Enter, [ssAlt]) ;
      end ;
end;

end.
