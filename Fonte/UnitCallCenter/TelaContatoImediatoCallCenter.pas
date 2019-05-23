unit TelaContatoImediatoCallCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaContatoImediato, DB, DBTables, RxQuery, Mask, ToolEdit,
  StdCtrls, Buttons, RxLookup, ExtCtrls, RXCtrls, DBCtrls, FormResources, VarSys;

type
  TFormTelaContatoImediatoCallCenter = class(TFormTelaContatoImediato)
    procedure SQLNovoContatoBeforePost(DataSet: TDataSet);
    procedure SQLNovoContatoAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaContatoImediatoCallCenter: TFormTelaContatoImediatoCallCenter;

implementation

uses TelaAgendaContatos, DataModulo;

{$R *.dfm}

procedure TFormTelaContatoImediatoCallCenter.SQLNovoContatoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.EmpresaContatoGerado  := SQLNovoContatoEMPRICOD.asInteger;
  DM.DataContatoGerado     := SQLNovoContatoCONTDCONTATO.asDatetime;
  DM.CodigoContatoGerado   := SQLNovoContatoCONTICOD.asInteger;
end;

procedure TFormTelaContatoImediatoCallCenter.SQLNovoContatoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  If DataContato.Date=Date Then
    Begin
      DM.ContatoImediato := True;
      CriaFormulario(TFormTelaAgendaContatos,'FormTelaAgendaContatos',False,False,'');
      DM.ContatoImediato := False;
    End;
end;

procedure TFormTelaContatoImediatoCallCenter.FormShow(Sender: TObject);
begin
  inherited;
  EditCliente.SetFocus;
end;

end.
