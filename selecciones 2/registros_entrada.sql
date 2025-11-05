create table registros_entrada(
    codigo_registro int not null,
    cedula_empleado char(10) not null,
    fecha date not null,
    hora time not null,
    constraint registros_entrada_pk primary key (codigo_registro)
)


insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora) values
(1, '1234567890', '2023-01-01', '08:00:00'),
(2, '0987654321', '2023-01-01', '08:15:00'),
(3, '1122334455', '2023-01-01', '08:30:00'),
(4, '5566778899', '2023-01-01', '08:45:00'),
(5, '6677889900', '2023-01-01', '09:00:00'),
(6, '7788990011', '2023-01-01', '09:15:00'),
(7, '8899001122', '2023-01-01', '09:30:00'),
(8, '9900112233', '2023-01-01', '09:45:00'),
(9, '1234567890', '2023-01-02', '08:05:00'),
(10, '0987654321', '2023-01-02', '08:20:00');
select * from registros_entrada;

-- crear un select que traiga todas las cedulas de empleados, fecha y hora de los registros de entrada 
select cedula_empleado, fecha, hora from registros_entrada;

-- crear un select que traiga los registros de entrada que esten entre las 7:00 y las 14:00
select * from registros_entrada
where hora between '07:00:00' and '14:00:00';

--seleccionar los registros de entrada que tengan horas superiores a las 8:00
select * from registros_entrada
where hora > '08:00:00';

-- actualizar todas las cedulas de registro de entrada pot "082345679" para los registros del mes de agosto
update registros_entrada set cedula_empleado ='082345679'
where fecha between '2023-08-01' and '2023-08-31';

update registros_entrada set fecha = '2023-08-15'
where hora < '09:00:00';


insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');
