-- Criação do banco de dados do projeto final
create database projeto_livraria;

use projeto_livraria;

create table autor(
	autor_id int primary key auto_increment,
	nome varchar(100) not null,
	nacionalidade varchar(50),
	data_nascimento date
);

create table editora(
	editora_id int primary key auto_increment,
	nome varchar(100) not null,
	endereco varchar(200),
	telefone varchar(20),
	email varchar(100)
);

create table categoria(
	categoria_id int primary key auto_increment,
	nome varchar(50) not null
);




create table livro(
	isbn varchar(13) PRIMARY KEY,
	titulo varchar(200) not null,
	autor_id int not null,
	editora_id int not null,
	categoria_id int not null,
	ano_puplicacao year,
	preco decimal(10,2) not null,
	quantidade_estoque int not null,
	foreign key (autor_id) references autor(autor_id),
	foreign key (editora_id) references editora(editora_id),
	foreign key (categoria_id) references categoria(categoria_id)
);

create table cliente(
	cliente_id int primary key auto_increment,
	nome varchar(100) not null,
	endereco varchar(200),
	telefone varchar(20) not null,
	email varchar(100) not null
);

create table venda(
	venda_id int primary key auto_increment,
	cliente_id int not null,
	data_venda date not null,
	total decimal(10,2) not null,
	foreign key (cliente_id) references cliente(cliente_id)
);

create table item_venda(
	item_venda_id int primary key auto_increment,
	venda_id int not null,
	livro_id varchar(13),
	quantidade int not null,
	preco_unitario decimal(10,2) not null,
	foreign key (venda_id) references venda(venda_id),
	foreign key (livro_id) references livro(isbn)
);

create table forncedor(
	forncedor_id int primary key auto_increment,
	nome varchar(100) not null,
	endero varchar(200) not null,
	telefone varchar(20) not null,
	email varchar(100) not null
);

alter table forncedor
	rename to fornecedor;

alter table fornecedor
	change  fornecedor_id fornecedor_id int not null;

create table compra(
	compra_id int primary key auto_increment,
	fornecedor_id int not null,
	data_compra date not null,
	total decimal(10,2),
	foreign key (fornecedor_id) references fornecedor(fornecedor_id)
);

create table item_compra(
	item_compra_id int primary key auto_increment,
	compra_id int not null,
	livro_id varchar(13) not null,
	quantidade int not null,
	preco_unitario decimal(10,2) not null,
	foreign key (compra_id) references compra(compra_id),
	foreign key (livro_id) references livro(isbn)
);
















