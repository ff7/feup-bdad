.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 2. Selecionar o numero de Transacoes em que tanto o nome do cliente como o do farmaceutico era "Francisco"

SELECT count(*) AS numOcorrencias
FROM Pessoa p1, Pessoa p2, Transação
WHERE p1.nome LIKE '%Francisco%' 
AND p2.nome LIKE '%Francisco%'
AND p1.id = Transação."ID Cliente" 
AND p2.id = Transação."ID Farmacêutico";