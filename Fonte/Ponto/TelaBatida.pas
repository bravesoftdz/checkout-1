unit TelaBatida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, RXClock, StdCtrls, Mask, Buttons, jpeg ;

type
  TFormTelaBatida = class(TForm)
    RxClock1: TRxClock;
    NomeEmpresa: TRxLabel;
    DescricaoProduto: TRxLabel;
    RxData: TRxLabel;
    Panel1: TPanel;
    ImageFunc: TImage;
    RxLabel1: TRxLabel;
    RxNome: TRxLabel;
    EntradaDados: TMaskEdit;
    BtConfirma: TBitBtn;
    RxClock2: TRxClock;
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtConfirmaClick(Sender: TObject);
    procedure ComboEventoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaBatida: TFormTelaBatida;

implementation

uses DataModulo, DB, UnSoundPlay;

{$R *.dfm}

procedure TFormTelaBatida.FormCreate(Sender: TObject);
begin
  NomeEmpresa.Caption := 'Empresa: '+DM.SQLEmpresaEMPRICOD.AsString+' - '+DM.SQLEmpresaEMPRA60RAZAOSOC.AsString;
  RxData.Caption      := FormatDateTime('dd/mm/yyyy',Now);
end;

procedure TFormTelaBatida.EntradaDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
  vDiaSemana : String;
begin
  if (Key = 13) and (EntradaDados.Text <> '') then
    begin
      dm.SQLFuncionario.Close;
      dm.SQLFuncionario.MacroByName('MFiltro').Value := 'FORNA13IDCRACHA = "'+EntradaDados.Text+'"';
      dm.SQLFuncionario.Open;
      if not dm.SQLFuncionario.IsEmpty then
        begin
          RxNome.Caption  := 'Nome: '  + dm.SQLFuncionarioFORNA60RAZAOSOC.AsString;
          RxNome.Update;
          EntradaDados.Clear;
          // Mostra Foto
          if dm.SQLFuncionarioFORNBIMAGEM.BlobSize <> 0 then
          begin
            BlobStream:= dm.SQLFuncionario.CreateBlobStream(dm.SQLFuncionarioFORNBIMAGEM,bmRead);
            JPEGImage := TJPEGImage.Create;
            try
              JPEGImage.LoadFromStream(BlobStream);
              ImageFunc.Picture.Assign(JPEGImage);
            finally
              BlobStream.Free;
              JPEGImage.Free;
            end;
          end
          else
            ImageFunc.Picture.LoadFromFile('Bmp\Silueta.Bmp') ;

          BtConfirma.SetFocus;
        end
      else
        begin
          SoundPlay('Acesso negado.wav',Sender);
          RxNome.Caption  := 'Nome: ';
          RxNome.Update;
          EntradaDados.SelectAll;
          EntradaDados.SetFocus;
        end;
    end;
end;

procedure TFormTelaBatida.BtConfirmaClick(Sender: TObject);
var DiaSemana : String;
begin
  // Grava a Batida
  if (not dm.SQLFuncionario.IsEmpty) then
    begin
      // Testar se o funcionario pode bater no horario atual.
      dm.SQLHorario.Close;
      dm.SQLHorario.MacroByName('MFiltro').Value := 'HORAICOD = ' + dm.SQLFuncionarioHORAICOD.AsString;
      dm.SQLHorario.Open;
      if not dm.SQLHorario.IsEmpty then
        begin
          DiaSemana := FormatDateTime('ddd',Now);

          case DiaSemana of
             Seg : if dm.SQLHorarioHORADSEGMANENT.Value
             Ter :
             Qua :
          end;

        end;
      dm.SQLPontoFunc.Close;
      dm.SQLPontoFunc.MacroByName('MFiltro').Value := 'PONTDDATA = "'   + FormatDateTime('mm/dd/yyyy',Now) +
                                                      '" and FORNICOD=' + dm.SQLFuncionarioFORNICOD.AsString;
      dm.SQLPontoFunc.Open;
      // Se Vazio é pq o funcionario ainda nao bateu nenuma vez nesse dia.
      if dm.SQLPontoFunc.IsEmpty then
        begin
          dm.SQLPontoFunc.Append;
          dm.SQLPontoFuncEMPRICOD.Value          := dm.EmpresaCorrente;
          dm.SQLPontoFuncFORNICOD.Value          := dm.SQLFuncionarioFORNICOD.Value;
          dm.SQLPontoFuncPONTDDATA.AsString      := FormatDateTime('dd/mm/yyyy',Now);
          dm.SQLPontoFuncPONTDDIASEMANA.AsString := DiaSemana;
          dm.SQLPontoFuncPONTTOBS.AsString       := 'Batida Automatica';
          dm.SQLPontoFuncPONTDMANHAENT.AsString  := FormatDateTime('dd/mm/yyyy hh:nn',Now);
          dm.SQLPontoFuncREGISTRO.Value          := Now;
          dm.SQLPontoFuncPENDENTE.Value          := 'S';
          dm.SQLPontoFunc.Post;
        end
      else
        begin
          dm.SQLPontoFunc.Edit;
          if dm.SQLPontoFuncPONTDMANHAENT.AsString <> '' then
          dm.SQLPontoFuncPONTDMANHAENT.AsString  := FormatDateTime('dd/mm/yyyy hh:nn',Now);
          dm.SQLPontoFuncREGISTRO.Value          := Now;
          dm.SQLPontoFuncPENDENTE.Value          := 'S';
          dm.SQLPontoFunc.Post;
        end;

      SoundPlay('Ponto Registrado.wav',Sender);

      ShowMessage('Batida do Ponto Confirmada!');
      dm.SQLFuncionario.Close;
      RxNome.Caption  := 'Nome: ';
      RxNome.Update;
    end
  else
    begin
      ShowMessage('Atenção!' +chr(13)+''+chr(13)+
                  'Não foi registrada essa batida!' +chr(13)+''+chr(13)+
                  'Verifique as informações e tente novamente!');
      RxNome.Caption  := 'Nome: ';
      RxNome.Update;
    end;

  EntradaDados.SetFocus;
  dm.SQLFuncionario.Close;
  dm.SQLFuncionario.Close;
end;

procedure TFormTelaBatida.ComboEventoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    EntradaDados.SetFocus;
end;

end.
