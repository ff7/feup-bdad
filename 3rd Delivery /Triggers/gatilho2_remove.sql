.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS AdicionaStock;
DROP TRIGGER IF EXISTS RemoveStock;