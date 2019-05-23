unit RelatorioListagemContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  RXCtrls, VarSys;

type
  TFormRelatorioListagemContato = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    TipoStatus: TRadioGroup;
    GroupBox5: TGroupBox;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
    DSTipoContato: TDataSource;
    SQLTipoCliente: TRxQuery;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    DSTipoCliente: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSVendedor: TDataSource;
    SQLTipoRetorno: TRxQuery;
    DSTipoRetorno: TDataSource;
    SQLTipoRetornoTPRTICOD: TIntegerField;
    SQLTipoRetornoTPRTA60DESCR: TStringField;
    SQLTipoRetornoTPCTICOD: TIntegerField;
    ComboVendedor: TRxDBLookupCombo;
    ComboTipoCliente: TRxDBLookupCombo;
    ComboTipoContato: TRxDBLookupCombo;
    ComboTipoRetorno: TRxDBLookupCombo;
    Report: TCrpe;
    SQLContato: TRxQuery;
    SQLContatoEMPRICOD: TIntegerField;
    SQLContatoCONTDCONTATO: TDateTimeField;
    SQLContatoCONTICOD: TIntegerField;
    SQLContatoVENDICOD: TIntegerField;
    SQLContatoCLIEA13ID: TStringField;
    SQLContatoTPCLICOD: TIntegerField;
    SQLContatoTPCTICOD: TIntegerField;
    SQLContatoTPRTICOD: TIntegerField;
    SQLContatoTPCTICODPROX: TIntegerField;
    SQLContatoCONTDPROXCONT: TDateTimeField;
    SQLContatoCONTDREAL: TDateTimeField;
    SQLContatoCONTA255OBS: TStringField;
    SQLContatoPENDENTE: TStringField;
    SQLContatoREGISTRO: TDateTimeField;
    SQLContatoCLIEA60RAZAOSOC: TStringField;
    SQLContatoCLIEA60CIDRES: TStringField;
    SQLContatoCLIEA2UFRES: TStringField;
    SQLContatoTPCLA30DESCR: TStringField;
    SQLContatoTPCTA60DESCR: TStringField;
    SQLContatoTPRTA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCONTDCONTATO: TDateTimeField;
    TblTemporariaCONTICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaTPCLICOD: TIntegerField;
    TblTemporariaTPCTICOD: TIntegerField;
    TblTemporariaTPRTICOD: TIntegerField;
    TblTemporariaTPCTICODPROX: TIntegerField;
    TblTemporariaCONTDPROXCONT: TDateTimeField;
    TblTemporariaCONTDREAL: TDateTimeField;
    TblTemporariaCONTA255OBS: TStringField;
    TblTemporariaPENDENTE: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA2UFRES: TStringField;
    TblTemporariaTPCLA30DESCR: TStringField;
    TblTemporariaTPCTA60DESCR: TStringField;
    TblTemporariaTPRTA60DESCR: TStringField;
    SQLUsuario: TRxQuery;
    DSSQLUsuario: TDataSource;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    GroupBox6: TGroupBox;
    ComboUsuario: TRxDBLookupCombo;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    GroupBox7: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLContatoCNTDA254DETALHE: TStringField;
    TblTemporariaCNTDA254DETALHE: TStringField;
    SQLContatoCONTA60CONTATO: TStringField;
    SQLContatoUSUAA60LOGIN: TStringField;
    TblTemporariaCONTA60CONTATO: TStringField;
    TblTemporariaUSUAA60LOGIN: TStringField;
    TblTemporariaCHAVE: TStringField;
    GroupOrdem: TRadioGroup;
    SQLContatoCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioListagemContato: TFormRelatorioListagemContato;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioListagemContato.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
  SQLTipoRetorno.Open;
  SQLTipoContato.Open;
  SQLTipoCliente.Open;
  SQLVendedor.Open;
  SQLUsuario.Open;
end;

procedure TFormRelatorioListagemContato.ExecutarBtnClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  SQLContato.Close;

  If ComboCliente.Value<>'' Then
    SQLContato.MacroByName('MCliente').asString := 'CONTATO.CLIEA13ID="'+ComboCliente.Value+'"'
  Else
    SQLContato.MacroByName('MCliente').asString := '0=0';

  If ComboTipoCliente.Value<>'' Then
    SQLContato.MacroByName('MTipoCliente').asString := 'CONTATO.TPCLICOD='+ComboTipoCliente.Value
  Else
    SQLContato.MacroByName('MTipoCliente').asString := '0=0';

  If ComboTipoContato.Value<>'' Then
    SQLContato.MacroByName('MTipoContato').asString := 'CONTATO.TPCTICOD='+ComboTipoContato.Value
  Else
    SQLContato.MacroByName('MTipoContato').asString := '0=0';
  If ComboTipoRetorno.Value<>'' Then
    SQLContato.MacroByName('MTipoRetorno').asString := 'CONTATO.TPRTICOD='+ComboTipoRetorno.Value
  Else
    SQLContato.MacroByName('MTipoRetorno').asString := '0=0';

  If ComboVendedor.Value<>'' Then
    SQLContato.MacroByName('MVendedor').asString := 'CLIENTE.VENDICOD='+ComboVendedor.Value
  Else
    SQLContato.MacroByName('MVendedor').asString := '0=0';

  If ComboUsuario.Value<>'' Then
    SQLContato.MacroByName('MUsuario').asString := 'CONTATO.USUAICOD='+ComboUsuario.Value
  Else
    SQLContato.MacroByName('MUsuario').asString := '0=0';

  Case TipoStatus.ItemIndex Of
      0:Begin
          SQLContato.MacroByName('MData').asString  := '(CONTATO.CONTDCONTATO>="'+FormatDateTime(FormatoDataUnit,De.Date)+'" AND CONTATO.CONTDCONTATO<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+'" AND CONTATO.CONTDREAL IS NULL) OR (CONTATO.CONTDREAL>="'+FormatDateTime(FormatoDataUnit,De.Date)+' 00:00:00" AND CONTATO.CONTDREAL<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+' 23:59:59")';
          Case GroupOrdem.ItemIndex Of
            0:SQLContato.MacroByName('MOrdem').asString := 'CLIENTE.CLIEA60RAZAOSOC,CONTATO.CONTDCONTATO,CONTATODETALHE.CNTDICOD';
            1:SQLContato.MacroByName('MOrdem').asString := 'CONTATO.CONTDCONTATO,CLIENTE.CLIEA60RAZAOSOC,CONTATODETALHE.CNTDICOD';
          End;
        End;
      1:Begin
          SQLContato.MacroByName('MData').asString  := 'CONTATO.CONTDCONTATO>="'+FormatDateTime(FormatoDataUnit,De.Date)+'" AND CONTATO.CONTDCONTATO<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+'" AND CONTATO.CONTDREAL IS NULL';
          Case GroupOrdem.ItemIndex Of
            0:SQLContato.MacroByName('MOrdem').asString := 'CLIENTE.CLIEA60RAZAOSOC,CONTATO.CONTDCONTATO,CONTATODETALHE.CNTDICOD';
            1:SQLContato.MacroByName('MOrdem').asString := 'CONTATO.CONTDCONTATO,CLIENTE.CLIEA60RAZAOSOC,CONTATODETALHE.CNTDICOD';
          End;
        End;
      2:Begin
          SQLContato.MacroByName('MData').asString  := 'CONTATO.CONTDREAL>="'+FormatDateTime(FormatoDataUnit,De.Date)+' 00:00:00" AND CONTATO.CONTDREAL<="'+FormatDateTime(FormatoDataUnit,Ate.Date)+' 23:59:59"';
          Case GroupOrdem.ItemIndex Of
            0:SQLContato.MacroByName('MOrdem').asString := 'CLIENTE.CLIEA60RAZAOSOC,CONTATO.CONTDREAL,CONTATODETALHE.CNTDICOD';
            1:SQLContato.MacroByName('MOrdem').asString := 'CONTATO.CONTDREAL,CLIENTE.CLIEA60RAZAOSOC,CONTATODETALHE.CNTDICOD';
          End;
        End;
  End;
  SQLContato.MacroByName('MEmpresa').asString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTATO','');
  SQLContato.Open;
  SQLContato.First;
  TblTemporaria.Open;
  While Not SQLContato.Eof Do
    Begin
      TblTemporaria.Append;
      For I:=0 To SQLContato.FieldCount-1 Do
        Begin
          Case TipoStatus.ItemIndex Of
              0:TblTemporariaCHAVE.asString := FormatFloat('000',SQLContatoEMPRICOD.asInteger)+FormatDateTime('ddmmyyyy',SQLContatoCONTDCONTATO.asDateTime)+FormatFloat('0000000000',SQLContatoCONTICOD.asInteger);
              1:TblTemporariaCHAVE.asString := FormatFloat('000',SQLContatoEMPRICOD.asInteger)+FormatDateTime('ddmmyyyy',SQLContatoCONTDCONTATO.asDateTime)+FormatFloat('0000000000',SQLContatoCONTICOD.asInteger);
              2:TblTemporariaCHAVE.asString := FormatFloat('000',SQLContatoEMPRICOD.asInteger)+FormatDateTime('ddmmyyyy',SQLContatoCONTDREAL.asDateTime)+FormatFloat('0000000000',SQLContatoCONTICOD.asInteger);
          End;
          If TblTemporaria.FindField(SQLContato.Fields[I].FieldName)<>Nil Then
            TblTemporaria.FindField(SQLContato.Fields[I].FieldName).asVariant := SQLContato.Fields[I].asVariant;
        End;
      TblTemporaria.Post;
      SQLContato.Next;
    End;
  //--------------------------------------------------------------------------\\
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Contatos.rpt' ;
  Case TipoStatus.ItemIndex Of
    0:Begin
        Report.ReportTitle       := 'Relatório de Listagem de Contatos' ;
        Report.WindowStyle.Title := 'Relatório de Listagem de Contatos' ;
      End;
    1:Begin
        Report.ReportTitle       := 'Relatório de Listagem de Contatos À Fazer' ;
        Report.WindowStyle.Title := 'Relatório de Listagem de Contatos À Fazer' ;
      End;
    2:Begin
        Report.ReportTitle       := 'Relatório de Listagem de Contatos Feitos' ;
        Report.WindowStyle.Title := 'Relatório de Listagem de Contatos Feitos' ;
      End;
  End;
  Report.Formulas.Retrieve ;
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
  Report.Formulas.Name := 'Vendedor' ;
  if ComboVendedor.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVendedor.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'TipoCliente' ;
  if ComboTipoCliente.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboTipoCliente.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'TipoContato' ;
  if ComboTipoContato.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboTipoContato.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'TipoRetorno' ;
  if ComboTipoRetorno.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboTipoRetorno.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  Report.Execute;
end;

end.
