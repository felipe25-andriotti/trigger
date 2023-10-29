
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

DELIMITER $
CREATE TRIGGER RegistroDataCriacaoPedido
BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN
SET NEW. DataPedido = NOW();
END;
$
DELIMITER ;

insert into pedidos (NomeCliente) values ('Candida');

select * from pedidos;