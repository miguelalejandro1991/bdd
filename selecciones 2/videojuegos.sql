create table videojuegos(
    codigo int not null,
    nombre varchar(100) not null,
    descripcion varchar(255),
    valoracion int,
    constraint videojuegos_pk primary key (codigo)
)


insert into videojuegos (codigo, nombre, descripcion, valoracion) values
(1, 'The Legend of Zelda: Breath of the Wild', 'An open-world adventure game set in the land of Hyrule.', 10),
(2, 'God of War', 'An action-adventure game following Kratos and his son Atreus on a journey through Norse mythology.', 9),
(3, 'Red Dead Redemption 2', 'A Western-themed action-adventure game set in an open world.', 10),
(4, 'Minecraft', 'A sandbox game that allows players to build and explore virtual worlds made of blocks.', 8),
(5, 'Among Us', 'A multiplayer party game where players work together to complete tasks while trying to identify impostors.', 7);
select * from videojuegos;

insert into videojuegos (codigo,nombre) values
(6, 'dota'),
(7, 'the last of us'),
(8, 'resident evil');
select * from videojuegos;

-- seleccionar todos los videojuegos con un nombre que comience con "c"
select * from videojuegos
where nombre like 'c%';

-- seleccionar videojuegos con una valoracion entre 9 y 10 
select * from videojuegos
where valoracion between 9 and 10;

--seleccionar videojuegos con una descripcion null
select * from videojuegos
where descripcion is null;

-- actualizar todas las descripciones de los videojuegos cuya valoracion sea mayor que 9 por "mejor puntuado"
update videojuegos set descripcion = 'mejor puntuado'
where valoracion > 9;

update videojuegos set valoracion = 10
where codigo =8



insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);
