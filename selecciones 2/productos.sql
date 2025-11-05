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


INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (9, 'cerveza', 330.00, 1.80, 50);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (10, 'agua', 500.00, 0.90, 100);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (11, 'galletas', 12.00, 2.50, 30);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (12, 'papas fritas', 150.00, 1.20, 40);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (13, 'energizante', 250.00, 2.00, 25);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (14, 'jugo', 1000.00, 1.75, 60);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (15, 'pan', 500.00, 1.50, 35);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (16, 'leche', 1000.00, 1.30, 45);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (17, 'arroz', 1000.00, 2.10, 80);
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES (18, 'aceite', 900.00, 3.00, 20);