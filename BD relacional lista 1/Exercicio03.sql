CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
	id bigint auto_increment,
		nome varchar(100) not null,
        idade int,
        gênero varchar (100),
        sala int,
        nota int,
	PRIMARY KEY (id)
);

	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Jainna", 15, "Não binário", 2, 5.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Giulia", 17, "Feminino", 2, 8.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Cristian", 12, "Masculino", 1, 3.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Nathalia", 16, "Feminino", 1, 10.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Matheus", 15, "Não binário", 2, 8.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Guilherme", 17, "Masculino", 1, 2.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Gabriel", 17, "Masculino", 2, 9.0);
	INSERT INTO tb_escola (nome, idade, gênero, sala, nota)
    value ("Luisa", 13, "Feminino", 1, 4.0);
    
	SELECT * FROM tb_escola;
	SELECT * FROM tb_escola WHERE nota > 7.0;
    SELECT * FROM tb_escola WHERE nota < 7.0;
    
    UPDATE tb_escola SET nota = 7 WHERE id = 1;
