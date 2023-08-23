--Modelo fisico
create database trabalhoind

create table delegacia (
del_cd_id serial,
del_tx_delegado varchar(50),
del_tx_policial varchar(50),
del_int_sala integer,
del_dt_data date,
primary key (del_cd_id));

create table denuncia (
den_cd_id serial,
den_tx_vitima varchar(50),
den_tx_agressor varchar(50),
den_tx_local varchar(50),
den_dt_dataCaso date,
fk_del_cd_id integer,
primary key(den_cd_id),
foreign key (fk_del_cd_id) references delegacia(del_cd_id)
);

--Inserindo registros
insert into delegacia(del_tx_delegado, del_tx_policial, del_int_sala, del_dt_data)
 values
 ('Paulo', 'César','1', '20230820'),
 ('Flavia', 'César','2', '20230801'),
 ('Flavia', 'João','1', '20230509'),
 ('Paulo', 'Alfredo','3', '20230101'),
 ('Flavia', 'César','1', '20230615');


insert into denuncia (den_tx_vitima, den_tx_agressor, den_tx_local, den_dt_dataCaso,fk_del_cd_id)  
 values
 ('Maria', 'Robson','Rua', '20230807',1),
 ('Joana', 'João','Casa', '20230701',2),
 ('Diana', 'Ricardo','Casa', '20230502',3),
 ('Juliana', 'Luis','Rua', '20230107',4),
 ('Fernanda', 'Zé','Casa', '20230615',5);

--Consultas
--selecionar os registros onde a delegada Flavia homologou, 
--apresentando em ordem crescente das datas
select * from delegacia d
where del_tx_delegado = 'Flavia'
order by d.del_dt_data asc;

--selecionar os registros onde o dataCaso e a data da ida a delegacia foi o mesmo
select * from delegacia d 
inner join denuncia dn
on d.del_dt_data = dn.den_dt_dataCaso;

--apresentar quantos casos de aconteceram em casa e quanto aconteceram na rua
select count(den_tx_local), den_tx_local
from denuncia
group by den_tx_local;