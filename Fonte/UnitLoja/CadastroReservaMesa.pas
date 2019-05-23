unit CadastroReservaMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxDBComb, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroReservaMesa = class(TFormCadastroTEMPLATE)
    SQLTemplateRESEICOD: TIntegerField;
    SQLTemplateRESEDDATAHORA: TDateTimeField;
    SQLTemplateRESEA60NOME: TStringField;
    SQLTemplateRESEA15FONE: TStringField;
    SQLTemplateRESEINROPESSOAS: TIntegerField;
    SQLTemplateRESECFUMANTE: TStringField;
    SQLTemplateRESECCADEIRACRIA: TStringField;
    SQLTemplateRESECCADEIRADEFI: TStringField;
    SQLTemplateRESETOBS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    ComboFumante: TRxDBComboBox;
    Label7: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label5: TLabel;
    MemoOBS: TDBMemo;
    Label21: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroReservaMesa: TFormCadastroReservaMesa;

implementation

{$R *.dfm}

procedure TFormCadastroReservaMesa.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'RESERVA';
end;

procedure TFormCadastroReservaMesa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateRESECFUMANTE.Value     := 'N';
  SQLTemplateRESECCADEIRACRIA.Value := 'N';
  SQLTemplateRESECCADEIRADEFI.Value := 'N';
end;

end.
