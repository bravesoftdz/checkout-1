unit CadastroUsuarioMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, StdCtrls, Buttons, Mask, DBCtrls,
  ExtCtrls, Grids, DBGrids;

type
  TFormCadastroUsuarioMaster = class(TForm)
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLUsuarioUSUAA5SENHA: TStringField;
    SQLUsuarioPENDENTE: TStringField;
    SQLUsuarioREGISTRO: TDateTimeField;
    SQLUsuarioUSUACUSERMASTER: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSSQLUsuario: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnOK: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    procedure SQLUsuarioBeforePost(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuarioMaster: TFormCadastroUsuarioMaster;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormCadastroUsuarioMaster.SQLUsuarioBeforePost(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('PENDENTE').AsString   := 'S';
  DataSet.FieldByName('REGISTRO').AsDateTime := Now;;
  if DataSet.State in [DsInsert] then
    begin
      DataSet.FieldByName('USUACUSERMASTER').AsString  := 'S'; 
      DataSet.FieldByName('USUAICOD').AsInteger := DM.ProximoCodigoUnico('USUARIO',DataSet,nil,0);
    end;
end;

procedure TFormCadastroUsuarioMaster.BtnOKClick(Sender: TObject);
begin
  if SQLUsuario.State in DSEditModes then
    SQLUsuario.Post;
end;

end.
