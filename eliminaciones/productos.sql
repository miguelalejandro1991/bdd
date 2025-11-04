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

-- Seleccionar los productos cuyo nombre empiece por la letra 'q'
select * from productos
where nombre like 'q%'

-- seleccionar los productos con una descripcion null
select * from productos
where descripcion is null

-- seleccionar los productos con precio entre 2 y 3
SELECT * FROM productos
WHERE precio BETWEEN 2::money AND 3::money;  --se realiza la conversion a tipo money


-- actualizar el stock a 0 en todos los productos donde la descripcion sea null
update productos set stock =0
where descripcion is null;

-- ELIMINAR TODOS LOS PRODUCTOS DONDE LA DESCRIPCION SEA NULL
delete from productos
where descripcion is null;



