.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 4. Selecionar o nome do cliente, o nome do medicamento que comprou e em que quantidade o fez, ordenado por ordem alfabetica do seu nome

SELECT distinct pessoa.nome , medicamento.nome, venda."No Embalagens"
FROM Pessoa, Medicamento, Venda, Transação
WHERE Transação."ID Cliente" = pessoa.ID
AND Venda."ID Transação" = Transação.ID
AND venda."ID Medicamento" = Medicamento.ID
ORDER BY pessoa.nome ASC;