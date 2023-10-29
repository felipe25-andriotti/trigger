CREATE TABLE Filmes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200),
    minutos INT
);

INSERT INTO Filmes (titulo, minutos) VALUES ("The terrible trigger", 120);
INSERT INTO Filmes (titulo, minutos) VALUES ("O alto da compadecida", 135);
INSERT INTO Filmes (titulo, minutos) VALUES ("Faroeste caboclo", 246);
INSERT INTO Filmes (titulo, minutos) VALUES ("The matrix", 90);
INSERT INTO Filmes (titulo, minutos) VALUES ("Blade runner", -88);
INSERT INTO Filmes (titulo, minutos) VALUES ("O labirinto do fauno", 110);
INSERT INTO Filmes (titulo, minutos) VALUES ("Metropole", 0);
INSERT INTO Filmes (titulo, minutos) VALUES ("A lista", 120);

CREATE TABLE Log_deletions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200),
    quando DATETIME,
    quem VARCHAR(40)
);

DELIMITER $$

CREATE TRIGGER log_deletions AFTER DELETE ON Filmes
FOR EACH ROW
BEGIN
    INSERT INTO Log_deletions (titulo, quando, quem) VALUES (OLD.titulo, NOW(), USER());
END$$

DELIMITER ;

DELETE FROM Filmes WHERE id = 2;
DELETE FROM Filmes WHERE id = 3;

SELECT * FROM Log_deletions;



