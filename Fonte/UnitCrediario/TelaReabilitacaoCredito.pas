unit TelaReabilitacaoCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  ComCtrls, DB, DBTables, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaReabilitacaoCredito = class(TFormTelaGeralTEMPLATE)
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    Memo: TMemo;
    SQLExclusao: TRxQuery;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    UpdateSQLContasReceber: TUpdateSQL;
    Mensagem: TLabel;
    BtnVerificar: TSpeedButton;
    Progress: TProgressBar;
    ckFiltroFiliais: TCheckBox;
    procedure BtnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaReabilitacaoCredito: TFormTelaReabilitacaoCredito;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormTelaReabilitacaoCredito.BtnVerificarClick(Sender: TObject);
Var
  Reab1Avi, Reab2Avi, ReabAviSPC : integer ;
begin
  inherited;
  Reab1Avi   := 0 ;
  Reab2Avi   := 0 ;
  ReabAviSPC := 0 ;
  Mensagem.Visible := true ;
  Memo.Lines.Clear ;
  Progress.Visible := true ;

  Progress.Max      := SQLRecCount('CARTAPRIMEIROAVISO', '') ;
  Progress.Position := 0 ;
  Memo.Lines.Add('                   REABILITAÇÕES 1º AVISO') ;
  Memo.Lines.Add('                   ----------------------') ;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  if ckFiltroFiliais.Checked then
    DM.SQLTemplate.SQL.Add('select * from CARTAPRIMEIROAVISO')
  else
    DM.SQLTemplate.SQL.Add('select * from CARTAPRIMEIROAVISO CARTAPRIMEIROAVISO inner join CUPOM CUPOM on CARTAPRIMEIROAVISO.CUPOA13ID = CUPOM.CUPOA13ID where CUPOM.EMPRICOD = '+ EmpresaPadrao);
  DM.SQLTemplate.Open ;
  while not DM.SQLTemplate.EOF do
  begin
    Mensagem.Caption := 'Verificando 1º Aviso, Contrato => '+ DM.SQLTemplate.FieldByName('CUPOA13ID').Value;
    Mensagem.Refresh ;
    SQLContasReceber.Close ;
    SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '" and ' +
                                                     'CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString ;
    SQLContasReceber.Open ;
    if not SQLContasReceber.Eof then
    begin
      if SQLContasReceberCTRCN2VLR.Value = SQLContasReceberCTRCN2TOTREC.Value then
      begin
        SQLExclusao.Close ;
        SQLExclusao.SQL.Clear ;
        SQLExclusao.SQL.Add('delete from CARTAPRIMEIROAVISO') ;
        SQLExclusao.SQL.Add('where CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '"') ;
        SQLExclusao.SQL.Add('and   CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString) ;
        try
          SQLExclusao.ExecSQL ;
          Memo.Lines.Add('Documento ' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value +
                         ' Parcela ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString +
                         ' Cliente ' + DM.SQLTemplate.FieldByName('PRAVA60NOMECLI').AsString) ;
          Inc(Reab1Avi) ;
        except
          on E: Exception do Memo.Lines.Add('Erro:' + E.Message) ;
        end ;
      end ;
    end ;

    DM.SQLTemplate.Next ;
    Progress.Position := Progress.Position + 1 ;
  end ;
  Progress.Position := 0 ;

  Progress.Max      := SQLRecCount('CARTASEGUNDOAVISO', '') ;
  Progress.Position := 0 ;
  Memo.Lines.Add('                   REABILITAÇÕES 2º AVISO') ;
  Memo.Lines.Add('                   ----------------------') ;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  if ckFiltroFiliais.Checked then
    DM.SQLTemplate.SQL.Add('select * from CARTASEGUNDOAVISO')
  else
    DM.SQLTemplate.SQL.Add('select * from CARTASEGUNDOAVISO CARTASEGUNDOAVISO inner join CUPOM CUPOM on CARTASEGUNDOAVISO.CUPOA13ID = CUPOM.CUPOA13ID where CUPOM.EMPRICOD = '+ EmpresaPadrao);
  DM.SQLTemplate.Open ;
  while not DM.SQLTemplate.EOF do
  begin
    Mensagem.Caption := 'Verificando 2º Aviso, Contrato => '+ DM.SQLTemplate.FieldByName('CUPOA13ID').Value;
    Mensagem.Refresh ;
    SQLContasReceber.Close ;
    SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '" and ' +
                                                     'CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString ;
    SQLContasReceber.Open ;
    if not SQLContasReceber.Eof then
    begin
      if SQLContasReceberCTRCN2VLR.Value = SQLContasReceberCTRCN2TOTREC.Value then
      begin
        SQLExclusao.Close ;
        SQLExclusao.SQL.Clear ;
        SQLExclusao.SQL.Add('delete from CARTASEGUNDOAVISO') ;
        SQLExclusao.SQL.Add('where CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '"') ;
        SQLExclusao.SQL.Add('and   CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString) ;
        try
          SQLExclusao.ExecSQL ;
          Memo.Lines.Add('Documento ' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value +
                         ' Parcela ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString +
                         ' Cliente ' + DM.SQLTemplate.FieldByName('SGAVA60NOMECLI').AsString) ;
          Inc(Reab2Avi) ;
        except
          on E: Exception do Memo.Lines.Add('Erro:' + E.Message) ;
        end ;
      end ;
    end ;

    DM.SQLTemplate.Next ;
    Progress.Position := Progress.Position + 1 ;
  end ;
  Progress.Position := 0 ;

  Progress.Max      := SQLRecCount('CARTAAVISOSPC', '') ;
  Progress.Position := 0 ;
  Memo.Lines.Add('                   REABILITAÇÕES AVISO SPC') ;
  Memo.Lines.Add('                   -----------------------') ;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  if ckFiltroFiliais.Checked then
    DM.SQLTemplate.SQL.Add('select * from CARTAAVISOSPC')
  else
    DM.SQLTemplate.SQL.Add('select * from CARTAAVISOSPC CARTAAVISOSPC inner join CUPOM CUPOM on CARTAAVISOSPC.CUPOA13ID = CUPOM.CUPOA13ID where CUPOM.EMPRICOD = '+ EmpresaPadrao);
  DM.SQLTemplate.Open ;
  while not DM.SQLTemplate.EOF do
  begin
    Mensagem.Caption := 'Verificando SPC, Contrato => '+ DM.SQLTemplate.FieldByName('CUPOA13ID').Value;
    Mensagem.Refresh ;
    SQLContasReceber.Close ;
    SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '" and ' +
                                                     'CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString ;
    SQLContasReceber.Open ;
    if not SQLContasReceber.Eof then
    begin
      if SQLContasReceberCTRCN2VLR.Value = SQLContasReceberCTRCN2TOTREC.Value then
      begin
        SQLExclusao.Close ;
        SQLExclusao.SQL.Clear ;
        SQLExclusao.SQL.Add('delete from CARTAAVISOSPC') ;
        SQLExclusao.SQL.Add('where CTRCA13ID = "' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value + '"') ;
        SQLExclusao.SQL.Add('and   CTRCINROPARC = ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString) ;
        try
          SQLExclusao.ExecSQL ;
          Memo.Lines.Add('Documento ' + DM.SQLTemplate.FieldByName('CTRCA13ID').Value +
                         ' Parcela ' + DM.SQLTemplate.FieldByName('CTRCINROPARC').AsString +
                         ' Cliente ' + DM.SQLTemplate.FieldByName('AVSPA60NOMECLI').AsString) ;
          Inc(ReabAviSPC) ;

          SQLContasReceber.Edit ;
          SQLContasReceberCTRCDREABILSPC.Value := Date ;
          SQLContasReceber.Post ;
        except
          on E: Exception do Memo.Lines.Add('Erro:' + E.Message) ;
        end ;
      end ;
    end ;

    DM.SQLTemplate.Next ;
    Progress.Position := Progress.Position + 1 ;
  end ;
  Progress.Position := 0 ;

  Memo.Lines.Add('') ;
  Memo.Lines.Add('') ;
  Memo.Lines.Add('Reabilitações 1º Aviso  : ' + IntToStr(Reab1Avi)) ;
  Memo.Lines.Add('Reabilitações 2º Aviso  : ' + IntToStr(Reab2Avi)) ;
  Memo.Lines.Add('Reabilitações Aviso SPC : ' + IntToStr(ReabAviSPC)) ;

  Memo.Lines.SaveToFile('Reabilitacoes em ' + FormatDateTime('dd-mm-yyyy hh-mm', now) + '.txt');
  Mensagem.Visible := false ;
  Progress.Visible := false ;
end;

end.

