CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
	id bigint auto_increment,
		nome varchar (100) not null,
		quantidade int,
		valor decimal,
		marca varchar(100),
		tempoGarantia varchar (30),
	PRIMARY KEY (id)
);

	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Gift Card", 200, 50.00, "Riot Games", "Sem garantia");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Maquiagem", 148, 100.00, "Sheglan", "1 MÊS");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Board Game", 100, 300.00, "Galápagos", "1 ANO");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Cadeira Gamer", 55, 550.00, "", "2 ANOS");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Headset", 77, 650.00, "Logitech", "1 ANO");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Teclado", 321, 170.00, "", "6 MESES");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Webcam", 35, 740.00, "EA", "2 ANOS");
	INSERT INTO tb_ecommerce(nome, quantidade, valor, marca, tempoGarantia)
	value ("Monitor", 15, 1000.00, "Sony", "3 ANOS");
    
    UPDATE tb_ecommerce SET marca = " " WHERE id = 5;
    SELECT * FROM tb_ecommerce;
    SELECT * FROM tb_ecommerce WHERE valor > 500;
    SELECT * FROM tb_ecommerce WHERE valor < 500;
    