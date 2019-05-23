CREATE TABLE ORDEMPRODUCAOITEM 
(
  OPITICOD                   INTEGER NOT NULL,
  ORPRA13ID                  CHAR(13),
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  PRLTA13ID                  CHAR(13),
 PRIMARY KEY (OPITICOD)
);
