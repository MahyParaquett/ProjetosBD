--Exibir a entidade(tabela) toda
select
	*
from
	film;

--Exibir um campo(coluna) de uma entidade
select
	city
from
	city;

--Exibir apelidando os atributos da coluna (só funciona em tempo de execução)
select
	city as cidade,--posso escrever entre "" para usar maiúculo, acentos ou espaço
	country_id as id_pais
from
	city;

--Exibir a entidade com uma condição específica
select
	*
from
	city
where
	country_id = 44

--Exibir a entidade com uma condição de semelhança ex.: primeira letra igual
select
	*
from
	city
where
	city like '%a';

--Exibir a entidade com duas condições
select
	*
from
	city
where
	country_id = 44
	and city like '%a%';
