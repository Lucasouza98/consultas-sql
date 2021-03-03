CREATE PROCEDURE sp_buscaInformacoesFuncionario(
	@idFuncionario int
)
as
select * from funcionarios 
where idFuncionario = @idFuncionario

exec sp_buscaInformacoesFuncionario 1