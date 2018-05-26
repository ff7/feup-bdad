.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 7. Selecionar o id das transacoes no mes de fevereiro de 2017 cujo nmr de embalagens vendidas tenha sido superior a 3 
-- ou das das transacoes no mes de abril de 2018 com menos que 2

SELECT distinct Transação.id as 'ID da Venda', Venda."No Embalagens" as Quantidade
FROM Transação, venda
WHERE Transação.id = venda."ID Transação"
AND venda."No Embalagens" > 3
AND Transação.DataHora BETWEEN '2017-01-31' AND '2017-03-01'
UNION
SELECT distinct Transação.id as 'ID da Venda', Venda."No Embalagens" as Quantidade
FROM Transação, venda
WHERE Transação.id = venda."ID Transação"
AND venda."No Embalagens" < 2
AND Transação.DataHora BETWEEN '2018-03-31' AND '2018-05-01'
