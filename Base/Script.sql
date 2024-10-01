create database proyecto22025;

use proyecto22025;

create table socios(
id_socio int not null auto_increment,
nombre varchar(30),
apellido varchar(30),
dni int not null unique,
email varchar(30),
fecha_alta date,
estado boolean not null,
primary key(id_socio)
);

select * from socios;

insert into socios values (1,'Brenda','Tosini',40490421,'brendatosini31@gmail.com','2022,03,15',1);
insert into socios values (2,'Laura','Hernandez',30490421,'laura@gmail.com',now(),1);
insert into socios values (3,'Carlos','Rodriguez',17254421,'carlos@gmail.com','2022,01,20',1);
insert into socios values (4,'Pedro','Sanchez',36988314,'pedro@gmail.com','2022,06,03',1);

alter table socios auto_increment = 1;

alter table socios
drop fecha_alta


alter table socios change email mail varchar(30);
