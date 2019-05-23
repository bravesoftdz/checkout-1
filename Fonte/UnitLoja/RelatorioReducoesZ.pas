unit RelatorioReducoesZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, UCrpe32, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioReducaoZ = class(TFormRelatorioTEMPLATE)
    SQLReducaoZNum: TRxQuery;
    SQLReducaoZNumNUMEICOD: TIntegerField;
    SQLReducaoZNumREFON3VLR: TBCDField;
    SQLReducaoZNumREDUDEMIS: TDateTimeField;
    SQLReducaoZNumREDUN3VENDABRUTA: TBCDField;
    SQLReducaoZNumREDUN3VLRCANC: TBCDField;
    SQLReducaoZNumREDUN3VLRDESC: TBCDField;
    SQLReducaoZNumREDUN3VENDALIQ: TBCDField;
    SQLReducaoZNumREDUN3ALIQ1: TBCDField;
    SQLReducaoZNumREDUN3BASE1: TBCDField;
    SQLReducaoZNumREDUN3IMPO1: TBCDField;
    SQLReducaoZNumREDUN3ALIQ2: TBCDField;
    SQLReducaoZNumREDUN3BASE2: TBCDField;
    SQLReducaoZNumREDUN3IMPO2: TBCDField;
    SQLReducaoZNumREDUN3ALIQ3: TBCDField;
    SQLReducaoZNumREDUN3BASE3: TBCDField;
    SQLReducaoZNumREDUN3IMPO3: TBCDField;
    SQLReducaoZNumREDUN3ALIQ4: TBCDField;
    SQLReducaoZNumREDUN3BASE4: TBCDField;
    SQLReducaoZNumREDUN3IMPO4: TBCDField;
    SQLReducaoZNumREDUN3ALIQ5: TBCDField;
    SQLReducaoZNumREDUN3BASE5: TBCDField;
    SQLReducaoZNumREDUN3IMPO5: TBCDField;
    SQLReducaoZNumREDUN3ALIQ6: TBCDField;
    SQLReducaoZNumREDUN3BASE6: TBCDField;
    SQLReducaoZNumREDUN3IMPO6: TBCDField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaREFON3VLR: TBCDField;
    TblTemporariaREDUDEMIS: TDateTimeField;
    TblTemporariaREDUN3VENDABRUTA: TBCDField;
    TblTemporariaREDUN3VLRCANC: TBCDField;
    TblTemporariaREDUN3VLRDESC: TBCDField;
    TblTemporariaREDUN3VENDALIQ: TBCDField;
    TblTemporariaREDUN3ALIQ1: TBCDField;
    TblTemporariaREDUN3BASE1: TBCDField;
    TblTemporariaREDUN3IMPO1: TBCDField;
    TblTemporariaREDUN3ALIQ2: TBCDField;
    TblTemporariaREDUN3BASE2: TBCDField;
    TblTemporariaREDUN3IMPO2: TBCDField;
    TblTemporariaREDUN3ALIQ3: TBCDField;
    TblTemporariaREDUN3BASE3: TBCDField;
    TblTemporariaREDUN3IMPO3: TBCDField;
    TblTemporariaREDUN3ALIQ4: TBCDField;
    TblTemporariaREDUN3BASE4: TBCDField;
    TblTemporariaREDUN3IMPO4: TBCDField;
    TblTemporariaREDUN3ALIQ5: TBCDField;
    TblTemporariaREDUN3BASE5: TBCDField;
    TblTemporariaREDUN3IMPO5: TBCDField;
    TblTemporariaREDUN3ALIQ6: TBCDField;
    TblTemporariaREDUN3BASE6: TBCDField;
    TblTemporariaREDUN3IMPO6: TBCDField;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    TblTemporariaTERMINAL: TStringField;
    SQLReducaoZNumTERMICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaNUMERARIO: TStringField;
    Report: TCrpe;
    RadioTotalizar: TRadioGroup;
    TblTemporariaLBALIQ1: TStringField;
    TblTemporariaLBALIQ2: TStringField;
    TblTemporariaLBALIQ3: TStringField;
    TblTemporariaLBALIQ4: TStringField;
    TblTemporariaLBALIQ5: TStringField;
    TblTemporariaLBALIQ6: TStringField;
    TblTemporariaDinheiro: TFloatField;
    TblTemporariaChequeVista: TFloatField;
    TblTemporariaChequePre: TFloatField;
    TblTemporariaRedeShop: TFloatField;
    TblTemporariaRedeCard: TFloatField;
    TblTemporariaVisaElectron: TFloatField;
    TblTemporariaVisa: TFloatField;
    TblTemporariaBanriDeb: TFloatField;
    TblTemporariaBanriCred: TFloatField;
    TblTemporariaFatura: TFloatField;
    TblTemporariaTicket: TFloatField;
    TblTemporariaBonus: TFloatField;
    TblTemporariaAmex: TFloatField;
    TblTemporariaSuperCompras: TFloatField;
    TblTemporariaRefeisul: TFloatField;
    SQLReducaoZNumREDUITOTCUPOM: TIntegerField;
    TblTemporariaREDUITOTCUPOM: TIntegerField;
    TblTemporariaQuero: TFloatField;
    SQLReducaoZAliq: TRxQuery;
    SQLReducaoZAliqTERMICOD: TIntegerField;
    SQLReducaoZAliqREDUDEMIS: TDateTimeField;
    SQLReducaoZAliqREDUN3VENDABRUTA: TBCDField;
    SQLReducaoZAliqREDUN3VLRCANC: TBCDField;
    SQLReducaoZAliqREDUN3VLRDESC: TBCDField;
    SQLReducaoZAliqREDUN3VENDALIQ: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ1: TBCDField;
    SQLReducaoZAliqREDUN3BASE1: TBCDField;
    SQLReducaoZAliqREDUN3IMPO1: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ2: TBCDField;
    SQLReducaoZAliqREDUN3BASE2: TBCDField;
    SQLReducaoZAliqREDUN3IMPO2: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ3: TBCDField;
    SQLReducaoZAliqREDUN3BASE3: TBCDField;
    SQLReducaoZAliqREDUN3IMPO3: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ4: TBCDField;
    SQLReducaoZAliqREDUN3BASE4: TBCDField;
    SQLReducaoZAliqREDUN3IMPO4: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ5: TBCDField;
    SQLReducaoZAliqREDUN3BASE5: TBCDField;
    SQLReducaoZAliqREDUN3IMPO5: TBCDField;
    SQLReducaoZAliqREDUN3ALIQ6: TBCDField;
    SQLReducaoZAliqREDUN3BASE6: TBCDField;
    SQLReducaoZAliqREDUN3IMPO6: TBCDField;
    SQLReducaoZAliqREDUITOTCUPOM: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioReducaoZ: TFormRelatorioReducaoZ;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioReducaoZ.ExecutarBtnClick(Sender: TObject);
Var TerminalTeste, i, Contador : integer;
VAR DataTeste : TDate;
begin
  inherited;
  Case RadioTotalizar.ItemIndex of
    0 : begin
          SQLReducaoZNum.Close ;
          SQLReducaoZNum.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'ReducaoZDia', '') ;
          SQLReducaoZNum.MacrobyName('MFiltro').Value  := 'ReducaoZDia.REDUDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                          'ReducaoZDia.REDUDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
          if ComboTerminal.Value <> '' then
            SQLReducaoZNum.MacrobyName('MTerminal').Value := 'ReducaoZDia.TERMICOD = ' + ComboTerminal.Value
          else
            SQLReducaoZNum.MacrobyName('MTerminal').Value := '0=0';

          SQLReducaoZNum.Open ;

          TblTemporaria.Open ;

          SQLReducaoZNum.First ;
          Contador := 0;
          while not SQLReducaoZNum.Eof do
            begin
              TblTemporaria.Append ;
              if (DataTeste <> SQLReducaoZNumREDUDEMIS.Value) and (TerminalTeste <> SQLReducaoZNumTERMICOD.AsInteger) then
                Contador := 0;
              TerminalTeste := SQLReducaoZNumTERMICOD.AsInteger;
              DataTeste     := SQLReducaoZNumREDUDEMIS.Value;

              for i := 0 to SQLReducaoZNum.FieldCount-1 do
                if SQLReducaoZNum.Fields[i].AsString <> '' then
                  begin
                    if (SQLReducaoZNum.Fields[i].Name = 'SQLReducaoZREDUN3VENDALIQ') or (SQLReducaoZNum.Fields[i].Name = 'SQLReducaoZREDUITOTCUPOM') then
                      begin
                        if (DataTeste = SQLReducaoZNumREDUDEMIS.Value) and (TerminalTeste = SQLReducaoZNumTERMICOD.Value) and (Contador < 2) then
                          begin
                            TblTemporaria.FieldByName(SQLReducaoZNum.Fields[i].FieldName).AsVariant := SQLReducaoZNum.Fields[i].AsVariant ;
                            Contador := Contador+1;
                          end
                      end
                    else
                     TblTemporaria.FieldByName(SQLReducaoZNum.Fields[i].FieldName).AsVariant := SQLReducaoZNum.Fields[i].AsVariant ;
                  end;
              TblTemporaria.FieldByName('TERMINAL').AsVariant  := dm.SQLLocate('TERMINAL','TERMICOD','TERMA60DESCR',SQLReducaoZNumTERMICOD.AsString);
              TblTemporaria.FieldByName('NUMERARIO').AsVariant := dm.SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',SQLReducaoZNumNUMEICOD.AsString);
              Case TblTemporaria.FieldByName('NUMEICOD').AsVariant of
                  1 : TblTemporaria.FieldByName('Dinheiro').AsVariant      := SQLReducaoZNumREFON3VLR.Value;
                  2 : TblTemporaria.FieldByName('ChequeVista').AsVariant   := SQLReducaoZNumREFON3VLR.Value;
                  3 : TblTemporaria.FieldByName('ChequePre').AsVariant     := SQLReducaoZNumREFON3VLR.Value;
                  4 : TblTemporaria.FieldByName('Visa').AsVariant          := SQLReducaoZNumREFON3VLR.Value;
                  5 : TblTemporaria.FieldByName('RedeCard').AsVariant      := SQLReducaoZNumREFON3VLR.Value;
                  6 : TblTemporaria.FieldByName('VisaElectron').AsVariant  := SQLReducaoZNumREFON3VLR.Value;
                  7 : TblTemporaria.FieldByName('Fatura').AsVariant        := SQLReducaoZNumREFON3VLR.Value;
                  8 : TblTemporaria.FieldByName('RedeShop').AsVariant      := SQLReducaoZNumREFON3VLR.Value;
                  11: TblTemporaria.FieldByName('BanriDeb').AsVariant      := SQLReducaoZNumREFON3VLR.Value;
                  12: TblTemporaria.FieldByName('BanriCred').AsVariant     := SQLReducaoZNumREFON3VLR.Value;
                  19: TblTemporaria.FieldByName('SuperCompras').AsVariant  := SQLReducaoZNumREFON3VLR.Value;
                  20: TblTemporaria.FieldByName('Refeisul').AsVariant      := SQLReducaoZNumREFON3VLR.Value;
                  21: TblTemporaria.FieldByName('Amex').AsVariant          := SQLReducaoZNumREFON3VLR.Value;
                  22: TblTemporaria.FieldByName('Quero').AsVariant         := SQLReducaoZNumREFON3VLR.Value;
                  23: TblTemporaria.FieldByName('Ticket').AsVariant        := SQLReducaoZNumREFON3VLR.Value;
                  26: TblTemporaria.FieldByName('Bonus').AsVariant         := SQLReducaoZNumREFON3VLR.Value;
              end;
              TblTemporaria.Post ;
              SQLReducaoZNum.Next ;
            end ;
          TblTemporaria.Close ;
          SQLReducaoZNum.Close ;
        end;
    1 : begin
          SQLReducaoZAliq.Close ;
          SQLReducaoZAliq.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'ReducaoZDia', '') ;
          SQLReducaoZAliq.MacrobyName('MFiltro').Value  := 'ReducaoZDia.REDUDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                           'ReducaoZDia.REDUDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
          if ComboTerminal.Value <> '' then
            SQLReducaoZAliq.MacrobyName('MTerminal').Value := 'ReducaoZDia.TERMICOD = ' + ComboTerminal.Value
          else
            SQLReducaoZAliq.MacrobyName('MTerminal').Value := '0=0';

          SQLReducaoZAliq.Open ;

          TblTemporaria.Open ;

          SQLReducaoZAliq.First ;
          Contador := 0;
          while not SQLReducaoZAliq.Eof do
            begin
              TblTemporaria.Append ;
              if (DataTeste <> SQLReducaoZAliqREDUDEMIS.Value) and (TerminalTeste <> SQLReducaoZAliqTERMICOD.AsInteger) then
                Contador := 0;
              TerminalTeste := SQLReducaoZAliqTERMICOD.AsInteger;
              DataTeste     := SQLReducaoZAliqREDUDEMIS.Value;

              for i := 0 to SQLReducaoZAliq.FieldCount-1 do
                if SQLReducaoZAliq.Fields[i].AsString <> '' then
                  begin
                    if (SQLReducaoZAliq.Fields[i].Name = 'SQLReducaoZREDUN3VENDALIQ') or (SQLReducaoZAliq.Fields[i].Name = 'SQLReducaoZREDUITOTCUPOM') then
                      begin
                        if (DataTeste = SQLReducaoZAliqREDUDEMIS.Value) and (TerminalTeste = SQLReducaoZAliqTERMICOD.Value) and (Contador < 2) then
                          begin
                            TblTemporaria.FieldByName(SQLReducaoZAliq.Fields[i].FieldName).AsVariant := SQLReducaoZAliq.Fields[i].AsVariant ;
                            Contador := Contador+1;
                          end
                      end
                    else
                     TblTemporaria.FieldByName(SQLReducaoZAliq.Fields[i].FieldName).AsVariant := SQLReducaoZAliq.Fields[i].AsVariant ;
                  end;

              TblTemporaria.Post ;
              SQLReducaoZAliq.Next ;
            end ;
          TblTemporaria.Close ;
          SQLReducaoZAliq.Close ;
        end;
  End;
  Case RadioTotalizar.ItemIndex of
    0 : begin
          if FileExists('SuperBom.txt') then
            begin
              Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\ReducaoZ Total por Numerario SuperBom.rpt' ;
              Report.ReportTitle := 'Reduções Z Total por Numerario' ;
            end
          else
            begin
              Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\ReducaoZ Total por Numerario.rpt' ;
              Report.ReportTitle := 'Reduções Z Total por Numerario' ;
            end;
        end;
    1 : begin
          Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\ReducaoZ Total por Aliquota.rpt' ;
          Report.ReportTitle := 'Reduções Z Total por Aliquota' ;
        end;
  End;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Terminal' ;
  if ComboTerminal.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboTerminal.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Execute ;
end;

procedure TFormRelatorioReducaoZ.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTerminal.Open;
end;

end.
