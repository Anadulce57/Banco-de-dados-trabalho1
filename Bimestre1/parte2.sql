use e_commerce;

insert into cliente(id_cliente, nome, endereco, e_mail, celular, dt_nasc) VALUES(1, 'Pedro Ribeiro', 'Rua São Bento', 'rib@hotmail.com', '999999999', '1975-02-15');
insert into cliente(id_cliente, nome, endereco, e_mail, celular, dt_nasc) VALUES(2, 'Nando Moura','Rua Vinicius de Moraes', 'moura@hotmail.com', '919191919', '1975-02-23');

insert into produtos(id_produtos, nome, preco, descricao, qt_est) VALUES(1, 'O Silmarillion', 41.60, 'O Silmarillion é o relato dos Dias Antigos da Primeira Era do mundo criado por J.R.R. Tolkien.', '1000');
insert into produtos(id_produtos, nome, preco, descricao, qt_est) VALUES(2, 'Beren e Lúthien', 56.99, 'Citada em O Senhor dos Anéis, a principal história contada em O Silmarillion narra o romance e a jornada épica de Beren, um homem mortal, e Lúthien, uma princesa élfica.', '1100');

insert into pedidos(id_pedidos, num_ped, dt_comp, vt, dt_ent) VALUES(1, 235, '2024-03-28', 45.79, '2024-04-01');
insert into pedidos(id_pedidos, num_ped, dt_comp, vt, dt_ent) VALUES(2, 240, '2024-03-25', 61.90, '2024-02-28');

insert into list_it (id_list_it, quant, vu, vt) VALUES(1, 1, 41.60, 45.79);
insert into list_it (id_list_it, quant, vu, vt) VALUES(2, 1, 56.99, 61.90); 

UPDATE cliente
SET nome = 'Pedro Ribeiro do Nascimento'
WHERE id_cliente = 1;
UPDATE cliente
SET nome = 'Fernando Moura'
WHERE id_cliente = 2;
UPDATE cliente
SET endereco = 'Rua São Bento - 231'
WHERE id_cliente = 1;
UPDATE cliente
SET endereco = 'Rua Vinícius de Moraes - 340'
WHERE id_cliente = 2;

DELETE FROM list_it WHERE id_list_it = 1;
DELETE FROM list_it WHERE id_list_it = 2;

select * from cliente