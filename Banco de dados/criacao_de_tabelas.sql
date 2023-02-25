-- SQL é a linguagem que utilizamos para realizar consultas
-- SQL Server é o gerenciador do banco de dados
-- Definição de banco de dados Relacional para pesquisar.

-- Comando para criar banco de dados
CREATE DATABASE calculadora_simuladora;
-- Utilizar o banco de dados
USE calculadora_simuladora;

-- Usurário simulação -- Nome da tabela
-- Número da simulação
-- Nome da pessoa
-- Descrição da simulação
-- Data da simulação

-- Simulação Calculadora Juros -- Nome da segunda tabela
-- Número da simulação
-- Valor inicial
-- Valor do aporte do mês
-- Taxa de juros
-- Quantidade de tempo


CREATE TABLE Usuario_Simulacao (
 
	id_simulacao INT NOT NULL,
	Nome_pessoa VARCHAR(100) NOT NULL,
	Descricao VARCHAR(200),
	Data_simulacao DATE NOT NULL
 );


 SELECT * FROM Usuario_Simulação;

 SELECT Nome_pessoa, Descricao FROM Usuario_Simulação;

 CREATE TABLE simulacao_calculadora_juros (
	
	id_simulacao INT IDENTITY PRIMARY KEY,
	Valor_inicial DECIMAL(15,2) NOT NULL,
	Valor_aporte_mensal DECIMAL(15,2) NOT NULL,
	Taxa_juros DECIMAL(10,4) NOT NULL,
	Quantidade_tempo INT NOT NULL,
 );
 
-- RENOMEAR COLUNA: TABELA.COLUNA, NOVO NOME COLUNA E COLUNA.
EXEC sp_rename 'simulacao_calculador_juros.id_simulação','id_simulacao','column';
-- RENOMEAR TABELA E NOVO NOME DA TABELA.
EXEC sp_rename 'simulacao_calculador_juros','simulacao_calculadora_juros';

 SELECT * FROM simulacao_calculadora_juros;

 -- INSERIR DADOS NA TABELA
 INSERT INTO Usuario_Simulacao 
 VALUES (1, 'Jhenifer Ribeiro', 'Investimentos', GETDATE());
 -- Inserir de uma melhor forma com formato diferente
 INSERT INTO Usuario_Simulacao (id_simulacao, Nome_pessoa, Data_simulacao, Descricao) 
 VALUES (2, 'Jhenifer Ribeiro', GETDATE(), 'Investimentos');

 INSERT INTO Usuario_Simulacao (id_simulacao, Nome_pessoa, Descricao, Data_simulacao) 
 VALUES (3, 'Jhenifer Ribeiro', 'Investimentos', '2023/02/08');


 INSERT INTO simulacao_calculador_juros 
 VALUES (6000.00, 900.00, 7.8, 12);

 SELECT * FROM Usuario_Simulacao;

-- ATUALIZAR UMA TABELA
UPDATE Usuario_Simulacao SET Data_simulacao = '2023-01-28' WHERE id_simulacao = 2;
--Atualizando tabela onde o registro for id_simulacao = 3
UPDATE Usuario_Simulacao SET Data_simulacao = '2023-01-28', Descricao = 'Casa própria' WHERE id_simulacao = 3;
--Atualizando tabela onde o registro for id_simulacao = 2 e 3
UPDATE Usuario_Simulacao SET Nome_pessoa = 'Ricardo Ribeiro' WHERE id_simulacao IN (2,3);

-- DELETAR REGISTRO DA TABELA
DELETE FROM Usuario_Simulacao WHERE id_simulacao = 3;
-- DELETANDO TABELA
-- DROP TABLE -tabela-

-- Inserir novo registro
-- Atualizar a data de simulacao do registro 
-- Selecionar apenas data simulacao e nome da pessoa
-- Deletar o registro

SELECT * FROM Usuario_Simulacao AS a
JOIN simulacao_calculadora_juros AS b  
ON a.id_simulacao = b.id_simulacao  
WHERE b.id_simulacao = 1; 
-- JOIN É PARA JUNTAR
 -- ON É PARA DIZER QUAIS COLUNAS SE INTERLIGAM

 SELECT * FROM Usuario_Simulacao AS a
JOIN simulacao_calculadora_juros AS b  
ON a.id_simulacao = b.id_simulacao  
WHERE b.id_simulacao = 1

CREATE DATABASE teste_csv;

USE teste.csv;

CREATE TABLE teste_csv (
	nome_usuario VARCHAR(200) NOT NULL,
	ativo BIT NOT NULL,
	data_nascimento DATETIME NOT NULL,

);


