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


