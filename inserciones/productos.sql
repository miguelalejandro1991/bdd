create table productos (
    codigo int not null,
    nombre varchar (100) not null,
    descripcion decimal(200) not null,
    precio money not null,
    stock int not null,
    constraint productos_pk primary key (codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('01','tabaco','256', '3.50','20')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('02','tequila','257', '18.50','22')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('03','norteño','258', '10.00','21')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('04','canijo rojo','259', '18.50','20')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('05','espuela','260', '18.50','25')

select * from productos