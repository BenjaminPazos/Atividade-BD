create database Cinema;
use Cinema;

create table Ator
(
codAtor varchar(3) primary key,
nomeArtistico varchar(40) not null,
nomeReal varchar(40) not null,
nacionalidade varchar(20) not null,
sexo char(1) not null,
idade int(2) not null,
indicacaoOscar int(2),
Oscar int(2)
);

create table Filme
(
codFilme varchar(3) primary key,
nomeFilme varchar(40) not null,
anoFilme int(4) not null,
orcamento int(15) not null,
tempo int(2) not null
);

create table Personagem
(
codFilme varchar(3) not null,
codAtor varchar(3) not null,
personagem varchar(40) not null,
cachePersonagem int(15) not null,
primary key (codFilme, codAtor),
foreign key(codFilme) references Filme(codFilme) on delete cascade on update cascade,
foreign key (codAtor) references Ator(codAtor) on delete cascade on update cascade
);

insert into Ator values('a1', 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, null, null);
insert into Ator values('a10', 'Willian Hurt', 'Willian Ernst Hurt', 'USA', 'M', '45', '2', '1');
insert into Ator values('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', '37', '1', null);
insert into Ator values('a13', 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', '65', '6', '3');
insert into Ator values('a14', 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', '34', null, null);
insert into Ator values('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', '45', '1', '1');
insert into Ator values('a16', 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', '32', '1', '1');
insert into Ator values('a17', 'Jim Carrey', 'James Carrey', 'USA', 'M', '40', null, null);
insert into Ator values('a18', 'Nicole Kidman', 'Susan West', 'Austrália', 'F', '33', 1, null);
insert into Ator values('a19', 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', '40', '1', null);
insert into Ator values('a2', 'Brad Pitt', 'João Paulo', 'USA', 'M', '28', '1', null);
insert into Ator values('a20', 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', '29', null, null);
insert into Ator values('a21', 'Holly Hunter', 'Susan Richards', 'USA', 'F', '33', '1', '1');
insert into Ator values('a22', 'Richard Gere', 'Richard Gere', 'USA', 'M', '34', '1', '1');
insert into Ator values('a3', 'Jessica Lange', 'Jessica Lange', ',USA', 'F', '42' ,'4', '2');
insert into Ator values('a4', 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', '36', '2', null);
insert into Ator values('a5', 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', '45', null, null);
insert into Ator values('a6','Samuel Jackson', 'Samuel L. Jackson', 'USA', 'M', '60', null, null);
insert into Ator values('a7','Sandra Bullock', 'Sandra Bullock', 'USA', 'F', '30', '2', null);
insert into Ator values('a8', 'Harry Cornick Jr.', 'Harry Cornick Jr.', 'USA', 'M', '40', null, null);
insert into Ator values('a9', 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', '31', '1', null);

insert into Filme value('f1', 'A jurada', '1996', '1000000', '18');
