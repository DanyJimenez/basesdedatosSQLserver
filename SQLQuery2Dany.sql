create database almacen;
create table cliente(
	id_cli int primary key,
	nom_cli varchar(30),
	ape_cli varchar(30),
	dir_cli varchar(100),
	dep_cli varchar(20),
	mes_cum_cli varchar(10)
);
create table articulo(
	id_art int primary key identity(1,1),
	tit_art varchar(100),
	aut_art varchar(100),
	edi_art varchar(100),
	prec_art int
);
create table pedido(
	id_ped int primary key identity(1,1),
	id_cli_ped int foreign key(id_cli_ped) references cliente(id_cli),
	fec_ped date,
	val_ped int
);
create table Artículoxpedido(
	id_ped_artped int foreign key(id_ped_artped ) references pedido(id_ped),
	id_art_artped int foreign key(id_art_artped) references articulo(id_art),
	can_art_artped int,
	val_ven_art_artped int
);
insert into cliente(id_cli, nom_cli, ape_cli, dir_cli, dep_cli, mes_cum_cli)
values
('63502718', 'Maritza', 'Rojas', 'Calle 34 No.14-45', 'Santander', 'Abril'),
('13890234', 'Roger', 'Ariza', 'Cra 30 No.13-45', 'Antioquia', 'Junio'),
('77191956', 'Juan Carlos', 'Arenas', 'Diagonal 23 No. 12-34 apto 101', 'Valle', 'Marzo'),
('1098765789', 'Catalina', 'Zapata', 'Av. El Libertador No.30-14', 'Cauca', 'Marzo')

insert into articulo(id_art, tit_art, aut_art, edi_art, prec_art)
values
('1', 'Redes cisco', 'Ernesto Arigasello', 'Alfaomega -Rama', '60000'),
('2', 'Facebook y Twitter para adultos', 'Veloso Claudio', 'Alfaomega', '52000'),
('3', '', '', '', ''),
('4', '', '', '', '')