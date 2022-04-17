-- criando tabela
CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome varchar(20), 
    nascimento date
)
-- adicionando linhas na tabela
INSERT INTO pessoa (nome,nascimento) VALUES ('Nathaly', '1990-05-22');
INSERT INTO pessoa (nome,nascimento) VALUES ('Pedro', '1994-03-17');
INSERT INTO pessoa (nome,nascimento) VALUES ('Marcela', '1989-10-28');

-- atualizar dados
update pessoa set nome = 'Sergio Castro' where id = 1;

-- Visualiza tabela
SELECT * FROM pessa;

SELECT * FROM pessoa WHERE id=5; -- Verifica se a linha é essa mesma
DELETE FROM pessoa WHERE id=5; -- Deleta, não é recuperavel !!
-- Neste caso o id é ÚNICO, se adicionar qualquer outra linha o id seria 6 neste caso 
-- Pimary key é unica e imutavel

SELECT * FROM pessoa ORDER BY nome DESC -- ordena decrescente, por default sem o DESC seria crescente
-- apos o order by seria a coluna a ser ordenada

-- Adicionando coluna de genero após a coluna nascimento
ALTER TABLE `pessoa` ADD `genero` VARCHAR(1) NOT NULL AFTER `nascimento`;

-- agrupamento de genero por id
SELECT COUNT(id), genero FROM `pessoa` GROUP BY genero;

--ligar tabelas
SELECT * FROM Videos JOIN author ON Videos.fk_author = author.id_author; -- seleciona tudo
SELECT Videos.title, author.name FROM `Videos` JOIN author ON Videos.fk_author = author.id_author; -- seleciona 1 coluna de cada
SELECT * FROM Videos JOIN seo ON Videos.fk_seo = seo.id_seo; --ligação de tabelas
SELECT Videos.title, seo.category FROM Videos JOIN seo ON Videos.fk_seo = seo.id_seo; -- ligação por coluna

--- ligar multiplas tabelas
SELECT Videos.title, seo.category, author.name FROM Videos 
JOIN seo ON Videos.fk_seo = seo.id_seo 
JOIN author on Videos.fk_author = author.id_author;