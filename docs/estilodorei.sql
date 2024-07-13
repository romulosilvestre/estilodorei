-- CREATE = CRIAR
CREATE DATABASE estilorei2;
USE estilorei2;
CREATE TABLE cliente(
    -- definir os campos = atributos = colunas
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    telefone char(13) NOT NULL,
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(256) NOT NULL
);
-- ALTER TABLE cliente
-- MODIFY telefone char(14) NOT NULL;

-- ALTER TABLE cliente
-- MODIFY id INT AUTO_INCREMENT;

describe cliente;

INSERT INTO cliente(nome,telefone,email,senha)
       values('Rafael','61987789900',
              'rafael.jacobson@estilodorei.com.br',
              'f60476e07aea866c765c84f223a72ab287a0034c395d296047fd5f682960bf57');              
INSERT INTO cliente(nome,telefone,email,senha)
       values('Viviane','61987789900',
              'vivi.silva@estilodorei.com.br',
              '3b6db430f739004f5be14f3a93ebec9bd6581916a574000c0874364270bdbafd');            
              
INSERT INTO cliente(nome, telefone, email, senha)
VALUES
    ('Rafael', '61987789900', 'rafael.jacobson@estilodorei.com.br', 'f60476e07aea866c765c84f223a72ab287a0034c395d296047fd5f682960bf57'),
    ('Viviane', '61987789900', 'vivi.silva@estilodorei.com.br', '3b6db430f739004f5be14f3a93ebec9bd6581916a574000c0874364270bdbafd');


SELECT * FROM cliente;
SELECT telefone FROM cliente;

-- Criando um serviço
CREATE TABLE servico (
    id int PRIMARY KEY auto_increment,
    nome varchar(60) UNIQUE NOT NULL,
    valor decimal(8,2) NOT NULL
);
INSERT INTO servico(nome,valor)values('cabelo',25.67);
INSERT INTO servico(nome,valor)values('barba',15.23);
INSERT INTO servico(nome,valor)values('cabelo e barba',30.00);
SELECT * FROM servico;


