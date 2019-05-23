unit TelaExportacaoSeller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, ComCtrls,
  Mask, ToolEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoSeller = class(TFormTelaGeralTEMPLATE)
    RadioTipoExportacao: TRadioGroup;
    GroupBox1: TGroupBox;
    CkProdutos: TCheckBox;
    CkClientes: TCheckBox;
    CkRotas: TCheckBox;
    CkVendedores: TCheckBox;
    CkGrupos: TCheckBox;
    CkPlanoRecebimento: TCheckBox;
    Label8: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    EditTabela: TEdit;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EditDiretorio: TDirectoryEdit;
    BtExecutar: TSpeedButton;
    procedure BtExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo : TextFile;
  end;

var
  FormTelaExportacaoSeller: TFormTelaExportacaoSeller;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaExportacaoSeller.BtExecutarClick(Sender: TObject);
var CaminhoNomeArquivo, Linha, CNPJ, IE_RG, Grupo, Marca, Unidade : String;
    I : Integer;
begin
  inherited;
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;

  // Cria Arquivo
  CaminhoNomeArquivo := EditDiretorio.Text + '\Seller_Exporta.TXT';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);

  // INICIO
  Writeln(Arquivo,'INICIO|');

  // Plano Recebimento
  if CkPlanoRecebimento.Checked then
    begin
      EditTabela.Text := 'Exportando Planos de Recebimentos...';
      EditTabela.Update;
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select PLRCICOD, PLRCA60DESCR, PLRCIDFIXNROPARC from PlanoRecebimento';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              Linha := 'PLANORECEBIMENTO|INSERT|' + dm.zConsulta.fieldbyname('PLRCICOD').AsString +'|'+
                                             dm.zConsulta.fieldbyname('PLRCA60DESCR').AsString +'|'+
                                             dm.zConsulta.fieldbyname('PLRCIDFIXNROPARC').AsString +'|';
              Writeln(Arquivo, Linha);
              dm.zConsulta.next;
            end;
        end;
    end;

  // Vendedores
  if CkVendedores.Checked then
    begin
      EditTabela.Text := 'Exportando Vendedores...';
      EditTabela.Update;
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select VENDICOD, VENDA60NOME, VENDA30SENHA from Vendedor';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              Linha := 'VENDEDOR|INSERT|' + dm.zConsulta.fieldbyname('VENDICOD').AsString +'|'+
                                     dm.zConsulta.fieldbyname('VENDA60NOME').AsString +'|'+
                                     dm.zConsulta.fieldbyname('VENDA30SENHA').AsString +'|';
              Writeln(Arquivo, Linha);
              dm.zConsulta.next;
            end;
        end;
    end;

  // Rotas
  if CkRotas.Checked then
    begin
      EditTabela.Text := 'Exportando Rotas...';
      EditTabela.Update;
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select ROTAICOD, ROTAA60NOME from ROTA';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              Linha := 'ROTA|INSERT|' + dm.zConsulta.fieldbyname('ROTAICOD').AsString +'|'+
                                 dm.zConsulta.fieldbyname('ROTAA60NOME').AsString +'|';
              Writeln(Arquivo, Linha);
              dm.zConsulta.next;
            end;
        end;
    end;

  // Clientes
  if CkClientes.Checked then
    begin
      EditTabela.Text := 'Exportando Clientes...';
      EditTabela.Update;
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select CLIEA13ID,CLIEA14CGC,CLIEA11CPF,CLIEA60RAZAOSOC,CLIEA60NOMEFANT,CLIEA15FONE1,CLIEA60EMAIL,CLIEA60ENDRES,CLIEA60BAIRES,CLIEA5NROENDRES,CLIEA60CIDRES,CLIEA8CEPRES,ROTAICOD,VENDICOD from CLIENTE';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              if dm.zConsulta.fieldbyname('CLIEA14CGC').AsString <> '' then
                cnpj := dm.zConsulta.fieldbyname('CLIEA14CGC').AsString
              else
                cnpj := dm.zConsulta.fieldbyname('CLIEA11CPF').AsString;
                
              Linha := 'CLIENTE|INSERT|' + dm.zConsulta.fieldbyname('CLIEA13ID').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60RAZAOSOC').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60NOMEFANT').AsString +'|'+
                                    cnpj +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60ENDRES').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA5NROENDRES').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60BAIRES').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60CIDRES').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA8CEPRES').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA15FONE1').AsString +'|'+
                                    dm.zConsulta.fieldbyname('CLIEA60EMAIL').AsString +'|'+
                                    dm.zConsulta.fieldbyname('ROTAICOD').AsString +'|'+
                                    dm.zConsulta.fieldbyname('VENDICOD').AsString +'|';

              Writeln(Arquivo, Linha);

              dm.zConsulta.next;
            end;
        end;
    end;

  // Produtos
  if CkProdutos.Checked then
    begin
      EditTabela.Text := 'Exportando Produtos...';
      EditTabela.Update;
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select PRODICOD, PRODA60CODBAR, PRODA60DESCR, PRODN3CAPACEMBAL, PRODISITTRIB, GRUPICOD, PRODN3VLRVENDA, UNIDICOD, PRODN3VLRVENDA2, UNIDICOD2 from PRODUTO';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              Linha := 'PRODUTO|INSERT|' + dm.zConsulta.fieldbyname('PRODICOD').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODA60CODBAR').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODA60DESCR').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODN3CAPACEMBAL').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODISITTRIB').AsString +'|'+
                                    dm.zConsulta.fieldbyname('GRUPICOD').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsString +'|'+
                                    dm.zConsulta.fieldbyname('UNIDICOD').AsString +'|'+
                                    dm.zConsulta.fieldbyname('PRODN3VLRVENDA2').AsString +'|'+
                                    dm.zConsulta.fieldbyname('UNIDICOD2').AsString +'|';
              Writeln(Arquivo, Linha);
              dm.zConsulta.next;
            end;
        end;
    end;

  // Grupos
  if CkGrupos.Checked then
    begin
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'Select GRUPICOD, GRUPA60DESCR from GRUPO';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          while not dm.zConsulta.eof do
            begin
              Linha := 'GRUPO|INSERT|' + dm.zConsulta.fieldbyname('GRUPICOD').AsString +'|'+
                                  dm.zConsulta.fieldbyname('GRUPA60DESCR').AsString +'|';
              Writeln(Arquivo, Linha);
              dm.zConsulta.next;
            end;
        end;
    end;

  // FIM
  Writeln(Arquivo,'FIM|');

  // Fechar Arquivo
  CloseFile(Arquivo);

  EditTabela.Text := 'Exportação Concluida!';
  EditTabela.Update;
  EditHoraTermino.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraTermino.Update;
  dm.zConsulta.Close;
end;

end.
