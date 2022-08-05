CREATE DATABASE db_Ecommerce_Task2

USE db_Ecommerce_Task2

CREATE TABLE tb_Usuarios(
	Id_Usuario INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Log_in VARCHAR(50) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Documento INT NOT NULL
);

CREATE TABLE tb_Compras (
	Id_Compra INT NOT NULL,
	Fk_Usuario INT,
	Fk_Produto INT,
	DataHora DATETIME NOT NULL,
	FOREIGN KEY (fk_Usuario) REFERENCES tb_Usuarios (Id_Usuario),
	FOREIGN KEY (fk_Produto) REFERENCES tb_Produtos (Id_Produto)
);

CREATE TABLE tb_Produtos (
	Id_Produto INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(50) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Categoria VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Quantidade INT NOT NULL,
	Url_Imagem  VARCHAR(50) NOT NULL
);
