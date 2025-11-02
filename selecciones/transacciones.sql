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