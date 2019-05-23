update operacaoestoque set opesa18campoimpfis = opesa18campoimp where opesa18campoimpfis is null;
update operacaoestoque set opesccalcicmsfis = opesccalcicms where opesccalcicmsfis is null;
update operacaoestoque set opesccalcipifis = opesccalcipi where opesccalcipifis is null;
update operacaoestoque set opesccalcsubst = 'N' where opesccalcsubst is null;
update operacaoestoque set opesccalcsubstfis = opesccalcsubst where opesccalcsubstfis is null;



