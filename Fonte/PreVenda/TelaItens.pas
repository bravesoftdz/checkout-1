unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,JPEG, Mask, ToolEdit,
  CurrEdit, ConerBtn, DBCtrls, RXCtrls, RxQuery, EWall, ComObj, Serial, Math, ShellApi,
  RxLookup, CRLabel;

const
  //AS VARIAVEIS ABAIXO FORAM CRIADAS PARA NÃO CORRER O RISCO DE DIGITAR ERRADO
  //E ALGUMA ROTINA NAO FUNCIONAR, EU SO DESCOBRIRIA AO USAR, ASSIM JA DESCUBRO
  //NA COMPILACAO
  AguardandoNovaVenda        = 'AguardandoNovaVenda';
  InformandoItens            = 'InformandoItens';
  CancelandoItem             = 'CancelandoItem';
  DescontoPercItem           = 'DescontoPercItem';
  DescontoVlrItem            = 'DescontoVlrItem';
  AlterandoQuantidade        = 'AlterandoQuantidade';
  AlterandoQuantidadePadrao  = 'AlterandoQuantidadePadrao';
  InformandoItensRetorno     = 'InformandoItensRetorno';
  InformandoItensDevolucao   = 'InformandoItensDevolucao';
  InformandoConvenio         = 'InformandoConvenio';
  InformandoOrdemCompra      = 'InformandoOrdemCompra';
  InformandoClienteConvenio  = 'InformandoClienteConvenio';
  InformandoItensTroca       = 'InformandoItensTroca';
  InformandoDescricaoTecnica = 'InformandoDescricaoTecnica';
  InformandoTotalVenda       = 'InformandoTotalVenda';
type
  TFormTelaItens = class(TForm)
    PanelDadosCliente: TPanel;
    LblSubTotal: TRxLabel;
    CurSubTotal: TCurrencyEdit;
    Foto: TImage;
    Bevel1: TBevel;
    Prevenda: TRxLabel;
    Bevel2: TBevel;
    BtnF2: TConerBtn;
    BtnF3: TConerBtn;
    BtnF4: TConerBtn;
    BtnF11: TConerBtn;
    BtnSair: TConerBtn;
    GridItens: TDBGrid;
    RxLabel1: TRxLabel;
    PanelProdutosTitulo: TPanel;
    RxLabel3: TRxLabel;
    PanelVendedor: TPanel;
    RxLabel2: TRxLabel;
    ComboVendedor: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel4: TBevel;
    RxLabel4: TRxLabel;
    ComboPlano: TRxDBLookupCombo;
    Label4: TLabel;
    EditCDVendedor: TDBEdit;
    EditCodPlano: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnF11Click(Sender: TObject);
    procedure BtnF4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EstadoPDV : String;
  end;

var
  FormTelaItens: TFormTelaItens;
implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
  Application.Terminate;
end;

procedure TFormTelaItens.FormCreate(Sender: TObject);
begin
  Height := 600 ;
  Width  := 800 ;

  // Coloquei inicialmente pra testes o cod da empresa
  EmpresaPadrao := '1';

  if FileExists('Bmp\Logo PDV.Bmp') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Bmp') ;

  if FileExists('Bmp\Logo PDV.Jpg') then
    Foto.Picture.LoadFromFile('Bmp\Logo PDV.Jpg') ;

end;

procedure TFormTelaItens.BtnF11Click(Sender: TObject);
begin
  dm.sqlprevenda.Next;
end;

procedure TFormTelaItens.BtnF4Click(Sender: TObject);
begin
  dm.sqlprevenda.Prior;
end;

procedure TFormTelaItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
     VK_F2
     :begin//INICIANDO NOVA VENDA
        If EstadoPDV = 'InformandoItens' then
          begin
            Informa('Esta venda já foi iniciada!') ;
            EditCDVendedor.SetFocus ;
            exit ;
          end;
        dm.SQLprevenda.Close;
        dm.SQLprevenda.MacroByName('MFiltro').Value := 'TERMICOD is null AND PRVDICOD is null';
        dm.SQLprevenda.Open;
        dm.SQLprevenda.Append;
        EditCDVendedor.SetFocus ;
      end;
     VK_F3
     : begin // Gravando a Prevenda Atual
         try
           dm.SQLprevenda.Post;
           EditCDVendedor.SetFocus ;
         except
           Application.ProcessMessages;
         end;
       end;
  end;
end;

procedure TFormTelaItens.BtnSairClick(Sender: TObject);
begin
  try
    dm.SQLprevenda.Cancel;
  except
    application.ProcessMessages;
  end;
  Close;
end;

end.
