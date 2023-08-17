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

--Exibir mudando os nomes dos campos
select
	city as cidade,
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
	city like '%a' --%a=termina com a / %a% tem a / a% começa com a
	and country_id=44;
