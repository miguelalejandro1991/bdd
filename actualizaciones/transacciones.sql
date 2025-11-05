create table transacciones(
    codigo int not null,
    numero_cuenta char(5) not null,
    monto money not null,
    tipo char(1) not null,
    fecha date not null,
    hora time not null,
    constraint transacciones_pk primary key (codigo)
)


insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) values
(1, '00001', 500.00, 'C', '2023-01-10', '10:00:00'),
(2, '00002', 200.50, 'D', '2023-01-11', '11:15:00'),
(3, '00003', 300.75, 'C', '2023-01-12', '12:30:00'),
(4, '00004', 400.00, 'D', '2023-01-13', '13:45:00'),
(5, '00005', 100.25, 'C', '2023-01-14', '14:00:00'),
(6, '00006', 250.00, 'D', '2023-01-15', '15:15:00'),
(7, '00007', 600.00, 'C', '2023-01-16', '16:30:00'),
(8, '00008', 350.40, 'D', '2023-01-17', '17:45:00'),
(9, '00009', 450.60, 'C', '2023-01-18', '18:00:00'),
(10, '00010', 150.80, 'D', '2023-01-19', '19:15:00');
select * from transacciones;

-- seleccionar todas las transacciones realizadas con un tipo D
select * from transacciones
where tipo = 'D';

-- seleccionar las transacciones con montos entre 200 y 2000
select * from transacciones
where monto between 200::money and 2000::money;  --se realiza la conversion a tipo money

-- seleccionar el codigo, monto, tipo y fecha de las transacciones que tengan una fecha diferente de null
select codigo, monto, tipo, fecha from transacciones
where fecha is not null;

--actualizar tipo de todos los registros que tengan una transaccion mayor a 100 y menor que 500, 
--que se hayan llevado a cabo el mes de septiembre con horas entre 14:00 y 20:00, y poner T

update transacciones set tipo = 'T'
where monto >100::money and monto <500::money
and fecha between '2023-09-01' and '2023-09-30'



insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C', '02/11/2025' , '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');