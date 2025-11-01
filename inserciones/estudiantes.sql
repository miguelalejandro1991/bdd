create table estuduantes(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(100) not null,
    fecha_nacimiento date not null,
    constraint estudiantes_pk primary key (cedula)
)