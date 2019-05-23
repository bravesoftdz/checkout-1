unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, ComCtrls, RDprint, Inifiles, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter;

type
  TFormPrincipal = class(TForm)
    Memo: TMemo;
    ACBrPosPrinter: TACBrPosPrinter;
    TblCarne: TTable;
    TblCarneMensagem: TStringField;
    TblCarneCliente: TStringField;
    TblCarneEndereco: TStringField;
    TblCarneBairro: TStringField;
    TblCarneCidade: TStringField;
    TblCarneCodigoCliente: TStringField;
    TblCarneNumeroContrato: TStringField;
    TblCarneNumeroParcela: TIntegerField;
    TblCarneContadorParcelas: TIntegerField;
    TblCarneDataVencimento: TDateField;
    TblCarneValorParcela: TFloatField;
    TblCarneVendedor: TStringField;
    TblCarnePlano: TStringField;
    TblCarneDataEmissao: TDateField;
    TblCarneTotalCupom: TFloatField;
    TblCarneNroCupom: TStringField;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses DataModulo;


{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var Inifile: TInifile;
var CodCliente, ImpMarca, nVias, NroReduzido, ImpCaixaPorta, ImpCaixaVeloc, MostraDisplay,
    EmpresaNome, EmpresaEndereco, EmpresaFone, Cartao, Saltar : String;
var Linha, vCol : integer;
var TotDesc, TotConfissao : Double;
var ImpCozinha1 : boolean;
begin
  try
    memo.Lines.Clear;
    TblCarne.Open ;

    IniFile             := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
    Saltar              := IniFile.ReadString('IB_Software','Saltar','');
    nVias               := IniFile.ReadString('IB_SOFTWARE','NroViasImpVenda','');
    MostraDisplay       := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
    ImpMarca            := IniFile.ReadString('Restaurante','ImpMarca','');
    ImpCaixaPorta       := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
    ImpCaixaVeloc       := IniFile.ReadString('Restaurante','ImpCaixaVeloc','');
    IniFile.Free;

    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>Carne de Pagamento</e>');
    memo.Lines.Add(' ');
    memo.Lines.Add('</ae></fn>Contrato.: '+TblCarneNumeroContrato.AsString);
    memo.Lines.Add('Data:  ' + FormatDateTime('dd/mm/yyyy',TblCarneDataEmissao.Value));
    memo.Lines.Add('Plano: ' + TblCarnePlano.AsString);
    memo.Lines.Add('Vendedor: ' + TblCarneVendedor.AsString);
    memo.Lines.Add('Dados do Cliente');
    memo.Lines.Add(TblCarneCodigoCliente.AsString+'-'+copy(TblCarneCliente.AsString,1,30));
    memo.Lines.Add(' ');
    memo.Lines.Add('Vlr.Compra   : ' + FormatFloat('##0.00',TblCarneTotalCupom.Value));
    memo.Lines.Add('Vlr.Entrada  : ' + FormatFloat('##0.00',TblCarneEntrada.Value));
    memo.Lines.Add('Vlr.Desconto : ' + FormatFloat('##0.00',TblCarneValorDesconto.Value));
    memo.Lines.Add('Vlr.Acrescimo: ' + FormatFloat('##0.00',TblCarneAcrescimo.Value));
    memo.Lines.Add(' ');
    memo.Lines.Add('</ce><e>*** Parcelas ***</e>');
    memo.Lines.Add(' ');

    TblCarne.First;
    While not TblCarne.Eof Do
      begin
        if TblCarneNumeroParcela.Value = 0 then
          begin
            memo.Lines.Add('</ae>Entrada  R$ ' + FormatFloat('##0.00',TblCarneEntrada.Value)+' Recebida em '+ FormatDateTime('dd/mm/yy',TblCarneDataEmissao.Value));
            memo.Lines.Add(' ');
            memo.Lines.Add(' ');
            memo.Lines.Add(' ');
            memo.Lines.Add('------------------------------------');
          end
        else
          begin
            memo.Lines.Add('Parcela Nro.: ' + FormatFloat('##00',TblCarneNumeroParcela.AsInteger));
            memo.Lines.Add('Data Vencto.: ' + FormatDateTime('dd/mm/yy',TblCarneDataVencimento.Value));
            memo.Lines.Add('Valor Parcela R$ '+ FormatFloat('##0.00',TblCarneValorParcela.Value));
            memo.Lines.Add(' ');
            memo.Lines.Add(' ');
            memo.Lines.Add(' ');
            memo.Lines.Add('------------------------------------');
          end;
        TblCarne.next;
      end;

    memo.Lines.Add(' ');
    memo.Lines.Add(' ');
    memo.Lines.Add('</corte_parcial>');

    if ImpMarca = 'DARUMA'   then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
    if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
    if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscVox;
    if ImpMarca = 'DR700'    then ACBrPosPrinter.Modelo := ppEscDaruma;
    if ImpMarca = 'DR800'    then ACBrPosPrinter.Modelo := ppEscDaruma;

    ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
    ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);
    ACBrPosPrinter.Device.Ativar;
    try
      ACBrPosPrinter.Imprimir(Memo.Lines.Text);
    finally
      ACBrPosPrinter.Device.Desativar;
    end;

    TblCarne.Close ;
    Application.Terminate;
  except
    TblCarne.Close ;
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

end.
