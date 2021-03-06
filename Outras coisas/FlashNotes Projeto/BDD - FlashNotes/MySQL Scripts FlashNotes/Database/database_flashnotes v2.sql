create database flashnotes;
use flashnotes;
create table usuario(
	codigo_usuario int not null auto_increment,
    e_mail varchar(50) not null,
    username varchar(20) not null,
    data_nascimento date not null,
    senha varchar(12) not null,
    primeiro_nome varchar(20) not null,
    ultimo_nome varchar(20) not null,
    primary key(codigo_usuario, e_mail)
    ) engine=innodb;
	ALTER TABLE usuario AUTO_INCREMENT=1;
create table flashcard(
	codigo_flashcard int not null auto_increment,
    codigo_usuario int not null,
    nome_flashcard varchar(30) not null,
    frente_flashcard mediumtext not null,
    verso_flashcard mediumtext not null,
    autor_flashcard varchar(20) not null,
    categoria_flashcard varchar(25) not null,
    data_criacao datetime not null,
    imagem_flashcard varchar(100) null,
    primary key(codigo_flashcard, codigo_usuario)
    ) engine=innodb;
    ALTER TABLE flashcard
	add foreign key (codigo_usuario)
    references usuario(codigo_usuario);
    ALTER TABLE flashcard AUTO_INCREMENT=1;
    
create table edita(
	data_edicao datetime,
    codigo_flashcard int not null,
	codigo_usuario int not null,
	primary key (codigo_flashcard, codigo_usuario)
    ) engine=innodb;
    ALTER TABLE edita
    add foreign key (codigo_usuario)
    references usuario(codigo_usuario);
    ALTER TABLE edita
    add foreign key (codigo_flashcard)
    references flashcard(codigo_flashcard);

select *
from usuario;
select *
from flashcard;