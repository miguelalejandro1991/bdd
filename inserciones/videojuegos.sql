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