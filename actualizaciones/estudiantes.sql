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

