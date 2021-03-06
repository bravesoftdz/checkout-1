CREATE TABLE PRODUCAOATIVIDADE 
(
  PRATA13ID                  CHAR(13) NOT NULL,
  EMPRICOD                   INTEGER,
  PRATICOD                   INTEGER NOT NULL,
  PRATA60DESCR               CHAR(60),
  PRATN3GASTO                NUMERIC(15, 3),
  PRATINROFUNC               INTEGER,
  PRATN2GASTOFUNC            NUMERIC(15, 2),
  PRATN2CUSTOEQUIP           NUMERIC(15, 2),
  PRATN2TOTALATIV            NUMERIC(15, 2),
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  PRATN2TEMPOEXEC            NUMERIC(15, 2),
 PRIMARY KEY (PRATA13ID)
);
