CREATE TABLE PRCLHISTORICO 
(
  PCHTICOD                   INTEGER NOT NULL,
  PRCLA13ID                  CHAR(13),
  PRNEA13ID                  CHAR(13),
  VENDICOD                   INTEGER,
  PCHTDCADASTRO              TIMESTAMP,
  PCHTTHISTORICO             VARCHAR(5000),
  PCHTDPROXCONT              TIMESTAMP,
  PCHTA60CONTATO             CHAR(60),
  PCHTA60NOMVEND             CHAR(60),
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  EMPRICOD                   INTEGER,
  TERMICOD                   INTEGER,
 PRIMARY KEY (PCHTICOD)
);
