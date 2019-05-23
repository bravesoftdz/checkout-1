unit CadastroMecVeiculosdoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMecVeiculosdoCliente = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    SQLTemplateIDVEICULO: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVEICULOA50: TStringField;
    SQLTemplatePLACA: TStringField;
    SQLTemplateMARCAA20: TStringField;
    SQLTemplateMOTORISTA: TStringField;
    SQLTemplateOBSERVACOES: TStringField;
    SQLTemplateANOMODELO: TStringField;
    SQLTemplateCORA10: TStringField;
    SQLTemplateCOMBUSTIVEL: TStringField;
    SQLTemplateUFPLACA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses CadastroMecOrdem;

{$R *.dfm}

procedure TFormCadastroMecVeiculosdoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_MEC_VEICULOS';
end;

procedure TFormCadastroMecVeiculosdoCliente.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
    DataSet.FieldByName('CLIEA13ID').ASSTRING := DataSet.DataSource.DataSet.FieldByName('CLIEA13ID').ASSTRING;
End;
end.
