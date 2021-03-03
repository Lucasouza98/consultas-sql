select 
	departamento,
	soma,
	media,
	Posição
from (
select 
		departamento, 
		sum(salario) as soma,
		avg(salario) as media,
		RANK() OVER(order by avg(salario)) as Posição
from funcionarios
group by departamento
) Dados
where Posição <= 100