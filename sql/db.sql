-- o mysql é o banco de dados aberto mais conhecido no mundo, foi criado por vários desenvolvedores do mundo todo.

-- dentro do mysql usamos instruções DDL e DML.

-- sql significa = linguagem de consulta estruturada, ou structured query language.

-- as instrução DDL, servem pra criar as estruturas no banco de dados que irão abrigar os dados em si.

-- enquanto que as DML, servem pra manipular os dados e fazer manuteção, o nome de ambos são auto-descritivos.

-- DML = Data Manipulation Language.
-- DDL = Data Definition Language.

-- com os comandos usados pelo DML, podemos inserir, alterar, excluir e selecionar os dados do banco.

-- Dentro das estruturas DDL temos:
   -- O Banco de dados: onde são feitos os objetos pra guardar os dados. 
   -- A Tabela: são estruturas que armazenam os dados, podendo conter diversas colunas.
   -- Chave Primwária: é a identificação de cada registro na tabela.
   -- Chave Estrangeira: é o uso da identificação e a refêrencia daquela tabela de fora relacionando-a com outra tabela.

-- Comandos DDL:
   -- CREATE DATABSE; <CRIA O BANCO>
   -- CREATE TABLE; <CRIA A TABELA PARA O BANCO>
   -- ALTER TABLE; <ALTERA A TABELA>

-- Comandos DML:
   -- SELECT; <SELECIONA A TABELA>
   -- INSERT; <INSERE NOVOS DADOS A TABLEA>
   -- UPDATE; <ATUALIZA>
   -- DELETE; <DELETA>

   -- USO PRÁTICO:

   CREATE DATABASE banco_1; -- <CRIAÇÃO DO BANCO>
    USE banco_1; -- <UTILIZAÇÃO DO BANCO>
    CREATE TABLE tabela_banco1 (  -- <CRIAÇÃO DA TABELA + USO DE REGRAS, INCLUSÃO DA CHAVE PRIMÁRA, E DETERMINADOS VALORES>
        id_tabela_banco1 int auto_increment primary key,
        nome VARCHAR(100) not null,
        email VARCHAR(100) unique
    );

    CREATE TABLE tabela_banco2 (  -- <MESMA COISA DA OUTRA TABELA, PORÉM USANDO A CHAVE ESTRANGEIRA, PARA RELACIONAR AMBAS AS TABELAS, COM ELE PASSAMOS O ID 2X DA OUTRA TABELA MAIS O SEU NOME QUE O REFERENCIA.>
        id_tabela_banco2 int auto_increment primary key,
        nome VARCHAR(100) not null,
        email varchar(100) unique,
        phone_number VARCHAR(255) not null,
        pwrd VARCHAR(255) not null,
        Foreign Key (id_tabela_banco1) REFERENCES tabela_banco1(id_tabela_banco1),
    );

    INSERT INTO tabela_banco1 ( -- <INSERÇÃO DE NOVAS INFORMAÇÕES NA TABELA CRIADA>
        phone_number,
        pwrd,
    ) VALUES ( -- <DEFINIÇÃO DOS VALORES DESSES NOVOS DADOS A SEREM TRANSFERIDOS PARA A TABELA CRIADA>
        '(+55) 410000-0000',
        '1234567890',
    );

    SELECT FROM tabela_banco1 WHERE nome = 'Jacob'; -- <SELECIONA OS DADOS TABELA COM FILTRO [WHERE], QUE ESTIVER O NOME = 'JACOB';>
    UPDATE tabela_banco1 SET pwrd = '123456', phone_number = '(+55) 410000-0001' WHERE pwrd = '1234567890'; -- <FAZ A ATUALIZAÇÃO, SETANDO NOVOS VALORES AOS DADOS COM O MESMO FILTRO>
    DELETE FROM tabela_banco1 WHERE pwrd = '1234567890' OR nome = 'Jacob'; -- <DELETA VALORES DA TABELA USANDO O MESMO FILTRO>
    