create table estuduantes(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(100) not null,
    fecha_nacimiento date not null,
    constraint estudiantes_pk primary key (cedula)
)

insert into estuduantes (cedula, nombre, apellido, email, fecha_nacimiento) values
('1734567890', 'Juan', 'Perez', 'juan@perez.com', '1995-05-15')

insert into estuduantes (cedula, nombre, apellido, email, fecha_nacimiento) values
('1234567890', 'Juan', 'Perez', 'juan@perez.com', '1995-05-15'),
('0987654321', 'Maria', 'Gomez', 'maria@gomez.es', '1996-08-22'),
('1122334455', 'Luis', 'Martinez', 'luis@martinez.wc', '1994-12-03'),
('5566778899', 'Ana', 'Lopez', 'ana@lopez.com', '1997-03-30'),
('6677889900', 'Carlos', 'Sanchez', 'carlos@sanchez.com', '1995-11-11'),
('7788990011', 'Sofia', 'Ramirez', 'sofia@ramirez.com', '1996-07-19'),
('8899001122', 'Diego', 'Torres', 'diego@torres.com', '1994-09-25'),
('9900112233', 'Elena', 'Flores', 'elena@florez.com', '1997-01-14');
select * from estuduantes;

-- crear un select que traiga el nombre y la cedula de los estudiantes
select nombre, cedula from estudiantes;

--crear un select que traiga los nombres de todos los estudiantes cuya cedula empiece con 17
select nombre from estudiantes
where cedula like '17%';

--crear un select que traiga los nombres completos de todos los estudiantes cuyo nombre empiece con a
select nombre, apellido from estudiantes
where nombre like 'A%';

--actualizar el apellido por Hernandez a todos los estudiantes que tengan una cedula que empiece por 17
update estuduantes set apellido = 'HERNANDEZ'
where cedula like '17%';


insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estuduantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');


select * from estuduantes

-- busquedas AND = &&  

select * from estuduantes
where nombre='Carlos' and nombre='Sofia' and nombre='diego'


--OR = ||

select * from estuduantes
where nombre ='Sofia' or nombre ='Carlos'  or nombre ='Diego'


--personas que se llamen Ana o Luis y que el apellido sea Martinez
select * from estuduantes 
where (nombre='Ana' or nombre='Luis') and apellido = 'Martinez'

/*seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con M o si su apellido
termina con z*/
select nombre, apellido from estuduantes
where nombre like 'M%' or apellido like '%z';

/*crear un select que traiga los nombres de todos los estudiantes que tengan un numero 32 y empiece con 18
en alguna parte de su cedula*/

select nombre from estuduantes
where cedula like '18%32%';

/* crear un select que traiga los nombres completos de todos los estudiantes cuya cedula termine
en 06 o empiece con 17 */
select nombre, apellido from estuduantes
where cedula like '%06' or cedula like '17%';



