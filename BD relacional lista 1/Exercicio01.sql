CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
		nome varchar(225) not null,
        idade int,
        salario decimal not null,
        genero varchar(225) not null,
        qt_filhos int,
	PRIMARY KEY (id)
);

	INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
    value ("Jainna", 22, 1500, "Não binário", 0);
	INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
    value ("Giulia", 19, 3000, "Feminino", 0);
	INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
    value ("Yuri", 24, 30000, "Masculino", 1);
    INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
    value ("Flávio", 29, 2500, "Mascuilino", 2);
	
    SELECT * FROM tb_colaboradores;
    SELECT * FROM tb_colaboradores WHERE salario > 2500;
	SELECT * FROM tb_colaboradores WHERE salario < 2500;
    
    UPDATE tb_colaboradores SET qt_filhos = 3 WHERE id = 5;
    
    
    
    
    
    
    
    

	