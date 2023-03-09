CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


	CREATE TABLE tb_classes(
	id bigint auto_increment,
		nome VARCHAR (100) NOT NULL,
        habilidade VARCHAR (255),
        arma VARCHAR (100),
	PRIMARY KEY (id)
);


CREATE TABLE tb_personagens(
	id bigint auto_increment,
		nome VARCHAR (100),
        nivel INT,
        poderDeAtaque INT,
        poderDeSkill INT,
        poderDeDefesa INT,
        classe_id BIGINT,
	PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);



	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Jainna", 1500, 4500, 1000, 2);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Kim", 3500, 3500, 2000, 3);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Pipoca", 5000, 2500, 1000, 4);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Nat", 1500, 2000, 5000, 5);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Guilherme", 3000, 1000, 3000, 6);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Magno", 4300, 1000, 4000, 4);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Luzia", 1300, 2000, 3000, 1);
    
	INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeSkill, poderDeDefesa, classe_id)
    value ("Ana", 500, 1000, 800, 1);
    
    
	INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Clérigo", "Cura", "Livro sagrado");
    
	INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Mago", "Bola de fogo", "Cajado");   
    
    INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Arqueiro", "Chuva de flechas", "Arco e Flecha");
    
    INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Guerreiro", "Excalibur", "Espadão");
    
    INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Cruzado", "Parede de escudos", "Escudo Grande");
    
    INSERT INTO tb_classes(nome, habilidade, arma)
    value ("Necromante", "Resurreição", "Livro profanado");
    
    SELECT * FROM tb_personagens;
    SELECT * FROM tb_classes;
    SELECT * FROM tb_personagens WHERE poderDeAtaque > 2000;
    SELECT * FROM tb_personagens WHERE poderDeDefesa BETWEEN 1000 AND 2000;
    SELECT * FROM tb_personagens WHERE nome LIKE "%i%";
    SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;