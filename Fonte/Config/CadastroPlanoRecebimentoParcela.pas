
unit CadastroPlanoRecebimentoParcela;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBCtrls, Db, DBTables, RxQuery, Menus, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroPlanoRecebimentoParcela = class(TFormCadastroTEMPLATE)
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePLRPINROPARC: TIntegerField;
    SQLTemplatePLRPINRODIAS: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPlanoRecebimentoParcela: TFormCadastroPlanoRecebimentoParcela;

implementation

{$R *.DFM}

procedure TFormCadastroPlanoRecebimentoParcela.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PLANORECEBIMENTOPARCELA';
end;

procedure TFormCadastroPlanoRecebimentoParcela.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePLRCICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('PLRCICOD').Value;
end;

procedure TFormCadastroPlanoRecebimentoParcela.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePLRPINRODIAS.AsString = '' Then
    begin
      beep;
      ShowMessage('O campo Número de Dias deve ser informado!');
      Abort;
    end;
end;

end.
