create database ecommerce;
use ecommerce;

create table clientes(
	id_clientes int auto_increment primary key,
    Fname varchar(45) not null,
    Lname varchar(45) not null,
    id_tipo enum('CPF', 'CNPJ') not null,
    num_cpf_cnpj varchar(14) not null,
    endereço varchar(255),
    constraint unique_cpf_cnpj unique (nr_cpf_cnpj)
);
alter table clientes auto_increment=1;

create table tbl_produtos(
	id_produto int auto_increment primary key,
    Pname varchar(255) not null,
    classification_kids bool default false,
    category enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
        avaliação float default 0,
        size varchar(10)
);
alter table tbl_produtos auto_increment=1;

create table forma_pagamento(
	id_cliente int,
    id_forma_pagamento int,
    id_forma_pagamento enum('Boleto', 'Cartao', 'Dois Cartoes'),
    primary key (cd_cliente, cd_forma_pagamento)
);


create table tbl_pedidos(
	id_pedido int auto_increment primary key,
    id_cliente int,
    id_status enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    id_obs varchar(255),
    vl_frete float default 0,
    id_forma_pagamento int,
    constraint fk_pedidos_cliente foreign key (id_cliente) references clientes(id_cliente)
		on update cascade
);
alter table pedidos auto_increment=1;

create table vendedores(
	id_vendedor int auto_increment primary key,
    id_vendedor varchar(255) not null,
    id_regiao varchar(45),
    num_cpf_cnpj varchar(14) not null,
    constraint unique_cpf_cnpj unique (num_cpf_cnpj)
);
alter table vendedores auto_increment=1;


create table estoque(
	id_estoque int auto_increment primary key,
    id_local varchar(45) not null,
    qtd_quantidade int default 0
);
alter table estoque auto_increment=1;

create table fornecedor(
	id_fornecedor int auto_increment primary key,
    id_empresa varchar(50) not null,
    id_cnpj char(14) not null,
    num_telefone char(11),
    constraint unique_forn unique (nr_cnpj)
);
alter table fornecedor auto_increment=1;

create table produto_vendedor(
	id_vendedor int,
    id_produto int,
    qtd_quantidade int not null,
    primary key (id_vendedor, id_produto),
    constraint fk_produto_vendedor foreign key (id_vendedor) references vendedores(id_vendedor),
    constraint fk_produto_produto foreign key (id_produto) references produtos(id_produto)
);

create table produto_pedido(
	id_pedido int,
    id_produto int,
	qtd_quantidade int default 1,
    id_status enum('Cancelado','Confirmado','Em processamento') not null,
    primary key (id_produto, id_pedido),
    constraint fk_produto_pedido foreign key (id_pedido) references pedidos(id_pedido),
    constraint fk_produto_produtos foreign key (id_produto) references produtos(id_produto)    
);

create table produto_estoque(
	id_estoque int,
    id_produto int,
    id_local varchar(45) not null,
    primary key (id_estoque, id_produto),
    constraint fk_produto_estoque foreign key (id_estoque) references estoque(id_estoque),
    constraint fk_produtos_produto foreign key (id_produto) references produtos(id_produto)
);

