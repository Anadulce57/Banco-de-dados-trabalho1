create schema e_commerce;
use e_commerce;

create table cliente(
id_cliente int,
nome varchar(150),
endereco varchar(200),
e_mail tinytext,
celular tinytext,
dt_nasc date,
primary key(id_cliente)
);

create table produtos(
id_produtos int,
nome tinytext,
preco decimal(10,2),
descricao mediumtext,
qt_est tinytext,
primary key(id_produtos)
);

create table pedidos(
id_pedidos int,
id_cliente int,
num_ped int UNIQUE,
dt_comp datetime,
vt decimal(15,2),
dt_ent date,
primary key(id_pedidos),
foreign key (id_cliente) references cliente(id_cliente)
);

create table list_it (
id_list_it int,
id_pedido int,
id_produto int,
quant int,
vu decimal(10,2),
vt decimal(15,2),
primary key(id_list_it),
foreign key(id_pedido) references pedidos(id_pedidos),
foreign key(id_produto) references produtos(id_produtos)
);
