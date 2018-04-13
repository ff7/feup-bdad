--
-- File generated with SQLiteStudio v3.1.1 on sex abr 13 23:07:19 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Administração
DROP TABLE IF EXISTS Administração;

CREATE TABLE Administração (
    ID                       INTEGER PRIMARY KEY,
    [Forma de Administração] STRING
);


-- Table: Carga
DROP TABLE IF EXISTS Carga;

CREATE TABLE Carga (
    [ID Medicamento]  INTEGER REFERENCES Medicamento (ID) 
                              PRIMARY KEY,
    Quantidade        INTEGER,
    [ID Carregamento]         REFERENCES Carregamento (ID) 
);


-- Table: Carregamento
DROP TABLE IF EXISTS Carregamento;

CREATE TABLE Carregamento (
    ID              INTEGER  PRIMARY KEY,
    DataHora        DATETIME,
    [No Fatura]     INTEGER,
    [ID Fornecedor] INTEGER  REFERENCES Fornecedor (ID) 
);


-- Table: Cliente
DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente (
    ID INTEGER REFERENCES Pessoa (ID) 
             PRIMARY KEY
);


-- Table: Doença Associada
DROP TABLE IF EXISTS [Doença Associada];

CREATE TABLE [Doença Associada] (
    ID   INTEGER PRIMARY KEY,
    Nome STRING
);


-- Table: Efeito Secundário
DROP TABLE IF EXISTS [Efeito Secundário];

CREATE TABLE [Efeito Secundário] (
    ID   INTEGER PRIMARY KEY,
    Nome STRING
);


-- Table: Empresa
DROP TABLE IF EXISTS Empresa;

CREATE TABLE Empresa (
    ID   INTEGER PRIMARY KEY,
    Nome STRING
);


-- Table: Farmacêutico
DROP TABLE IF EXISTS Farmacêutico;

CREATE TABLE Farmacêutico (
    ID INTEGER REFERENCES Pessoa (ID) 
             PRIMARY KEY
);


-- Table: Fornecedor
DROP TABLE IF EXISTS Fornecedor;

CREATE TABLE Fornecedor (
    ID           INTEGER REFERENCES Pessoa (ID) 
                         PRIMARY KEY,
    [ID Empresa] INTEGER REFERENCES Empresa (ID) 
);


-- Table: Medicamento
DROP TABLE IF EXISTS Medicamento;

CREATE TABLE Medicamento (
    ID                 INTEGER PRIMARY KEY,
    Referência         INTEGER,
    Nome               STRING,
    Preço              INTEGER,
    Stock              INTEGER,
    Receita            BOOLEAN,
    [ID Administração] INTEGER REFERENCES Administração (ID) 
);


-- Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    ID            INTEGER PRIMARY KEY
                          UNIQUE,
    Nome          STRING  NOT NULL,
    [No Telefone] STRING  NOT NULL
                          UNIQUE,
    Localidade    STRING,
    Idade         INTEGER
);


-- Table: Transação
DROP TABLE IF EXISTS Transação;

CREATE TABLE Transação (
    ID                INTEGER  PRIMARY KEY,
    DataHora          DATETIME,
    Receita           BOOLEAN,
    [ID Cliente]      INTEGER  REFERENCES Cliente (ID),
    [ID Farmacêutico] INTEGER  REFERENCES Farmacêutico (ID) 
);


-- Table: Venda
DROP TABLE IF EXISTS Venda;

CREATE TABLE Venda (
    [ID Transação]   INTEGER REFERENCES Transação (ID) 
                             PRIMARY KEY,
    [ID Medicamento] INTEGER REFERENCES Medicamento (ID),
    [No Embalagens]  INTEGER
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
