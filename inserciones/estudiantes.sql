create table estuduantes(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(100) not null,
    fecha_nacimiento date not null,
    constraint estudiantes_pk primary key (cedula)
)

-- crea 8 inserciones de ejemplo
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