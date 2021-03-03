select 
	departamento, 
	format(sum(salario),'c','pt-br') as 'Gasto por departamento'
from funcionarios
group by departamento