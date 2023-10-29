CREATE TABLE Pedidos (
IDPedido INT AUTO_INCREMENT PRIMARY KEY,

DataPedido DATETIME,

NomeCliente VARCHAR(100)
);

-- Inserção de dados de exemplo com a função NOW()
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES
(NOW(), 'Josefa'),
(NOW(), 'Carlos'),
(NOW(), 'Joana');

select * from pedidos;