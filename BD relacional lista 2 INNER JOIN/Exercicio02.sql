CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
		tipo VARCHAR(30) not null,
        tamanho VARCHAR(30),
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR (100),
        sabor VARCHAR (100),
        preco DECIMAL (6,2),
        bordaRecheada VARCHAR (30),
        categoria_id BIGINT,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

	INSERT INTO tb_categorias (tipo, tamanho)
	values ("Salgada", "Broto");
    INSERT INTO tb_categorias (tipo, tamanho)
	values ("Salgada", "Média");
    INSERT INTO tb_categorias (tipo, tamanho)
	values ("Salgada", "Maracanã");
    INSERT INTO tb_categorias (tipo, tamanho)
	values ("Doce", "Broto");
    INSERT INTO tb_categorias (tipo, tamanho)
	values ("Doce", "Média");
    
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Frango catupiry", "Frango catupiry", 45.00, "Não", 2);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Mineira", "Frango, calabresa, mussarela e bacon", 65.00, "Sim", 3);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Bacon", "Bacon e mussarela", 25.00, "Não", 1);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Moranguinho", "Chocolate e morango", 60.00, "Não", 5);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Chessecake", "Chocolate branco, geleia de morango e creme cheese", 70.00, "Sim", 5);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Disquete", "Chocolate e disquete", 53.00, "Não", 4);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Portuguesa", "Ovo, cebola, calabresa e pimentao", 85.00, "Sim", 3);
    INSERT INTO tb_pizzas (nome, sabor, preco, bordaRecheada, categoria_id)
    values ("Romeu e julieta", "Queijo e goiabada", 35.00, "Não", 4);
    
    SELECT * FROM tb_pizzas WHERE preco > 45.00;
    SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
    SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
	SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tipo = "doce";
    SELECT * FROM tb_categorias;
    SELECT * FROM tb_pizzas;
    
    