create table tb_classe(
	id bigint auto_increment,
    nome_classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),
    
    primary key(id)



insert into tb_classe(nome_classe, habilidade, arma) 
values ("Sorcerer", "Bola de Fogo", "Cajado"),

 ("Druid", "Avalanche de Gelo", "Livro"),
 
 ("Paladino", "Chuva de Flechas", "Arco e Flecha"),

 ("Knight", "Bloqueio", "Arma e Escudo");


create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    nivel int,
    ataque int,
    defesa int,
    
    classe_id bigint,
    primary key(id),
    foreign key (classe_id) references tb_classe(id)



insert into tb_personagem(nome, nivel, ataque, defesa, classe_id) 
values ("Fada Sensata", 300, 1500, 500, 1),
("Tacadora de Flecha", 500, 300, 1200, 3),
("Elfa Azul", 300, 2500, 4000, 2),
("Jorjão", 900, 6000, 5000, 4),
("Topper", 9500, 6000, 5000, 4),
("Legolas", 150, 800, 600, 3),
("Gandalf", 10000, 20000, 3000, 1),
("Elfa Branca", 1000, 2000, 5000, 2);


select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa >= 1000 and defesa < 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id
where tb_classe.id = 2;

