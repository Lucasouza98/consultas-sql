CREATE TABLE #tmp_funcionarios(
	nome varchar(50),
	idade int,
	sexo char(1)
)

select * 
into tmp_departamentos
from departamentos