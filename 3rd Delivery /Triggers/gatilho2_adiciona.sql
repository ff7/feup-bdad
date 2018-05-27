.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--Quando chega um carregamento de medicamentos o seu stock aumenta

CREATE TRIGGER IF NOT EXISTS AdicionaStock
AFTER INSERT ON Carga
FOR EACH ROW
  BEGIN
    UPDATE Medicamento
    SET Stock = Stock + (SELECT Carga.Quantidade FROM Carga
    WHERE Medicamento.ID = Carga."ID Medicamento");
  END;

-- Quando vendemos medicamentos o seu stock diminui

CREATE TRIGGER IF NOT EXISTS RemoveStock
AFTER INSERT ON Venda
FOR EACH ROW
  BEGIN
    UPDATE Medicamento
    SET Stock = Stock - (SELECT Venda."No Embalagens" FROM Venda
    WHERE Medicamento.ID = Venda."ID Medicamento");
  END;
