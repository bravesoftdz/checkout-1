ALTER TABLE PRODUTO ADD PRODN3DOLARCUSTO  NUMERIC(15,3) DEFAULT 0;
ALTER TABLE PRODUTO ADD PRODN3DOLARCOMPRA NUMERIC(15,3) DEFAULT 0;
ALTER TABLE PRODUTO ADD PRODN3DOLARVENDA  NUMERIC(15,3) DEFAULT 0;
UPDATE PRODUTO SET PRODN3DOLARCUSTO  = 0 WHERE PRODN3DOLARCUSTO  IS NULL;
UPDATE PRODUTO SET PRODN3DOLARCOMPRA = 0 WHERE PRODN3DOLARCOMPRA IS NULL;
UPDATE PRODUTO SET PRODN3DOLARVENDA  = 0 WHERE PRODN3DOLARVENDA  IS NULL;