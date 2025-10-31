create table productos (
    codigo int not null,
    nombre varchar (100) not null,
    descripcion decimal(200) not null,
    precio money not null,
    stock int not null,
    constraint productos_pk primary key (codigo)
)