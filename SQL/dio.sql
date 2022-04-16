CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome varchar(20), 
    nascimento date
)

INSERT INTO pessoas (nome,nascimento) VALUES ('Nathaly', '1990-05-22');
INSERT INTO pessoas (nome,nascimento) VALUES ('Pedro', '1994-03-17');
INSERT INTO pessoas (nome,nascimento) VALUES ('Marcela', '1989-10-28');