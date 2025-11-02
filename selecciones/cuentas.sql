create table cuentas (
    numero_cuenta char (5) not null,
    cedula_propietario char (10) not null,
    fecha_creacion date not null,
    saldo money not null,
    constraint cuentas_pk primary key (numero_cuenta)
)


insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) values
('00001', '1234567890', '2020-01-15', 1500.00),
('00002', '0987654321', '2020-02-20', 2500.50),
('00003', '1122334455', '2020-03-10', 3000.75),
('00004', '5566778899', '2020-04-05', 4500.00),
('00005', '6677889900', '2020-05-25', 500.25),
('00006', '7788990011', '2020-06-30', 750.00),
('00007', '8899001122', '2020-07-15', 1200.00),
('00008', '9900112233', '2020-08-22', 3300.40),
('00009', '1011121314', '2020-09-18', 4100.60),
('00010', '1213141516', '2020-10-29', 2900.80);

select * from cuentas;

-- crear un select que traiga el numero de cuenta y el saldo de toda las cuentas
select numero_cuenta, saldo from cuentas;

--crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes 
select * from cuentas
where fecha_creacion 
between '01/09/2025' and '01/11/2025';

--crear un select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 meses antes
select numero_cuenta, saldo from cuentas
where fecha_creacion 
between '01/09/2025' and '01/11/2025';


