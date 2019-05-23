unit unRelEstoquecustovenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, DB, IBCustomDataSet, IBQuery, StdCtrls, Mask, ToolEdit,
  QRCtrls, QuickRpt, ExtCtrls, Buttons, DBCtrls, RDprint, Grids, DBGrids;

type
  TFormRelEstoqueCustoVenda = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    DateEdit: TDateEdit;
    CheckCusto: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    ibEstoque: TIBQuery;
    ibEstoquePRODICOD: TIntegerField;
    ibEstoquePRODA60DESCR: TIBStringField;
    ibEstoquePRODN3VLRVENDA: TFloatField;
    ibEstoquePRODN3VLRCUSTO: TFloatField;
    ibEstoquePSLDN3QTDE: TFloatField;
    ibEstoqueICMSA60DESCR: TIBStringField;
    ibEstoqueICMSICOD: TIntegerField;
    ibEstoqueTOTAL: TFloatField;
    dtsEstoque: TDataSource;
    IBMovEstoque: TIBSQL;
    ibicms: TIBQuery;
    dtsICMS: TDataSource;
    RDprint: TRDprint;
    procedure Cabecalho;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelEstoqueCustoVenda: TFormRelEstoqueCustoVenda;
  SomaTotal : Extended;

implementation


{$R *.dfm}

procedure TFormRelEstoqueCustoVenda.FormCreate(Sender: TObject);
begin
  ibEmpresa.Open;
  ibicms.Open;
end;

procedure TFormRelEstoqueCustoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibEmpresa.Close;
  ibEstoque.Close;
  Action := caFree;
end;

procedure TFormRelEstoqueCustoVenda.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat(',0.00;-,0.00',SomaTotal);
end;

procedure TFormRelEstoqueCustoVenda.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  if DateEdit.Date > StrToDate('01/01/1900') then
    Value:= 'Retroativo ao dia: '+DateEdit.Text
  else
    Value := '';
end;

procedure TFormRelEstoqueCustoVenda.QRDBText5Print(sender: TObject;
  var Value: String);
  var movimento: Extended;
begin
  if DateEdit.Date > StrToDate('01/01/1900') then
  begin
    IBMovEstoque.Close;
    IBMOvEstoque.ParamByName('xDataMovimento').AsDate := DateEdit.Date;
    IBMovEstoque.ParamByName('xPRODICOD').Value       := ibEstoque.Fieldbyname('prodicod').value;
    if DBLookupComboBox2.Text <> '' then
      IBMovEstoque.ParamByName('xempricod').Value := ibempresa.fieldbyname('empricod').value;
    IBMovEstoque.prepare;
    IBMOvEstoque.ExecQuery;
    if IBMovEstoque.Fieldbyname('QtdMovimento').isnull then
      movimento := 0
    else
      movimento:= IBMovEstoque.Fieldbyname('QtdMovimento').value;
    Try
      Value := FormatFloat(',0.00;-,0.00',ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento);
    except
      Value := '0,00';
    end;
  end;
end;

procedure TFormRelEstoqueCustoVenda.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  var movimento: Extended;
begin
  if (DateEdit.Date > StrTodate('01/01/1900')) and (CheckBox1.Checked) then
  begin
    IBMovEstoque.Close;
    IBMOvEstoque.ParamByName('xDataMovimento').AsDate := DateEdit.Date;
    IBMovEstoque.ParamByName('xPRODICOD').Value       := ibEstoque.Fieldbyname('prodicod').value;
    if DBLookupComboBox2.Text <> '' then
      IBMovEstoque.ParamByName('xempricod').Value := ibempresa.fieldbyname('empricod').value;
    IBMovEstoque.prepare;
    IBMOvEstoque.ExecQuery;

    if IBMovEstoque.Fieldbyname('QtdMovimento').isnull then
      movimento := 0
    else
      movimento:= IBMovEstoque.Fieldbyname('QtdMovimento').value;

    Try
      if  ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento > 0 then
        PrintBand := True
      else
        PrintBand := False;
    except
        PrintBand := False;
    end;
  end;
end;

procedure TFormRelEstoqueCustoVenda.QRDBText4Print(sender: TObject;
  var Value: String);
  var movimento : Extended;
begin
  if DateEdit.Date > StrToDate('01/01/1900') then
  begin
    IBMovEstoque.Close;
    IBMOvEstoque.ParamByName('xDataMovimento').AsDate := DateEdit.Date;
    IBMovEstoque.ParamByName('xPRODICOD').Value       := ibEstoque.Fieldbyname('prodicod').value;
    if DBLookupComboBox2.Text <> '' then
      IBMovEstoque.ParamByName('xempricod').Value := ibempresa.fieldbyname('empricod').value;
    IBMovEstoque.prepare;
    IBMOvEstoque.ExecQuery;
    if IBMovEstoque.Fieldbyname('QtdMovimento').isnull then
      movimento := 0
    else
      movimento:= IBMovEstoque.Fieldbyname('QtdMovimento').value;
    Try
      if CheckCusto.Checked then
      begin
        Value := FormatFloat(',0.00;-,0.00',(ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento)*
                  ibestoque.Fieldbyname('PRODN3VLRCUSTO').VALUE);
        SomaTotal:= SomaTotal + (ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento)*
                  ibestoque.Fieldbyname('PRODN3VLRCUSTO').VALUE;
      end Else
      begin
        Value := FormatFloat(',0.00;-,0.00',(ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento)*
                  ibestoque.Fieldbyname('PRODN3VLRVENDA').VALUE);
        SomaTotal:= SomaTotal + (ibEstoque.Fieldbyname('PSLDN3QTDE').Value - movimento)*
                  ibestoque.Fieldbyname('PRODN3VLRVENDA').VALUE;
      end;
    except
      Value := '0,00';
    end;
  end;
end;

procedure TFormRelEstoqueCustoVenda.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  SomaTotal := 0;
end;

procedure TFormRelEstoqueCustoVenda.BitBtn1Click(Sender: TObject);
var Text : String;
    Linha: Integer;

begin
  Linha := 1;
  SomaTotal := 0;
  Text:= '';
  if DBLookupComboBox2.Text <> '' then
    Text := ' Where ps.empricod = :xempricod ';

  if DBLookupComboBox1.Text <> '' then
    if text = '' then
      Text := ' Where p.icmsicod = :xicms '
    else
      Text := Text + ' and p.icmsicod = :xicms ' ;

  if DateEdit.Date < StrTodate('01/01/1900') then
  begin
    if CheckBox1.Checked then
      if text <> '' then
        text := text + ' and ps.psldn3qtde > 0 '
      else
        Text := ' where ps.psldn3qtde > 0 ';
  end;
  if CheckCusto.Checked then
  begin
    ibEstoque.Sql.Text:= 'select p.PRODICOD, p.PRODA60DESCR, p.PRODN3VLRCUSTO, p.PRODN3VLRVENDA,  PS.PSLDN3QTDE, '+
    'PS.PSLDN3QTDE*P.PRODN3VLRCUSTO AS TOTAL, P.ICMSICOD, I.ICMSA60DESCR FROM PRODUTOsaldo Ps '+
    'LEFT JOIN PRODUTO P ON P.PRODICOD = Ps.PRODICOD '+
    'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD'+ Text +' order by p.proda60descr';
//    Quick.QrLabel3.Caption := 'R$ Custo';
  //  Quick.ReportTitle := 'Relatório de Estoque x Valor de CUSTO';
    //Quick.QRDBText3.DataField := 'PRODN3VLRCUSTO';
  end else
  begin
    ibEstoque.Sql.Text:= 'select p.PRODICOD, p.PRODA60DESCR, p.PRODN3VLRVENDA, p.PRODN3VLRCUSTO, PS.PSLDN3QTDE, '+
    'PS.PSLDN3QTDE*P.PRODN3VLRVENDA AS TOTAL, P.ICMSICOD, I.ICMSA60DESCR FROM PRODUTOsaldo Ps '+
    'LEFT JOIN PRODUTO P ON P.PRODICOD = Ps.PRODICOD '+
    'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD '+Text +' order by p.proda60descr';
//    Quick.QRDBText3.DataField := 'PRODN3VLRVENDA';
  end;
  if DBLookupComboBox2.Text <> '' then
    ibestoque.parambyname('xempricod').value := ibempresa.fieldbyname('empricod').value;
  if DBLookupComboBox1.Text <> '' then
    ibestoque.parambyname('xicms').value := ibicms.fieldbyname('icmsicod').value;

  ibEstoque.Prepare;
  ibEstoque.Open;

  IBMovEstoque.Close;
  IBMovEstoque.SQL.Text:= 'Select Sum(MVESN3QTDENTRADA-MVESN3QTDSAIDA) as QtdMovimento '+
                          'from movimentoestoque where MVESDMOV >= :xDataMovimento and prodicod = :xprodicod ';

  if DBLookupComboBox2.Text <> '' then
    IBMovEstoque.SQL.Text:= 'Select Sum(MVESN3QTDENTRADA-MVESN3QTDSAIDA) as QtdMovimento '+
    'from movimentoestoque where MVESDMOV >= :xDataMovimento and prodicod = :xprodicod '+
    'and empricod = :xempricod ';

    RDprint.Abrir;

    Cabecalho;
    linha := 6;

    While not IBEstoque.Eof do
    begin
     Try
      RDprint.ImpF(linha, 1,IBEstoque.FieldByName('PRODICOD').AsString,[]);
      RDprint.ImpF(linha, 6,Copy(IBEstoque.FieldByName('PRODA60DESCR').AsString,0,39),[]);
      RDprint.Imp(Linha, 47,StrTm(FormatFloat('###,##0.00',ibestoque.fieldbyname('psldn3qtde').Value),10,' ',0));
      if CheckCusto.Checked then
      Begin
        RDprint.Imp(Linha, 59,StrTm(FormatFloat('###,##0.00',ibestoque.fieldbyname('PRODN3VLRCUSTO').Value),10,' ',0));
        RDprint.Imp(Linha, 70,StrTm(FormatFloat('###,##0.00',ibestoque.fieldbyname('PRODN3VLRCUSTO').Value*ibestoque.fieldbyname('psldn3qtde').Value),10,' ',0));
      end else
      begin
        RDprint.Imp(Linha, 59,StrTm(FormatFloat('###,##0.00',ibestoque.fieldbyname('PRODN3VLRVENDA').Value),10,' ',0));
        RDprint.Imp(Linha, 70,StrTm(FormatFloat('###,##0.00',ibestoque.fieldbyname('PRODN3VLRVENDA').Value*ibestoque.fieldbyname('psldn3qtde').Value),10,' ',0));
      end;
      inc(linha);
      if linha >= 60 then
      begin
        RDprint.Novapagina;
        linha := 1;
        Cabecalho;
        linha := 6;
      end;
      except

      end;
      ibEstoque.Next;
    end;
    RDprint.Fechar;
end;

Procedure TFormRelEstoqueCustoVenda.Cabecalho;
begin
    if CheckCusto.Checked then
      RDprint.ImpF(1,1,'Relatório de Estoque x Valor de CUSTO',[])
    else
      RDprint.ImpF(1,1,'Relatório de Estoque x Valor de VENDA',[]);

    if DateEdit.Text <> '  /  /    ' then
      RDprint.ImpF(2,1,'Retroativo ao Dia: '+DateEdit.Text,[]);
    RDprint.ImpF(3,1,'================================================================================',[]); 
    if CheckCusto.Checked then
      RDprint.ImpF(4,1,'Produto                                              Qtd    R$ Custo    R$ Total',[])
    else
      RDprint.ImpF(4,1,'Produto                                              Qtd    R$ Venda    R$ Total',[]);
    RDprint.ImpF(5,1,'================================================================================',[]);
end;

function TFormRelEstoqueCustoVenda.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
begin
  if Posicao = 0 then // antes do texto (a esquerda)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,0);

  end else if posicao = 1 then // depois do texto (a direita)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,Length(xStr));

  end;
  Result := xStr;
end;


end.
