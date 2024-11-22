--Creates-------------------------------------------------

create table logins(
id_login serial primary key,
usuario varchar(300) not null,
senha bytea not null
);

create table clientes(
id_cliente serial primary key,
nome varchar(300) not null,
email varchar(150) not null
);

create table produtos(
id_produto serial primary key,
nome varchar(150) not null,
preco numeric not null
);

create table pedidos(
id_pedido serial primary key,
id_login int not null references logins(id_login),
id_cliente int not null references clientes(id_cliente),
id_produto int not null references produtos(id_produto),
valor_total numeric not null,
mesa int not null,
hora_pedido time not null,
data_pedido date not null
);

--Inserts--------------------------------------------------

insert into clientes(nome, email)
values 
('Otto', 'Otto@email.com'),
('Luiz', 'Luiz@gmail.com'),
('Victor', 'Victor@hotmail.com'),
('Marcos', 'Marcos@opera.com.br'),
('Antonio', 'Antonio@webmail.com.br');

insert into produtos(nome, preco)
values 
('Frango Massivo', 20.50),
('Steak Destruidor', 35.90),
('Vegan Smash', 27.80),
('Jatoba 500ml', 7.00),
('Suco de Laranja', 6.00);

insert into pedidos(id_cliente, id_login, id_produto, valor_total, mesa, hora_pedido, data_pedido)
values 
(1, 1, 2, 35.90, 2, '1900', '20240312'),
(2, 1, 1, 20.50, 4, '1800', '20240313'),
(3, 1, 5, 6.00, 1, '1935', '20240315'),
(4, 1, 3, 27.80, 2, '1744', '20240412'),
(3, 1, 4, 7.00, 3, '2110', '20240418');

--Selects--------------------------------------------------

select * from logins;
select * from clientes;
select * from produtos;
select * from pedidos;
select  * from pedidos where id_produto = 1;
select * from pedidos where mesa = 2;