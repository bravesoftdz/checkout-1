unit TelaFAQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, DBCtrls, Grids, DBGrids, RxLookup,
  ComCtrls, RXCtrls, ExtCtrls, Buttons, DB, DBTables, RxQuery, Mask,
  dbcgrids;

type
  TFormTelaFAQ = class(TFormTelaGeralTEMPLATE)
    Button1: TRxSpeedButton;
    Button2: TRxSpeedButton;
    PageFAQ: TPageControl;
    PaginaConsulta: TTabSheet;
    PaginaAdicionar: TTabSheet;
    Panel4: TPanel;
    Label1: TLabel;
    ComboFAQ: TRxDBLookupCombo;
    Panel5: TPanel;
    Label2: TLabel;
    EditProcura: TEdit;
    BtnSelecionarDoc: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    DBMemoR: TDBMemo;
    DBMemoP: TDBMemo;
    Panel6: TPanel;
    BtnBaixarDoc: TSpeedButton;
    SQLFAQ: TRxQuery;
    SQLFAQFAQUA13ID: TStringField;
    SQLFAQEMPRICOD: TIntegerField;
    SQLFAQFAQUICOD: TIntegerField;
    SQLFAQFAQUA60DESR: TStringField;
    DSSQLFAQ: TDataSource;
    SQLConsultaFAQ: TRxQuery;
    SQLConsultaFAQFAQDDEMISSAO: TDateTimeField;
    SQLConsultaFAQFAQDTPERGUNTA: TMemoField;
    SQLConsultaFAQFAQDTRESPOSTA: TMemoField;
    SQLConsultaFAQUSUAA60LOGIN: TStringField;
    DSSQLConsultaFAQ: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    GroupTipo: TRadioGroup;
    SQLNovoFAQ: TRxQuery;
    SpeedButton1: TSpeedButton;
    DSSQLNovoFAQ: TDataSource;
    SQLNovoFAQFAQUA13ID: TStringField;
    SQLNovoFAQFAQDICOD: TIntegerField;
    SQLNovoFAQFAQDDEMISSAO: TDateTimeField;
    SQLNovoFAQUSUAICOD: TIntegerField;
    SQLNovoFAQFAQDTPERGUNTA: TMemoField;
    SQLNovoFAQFAQDTRESPOSTA: TMemoField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure SQLNovoFAQNewRecord(DataSet: TDataSet);
    procedure DBMemoPKeyPress(Sender: TObject; var Key: Char);
    procedure SQLNovoFAQBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaFAQ: TFormTelaFAQ;

implementation

uses UnitLibrary, DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaFAQ.BtnSelecionarDocClick(Sender: TObject);
Var
  Texto,MontagemP,MontagemR:String;
begin
  inherited;
  If ComboFAQ.Value = '' Then
    Begin
      Informa('Selecione o FAQ à Consultar!');
      ComboFAQ.SetFocus;
      Exit;
    End;
  If Trim(EditProcura.Text)='' Then
    Begin
      Informa('Preecha com a sua Consulta!');
      EditProcura.SetFocus;
      Exit;
    End;
  SQLConsultaFAQ.Close;
  SQLConsultaFAQ.ParamByName('FAQUA13ID').AsString := ComboFAQ.Value;
  Texto     := EditProcura.Text;
  MontagemP := '';
  MontagemR := '';
  If Pos(' ',Texto)=0 Then
    Begin
      MontagemP := 'FAQDETALHE.FAQDTPERGUNTA LIKE "%'+Texto+'%"';
      MontagemR := 'FAQDETALHE.FAQDTRESPOSTA LIKE "%'+Texto+'%"';
    End
  Else
    While Pos(' ',Texto)<>0 Do
      Begin
        If MontagemP = '' Then
          MontagemP := 'FAQDETALHE.FAQDTPERGUNTA LIKE "%'+Copy(Texto,1,Pos(' ',Texto)-1)+'%"'
        Else
          MontagemP := MontagemP + ' OR FAQDETALHE.FAQDTPERGUNTA LIKE "%'+Copy(Texto,1,Pos(' ',Texto)-1)+'%"';

        If MontagemR = '' Then
          MontagemR := 'FAQDETALHE.FAQDTRESPOSTA LIKE "%'+Copy(Texto,1,Pos(' ',Texto)-1)+'%"'
        Else
          MontagemR := MontagemR + ' OR FAQDETALHE.FAQDTRESPOSTA LIKE "%'+Copy(Texto,1,Pos(' ',Texto)-1)+'%"';
        Texto := Copy(Texto,Pos(' ',Texto)+1,Length(Texto));
      End;
  Case GroupTipo.ItemIndex Of
    0:Begin
        SQLConsultaFAQ.MacroByName('MFiltroP').AsString   := MontagemP;
        SQLConsultaFAQ.MacroByName('MFiltroR').AsString   := '0=0';
        SQLConsultaFAQ.MacroByName('MCond').asString      := 'AND';
      End;
    1:Begin
        SQLConsultaFAQ.MacroByName('MFiltroR').AsString   := MontagemR;
        SQLConsultaFAQ.MacroByName('MFiltroP').AsString   := '0=0';
        SQLConsultaFAQ.MacroByName('MCond').asString      := 'AND';
      End;
    2:Begin
        SQLConsultaFAQ.MacroByName('MFiltroP').AsString   := MontagemP;
        SQLConsultaFAQ.MacroByName('MFiltroR').AsString   := MontagemR;
        SQLConsultaFAQ.MacroByName('MCond').asString      := 'OR';
      End;
  End;
  SQLConsultaFAQ.Open;
end;

procedure TFormTelaFAQ.Button2Click(Sender: TObject);
begin
  inherited;
  If SQLNovoFAQ.State in DsEditModes Then Exit;
  If ComboFAQ.Value = '' Then
    Begin
      Informa('Selecione o FAQ à Adicionar!');
      ComboFAQ.SetFocus;
      Exit;
    End;
  PageFAQ.ActivePage := PaginaAdicionar;
  SQLNovoFAQ.Open;
  SQLNovoFAQ.Append;
  DBMemoP.SetFocus;
end;

procedure TFormTelaFAQ.Button1Click(Sender: TObject);
begin
  inherited;
  If SQLNovoFAQ.State in DsEditModes Then Exit;
  PageFAQ.ActivePage := PaginaConsulta;
end;

procedure TFormTelaFAQ.FormCreate(Sender: TObject);
begin
  inherited;
  PageFAQ.ActivePage := PaginaConsulta;
  SQLFAQ.Open;
end;

procedure TFormTelaFAQ.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SQLNovoFAQ.Cancel;
  SQLNovoFAQ.Close;
  Button1.Click;
end;

procedure TFormTelaFAQ.BtnBaixarDocClick(Sender: TObject);
begin
  inherited;
  If SQLNovoFAQFAQDTPERGUNTA.AsString='' Then
    Begin
      Informa('Preencha com a Pergunta!');
      DBMemoP.SetFocus;
      Exit;
    End;
  If SQLNovoFAQFAQDTRESPOSTA.AsString='' Then
    Begin
      Informa('Preencha com a Resposta!');
      DBMemoR.SetFocus;
      Exit;
    End;
  SQLNovoFAQ.Post;
  SQLNovoFAQ.Close;
  Button1.Click;
end;

procedure TFormTelaFAQ.SQLNovoFAQNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLNovoFAQUSUAICOD.AsInteger      := DM.UsuarioAtual;
  SQLNovoFAQFAQUA13ID.asString      := ComboFAQ.Value;
  SQLNovoFAQFAQDDEMISSAO.AsDateTime := Date;
end;

procedure TFormTelaFAQ.DBMemoPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFormTelaFAQ.SQLNovoFAQBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  DM.CodigoAutomatico('FAQDETALHE', DataSet.DataSource, DataSet, 1, 0);
end;

end.
