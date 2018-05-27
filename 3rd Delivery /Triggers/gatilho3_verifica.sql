.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;


.print ''
.print 'Insercao de uma transacao sem receita para o medicamento 51 (que necessita de receita) ;'
.print ''

INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (79, '2018-04-02 3:30:27 PM', 'false', 4,7);
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (79, 51, 2);