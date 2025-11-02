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