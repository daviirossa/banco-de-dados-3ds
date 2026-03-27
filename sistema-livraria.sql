-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100),
    emailCliente VARCHAR(100)
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(200),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

SELECT * FROM Clientes;

-- Inserindo clientes na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES
(1, 'Ana Souza', 'ana.souza@email.com'),
(2, 'Carlos Silva', 'carlos.silva@email.com'),
(3, 'Maria Oliveira', 'maria.oliveira@email.com');

-- Inserindo compras na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES
(1, 1, 'O Senhor dos Anéis'),
(2, 2, 'Dom Casmurro'),
(3, 3, '1984'),
(4, 1, 'Harry Potter e a Pedra Filosofal');
