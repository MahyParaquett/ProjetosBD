--Modelo fisico
create database trabalhoInd

create table denuncia (
den_cd_id serial,
den_tx_vitima varchar(50),
den_tx_agressor varchar(50),
den_tx_local varchar(50),
den_dt_dataCaso date,
primary key(den_cd_id)
);
create table delegacia (
del_cd_id serial,
del_tx_delegado varchar(50),
del_tx_policial varchar(50),
del_int_sala integer,
del_dt_data date,
fk_den_cd_id integer,
primary key (del_cd_id),
foreign key (fk_den_cd_id) references denuncia(den_cd_id)
);

--Inserindo registros
insert into delegacia(delegado, policial,sala, data)
 values
 ('Paulo', 'César','1', '20230820'),
 ('Flavia', 'César','2', '20230801'),
 ('Flavia', 'João','1', '20230509'),
 ('Paulo', 'Alfredo','3', '20230101'),
 ('Flavia', 'César','1', '20230615');

insert into denuncia (vitima, agressor,local, datacaso)  
 values
 ('Maria', 'Robson','Rua', '20230807'),
 ('Joana', 'João','Casa', '20230701'),
 ('Diana', 'Ricardo','Casa', '20230502'),
 ('Juliana', 'Luis','Rua', '20230107'),
 ('Fernanda', 'Zé','Casa', '20230615');











