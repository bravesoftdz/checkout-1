CREATE TABLE PRODUCAOLOTE 
(
  PRLTA13ID                  CHAR(13) NOT NULL,
  PRODICOD                   INTEGER NOT NULL,
  PRLTICOD                   INTEGER NOT NULL,
  EMPRICOD                   INTEGER,
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  PRLTN2QTDE                 NUMERIC(15, 2),
  PRLTA60DESCR               CHAR(60),
  PRLTN2TEMPOTOTAL           NUMERIC(15, 2),
 PRIMARY KEY (PRLTA13ID)
);
