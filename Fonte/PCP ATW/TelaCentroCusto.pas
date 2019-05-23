unit TelaCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxDBComb, ComCtrls, Mask, DB, Menus, DBTables, RxQuery, RxLookup;

type
  TFormTelaCentroCusto = class(TFormTelaGeralTEMPLATE)
    Panel4: TPanel;
    Label50: TLabel;
    GroupBoxNiveis: TGroupBox;
    LNivel1: TLabel;
    LNivel2: TLabel;
    LNivel3: TLabel;
    LNivel4: TLabel;
    LNivel5: TLabel;
    LNivel6: TLabel;
    LNivel7: TLabel;
    LNivel8: TLabel;
    LNivel9: TLabel;
    LNivel10: TLabel;
    ComboNivel1: TRxDBComboBox;
    ComboNivel2: TRxDBComboBox;
    ComboNivel3: TRxDBComboBox;
    ComboNivel4: TRxDBComboBox;
    ComboNivel5: TRxDBComboBox;
    ComboNivel6: TRxDBComboBox;
    ComboNivel7: TRxDBComboBox;
    ComboNivel8: TRxDBComboBox;
    ComboNivel9: TRxDBComboBox;
    ComboNivel10: TRxDBComboBox;
    ComboNiveis: TRxDBComboBox;
    Panel_Reg: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    CodReduzido: TDBEdit;
    CodigoEdit: TDBEdit;
    NomeEdit: TDBEdit;
    BtnGravar: TSpeedButton;
    dsSQLConfigCentroCusto: TDataSource;
    PopupMenu1: TPopupMenu;
    NovaConta: TMenuItem;
    SubConta: TMenuItem;
    Excluir: TMenuItem;
    N1: TMenuItem;
    Mn_Exp_Nivel: TMenuItem;
    Mn_Cnt_Nivel: TMenuItem;
    N2: TMenuItem;
    Mn_Exp_Tudo: TMenuItem;
    Mn_Cnt_Tudo: TMenuItem;
    PanelArvore: TPanel;
    Arvore: TTreeView;
    ProgressBar: TProgressBar;
    SQLConfigCentroCusto: TRxQuery;
    SQLCentroCusto: TRxQuery;
    SQLConfigCentroCustoCFPCINIVEIS: TIntegerField;
    SQLConfigCentroCustoCFPCINIVEL1: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL2: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL3: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL4: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL5: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL6: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL7: TBCDField;
    SQLConfigCentroCustoCFPCINIVEL8: TBCDField;
    SQLConfigCentroCustoCFPCNIVEL9: TBCDField;
    SQLConfigCentroCustoCFPCNIVEL10: TBCDField;
    SQLConfigCentroCustoPENDENTE: TStringField;
    SQLConfigCentroCustoREGISTRO: TDateTimeField;
    SQLConfigCentroCustoCFGCA30MASCARA: TStringField;
    DSSQLProducaoCentroCusto: TDataSource;
    SQLUnidade: TRxQuery;
    dsSQLUnidade: TDataSource;
    SQLProducaoCentroCusto: TRxQuery;
    SQLCentroCustoCECUA15COD: TStringField;
    SQLCentroCustoCECUICODREDUZ: TIntegerField;
    SQLCentroCustoCECUINIVEL: TIntegerField;
    SQLCentroCustoCECUA15CODPAI: TStringField;
    SQLCentroCustoCECUA30CODEDIT: TStringField;
    SQLCentroCustoCECUA60DESCR: TStringField;
    SQLCentroCustoREGISTRO: TDateTimeField;
    SQLCentroCustoPENDENTE: TStringField;
    SQLProducaoCentroCustoCECUA15COD: TStringField;
    SQLProducaoCentroCustoCECUICODREDUZ: TIntegerField;
    SQLProducaoCentroCustoCECUINIVEL: TIntegerField;
    SQLProducaoCentroCustoCECUA15CODPAI: TStringField;
    SQLProducaoCentroCustoCECUA30CODEDIT: TStringField;
    SQLProducaoCentroCustoCECUA60DESCR: TStringField;
    procedure ComboNiveisChange(Sender: TObject);
    procedure dsSQLConfigCentroCustoStateChange(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure ArvoreChange(Sender: TObject; Node: TTreeNode);
    procedure ArvoreCompare(Sender: TObject; Node1, Node2: TTreeNode;
      Data: Integer; var Compare: Integer);
    procedure ArvoreDblClick(Sender: TObject);
    procedure CodReduzidoExit(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure NovaContaClick(Sender: TObject);
    procedure SubContaClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure Mn_Exp_NivelClick(Sender: TObject);
    procedure Mn_Cnt_NivelClick(Sender: TObject);
    procedure Mn_Exp_TudoClick(Sender: TObject);
    procedure Mn_Cnt_TudoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NomeEditChange(Sender: TObject);
    procedure NomeEditExit(Sender: TObject);
    procedure RadioSaldoExit(Sender: TObject);
    procedure RadioContaExit(Sender: TObject);
    procedure SQLProducaoCentroCustoBeforePost(DataSet: TDataSet);
    procedure SQLProducaoCentroCustoBeforeClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaCombosContas;
    Function Captura_Mae(Conta:TTreeNode):String;
    Function Converte_Codigo(Codigo:String):String;
    Function Testa_Grau(Codigo:String):Integer;
    Function Tamanho_Grau(Codigo:String;Grau:Integer):String;
    Function Prepara_Codigo_Conta(Codigo:String):String;
    Function Prepara_Codigo_SubConta(Codigo:String):String;
    Function Procura_Mae(Codigo:String):Boolean;
    procedure Insere_Nodo(Codigo:String);
  public
    { Public declarations }
  end;

Type
  CodigoNodo=Record
    Codigo:String[15];
  End;
  NodoArvore=^CodigoNodo;

var
  FormTelaCentroCusto: TFormTelaCentroCusto;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}
procedure TFormTelaCentroCusto.AtualizaCombosContas;
var
  I:Integer;
  Hab:boolean;
begin
  for I:=1 To 10 do
    begin
      Hab:=(I<=SQLConfigCentroCustoCFPCINIVEIS.AsInteger);
      (FindComponent('ComboNivel'+IntToStr(I)) as TRXDBComboBox).Enabled:=Hab;
      (FindComponent('LNivel'+IntToStr(I)) as TLabel).Enabled:=Hab;
    end;
end;

Function TFormTelaCentroCusto.Captura_Mae(Conta:TTreeNode):String;
Var
  Nodo:NodoArvore;
Begin
  If Conta.Parent <> Nil Then
    Begin
      Nodo:=Conta.Parent.Data;
      Captura_Mae:=Nodo.Codigo;
    End;
End;
Function TFormTelaCentroCusto.Converte_Codigo(Codigo:String):String;
Var
  Cont,Cont1:Integer;
  Resposta:String;
begin
  Cont1:=1;
  Cont:=1;
  Resposta:='';
  While Codigo[Cont]<> '' Do
    Begin
      If (SQLConfigCentroCustoCFGCA30MASCARA.asString[Cont1]='_') Then
        Begin
          Resposta:=Resposta+Codigo[Cont];
          Inc(Cont);
        End
      else
        if SQLConfigCentroCustoCFGCA30MASCARA.asString[Cont1] <> '' then
          Resposta:=Resposta+'.'
        else
          Inc(Cont);
      Inc(Cont1);
    End;
  Converte_Codigo:=Resposta;
end;
Function TFormTelaCentroCusto.Testa_Grau(Codigo:String):Integer;
Var
  ContaGrau,Grau,Tamanho:Integer;
Begin
  ContaGrau:=0;
  Grau:=1;
  Tamanho:=SQLConfigCentroCustoCFPCINIVEL1.asInteger;
  While Copy(Codigo,Grau,Tamanho)<>'' Do
    Begin
      Inc(ContaGrau);
      Grau:=Grau+Tamanho;
      Tamanho:=SQLConfigCentroCusto.FieldByName('CFPCINIVEL'+IntToStr(ContaGrau+1)).asInteger;
    End;
  Testa_Grau:=ContaGrau;
End;
Function TFormTelaCentroCusto.Tamanho_Grau(Codigo:String;Grau:Integer):String;
Var
  I:Integer;
begin
  Result:=Codigo;
  I:=Length(Codigo);
  While I<SQLConfigCentroCusto.FieldByName('CFPCINIVEL'+IntToStr(Grau)).asInteger Do
    Begin Result:='0'+Result; Inc(I); End;
End;
Function TFormTelaCentroCusto.Prepara_Codigo_Conta(Codigo:String):String;
Var
  ContaGrau,Grau,Tamanho,Aux:Integer;
  MemPos,MemTam,Incremento:Integer;
  Sair:Boolean;
Begin
  MemPos:=0;MemTam:=0;
  ContaGrau:=0;
  Grau:=1;
  Tamanho:=SQLConfigCentroCustoCFPCINIVEL1.asInteger;
  While Copy(Codigo,Grau,Tamanho)<>'' Do
    Begin
      Inc(ContaGrau);
      MemPos:=Grau; MemTam:=Tamanho;
      Grau:=Grau+Tamanho;
      Tamanho:=SQLConfigCentroCusto.FieldByName('CFPCINIVEL'+IntToStr(ContaGrau+1)).asInteger;
    End;
  Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
  SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='CECUA15COD='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux+1),ContaGrau)+'''';
  SQLProducaoCentroCusto.Close;
  SQLProducaoCentroCusto.Open;
  SQLProducaoCentroCusto.First;
  If (ContaGrau=SQLConfigCentroCustoCFPCINIVEIS.AsInteger) AND (SQLProducaoCentroCusto.Eof) Then
    Incremento:=1
  Else
    Incremento:=1;
  Sair := False;
  While Not Sair Do
    Begin
      SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='CECUA15COD ='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
      SQLProducaoCentroCusto.Close;
      SQLProducaoCentroCusto.Open;
      SQLProducaoCentroCusto.First;
      If SQLProducaoCentroCusto.Eof Then
        Sair := True
      Else
        Inc(Aux,Incremento);
    End;
  If Length(IntToStr(Aux))>MemTam Then
    Begin
      Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
      Sair := False;
      While Not Sair Do
        Begin
          SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='CECUA15COD ='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
          SQLProducaoCentroCusto.Close;
          SQLProducaoCentroCusto.Open;
          SQLProducaoCentroCusto.First;
          If SQLProducaoCentroCusto.Eof Then
            Sair := True
          Else
            Inc(Aux);
        End;
      If Length(IntToStr(Aux))>MemTam Then
        Begin
          Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
          Sair := False;
          While Not Sair Do
            Begin
              SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='CECUA15COD ='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
              SQLProducaoCentroCusto.Close;
              SQLProducaoCentroCusto.Open;
              SQLProducaoCentroCusto.First;
              If SQLProducaoCentroCusto.Eof or (Aux=0) Then
                Sair := True
              Else
                Dec(Aux);
            End;

          If Aux=0 Then
            Begin
              Application.Messagebox('Nível Esgotado!','Informa',MB_Ok+MB_IconStop);
              Abort;
            End;
        End;
    End;
  Result:=Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau);
End;
Function TFormTelaCentroCusto.Prepara_Codigo_SubConta(Codigo:String):String;
Var
  Aux,Incremento:Integer;
  Sair : Boolean;
Begin
  If Testa_Grau(Codigo)+1=SQLConfigCentroCustoCFPCINIVEIS.asInteger Then
    Incremento:=1
  Else
    Incremento:=1;
  Aux:=1;

  Sair := False;
  While Not Sair Do
    Begin
      SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='CECUA15COD ='''+Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)+'''';
      SQLProducaoCentroCusto.Close;
      SQLProducaoCentroCusto.Open;
      SQLProducaoCentroCusto.First;
      If SQLProducaoCentroCusto.Eof Then
        Sair := True
      Else
        Inc(Aux,Incremento);
    End;
  If Length(IntToStr(Aux))>Length(Tamanho_Grau('1',Testa_Grau(Codigo)+1)) then
    Begin
      Aux:=1;
      Sair := False;
      While Not Sair Do
        Begin
          SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='CECUA15COD ='''+Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)+'''';
          SQLProducaoCentroCusto.Close;
          SQLProducaoCentroCusto.Open;
          SQLProducaoCentroCusto.First;
          If SQLProducaoCentroCusto.Eof Then
            Sair := True
          Else
            Inc(Aux);
        End;
      If Length(IntToStr(Aux))>Length(Tamanho_Grau('1',Testa_Grau(Codigo)+1)) Then
        Begin
          Application.Messagebox('Nível Esgotado!','Informa',MB_Ok+MB_IconStop);
          Abort;
        End;
    End;
  Result:=Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)
End;
Function TFormTelaCentroCusto.Procura_Mae(Codigo:String):Boolean;
Var
  NovoNodo:NodoArvore;
Begin
  Result:=False;
  If Arvore.Items.Count>0 Then
    Arvore.Selected:=Arvore.Items[0]
  Else
    Arvore.Selected:=Nil;
  While Arvore.Selected<>Nil Do
    Begin
      NovoNodo:=Arvore.Selected.Data;
      If NovoNodo.Codigo=Codigo Then
        Begin
          Result:=True;
          Break;
        End
      Else
        Arvore.Selected:=Arvore.Selected.GetNext;
    End;
End;
procedure TFormTelaCentroCusto.Insere_Nodo(Codigo:String);
Var
  NovoNodo:NodoArvore;
  Nome:String;
Begin
  NovoNodo:=New(NodoArvore);
  NovoNodo.Codigo:=Codigo;
  Nome:=SQLCentroCustoCECUA60DESCR.asString;
  If Not Procura_Mae(SQLCentroCustoCECUA15CODPAI.asString) Then
    Begin
      If Arvore.Items.Count<>0 Then Arvore.Selected:=Arvore.Items[0];
      Arvore.Selected:=Arvore.Items.AddObject(Arvore.Selected,Nome,NovoNodo);
    End
  Else
    Arvore.Selected:=Arvore.Items.AddChildObject(Arvore.Selected,Nome,NovoNodo);
End;
procedure TFormTelaCentroCusto.ComboNiveisChange(Sender: TObject);
begin
  inherited;
  (Sender as TRxDBComboBox).Field.AsString:=(Sender as TRxDBComboBox).Values[(Sender as TRxDBComboBox).ItemIndex];
  AtualizaCombosContas;
end;

procedure TFormTelaCentroCusto.dsSQLConfigCentroCustoStateChange(
  Sender: TObject);
begin
  inherited;
  BtnGravar.Enabled      := (DSSQLConfigCentroCusto.State in DsEditModes);
  GroupBoxNiveis.Enabled := (DSSQLConfigCentroCusto.State in DsEditModes);
end;

procedure TFormTelaCentroCusto.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SQLConfigCentroCusto.Post;
end;

procedure TFormTelaCentroCusto.ArvoreChange(Sender: TObject;
  Node: TTreeNode);
Var
  Nodo:NodoArvore;
begin
  inherited;
  If Not Arvore.Visible Then Exit;
  SQLProducaoCentroCusto.Close;
  SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='0=0';
  SQLProducaoCentroCusto.Open;
  SQLProducaoCentroCusto.First;
  if Not SQLProducaoCentroCusto.Eof Then
    Begin
      if Visible Then
        Begin
          Nodo:=Arvore.Selected.Data;
          SQLProducaoCentroCusto.Close;
          SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='CECUA15COD='''+Nodo.Codigo+'''';
          SQLProducaoCentroCusto.Open;
        end;

    End;
end;

procedure TFormTelaCentroCusto.ArvoreCompare(Sender: TObject; Node1,
  Node2: TTreeNode; Data: Integer; var Compare: Integer);
Var
  Nodo1,Nodo2:NodoArvore;
begin
  inherited;
  if visible then
    begin
      Nodo1:=Node1.Data;
      Nodo2:=Node2.Data;
      If Nodo1.Codigo>Nodo2.Codigo Then
        Compare:=1
      Else
        Compare:=-1;
    end;
end;

procedure TFormTelaCentroCusto.ArvoreDblClick(Sender: TObject);
begin
  inherited;
  NomeEdit.SetFocus;
end;

procedure TFormTelaCentroCusto.CodReduzidoExit(Sender: TObject);
begin
  inherited;
  If (SQLProducaoCentroCusto.State=dsEdit) OR (SQLProducaoCentroCusto.State=dsInsert) Then
    Begin
      SQLProducaoCentroCusto.Post;
      ArvoreChange(Arvore,Arvore.Selected);
    end;
end;

procedure TFormTelaCentroCusto.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  If Arvore.Items.Count<>0 Then
    begin
      If (Arvore.Selected.HasChildren) Then
        Excluir.Visible:=False
      Else
        Excluir.Visible:=True;
      If (Arvore.Selected.Level+1=SQLConfigCentroCustoCFPCINIVEIS.AsInteger) Then
        SubConta.Visible:=False
      Else
        SubConta.Visible:=True;
    End
  Else
    Begin
      SubConta.Visible:=False;
      Excluir.Visible:=False;
    End;
end;

procedure TFormTelaCentroCusto.NovaContaClick(Sender: TObject);
Var
  Nodo,NovoNodo:NodoArvore;
begin
  inherited;
  if SQLProducaoCentroCusto.State in DSEditModes then
    SQLProducaoCentroCusto.Post ;

  NovoNodo:=New(NodoArvore);
  SQLProducaoCentroCusto.Close;
  SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='0=0';
  SQLProducaoCentroCusto.Open;
  SQLProducaoCentroCusto.First;
  If SQLProducaoCentroCusto.Eof Then
    NovoNodo.Codigo:=Tamanho_Grau('1',1)
  Else
    Begin
      Nodo:=Arvore.Selected.Data;
      NovoNodo.Codigo:=Prepara_Codigo_Conta(Nodo.Codigo);
    End;
  Arvore.Selected:=Arvore.Items.AddObject(Arvore.Selected,'',NovoNodo);
  SQLProducaoCentroCusto.Append;
  SQLProducaoCentroCustoCECUA15COD.asString:=NovoNodo.Codigo;
  SQLProducaoCentroCustoCECUA60DESCR.asString:='';
  SQLProducaoCentroCustoCECUA30CODEDIT.asString:=Converte_Codigo(NovoNodo.Codigo);
  SQLProducaoCentroCustoCECUINIVEL.asInteger:=Testa_Grau(NovoNodo.Codigo);
  SQLProducaoCentroCustoCECUA15CODPAI.asString:=Captura_Mae(Arvore.Selected);

  SQLProducaoCentroCusto.Post;
  Panel_Reg.Enabled:=True;
  Arvore.AlphaSort;
  PanelArvore.Enabled:=True;
  NomeEdit.SetFocus;
  NomeEdit.SelectAll;
end;

procedure TFormTelaCentroCusto.SubContaClick(Sender: TObject);
Var
  Nodo,NovoNodo:NodoArvore;
begin
  inherited;
  if SQLProducaoCentroCusto.State in DSEditModes then
    SQLProducaoCentroCusto.Post ;

  NovoNodo:=New(NodoArvore);
  SQLProducaoCentroCusto.Close;
  SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='0=0';
  SQLProducaoCentroCusto.Open;
  SQLProducaoCentroCusto.First;
  If SQLProducaoCentroCusto.Eof Then
    NovoNodo.Codigo:=Tamanho_Grau('1',1)
  Else
    Begin
      Nodo:=Arvore.Selected.Data;
      NovoNodo.Codigo:=Prepara_Codigo_SubConta(Nodo.Codigo);
    End;
   Arvore.Selected:=Arvore.Items.AddChildObject(Arvore.Selected,'',NovoNodo);
  SQLProducaoCentroCusto.Append;
  SQLProducaoCentroCustoCECUA15COD.asString:=NovoNodo.Codigo;
  SQLProducaoCentroCustoCECUA60DESCR.asString:='';
  SQLProducaoCentroCustoCECUA30CODEDIT.asString:=Converte_Codigo(NovoNodo.Codigo);
  SQLProducaoCentroCustoCECUINIVEL.asInteger:=Testa_Grau(NovoNodo.Codigo);
  SQLProducaoCentroCustoCECUA15CODPAI.asString:=Captura_Mae(Arvore.Selected);

  SQLProducaoCentroCusto.Post;
  Arvore.Selected.Expand(True);
  NomeEdit.SetFocus;
  NomeEdit.SelectAll;
end;

procedure TFormTelaCentroCusto.ExcluirClick(Sender: TObject);
begin
  inherited;
  SQLProducaoCentroCusto.Delete;
  Dispose(Arvore.Selected.Data);
  Arvore.Selected.Delete;
  SQLProducaoCentroCusto.Close;
  SQLProducaoCentroCusto.MacroByName('MFiltro').asString:='0=0';
  SQLProducaoCentroCusto.Open;
  SQLProducaoCentroCusto.First;
  If SQLProducaoCentroCusto.Eof Then
    Panel_Reg.Enabled:=False;
  ArvoreChange(Arvore,Arvore.Selected);
end;

procedure TFormTelaCentroCusto.Mn_Exp_NivelClick(Sender: TObject);
begin
  inherited;
  Arvore.Selected.Expand(True);
end;

procedure TFormTelaCentroCusto.Mn_Cnt_NivelClick(Sender: TObject);
begin
  inherited;
  Arvore.Selected.Collapse(True);
end;

procedure TFormTelaCentroCusto.Mn_Exp_TudoClick(Sender: TObject);
begin
  inherited;
  Arvore.FullExpand;
end;

procedure TFormTelaCentroCusto.Mn_Cnt_TudoClick(Sender: TObject);
begin
  inherited;
  Arvore.FullCollapse;
end;

procedure TFormTelaCentroCusto.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLConfigCentroCusto.Active then SQLConfigCentroCusto.Active := True;
  if not SQLProducaoCentroCusto.Active then SQLProducaoCentroCusto.Active := True;
  if not SQLCentroCusto.Active then SQLCentroCusto.Active := True;
  if not SQLUnidade.Active then SQLUnidade.Active := True;

end;

procedure TFormTelaCentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If (DSSQLConfigCentroCusto.State in DsEditModes) and (Application.MessageBox('Deseja sair sem Gravar?','Atenção',MB_YesNo+MB_IconQuestion)=Id_No) Then
    Abort
  Else
    SQLConfigCentroCusto.Cancel;

  If (SQLProducaoCentroCusto.State in DsEditModes) Then
    If SQLProducaoCentroCusto.FindField('CECUA15COD').AsVariant<>Null Then
      SQLProducaoCentroCusto.Post
    Else
      SQLProducaoCentroCusto.Cancel;

  SQLConfigCentroCusto.Close ;
  SQLProducaoCentroCusto.Close ;
  inherited;
end;

procedure TFormTelaCentroCusto.NomeEditChange(Sender: TObject);
begin
  inherited;
  If (Visible) AND (NomeEdit.Focused) Then
    Begin
      if Arvore.Items.Count <> 0 Then
        Arvore.Selected.Text := NomeEdit.Text;
    End;
end;

procedure TFormTelaCentroCusto.NomeEditExit(Sender: TObject);
begin
  inherited;
  if (SQLProducaoCentroCusto.State=dsEdit) OR (SQLProducaoCentroCusto.State=dsInsert) then
    Begin
      SQLProducaoCentroCusto.Post;
      ArvoreChange(Arvore,Arvore.Selected);
    end;
end;

procedure TFormTelaCentroCusto.RadioSaldoExit(Sender: TObject);
begin
  inherited;
  If (SQLProducaoCentroCusto.State=dsEdit) OR (SQLProducaoCentroCusto.State=dsInsert) Then
    Begin
      SQLProducaoCentroCusto.Post;
      ArvoreChange(Arvore,Arvore.Selected);
    end;
end;

procedure TFormTelaCentroCusto.RadioContaExit(Sender: TObject);
begin
  inherited;
  If (SQLProducaoCentroCusto.State=dsEdit) OR (SQLProducaoCentroCusto.State=dsInsert) Then
    Begin
      SQLProducaoCentroCusto.Post;
      ArvoreChange(Arvore,Arvore.Selected);
    end;
end;

procedure TFormTelaCentroCusto.SQLProducaoCentroCustoBeforePost(
  DataSet: TDataSet);
Var I : Integer;
begin
  inherited;

end;

procedure TFormTelaCentroCusto.SQLProducaoCentroCustoBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  if SQLProducaoCentroCusto.State in dsEditModes then
     begin
      if SQLProducaoCentroCustoCECUA60DESCR.IsNull       then
         begin
            Informa('O campo "Descrição" não pode ser vazio.');
            Exit;
            Abort;
         end;
     end;


  If (SQLProducaoCentroCusto.State=dsEdit) OR (SQLProducaoCentroCusto.State=dsInsert) Then
    Begin
      SQLProducaoCentroCusto.Post;
      ArvoreChange(Arvore,Arvore.Selected);
    end;
end;

procedure TFormTelaCentroCusto.FormShow(Sender: TObject);
begin
  inherited;
  AtualizaCombosContas;
  If (Arvore.Items.Count = 0) then
    Begin
      SQLConfigCentroCusto.Close;
      SQLProducaoCentroCusto.Close;
      SQLConfigCentroCusto.Open;
      SQLProducaoCentroCusto.MacroByName('MFiltro').AsString:='0=0';
      SQLProducaoCentroCusto.Open;
      Arvore.Visible := False ;
      ProgressBar.Position := 0 ;
      ProgressBar.Update ;
      ProgressBar.Visible := True ;
      SQLCentroCusto.Close ;
      SQLCentroCusto.Open ;
      ProgressBar.Max := SQLCentroCusto.RecordCount;
      SQLCentroCusto.First;
      While not SQLCentroCusto.Eof Do
        Begin
          ProgressBar.Position:=ProgressBar.Position+1;
          ProgressBar.UpDate;
          Insere_Nodo(SQLCentroCustoCECUA15COD.asString);
          SQLCentroCusto.Next;
        End;
      if Arvore.Items.Count <> 0 Then
        Arvore.Selected := Arvore.Items[0] ;
      SQLCentroCusto.First;
      If Not SQLCentroCusto.Eof Then
        Panel_Reg.Enabled := True ;
      Arvore.FullCollapse;
      ProgressBar.Position := 0 ;
      ProgressBar.Update;
      ProgressBar.Visible := False ;
      Arvore.Visible      :=True ;
    End;

end;

end.
