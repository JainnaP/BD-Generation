CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
		tarja VARCHAR(30),
        tipo VARCHAR(30),
	PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR(100),
        dosesDia INT,
        horario VARCHAR(100),
        preco INT,
        categoria_id BIGINT,
	PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

	INSERT INTO tb_categorias (tarja, tipo)
    values ("Amarela", "Em gota");
    INSERT INTO tb_categorias (tarja, tipo)
    values ("Amarela", "Comprimido");
    INSERT INTO tb_categorias (tarja, tipo)
    values ("Preta", "Em gota");
    INSERT INTO tb_categorias (tarja, tipo)
    values ("Preta", "Comprimido");
    INSERT INTO tb_categorias (tarja, tipo)
    values ("Vermelha", "Comprimido");
    
    INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Clonazepan", 1, "Noite", 15.00, 8);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Melatonina", 1, "Noite", 3.00, 6);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Rivotril", 2, "Manha e Noite", 54.00, 9);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Diazepan", 1, "Noite", 43.00, 9);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Parecetamol", 1, "Noite", 4.00, 7);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Resfrenol", 2, "Manha e Noite", 20.00, 7);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Ibuprofeno com codeína", 1, "Noite", 53.00, 10);
	INSERT INTO tb_produtos(nome, dosesDia, horario, preco, categoria_id)
    values ("Fluxetina", 2, "Manha", 13.00, 9);


SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo = "em gota";
