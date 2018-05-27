.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Erro caso o cliente nao tenha receita para uma transacao que assim o exija

CREATE TRIGGER IF NOT EXISTS InvalidaTransacao
BEFORE INSERT ON Venda
FOR EACH ROW
BEGIN
SELECT CASE
WHEN ((SELECT COUNT(*) FROM Venda, Transação, Medicamento WHERE NEW."ID Medicamento" = Medicamento.ID AND NEW."ID Transação" = Transação.ID AND Transação.receita = 'false' AND Medicamento.receita = 'true') > 0)
    THEN RAISE(ABORT, "Esta transacao so se pode realizar com receita")
  END;
END;