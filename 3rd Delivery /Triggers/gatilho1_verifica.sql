.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Estado atual do Utilizador:'
.print ''

SELECT Pessoa.id , Pessoa.nome , Pessoa."Data de Nascimento"
FROM Pessoa
WHERE Pessoa.id = 1;

.print ''
.print 'Update da data de nascimento de um Utilizador com ID = 1 -> dispara gatilho no qual e valida ou nao a data ;'
.print ''
.print 'Data de nascimento = 2010-02-20 (caso invalido) :'
.print ''

UPDATE Pessoa SET "Data de Nascimento" = '2010-02-20' WHERE Pessoa.id = 1;

.print ''
SELECT Pessoa.id , Pessoa.nome , Pessoa."Data de Nascimento"
FROM Pessoa
WHERE Pessoa.id = 1;

.print ''
.print 'Data de nascimento = 1990-02-20 (caso valido) :'
.print ''

UPDATE Pessoa SET "Data de Nascimento" = '1990-02-20' WHERE Pessoa.id = 1;

SELECT Pessoa.id , Pessoa.nome , Pessoa."Data de Nascimento"
FROM Pessoa
WHERE Pessoa.id = 1;