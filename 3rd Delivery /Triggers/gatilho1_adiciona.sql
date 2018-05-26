.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica se a data de nascimento é valida (maior que 18 anos)

CREATE TRIGGER IF NOT EXISTS MinimaIdade
BEFORE UPDATE OF "Data de Nascimento" ON Pessoa
WHEN julianday(New."Data de Nascimento") > round((julianday('now') - 6570))
  BEGIN
    SELECT RAISE(ABORT, "data de nascimento invalida!");
  END;