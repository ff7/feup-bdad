.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;


.print ''
.print 'Estado atual do Medicamento:'
.print ''

SELECT Medicamento.id , Medicamento.nome , Medicamento.Stock
FROM Medicamento
WHERE Medicamento.id = 51;

.print ''
.print 'Update da venda com id medicamento 51 vendendo 5 embalagens ;'
.print ''

INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (77, 51, 10);

.print 'Estado do Medicamento apos insercao em Venda :'
.print ''

.print ''
SELECT DISTINCT Medicamento.id , Medicamento.nome , Medicamento.Stock
FROM Medicamento
WHERE Medicamento.id = 51;

INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (51, 100, 29);

.print 'Estado do Medicamento apos insercao em Carga :'
.print ''

.print ''
SELECT DISTINCT Medicamento.id , Medicamento.nome , Medicamento.Stock
FROM Medicamento
WHERE Medicamento.id = 51;

