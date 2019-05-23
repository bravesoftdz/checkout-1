CREATE TABLE LOGUSUARIO (
  LOGUA13ID CHAR(13) NOT NULL,
  EMPRICOD  INTEGER NOT NULL,
  LOGUICOD  INTEGER NOT NULL,
  LOGUDLANC TIMESTAMP,
  LOGUA30TIPO   VARCHAR(30),
  LOGUA30MODULO VARCHAR(30),
  LOGUA60COMPUT VARCHAR(60),
  LOGUA255TELA VARCHAR(255),
  LOGUA60TABELA VARCHAR(60),
  LOGUA60CHAVE CHAR(80),
  USUAICOD  INTEGER,
  PENDENTE  VARCHAR(01),
  REGISTRO  TIMESTAMP,
  LOGUBHIST VARCHAR(4096)
);