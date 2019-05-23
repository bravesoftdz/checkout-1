unit TelaEnquadramentoClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, ExtCtrls, Buttons, RXCtrls, DBCtrls, DB,
  DBTables, RxQuery, StdCtrls, CurrEdit, Mask, ToolEdit, RxLookup,VarSys,
  jpeg, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaEnquadramentoClientes = class(TFormTelaGeralTEMPLATE)
    GroupBox3: TGroupBox;
    Memo: TMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    Label1: TLabel;
    lbDataFinal: TLabel;
    DataProxContato: TDateEdit;
    lbDataProxContato: TLabel;
    ComboTipoContato: TRxDBLookupCombo;
    Label3: TLabel;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    dsSQLTipoContato: TDataSource;
    SQLTipoContato: TRxQuery;
    SQLTipoContatoTPCTICOD: TIntegerField;
    SQLTipoContatoTPCTA60DESCR: TStringField;
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
    SQLContatoCONTA60CONTATO: TStringField;
    SQLContatoUSUAICOD: TIntegerField;
    SQLContatoPENDENTE: TStringField;
    SQLContatoREGISTRO: TDateTimeField;
    SQLSPC: TRxQuery;
    SQLSPCCLIEA13ID: TStringField;
    SQLSPCCTRCA13ID: TStringField;
    SQLSPCCTRCINROPARC: TIntegerField;
    SQLSPCCUPOA13ID: TStringField;
    SQLSPCCTRCN2VLR: TBCDField;
    SQLSPCAVSPA60NOMECLI: TStringField;
    SQLSPCAVSPCENVIADO: TStringField;
    SQLSPCAVSPDPROCESS: TDateTimeField;
    SQLSPCAVSPDVENC: TDateTimeField;
    SQLSPCAVSPIDIASATRASO: TIntegerField;
    SQLSPCPENDENTE: TStringField;
    SQLSPCREGISTRO: TDateTimeField;
    dsSQLContato: TDataSource;
    BtnOk: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEnquadramentoClientes: TFormTelaEnquadramentoClientes;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaEnquadramentoClientes.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
  SQLTipoContato.Open;
end;

procedure TFormTelaEnquadramentoClientes.BtnOkClick(Sender: TObject);
begin
  inherited;
  if ComboTipoContato.Value = '' then
    begin
      showMessage('É obrigado informar um Tipo de Contato!');
      abort;
    end;
  Try
    StrToDate(DataProxContato.Text);
  Except
    showMessage('Data Base p/Contato Inválida!');
    DataProxContato.SetFocus;
    Abort;
  End;

  SQLSPC.Close;
  SQLSPC.MacrobyName('MData').Value    := 'CARTAAVISOSPC.AVSPDVENC >= "' + FormatDateTime('mm/dd/yyyy', DataInicial.Date) + '" and ' +
                                          'CARTAAVISOSPC.AVSPDVENC <= "' + FormatDateTime('mm/dd/yyyy', DataFinal.Date) + '"' ;
  SQLSPC.MacroByName('MEmpresa').Value := 'CUPOM.EMPRICOD = ' + ComboEmpresa.Value;
  SQLSPC.Open;
  if not SQLSPC.IsEmpty then
    begin
      memo.Lines.add(inttostr(sqlspc.RecordCount) + ' Contatos Encontrados!');
      memo.Update;
      if Application.MessageBox('Confirma a geração de Contatos?','Pergunta',MB_YesNo+MB_IconQuestion) = Id_Yes then
        begin
          SQLContato.Open;
          While Not SQLSPC.Eof Do
            begin
              memo.Lines.Add('Cliente: '+SQLSPCCLIEA13ID.Value+'-'+SQLSPCAVSPA60NOMECLI.Value);
              memo.Update;
              SQLContato.Append;
              SQLContatoEMPRICOD.Value      := ComboEmpresa.KeyValue;
              SQLContatoCONTDCONTATO.Value  := DataProxContato.Date;
              SQLContatoCONTICOD.Value      := DM.ProximoCodigoUnico('CONTATO',SQLContato,dsSQLContato,2);
              SQLContatoCLIEA13ID.Value     := SQLSPCCLIEA13ID.Value;
//              SQLContatoCONTA255OBS.Value   := 'CLIENTE EM SPC.';
              SQLContatoTPCTICOD.Value      := ComboTipoContato.KeyValue;
              SQLContatoUSUAICOD.Value      := dm.SQLUsuarioUSUAICOD.Value;
              SQLContatoPENDENTE.Value      := 'S';
              SQLContatoREGISTRO.Value      := Now;
              SQLContato.Post;
              SQLSPC.Next;
            end;
        end;
    end;
  SQLSPC.Close;
  SQLContato.Close;  
end;

end.
