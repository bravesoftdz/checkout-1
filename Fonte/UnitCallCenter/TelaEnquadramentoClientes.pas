unit TelaEnquadramentoClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, ExtCtrls, Buttons, RXCtrls, DBCtrls, DB,
  DBTables, RxQuery, StdCtrls, CurrEdit, Mask, ToolEdit, RxLookup,VarSys,
  jpeg;

type
  TFormTelaEnquadramentoClientes = class(TFormTelaGeralTEMPLATE)
    SQLTipoCliente: TRxQuery;
    DSSQLTipoCliente: TDataSource;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    ComboTipoInatividade: TRxDBLookupCombo;
    DataInicialInatividade: TDateEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    ComboTipoAtividade: TRxDBLookupCombo;
    DataInicialAtividade: TDateEdit;
    DataFinalAtividade: TDateEdit;
    Label2: TLabel;
    EditValor1: TCurrencyEdit;
    EditValor2: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Memo: TMemo;
    BtnOk: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    CheckValor: TCheckBox;
    SQLAtividade: TRxQuery;
    SQLAtividadeValor: TRxQuery;
    SQLInatividade: TRxQuery;
    procedure CheckValorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEnquadramentoClientes: TFormTelaEnquadramentoClientes;

implementation

{$R *.dfm}

procedure TFormTelaEnquadramentoClientes.CheckValorClick(Sender: TObject);
begin
  inherited;
  EditValor1.Enabled := Not CheckValor.Checked;
  EditValor2.Enabled := Not CheckValor.Checked;
end;

procedure TFormTelaEnquadramentoClientes.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoCliente.Open;
end;

procedure TFormTelaEnquadramentoClientes.BtnOkClick(Sender: TObject);
begin
  inherited;
  Try
    StrToDate(DataInicialAtividade.Text);
    StrToDate(DataFinalAtividade.Text);
  Except
    ShowMessage('Datas Incorretas!');
    Exit;
  End;
  Memo.Lines.Clear;
  Memo.Lines.Add('Aguarde... Consultando Cliente e Vendas');
  Memo.UpDate;
  If Not CheckValor.Checked Then
    Begin
      SQLAtividadeValor.ParamByName('TPCLICOD').asInteger      := StrToInt(ComboTipoAtividade.Value);
      SQLAtividadeValor.MacroByName('MCupomData').asString     := 'CUPOM.CUPODEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and CUPOM.CUPODEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.MacroByName('MCupomData1').asString    := 'C.CUPODEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and C.CUPODEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.MacroByName('MCupomData2').asString    := 'C.CUPODEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and C.CUPODEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.MacroByName('MNFData').asString        := 'NOTAFISCAL.NOFIDEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and NOTAFISCAL.NOFIDEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.MacroByName('MNFData1').asString       := 'N.NOFIDEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and N.NOFIDEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.MacroByName('MNFData2').asString       := 'N.NOFIDEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and N.NOFIDEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividadeValor.ParamByName('ValorInicial').asFloat    := EditValor1.Value;
      SQLAtividadeValor.ParamByName('ValorFinal').asFloat      := EditValor2.Value;
      SQLAtividadeValor.ExecSQL;
    End
  Else
    Begin
      SQLAtividade.ParamByName('TPCLICOD').asInteger           := StrToInt(ComboTipoAtividade.Value);
      SQLAtividade.MacroByName('MCupomData').asString          := 'CUPOM.CUPODEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and CUPOM.CUPODEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividade.MacroByName('MNFData').asString             := 'NOTAFISCAL.NOFIDEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'" and NOTAFISCAL.NOFIDEMIS<="'+FormatDateTime(FormatoDataUnit,DataInicialAtividade.Date)+'"';
      SQLAtividade.ExecSQL;
    End;
  Memo.Lines.Add('Enquadramento Concluído com sucesso!');
  Memo.UpDate;
end;

procedure TFormTelaEnquadramentoClientes.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  Try
    StrToDate(DataInicialInatividade.Text);
  Except
    ShowMessage('Data Incorreta!');
    Exit;
  End;
  Memo.Lines.Add('Aguarde... Consultando Cliente e Vendas');
  Memo.UpDate;
  SQLInatividade.ParamByName('TPCLICOD').asInteger           := StrToInt(ComboTipoInatividade.Value);
  SQLInatividade.MacroByName('MCupomData').asString          := 'CUPOM.CUPODEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialInatividade.Date)+'"';
  SQLInatividade.MacroByName('MNFData').asString             := 'NOTAFISCAL.NOFIDEMIS>="'+FormatDateTime(FormatoDataUnit,DataInicialInatividade.Date)+'"';
  SQLInatividade.ExecSQL;
  Memo.Lines.Add('Enquadramento Concluído com sucesso!');
  Memo.UpDate;
end;

end.
