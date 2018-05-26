.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 8. Selecionar o nome e data de nascimento do Farmacêutico que vendeu mais embalagens de uma so vez
-- em 2018

SELECT Pessoa.nome as 'Nome do Farmacêutico', pessoa."Data de Nascimento", max(emb)
FROM Pessoa, (SELECT distinct Transação."ID Farmacêutico" as cod, Venda."No Embalagens" as emb
FROM Transação, Venda
WHERE Transação.id = Venda."ID Transação"
AND Transação.DataHora BETWEEN '2017-12-31' AND '2019-01-01'
GROUP BY Venda."No Embalagens")
WHERE Pessoa.ID = cod;