.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 5. Selecionar o nome e nr de telefone dos fornecedores que trouxeram medicamentos cuja administracao é "via oral"

SELECT distinct Pessoa.nome, Pessoa."No Telefone" 
FROM Fornecedor ,Pessoa, Carregamento, Carga, Administração, Medicamento
WHERE fornecedor.id = pessoa.id
AND carregamento."ID Fornecedor" = fornecedor.id
AND Carga."ID Carregamento" = carregamento.id
AND Medicamento.id = Carga."ID Medicamento"
AND Medicamento."ID Administração" = Administração.id
AND Administração."Forma de Administração" = 'Via oral';

