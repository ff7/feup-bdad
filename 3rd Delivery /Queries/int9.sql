.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 9. Selecionar os medicamentos com stock a 0, para serem encomendados mais

SELECT Referência FROM Medicamento 
WHERE Stock = 0
AND Receita = 'true'
ORDER BY Preço;