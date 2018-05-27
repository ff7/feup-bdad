.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = OFF;

-- 10 .encontrar o medicamento com mais procura/maior numero de vendas

select Referência,max(num) 
from (select "Id Medicamento" as med,count(*) 
as num from Venda
 group by "Id Medicamento"),Medicamento;