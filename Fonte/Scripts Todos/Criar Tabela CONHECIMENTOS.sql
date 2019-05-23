create table CONHECIMENTOS (
IDCON               INTEGER NOT NULL,
CON_CFOP            VARCHAR(5) NOT NULL,
IND_OPER            CHAR(1) NOT NULL,
IND_EMIT            CHAR(1) NOT NULL,
COD_PART            INTEGER NOT NULL,
COD_MOD             CHAR(2) NOT NULL,
COD_SIT             CHAR(2) NOT NULL,
SERIE_DOC           VARCHAR(4) ,
SUBSERIE            VARCHAR(3) ,
NUM_DOC             INTEGER    NOT NULL,
CHV_CTE             VARCHAR(44),
DT_DOC              DATE NOT NULL,
DT_AQUIS            DATE NOT NULL,
TP_CT_E             INTEGER,
CHV_CTE_REF         VARCHAR(44),
VL_DOC              NUMERIC(15,2) NOT NULL,
VL_DESC             NUMERIC(15,2),
IND_FRT             CHAR(1) NOT NULL,
VL_SERV             NUMERIC(15,2) NOT NULL,
VL_BC_ICMS          NUMERIC(15,2),
RED_BC_ICMS         NUMERIC(15,2),
ALIQ_ICMS           NUMERIC(5,2),
CST_ICMS            VARCHAR(3),
VL_ICMS             NUMERIC(15,2),
VL_NAOTRIBUT        NUMERIC(15,2),
INFORMACAO          VARCHAR(256),
COD_CTA             VARCHAR(60),
PRIMARY KEY (IDCON)
);



