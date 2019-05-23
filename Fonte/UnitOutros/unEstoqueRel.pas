unit unEstoqueRel;


interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt, ExtCtrls, Mask, ToolEdit, IBSQL;

type
  TFormRelEstoque = class(TForm)
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    QuickRepEstoque: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    ibEstoque: TIBQuery;
    dtsEstoque: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    CheckBox1: TCheckBox;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    Label1: TLabel;
    IBMovEstoque: TIBSQL;
    QRLabel5: TQRLabel;
    DateEdit: TDateEdit;
    CheckCusto: TCheckBox;
    QRExpr1: TQRLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ibicms: TIBQuery;
    dtsICMS: TDataSource;
    ibEstoquePRODICOD: TIntegerField;
    ibEstoquePRODA60DESCR: TIBStringField;
    ibEstoquePRODN3VLRVENDA: TFloatField;
    ibEstoquePRODN3VLRCUSTO: TFloatField;
    ibEstoquePSLDN3QTDE: TFloatField;
    ibEstoqueICMSA60DESCR: TIBStringField;
    ibEstoqueICMSICOD: TIntegerField;
    ibEstoqueTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelEstoque: TFormRelEstoque;
  SomaTotal : Extended;
  
implementation

uses unDataModule;

{$R *.dfm}

procedure TFormRelEstoque.FormCreate(Sender: TObject);
begin
  ShowMessage('vai redefinir tamanho do form');
  Height := 149;
  Width  := 466;
  ShowMessage('Open ibEmpresa');
  ibEmpresa.Open;
  ShowMessage('Open ibicms');
  ibicms.Open;
end;

procedure TFormRelEstoque.BitBtn1Click(Sender: TObject);
var Text : String;
begin
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
    QrLabel3.Caption := 'R$ Custo';
    QuickRepEstoque.ReportTitle := 'Relatório de Estoque x Valor de CUSTO';
//    QRExpr1.Expression := 'SUM(PSLDN3QTDE*PRODN3VLRCUSTO)';
    QRDBText3.DataField := 'PRODN3VLRCUSTO';
  end else
  begin
    ibEstoque.Sql.Text:= 'select p.PRODICOD, p.PRODA60DESCR, p.PRODN3VLRVENDA, p.PRODN3VLRCUSTO, PS.PSLDN3QTDE, '+
    'PS.PSLDN3QTDE*P.PRODN3VLRVENDA AS TOTAL, P.ICMSICOD, I.ICMSA60DESCR FROM PRODUTOsaldo Ps '+
    'LEFT JOIN PRODUTO P ON P.PRODICOD = Ps.PRODICOD '+
    'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD '+Text +' order by p.proda60descr';
    QrLabel3.Caption := 'R$ Venda';
    QuickRepEstoque.ReportTitle := 'Relatório de Estoque x Valor de VENDA';
  //  QRExpr1.Expression := 'SUM(PSLDN3QTDE*PRODN3VLRVENDA)';
    QRDBText3.DataField := 'PRODN3VLRVENDA';
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

  QuickRepEstoque.Preview;
  Close;
end;

procedure TFormRelEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibEmpresa.Close;
  ibEstoque.Close;
  Action := caFree;
end;

procedure TFormRelEstoque.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := FormatFloat(',0.00;-,0.00',SomaTotal);
end;

procedure TFormRelEstoque.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  if DateEdit.Date > StrToDate('01/01/1900') then
    Value:= 'Retroativo ao dia: '+DateEdit.Text
  else
    Value := '';
end;

procedure TFormRelEstoque.QRDBText5Print(sender: TObject;
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

procedure TFormRelEstoque.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
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

procedure TFormRelEstoque.QRDBText4Print(sender: TObject;
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

procedure TFormRelEstoque.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  SomaTotal := 0;
end;

end.
