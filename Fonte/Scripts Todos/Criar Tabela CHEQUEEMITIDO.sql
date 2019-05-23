
CREATE TABLE CHEQUEEMITIDO (
       CQEMA13ID            CHAR(13) NOT NULL, 
       EMPRICOD             INTEGER NOT NULL,
       CQEMICOD             INTEGER NOT NULL,
       CTCRICOD             INTEGER,
       CQEMDEMIS            DATE,
       CQEMDVENC            DATE,
       CQEMN3VLR            NUMERIC(15,3),
       CQEMA60FAVORECIDO    CHAR(60),
       CQEMINROCHEQUE       INTEGER, 
       CQEMCCRUZADO         CHAR(01),
       CQEMA60HIST          CHAR(60),
       ALINICOD             INTEGER, 
       REGISTRO             DATE,
       PENDENTE             CHAR(1),

       PRIMARY KEY (CQEMA13ID,EMPRICOD,CQEMICOD)
);

