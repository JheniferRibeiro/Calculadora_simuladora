-- COMO IMPORTAR E EXPORTAR ARQUIVOS CSV NO SQL SERVER

-- REQUISITOS:
------ Banco de testes
------ Tabela para testes
------ Carga de testes

-- COMO EXPORTAR PARA CSV
SELECT * FROM TABELA 
-- Rodar o select. Após isso, clicar na tabela de dados e clicar com o direito,
-- Salvar com a opção "Save Result As", escolher um nome.

-- IMPORTANDO UM CSV PARA O SQL 

BULK INSERT usuarios
FROM 'C:\Users\ricar\Downloads\teste.csv'
   WITH (
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
);

CREATE DATABASE teste_csv; 

USE teste_csv;

CREATE TABLE usuarios (
	nome_usuario VARCHAR(200) NOT NULL,
	ativo BIT NOT NULL,
	data_nascimento DATETIME NOT NULL
);

SELECT * FROM usuarios

BULK INSERT usuarios
FROM 'C:\Users\ricar\Downloads\teste.csv'
   WITH ( FIELDTERMINATOR = ';', ROWTERMINATOR = '\n' );




-- 0 = Falso = Não
-- 1 = Verdadeiro = Sim