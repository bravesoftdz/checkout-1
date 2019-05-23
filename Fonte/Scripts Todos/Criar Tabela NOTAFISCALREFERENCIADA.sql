
CREATE TABLE NOTAFISCALREFERENCIADA (
    NOFIA13ID           CHAR(13) NOT NULL,
    NFREFID             INTEGER NOT NULL,
    TIPO                CHAR(1) NOT NULL,
    CHAVEACESSO         CHAR(44),
    SERIA5COD           VARCHAR(5),
    NUMERO              VARCHAR(15),
    MODELO              CHAR(2),
    UF                  CHAR(2),
    DATAEMISSAO         DATE,
    TIPO_DOCUMENTO      CHAR(1),
    CNPJ_CPF            VARCHAR(14),
    NUMERO_ECF          INTEGER,
    NUMERO_COO          INTEGER,
    MODELO_ECF          CHAR(2),
    NUMERO_SERIE        VARCHAR(50),
    IE                  VARCHAR(20),
    PRIMARY KEY (NOFIA13ID,  NFREFID)
);



