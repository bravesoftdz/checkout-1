CREATE TABLE ORDEMPRODUCAO 
(
  ORPRA13ID                  CHAR(13) NOT NULL,
  ORPRICOD                   INTEGER,
  EMPRICOD                   INTEGER,
  ORPRNQTDETOTAL             NUMERIC(15, 2),
  ORPRDINICIO                TIMESTAMP,
  ORPRDPREVISAO              TIMESTAMP,
  ORPRDTERMINO               TIMESTAMP,
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  ORPRCSTATUS                CHAR(1),
 PRIMARY KEY (ORPRA13ID)
);
