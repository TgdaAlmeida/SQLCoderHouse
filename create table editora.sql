create table editora
(
   id integer(11) primary key NOT NULL,
   nome varchar(50) NOT NULL,
   endereco varchar(50) NOT NULL
);

create table autor 
(
  id integer(11) primary key NOT NULL,
  nome varchar(50) NOT NULL,
  idade integer(3) NOT NULL
);

create table livro 
(
  id integer(11) primary key NOT NULL,
  fk_autor integer(11) NOT NULL,
  fk_editora integer(11) NULL,
  titulo varchar(50) NOT NULL,
  valor float NOT NULL,
  foreign key(fk_autor) references autor(id),
  foreign key(fk_editora) references editora(id)
);