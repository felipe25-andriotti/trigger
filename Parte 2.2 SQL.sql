
CREATE TABLE Filmes (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(200),
    minutos INT
);

DELIMITER $

CREATE TRIGGER check_minutos BEFORE INSERT ON Filmes
FOR EACH ROW
BEGIN
    IF NEW.minutos < 0 THEN
        SET NEW.minutos = NULL;
    END IF;
END$

DELIMITER ;

INSERT INTO Filmes (titulo, minutos) VALUES ("The terrible trigger", 120);
INSERT INTO Filmes (titulo, minutos) VALUES ("O alto da compadecida", 135);
INSERT INTO Filmes (titulo, minutos) VALUES ("Faroeste caboclo", 246);
INSERT INTO Filmes (titulo, minutos) VALUES ("The matrix", 90);
INSERT INTO Filmes (titulo, minutos) VALUES ("Blade runner", -88);
INSERT INTO Filmes (titulo, minutos) VALUES ("O labirinto do fauno", 110);
INSERT INTO Filmes (titulo, minutos) VALUES ("Metropole", 0);
INSERT INTO Filmes (titulo, minutos) VALUES ("A lista", 120);

select * from filmes;