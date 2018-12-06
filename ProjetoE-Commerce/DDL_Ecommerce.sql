CREATE TABLE pessoa_tipo (
		id_pessoa_tipo INTEGER PRIMARY KEY UNIQUE,
		nome_tipo VARCHAR(100) NOT NULL 
);

CREATE TABLE pessoa (
		id_pessoa SERIAL PRIMARY KEY UNIQUE,
		nome VARCHAR(100) NOT NULL,
		cpf VARCHAR(11) NOT NULL,
		data_nasc date NOT NULL,
		id_pessoa_tipo INTEGER NOT NULL,
		FOREIGN KEY (id_pessoa_tipo) REFERENCES pessoa_tipo(id_pessoa_tipo)
);

CREATE TABLE endereco(
		id_pessoa INTEGER PRIMARY KEY NOT NULL,
		rua VARCHAR(200) NOT NULL,
		numero INTEGER NOT NULL,
		cidade VARCHAR(200) NOT NULL,
		pais VARCHAR(100) NOT NULL,
		cep VARCHAR(8) NOT NULL,
		FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE usuario (
	id_usuario  SERIAL PRIMARY KEY NOT NULL UNIQUE ,
	login VARCHAR(50),
	senha VARCHAR(150),
	ativo BOOLEAN,
	id_pessoa INTEGER NOT NULL,
	FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE produto (
		id_produto SERIAL PRIMARY KEY NOT NULL,
		descricao VARCHAR(250) NOT NULL,
		preco DOUBLE PRECISION NOT NULL,
		id_fornecedor INTEGER NOT NULL,
		FOREIGN KEY (id_fornecedor) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE produto_estoque(
		id_estoque SERIAL PRIMARY KEY NOT NULL,
 		id_produto INTEGER NOT NULL,
		FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);



CREATE TABLE transporte (
		id_transporte SERIAL PRIMARY KEY NOT NULL,
		nome_transporte VARCHAR(100) NOT NULL,
		ativo BOOLEAN NOT NULL 
		);

CREATE TABLE frete(
		id_frete SERIAL PRIMARY KEY NOT NULL,
		faixa_de VARCHAR(8) NOT NULL,
		faixa_ate VARCHAR(8) NOT NULL,
		vl_frete DOUBLE PRECISION NOT NULL,
		id_transporte INTEGER NOT NULL,	
		FOREIGN KEY (id_transporte) REFERENCES transporte(id_transporte)
);

CREATE TABLE pedido(
		id_pedido SERIAL PRIMARY KEY NOT NULL,
		data_pedido DATE NOT NULL,
		id_usuario INTEGER NOT NULL,
		id_frete INTEGER NOT NULL,
		data_pagamento DATE,
		FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
		FOREIGN KEY (id_frete) REFERENCES frete(id_frete)
);

CREATE TABLE item_pedido(
		id_pedido INTEGER NOT NULL,
		id_estoque INTEGER NOT NULL,
		PRIMARY KEY (id_pedido, id_estoque),
		FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
		FOREIGN KEY (id_estoque) REFERENCES produto_estoque(id_estoque) 
);