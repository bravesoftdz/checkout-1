unit CadastroEcf;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, RxDBComb, DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEcf = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SQLTemplateECFA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateECFICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateECFA30DESCR: TStringField;
    SQLTemplateECFA30MODELO: TStringField;
    DBComboBox1: TDBComboBox;
    SQLTemplateECFA5IDENTIFICADORCNFV: TStringField;
    SQLTemplateECFA5IDENTIFICADORCNFNV: TStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateECFA2TRIBTXCRED: TStringField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateECFA20NROSERIE: TStringField;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEcf: TFormCadastroEcf;

implementation

uses DataModulo, CadastroECFAliquota;

{$R *.DFM}

procedure TFormCadastroEcf.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ECF';
end;

procedure TFormCadastroEcf.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  If (DataSet.FieldByName('MECFICOD').AsVariant <> null) then
    Begin
      If DM.ProcuraRegistro('MODELOECF',['MECFICOD'],[DataSet.FieldByName('MECFICOD').AsString],1) Then
        DataSet.FieldByName('MODELOLOOKUP').AsVariant := DM.SQLTemplate.FindField('MECFA60DESC').AsVariant
      Else
        DataSet.FieldByName('MODELOLOOKUP').asString:=MensagemLookUp;
    End
  Else
    DataSet.FieldByName('MODELOLOOKUP').AsVariant:=Null;

end;

procedure TFormCadastroEcf.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = Vk_F2 then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('MECFICOD');
      FieldOrigem := 'MECFICOD' ;
      //CriaFormulario(TFormCadastroModeloEcf,'FormCadastroModeloEcf',True,True,'Ecf ' + SQLTemplateECFA60DESC.Value);
    end
end;

procedure TFormCadastroEcf.Button3Click(Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name = 'Button3' then
  begin
    DSMasterSys := DSTemplate ;
    CriaFormulario(TFormCadastroECFAliquota,'FormCadastroECFAliquota', True, False,True, '');
  end;
end;

end.
