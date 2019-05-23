CREATE TABLE CONFIGAGENDAPROF (
  CFAGICOD INTEGER NOT NULL,
  PROFICOD INTEGER,
  USUAICOD INTEGER,
  CFAGIINTERVALO INTEGER,
  CFAGCDOMINGO CHAR(1),
  CFAGCSEGUNDA CHAR(1),
  CFAGCTERCA CHAR(1),
  CFAGCQUARTA CHAR(1),
  CFAGCQUINTA CHAR(1),
  CFAGCSEXTA CHAR(1),
  CFAGCSABADO CHAR(1),
  CFAGDFERIAINI TIMESTAMP,
  CFAGDFERIAFIM TIMESTAMP,
  CFAGDDOMINI TIMESTAMP,
  CFAGDDOMFIM TIMESTAMP,
  CFAGDSEGINI TIMESTAMP,
  CFAGDSEGFIM TIMESTAMP,
  CFAGDTERINI TIMESTAMP,
  CFAGDTERFIM TIMESTAMP,
  CFAGDQUAINI TIMESTAMP,
  CFAGDQUAFIM TIMESTAMP,
  CFAGDQUIINI TIMESTAMP,
  CFAGDQUIFIM TIMESTAMP,
  CFAGDSEXINI TIMESTAMP,
  CFAGDSEXFIM TIMESTAMP,
  CFAGDSABINI TIMESTAMP,
  CFAGDSABFIM TIMESTAMP
)