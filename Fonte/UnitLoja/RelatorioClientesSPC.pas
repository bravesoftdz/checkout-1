unit RelatorioClientesSPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, ExtCtrls, RxQuery, DBTables, Placemnt, DB,
  ComCtrls, StdCtrls, Mask, ToolEdit, RxLookup, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioClientesSPC = class(TFormRelatorioTEMPLATE)
    SQLSpc: TRxQuery;
    GroupFiltro: TRadioGroup;
    SQLSpcCLIEA13ID: TStringField;
    SQLSpcCTRCA13ID: TStringField;
    SQLSpcCTRCINROPARC: TIntegerField;
    SQLSpcCUPOA13ID: TStringField;
    SQLSpcCTRCN2VLR: TBCDField;
    SQLSpcAVSPA60NOMECLI: TStringField;
    SQLSpcAVSPCENVIADO: TStringField;
    SQLSpcAVSPDPROCESS: TDateTimeField;
    SQLSpcAVSPDVENC: TDateTimeField;
    SQLSpcAVSPIDIASATRASO: TIntegerField;
    SQLSpcPENDENTE: TStringField;
    SQLSpcREGISTRO: TDateTimeField;
    CheckData: TCheckBox;
    Report: TCrpe;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TBCDField;
    TblTemporariaAVSPA60NOMECLI: TStringField;
    TblTemporariaAVSPCENVIADO: TStringField;
    TblTemporariaAVSPDPROCESS: TDateTimeField;
    TblTemporariaAVSPDVENC: TDateTimeField;
    TblTemporariaAVSPIDIASATRASO: TIntegerField;
    GrupoOrdenar: TRadioGroup;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClientesSPC: TFormRelatorioClientesSPC;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioClientesSPC.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLSpc.Close;
  if CheckData.Checked then
    SQLSpc.MacroByName('MData').Value := '0=0'
  else
    SQLSpc.MacroByName('MData').Value := 'AVSPDPROCESS >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '" and ' +
                                         'AVSPDPROCESS <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  SQLSpc.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', 'EMPRICOD') ;

  Case GroupFiltro.ItemIndex of
    0 : begin
          SQLSpc.MacroByName('MTipo').Value := 'AVSPCENVIADO = "S"';
        end;
    1 : begin
          SQLSpc.MacroByName('MTipo').Value := 'AVSPCENVIADO = "N"';
        end;
    2 : begin
          SQLSpc.MacroByName('MTipo').Value := '0=0';
        end;
  end;
  Case GrupoOrdenar.ItemIndex of
    0 : begin
          SQLSpc.MacroByName('Mordem').Value := 'AVSPDVENC asc';
        end;
    1 : begin
          SQLSpc.MacroByName('Mordem').Value := 'AVSPDPROCESS asc';
        end;
    2 : begin
          SQLSpc.MacroByName('Mordem').Value := 'AVSPA60NOMECLI asc';
        end;
  end;
  //  showMessage(SQLSpc.RealSQL.Text);
  SQLSpc.Open;
  if SQLSpc.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLSpc,TblTemporaria);
  Report.ReportName  := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '/Clientes em SPC.rpt';
  Report.ReportTitle := 'Clientes em SPC';
  Report.Execute;
end;

end.
