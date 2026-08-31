CREATE DATABASE render_trace;

USE render_trace;
 
CREATE TABLE usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    senha VARCHAR(20) NOT NULL,
    dt_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 1, -- por default ativo
    tipo VARCHAR(10),
    CONSTRAINT chTipo CHECK (tipo IN('ADMIN', 'GESTOR'))
);

CREATE TABLE empresa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(45) NOT NULL,
    cnpj CHAR(14) NOT NULL UNIQUE,
	dt_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 1 -- por default ativo
);

CREATE TABLE unidade (
	id INT PRIMARY KEY AUTO_INCREMENT,
    empresa_id INT NOT NULL, 
    nome_fantasia VARCHAR(60) NOT NULL,
    logradouro VARCHAR(60) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep CHAR(8)
);

CREATE TABLE sensor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(45) NOT NULL, -- identificador do sensor dentro da fábrica/unidade
    tolva_id INT NULL, 
    dt_instalacao DATETIME,
	status TINYINT DEFAULT 1 -- por default ativo
);

CREATE TABLE leitura_sensor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    sensor_id INT NOT NULL,
    distancia DECIMAL (5,2) NOT NULL, -- em centimetros
    nivel_percentual DECIMAL(5,2) NOT NULL,
    estado VARCHAR (10) NOT NULL,
    CONSTRAINT chEstado CHECK (estado IN('baixo', 'médio', 'alto', 'critico')),
    dt_leitura DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tolva (
	id INT PRIMARY KEY AUTO_INCREMENT,
    unidade_id INT NOT NULL,
    altura DECIMAL (5,2) NOT NULL,
    capacidade DECIMAL (10,2) NOT NULL,
    residuo VARCHAR(45) NOT NULL,
    status TINYINT DEFAULT 1 -- por default ativo
);

CREATE TABLE armazenamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tolva_id INT NOT NULL,
    dt_entrada DATETIME NOT NULL,
    dt_saida DATETIME NULL
);