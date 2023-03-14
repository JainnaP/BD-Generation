CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	ID BIGINT AUTO_INCREMENT,
		corte VARCHAR(100),
        tipo VARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	ID BIGINT AUTO_INCREMENT,
        marca VARCHAR(50),
        precoKG DECIMAL(6,2),
        quantidadeKG INT,
		categoria_id BIGINT,
	PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

	INSERT INTO tb_categorias(corte, tipo)
    values ("Picanha","Bovina"); 
	INSERT INTO tb_categorias(corte, tipo)
    values ("Picanha","Suína"); 
	INSERT INTO tb_categorias(corte, tipo)
    values ("Filé de tilápia","Pescados"); 
	INSERT INTO tb_categorias(corte, tipo)
    values ("Filé de peito de frango","Aves"); 
	INSERT INTO tb_categorias(corte, tipo)
    values ("Bisteca","Suína"); 
	INSERT INTO tb_categorias(corte, tipo)
    values ("Fraldinha","Bovina"); 
    
	INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Friboi", 55.00, 100, 1);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Friboi", 70.00, 120, 2);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Swift", 35.00, 90, 3);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Seara", 30.00, 132, 4);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Sadia", 95.00, 50, 5);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Friboi", 84.50, 100, 6);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Swift", 46.00, 87, 3);
    INSERT INTO tb_produtos(marca, precoKG, quantidadeKG, categoria_id)
    values ("Seara", 74.00, 40, 6);
    
    SELECT * FROM tb_produtos WHERE precoKG > 50.00;
    SELECT * FROM tb_produtos WHERE precoKG BETWEEN 50.00 AND 150.00;
    SELECT * FROM tb_produtos WHERE marca LIKE "%s%";
    SELECT * FROM tb_categorias WHERE corte LIKE "%f%";
    SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
    SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo = "suina";
    SELECT corte,tipo,marca,precoKG,quantidadeKG FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id;
    
    
    SELECT * FROM tb_categorias;
    SELECT * FROM tb_produtos;
    


