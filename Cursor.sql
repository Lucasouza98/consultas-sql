DECLARE @nome varchar(50),
		@email varchar(50),
		@sexo varchar(10),
		@cargo varchar(30);

-- criar cursor --
DECLARE cr_NomeCompleto CURSOR
FOR SELECT top 50 nome,email, sexo, cargo from funcionarios where sexo = 'Feminino'

-- abrindo o cursor --
open cr_NomeCompleto

-- selecionar os dados --
fetch next from cr_NomeCompleto
into @nome,@email,@sexo,@cargo

--select @nome,@email,@sexo,@cargo;

-- interação entre os dados --
while @@FETCH_STATUS = 0
BEGIN
	--select @nome + ' ' + @email + ' ' + @sexo + ' ' + @cargo
		select	@nome as 'Nome',
				@email as 'E-mail',
				@sexo as 'Sexo',
				@cargo as 'Cargo';

	-- PEGAR OS PRÓXIMOS DADOS --
	fetch next from cr_NomeCompleto
	into @nome,@email,@sexo,@cargo
END




-- fechando e desalocando da memoria --
close cr_NomeCompleto
deallocate cr_NomeCompleto
