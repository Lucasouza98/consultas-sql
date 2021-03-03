select getdate() -  -- puxa o horário atual (data e hora)

select DATEDIFF(YEAR,'1998-03-09', getdate()) -- puxa a diferença entre as datas

select DATEADD(month, -3,getdate()) -- adiciona ou subtrai as datas

select DATEPART(WEEKDAY,'1998-01-31') -- função para saber em qual parte da semana estamos