CREATE TABLE TRANSFERENCIA 
(
  TRFEA13ID	CHAR(13) NOT NULL,
  EMPRICOD	INTEGER,
  TERMICOD	INTEGER,
  TRFEICOD	INTEGER,
  TRFEIEMPRDEST	INTEGER,
  TRFEDEMISSAO	TIMESTAMP,
  REGISTRO	TIMESTAMP,
  PENDENTE	CHAR(1),
  TRFECRECEBIDO	CHAR(1),
  TRFEDRECEBIMENTO	TIMESTAMP,
  TRFEA30USUENVIO	CHAR(30),
  TRFEA30USURECEB	CHAR(30),
 PRIMARY KEY (TRFEA13ID)
);