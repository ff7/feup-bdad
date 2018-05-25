.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 1. Selecionar o nome dos clientes que foram atendidos no ano de 2017

SELECT Pessoa.nome as nomeC 
FROM Pessoa ,Cliente, Transação 
where Cliente.id = Transação."ID Cliente"
AND Pessoa.id = Cliente.id
AND Transação.DataHora BETWEEN '2016-12-31' AND '2018-01-01';