ALTER TABLE ORDEMSERVICO ADD teste NUMERIC(15,3);
commit work;
UPDATE ORDEMSERVICO SET teste = ORSEN3TOTAL;
commit work;
ALTER TABLE ORDEMSERVICO DROP ORSEN3TOTAL;
commit work;
ALTER TABLE ORDEMSERVICO ADD ORSEN3TOTAL NUMERIC(15,3);
commit work;
UPDATE ORDEMSERVICO SET ORSEN3TOTAL = teste;
commit work;
ALTER TABLE ORDEMSERVICO DROP teste;
commit work;


