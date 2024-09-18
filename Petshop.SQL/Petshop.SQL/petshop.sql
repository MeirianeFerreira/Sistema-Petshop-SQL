CREATE DATABASE sistemapetshop;

/*Criando tabela Cliente no banco de dados*/
CREATE TABLE cliente (
    cpf VARCHAR(15) primary key,
    nomecliente VARCHAR(200) NOT NULL,
    telefone VARCHAR(30) NOT NULL
);

/*Criando tabela Veterinário no banco de dados*/
CREATE TABLE veterinario(
    crmv VARCHAR(20) primary key,
    nomevet VARCHAR(200) NOT NULL,
    salario DECIMAL(10) NOT NULL,
    dataadmissao DATE NOT NULL
);

/*Criando tabela Consulta no banco de dados*/
CREATE TABLE consulta(
    diaconsulta DATE NOT NULL,
    motivo VARCHAR (200) NOT NULL,
    horario TIME NOT NULL
);

/*Criando tabela Animal no banco de dados*/
CREATE TABLE animal(
    codanimal INT(10) primary key,
    nomeanimal VARCHAR(100) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    anonascimento DATE NOT NULL
);


/*Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto */
ALTER TABLE cliente
CHANGE COLUMN nomecliente nomecompleto CHAR(200);

/*Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres*/
ALTER TABLE consulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;

/* Delete o atributo nomeanimal da tabela animal*/
ALTER TABLE animal
DROP COLUMN nomeanimal;

/* Adicione novamente o atributo com o nome: nomeanimalzinho*/
ALTER TABLE animal
ADD nomeanimalzinho VARCHAR(50) NOT NULL;


/* insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente*/
INSERT INTO cliente (nomecompleto, telefone, cpf)
VALUES ('Ana Claudia Cunha', "(11)999998888", 1144444411);

/*Realize a exclusão dos dados da tabela cliente*/
DELETE FROM cliente; /*todos os dados*/

/*Realize a exclusão de cada uma das tabelas*/
DROP TABLE cliente, veterinario, consulta, animal;

/*Realize a exclusão do banco de dados*/
DROP DATABASE sistemapetshop;

