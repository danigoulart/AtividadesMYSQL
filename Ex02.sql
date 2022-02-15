create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(20), 
pizza_vegana boolean,
esfiha boolean,
primary key (id)
);

insert into tb_categoria(tamanho, pizza_vegana, esfiha) values
 ("Grande", false,  false ),
 ("Pequena", false,  false ),
 ("Média", true,  false ),
 ("Esfiha", false,  true );

create table tb_pizza(
id bigint auto_increment, 
preco int,
sabor varchar(20),
borda boolean,
queijo_extra boolean,
entrega boolean,

classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_pizza(preco, sabor, borda, queijo_extra, entrega, classe_id) values
 (50, "Marguerita", true, false, false, 1 ),
 (40, "Brócolis", true, false, true, 3 ),
 (20, "Tomate Seco", false, false, true, 4 ),
 (70, "6 queijos", true, true, true, 1 ),
 (30, "Pepperoni", true, false, false, 2 ),
 (50, "Portuguesa", true, false, true, 1 ),
 (15, "Mussarela", false, false, false, 4 ),
 (50, "Rúcula", false, false, false, 3 );
 
 select * from tb_pizza where preco > 45;
 select * from tb_pizza where preco between 29 and 60;
 select * from tb_pizza where sabor like "%c%";
 


 