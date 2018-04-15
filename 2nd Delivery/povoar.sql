PRAGMA foreign_keys = ON;

-- Data : Medicamento
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (1, 123,'Naftinophen', 10 ,40,'true', 3)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (2, 124,'Aerobucil', 2.3 ,250,'false', 6)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (3, 125,'Fosinobazine', 40,10,'true', 5)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (4, 126,'Naftinophen', 25,80,'true', 1)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (5, 127,'Morphirelin Afinosine', 10,140,'false', 6)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (6, 128,'Veranized Alcafdafinil', 23,40,'false', 7)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (7, 129,'Veranized Alcafdafinil', 1.35,90,'false', 2)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (8, 130,'Aquasol', 11,140,'true', 4)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (9, 131,'Blaccine', 6,240,'false', 7)
INSERT INTO Medicamento (ID , Referência , Nome , Preço , Stock , Receita , "ID Administração") VALUES (10, 132,'Blaccine', 10,420,'false', 5)

-- Data : Administração

INSERT INTO Administração (ID, "Forma de Administração") VALUES (1, 'V	ia oral')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (2, 'Via sublingual')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (3, 'Via retal')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (4, 'Via enteral')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (5, 'Via endovenosa')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (6, 'Via intranasal')
INSERT INTO Administração (ID, "Forma de Administração") VALUES (7, 'Via Intradérmica ')

-- Data : Doença Associada

INSERT INTO Doença Associada (ID, Nome) VALUES (1, 'Acantocitose')
INSERT INTO Doença Associada (ID, Nome) VALUES (2, 'Acidúria orótica')
INSERT INTO Doença Associada (ID, Nome) VALUES (3, 'Acidúria xanturénica')
INSERT INTO Doença Associada (ID, Nome) VALUES (4, 'Pan-hipopituitarismo')
INSERT INTO Doença Associada (ID, Nome) VALUES (5, 'Pneumonia intersticial idiopática')
INSERT INTO Doença Associada (ID, Nome) VALUES (6, 'Xantoma disseminado')
INSERT INTO Doença Associada (ID, Nome) VALUES (7, 'Edema angio-neurótico')
INSERT INTO Doença Associada (ID, Nome) VALUES (8, 'Equinococose alveolar')
INSERT INTO Doença Associada (ID, Nome) VALUES (9, 'Estomatocitose')
INSERT INTO Doença Associada (ID, Nome) VALUES (10, 'JMP syndrome')
INSERT INTO Doença Associada (ID, Nome) VALUES (11, 'Deficiência de guanidinoacetato metiltransferase')

-- Data : Carga

INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (3, 100, 1)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (5, 21, 2)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (7, 50, 3)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (8, 10, 4)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (10, 150,5)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (1, 30, 6)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (6, 20, 7)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (4, 27, 8)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (2, 69, 9)
INSERT INTO Carga("ID Medicamento", Quantidade, "ID Carregamento") VALUES (9, 540, 10)

-- Data : Carregamento

INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (1, '2018-07-02 3:30:23 PM', 147,1)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (2, '2018-02-01 10:30:01 AM', 169,4)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (3, '2018-03-01 5:00:59 PM', 1,5)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (4, '2018-02-07 9:30:45 AM', 47,6)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (5, '2018-01-30 9:35:20 AM', 17,9)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (6, '2018-07-15 2:37:46 PM', 149,2)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (7, '2018-04-02 3:30:27 PM', 247,10)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (8, '2018-03-13 3:27:00 PM', 947,3)
INSERT INTO Carregamento(ID, DataHora, "No Fatura", "ID Fornecedor") VALUES (9, '2018-12-01 6:16:24 PM', 647,7)

-- Data: Cliente

INSERT INTO Cliente (ID) VALUES (1)
INSERT INTO Cliente (ID) VALUES (2)
INSERT INTO Cliente (ID) VALUES (3)
INSERT INTO Cliente (ID) VALUES (4)

--Data : Pessoa

INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (1, 'Alexandre Pinto Cardoso',912345678, Chaves, 19)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (2, 'Lívia Nogueira Moura',912342368, Paredes, 69)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (3, 'Joana Pinto Sousa',912123782, Porto, 42)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (4, 'Bárbara Nogueira de Sousa Rodrigues',91232178, Chaves, 22)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (5, 'Francisco Ademar Freitas Friande',912375678, Chaves, 30)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (6, 'João Pedro Fidalgo Bandeira',91235638, Chaves, 45)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (7, 'Francisco Ferreira',912345645, Chaves, 46)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (8, 'José Manuel Frade',912345768, Chaves, 50)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (9, 'Rui Alves',914646678, Chaves, 18)
INSERT INTO Pessoa (ID, Nome, "No Telefone", Localidade, Idade) VALUES (10, 'Mariana Freitas',912852678, Chaves, 67)

-- Data : Empresa

INSERT INTO Empresa (ID,Nome) VALUES (1, 'Farmacos Lda')
INSERT INTO Empresa (ID,Nome) VALUES (2, 'Infarmed')
INSERT INTO Empresa (ID,Nome) VALUES (3, 'Fedxmed')
INSERT INTO Empresa (ID,Nome) VALUES (4, 'ctt')

-- Data : Farmacêutico

INSERT INTO Farmacêutico (ID) VALUES (4)
INSERT INTO Farmacêutico (ID) VALUES (5)
INSERT INTO Farmacêutico (ID) VALUES (6)

-- Data : Fornecedor

INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (1, 1)
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (10, 1)
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (8, 2)
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (9, 2)
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (6, 3)
INSERT INTO Fornecedor(ID, "ID Empresa") VALUES (5, 4)

-- Data : Transação

INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (1, '2018-04-02 3:30:27 PM', 'true', 3,6)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (2, '2018-02-22 10:30:27 AM', 'false', 1,6)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (3, '2018-02-17 2:16:27 PM', 'true', 4,5)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (4, '2018-04-01 11:30:27 AM', 'true', 2,4)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (5, '2018-01-22 3:11:27 PM', 'false', 3,5)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (6, '2018-04-02 6:30:22 PM', 'true', 4,6)
INSERT INTO Transação (ID, DataHora, Receita, "ID Cliente", "ID Farmacêutico") VALUES (7, '2018-04-02 1:10:27 PM', 'false', 2,6)

-- Data : Venda

INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (1, 8, 2)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (2, 10, 1)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (3, 1, 4)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (4, 4, 1)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (5, 5, 2)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (6, 3, 1)
INSERT INTO Venda ("ID Transação", "ID Medicamento", "No Embalagens") VALUES (7, 7, 1)

-- Data : Efeito secundario

INSERT INTO Efeito secundario (ID, Nome) VALUES (1, 'Diarreia')
INSERT INTO Efeito secundario (ID, Nome) VALUES (2, 'Febre')
INSERT INTO Efeito secundario (ID, Nome) VALUES (3, 'Náusea')
INSERT INTO Efeito secundario (ID, Nome) VALUES (4, 'Reacção alérgica')
INSERT INTO Efeito secundario (ID, Nome) VALUES (5, 'Sonolência')
INSERT INTO Efeito secundario (ID, Nome) VALUES (6, 'Tontura')
INSERT INTO Efeito secundario (ID, Nome) VALUES (7, 'Erupção cutânea')
INSERT INTO Efeito secundario (ID, Nome) VALUES (8, 'Prisão de Ventre')
INSERT INTO Efeito secundario (ID, Nome) VALUES (9, 'Vómitos')
INSERT INTO Efeito secundario (ID, Nome) VALUES (10, 'Fadiga')
INSERT INTO Efeito secundario (ID, Nome) VALUES (11, 'Insuficiência cardíaca')