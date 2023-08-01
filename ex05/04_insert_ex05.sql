INSERT INTO Facultad (Codigo, Nombre) VALUES (1, 'Facultad de Ciencias');
INSERT INTO Investigadores (DNI, NomApels, Facultad) VALUES ('12345678', 'Juan Perez', 1);
INSERT INTO Equipos (NumSerie, Nombre, Facultad) VALUES ('0001', 'Microscopio', 1);
INSERT INTO Reservas (DNI, NumSerie, Comienzo, Fin) VALUES ('12345678', '0001', '2023-01-01 10:00:00', '2023-01-01 12:00:00');

UPDATE Facultad SET Nombre = 'Facultad de Física' WHERE Codigo = 1;
UPDATE Investigadores SET NomApels = 'Pedro Ramirez', Facultad = 1 WHERE DNI = '12345678';
UPDATE Equipos SET Nombre = 'Telescopio', Facultad = 1 WHERE NumSerie = '0001';
UPDATE Reservas SET Comienzo = '2023-01-01 11:00:00', Fin = '2023-01-01 13:00:00' WHERE DNI = '12345678' AND NumSerie = '0001';

DELETE FROM Reservas WHERE DNI = '12345678' AND NumSerie = '0001';
DELETE FROM Equipos WHERE NumSerie = '0001';
DELETE FROM Investigadores WHERE DNI = '12345678';
DELETE FROM Facultad WHERE Codigo = 1;
