.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 6. Selecionar a referencia dos medicamentos que tenham sido trazidos pela empresa 'Infarmed' e cujo stock seja maior que 50

SELECT distinct Medicamento.Referência as ref
FROM Fornecedor ,Empresa, Carregamento, Carga, Medicamento
WHERE fornecedor."ID Empresa" = empresa.id
AND empresa.nome = 'Infarmed'
AND carregamento."ID Fornecedor" = fornecedor.id
AND Carga."ID Carregamento" = carregamento.id
AND Medicamento.id = Carga."ID Medicamento"
AND Medicamento.stock > 50;

