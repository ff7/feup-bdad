.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 3. Selecionar a media de preco de medicamentos sem receita cujo ID do fornecedor seja 9

SELECT avg(Preço) as media
FROM Medicamento, Carregamento, Carga, Fornecedor 
WHERE Medicamento.Receita = 'false'
AND Carga."ID Medicamento" = Medicamento.id 
AND Carga."ID Carregamento" = Carregamento.id
and Carregamento."ID Fornecedor" = 9;