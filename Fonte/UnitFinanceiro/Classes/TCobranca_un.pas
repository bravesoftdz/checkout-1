 {
 Classe Implementada para centralização de funções comuns entre módulos
 Autor: Gabriel Teixeira
 Data Criação: 01/02/2013 - 19:10
 }

unit TCobranca_un;

interface

uses DB, DBXpress, Dialogs, SysUtils, SqlExpr;

type
  TCobranca = class
  private
    {Procedimento de retorno e atualização do campo sequencial para geração de nosso numero}
    class function AtualizaRetornaSequencialContaCorrente(aCodigoContaCorrente: Integer): String;
  public
    {Função para retornar o código de nosso número gerado}
    class function RetornaNossoNumero(aCodigoContaCorrente: Integer): String;
  end;

implementation

uses DataModulo, UnitLibrary;

Const aIdUniversal = '0';

{ TCobranca }
class function TCobranca.AtualizaRetornaSequencialContaCorrente(aCodigoContaCorrente: Integer): String;
var
  qry: TSQLQuery;
  aSequencial : Integer;
begin
  qry := TSQLQuery.Create(Nil);
  try
    qry.SQLConnection := DM.SQLCON;
    qry.SQL.Add('SELECT CTCRINOSSONUMERO FROM CONTACORRENTE');
    qry.SQL.Add('WHERE CTCRICOD = :CTCRICOD');
    qry.ParamByName('CTCRICOD').AsInteger := aCodigoContaCorrente;
    try
      qry.Open;
    except
      on e: Exception do
        MessageDLG('Erro ao obter o sequencial do nosso número da conta corrente.',mtError, [mbOk],0);
    end;
    if not (qry.eof) then
    begin
      aSequencial := qry.FieldByName('CTCRINOSSONUMERO').AsInteger;
      {Atualiza o sequencial na tabela de contas correntes}
      qry.sql.clear;
      qry.sql.add('UPDATE CONTACORRENTE SET CTCRINOSSONUMERO = CTCRINOSSONUMERO + 1 ');
      qry.SQL.Add('WHERE CTCRICOD = :CTCRICOD');
      qry.ParamByName('CTCRICOD').AsInteger := aCodigoContaCorrente;
      qry.ExecSQL;
    end;
    Result := IntToStr(aSequencial);
  finally
    qry.Free;
  end;
end;

class function TCobranca.RetornaNossoNumero(aCodigoContaCorrente: Integer): String;
var
  sConvenio, sAno, sMes, sNossoNumero, sSequencia: string;
  qry: TSQLQuery;
begin
  {
      -> FORMULA DE CÁLCULO
      CCCCCCC - Convênio (7 digitos) -> Tabela de Conta Corrente
      0 - Identificador de Controle Básico (Fixo)
      AA - Exercicio Atual, formato 02  digitos
      MM - Mes Atual, formato 02 digitos
      99999 - Sequencia (5 digitos) -> Tabela de Conta Corrente
      *Tamanho Esperado: 17 Digitos.
      **Exemplo: 24885120130200001
  }

  qry := TSQLQuery.Create(Nil);
  try
    qry.SQLConnection := DM.SQLCON;
    qry.SQL.Add('SELECT CTCRA15NUMEROCONVENIO FROM CONTACORRENTE');
    qry.SQL.Add('WHERE CTCRICOD = :CTCRICOD');
    qry.ParamByName('CTCRICOD').AsInteger := aCodigoContaCorrente;

    try
      qry.Open;
    except
      on e: Exception do
        MessageDLG('Erro ao obter o código do convênio da conta corrente.',mtError, [mbOk],0);
    end;

    {Get em dados do convenio}
    if qry.eof then
    begin
      sConvenio := '0000000';
    end else
    begin
      sConvenio := Trim(qry.FieldByName('CTCRA15NUMEROCONVENIO').AsString);
    end;

    {Get em dados do exercio atual Mes e Ano}
    sAno := FormatDateTime('YY',Date);
    sMes := FormatDateTime('MM',Date);

    sSequencia := AtualizaRetornaSequencialContaCorrente(aCodigoContaCorrente);
    sSequencia := Zeros(sSequencia, 5, 'Dir');

    sNossoNumero := sConvenio + aIdUniversal + sAno + sMes + sSequencia;
    result := sNossoNumero;

  finally
    qry.Free;
  end;

end;

end.
