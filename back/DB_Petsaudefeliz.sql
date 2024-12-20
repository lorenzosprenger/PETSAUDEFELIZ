create database petsaudefeliz;

use petsaudefeliz;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    img_perfil VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE eventos (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    lembrete TEXT NOT NULL,
    dia DATE NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE pet (
	idpet INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	raca VARCHAR(45) NOT NULL,
	data_nasc DATETIME NOT NULL,
	genero VARCHAR(45) NOT NULL,
	peso INT NOT NULL,
	nivel_atv VARCHAR(45) NOT NULL,
	usuario_id INT NOT NULL,
	img_cavalo VARCHAR(255),
	FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);