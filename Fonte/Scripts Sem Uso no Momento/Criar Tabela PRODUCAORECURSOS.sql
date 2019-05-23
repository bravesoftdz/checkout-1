CREATE TABLE PRODUCAORECURSOS 
(
  PRREA13ID                  CHAR(13) NOT NULL,
  PRREICOD                   INTEGER NOT NULL,
  PRREA60DESCR               CHAR(60),
  PRREN2VALOR                NUMERIC(15, 3),
  PRRECTIPOMEDIDA            CHAR(1),
  PENDENTE                   CHAR(1),
  REGISTRO                   TIMESTAMP,
  EMPRICOD                   INTEGER,
  UNIDICOD                   INTEGER,
 PRIMARY KEY (PRREA13ID)
);
