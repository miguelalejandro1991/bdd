create table videojuegos(
    codigo int not null,
    nombre varchar(100) not null,
    descripcion varchar(255),
    valoracion int,
    constraint videojuegos_pk primary key (codigo)
)