CREATE DATABASE registration_and_login; """ Criando um banco de dados para cadastrar usuários. """

USE registration_and_login; """ Definindo como um banco padrão. """

""" Criando uma tabela de usuários e com atributos: id, nome, sobrenome, data de nascimento, cpf, email e hash da criptografia da senha. """

CREATE TABLE users (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    hash_password VARCHAR(300) NOT NULL,
    verified_email BOOLEAN NOT NULL DEFAULT FALSE
);