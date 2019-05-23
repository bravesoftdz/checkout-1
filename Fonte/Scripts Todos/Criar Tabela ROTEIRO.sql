create table ROTEIRO (
ROTEICOD integer not null,
PALMICOD  INTEGER,
ROTAICOD integer,
VENDICOD integer,
CLIEA13ID char(13),
ROTEINROSEMANA Integer,
ROTEINRODIASEMANA Integer,
ROTEISEQDIARIA Integer,
REGISTRO timestamp,
PENDENTE char(1),
primary key (ROTEICOD)
)

