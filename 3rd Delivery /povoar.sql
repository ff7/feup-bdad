PRAGMA foreign_keys = off;
 
-- Data : Medicamento
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (51, 123,'Naftinophen', 10 ,40,'true', 3);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (52, 124,'Aerobucil', 2.3 ,250,'false', 6);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (53, 125,'Fosinobazine', 40,10,'true', 5);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (54, 126,'Naftinophen', 25,80,'true', 1);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (55, 127,'Morphirelin Afinosine', 10,140,'false', 6);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (56, 128,'Veranized Alcafdafinil', 23,40,'false', 7);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (57, 129,'Veranized Alcafdafinil', 1.35,90,'false', 2);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (58, 130,'Aquasol', 11,140,'true', 4);
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (59, 131,'Blaccine', 6,240,'false', 7);

-- Data : Administração

INSERT INTO Administração (ID, "Forma de Administração") VALUES (41, 'Via oral');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (42, 'Via sublingual');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (43, 'Via retal');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (44, 'Via enteral');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (45, 'Via endovenosa');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (46, 'Via intranasal');
INSERT INTO Administração (ID, "Forma de Administração") VALUES (47, 'Via Intradérmica ');

-- Data : Doença Associada

INSERT INTO "Doença Associada" (ID, Nome) VALUES (31, 'Acantocitose');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (32, 'Acidúria orótica');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (33, 'Acidúria xanturénica');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (34, 'Pan-hipopituitarismo');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (35, 'Pneumonia intersticial idiopática');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (36, 'Xantoma disseminado');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (37, 'Edema angio-neurótico');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (38, 'Equinococose alveolar');
INSERT INTO "Doença Associada" (ID, Nome) VALUES (39, 'Estomatocitose');

-- Data : Carregamento

INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (21, '2018-07-02 3:30:23 PM', 147,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (22, '2018-02-01 10:30:01 AM', 169,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (23, '2018-03-01 5:00:59 PM', 1,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (24, '2018-02-07 9:30:45 AM', 47,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (25, '2018-01-30 9:35:20 AM', 17,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (26, '2018-07-15 2:37:46 PM', 149,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (27, '2018-04-02 3:30:27 PM', 247,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (28, '2018-03-13 3:27:00 PM', 947,9);
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (29, '2018-12-01 6:16:24 PM', 647,9);


-- Data : Carga

INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (52, 100, 22);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (12, 21, 2);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (13, 50, 3);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (14, 10, 4);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (15, 150,5);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (16, 30, 6);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (17, 20, 7);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (18, 27, 8);
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (19, 69, 9);

--Data : Pessoa

INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (1, 'Alexandre Pinto Cardoso',912345678, 'Chaves', '1998-02-09');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (2, 'Lívia Nogueira Moura',912342368, 'Paredes', '1990-01-12');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (3, 'Joana Pinto Sousa',912123782, 'Porto', '1982-10-24');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (4, 'Francisco Ademar Freitas Friande',91232170, 'Chaves', '1998-02-09');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (5, 'Bárbara Nogueira de Sousa Rodrigues',912375671, 'Chaves', '1994-02-09');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (6, 'João Pedro Fidalgo Bandeira',91235632, 'Chaves', '1982-02-09');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (7, 'Francisco Ferreira',912345645, 'Viseu', '1998-11-23');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (8, 'José Manuel Frade',912345763, 'Chaves', '1987-02-22');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (9, 'Rui Alves',914646678, 'Chaves', '1992-02-09');
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, "Data de Nascimento") VALUES (10, 'Mariana Freitas',912852674, 'Chaves', '1998-06-29');

-- Data: Cliente

INSERT INTO Cliente (ID) VALUES (1);
INSERT INTO Cliente (ID) VALUES (2);
INSERT INTO Cliente (ID) VALUES (3);
INSERT INTO Cliente (ID) VALUES (4);

-- Data : Empresa;

INSERT INTO Empresa (ID,Nome) VALUES (12345, 'Farmacos Lda');
INSERT INTO Empresa (ID,Nome) VALUES (12344, 'Infarmed');
INSERT INTO Empresa (ID,Nome) VALUES (12343, 'Fedxmed');
INSERT INTO Empresa (ID,Nome) VALUES (12353, 'ctt');

-- Data : Farmacêutico;

INSERT INTO Farmacêutico (ID) VALUES (5);
INSERT INTO Farmacêutico (ID) VALUES (6);
INSERT INTO Farmacêutico (ID) VALUES (7);

-- Data : Fornecedor

INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (7, 12345);
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (8, 12344);
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (9, 12343); 

-- Data : Transação

INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (71, '2018-04-02 3:30:27 PM', 'true', 4,7);
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (72, '2017-02-22 10:30:27 AM', 'false', 1,6);
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (73, '2016-02-17 2:16:27 PM', 'true', 4,5);
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (74, '2015-04-01 11:30:27 AM', 'true', 4,7);
 
-- Data : Venda
 
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (71, 58, 2);
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (72, 51, 1);
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (73, 51, 4);
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (74, 54, 1);

-- Data : Efeito secundario
 
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (81, 'Diarreia');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (82, 'Febre');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (83, 'Náusea');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (84, 'Reacção alérgica');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (85, 'Sonolência');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (86, 'Tontura');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (87, 'Erupção cutânea');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (88, 'Prisão de Ventre');
INSERT INTO "Efeito Secundário" (ID, Nome) VALUES (89, 'Vómitos');

PRAGMA foreign_keys = on;