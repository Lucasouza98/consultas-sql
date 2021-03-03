DECLARE @salarioMaior SMALLINT
set @salarioMaior = 1 -- 1 AUMENTO DE SALARIO 2 sem AUMENTO

IF @salarioMaior = 2
BEGIN
select	nome,
		departamento,
		FORMAT(salario,'c','pt-br') as 'formato moeda',
		case
		when salario > 5000 then salario * 1.2
		end as salarioModificado
from [dbo].[funcionarios]
END
ELSE 
select	nome,
		departamento,
		FORMAT(salario,'c','pt-br') as 'formato moeda'
from [dbo].[funcionarios]