INSERT INTO Cientificos (DNI, NomApels) VALUES ('12345678', 'Maria Gomez');
INSERT INTO Proyectos (id, Nombre, Horas) VALUES ('P001', 'Proyecto 1', 100);
INSERT INTO Asignado_A (Cientifico, Proyecto) VALUES ('12345678', 'P001');

INSERT INTO Cientificos (DNI, NomApels) VALUES ('87654321', 'Carlos Pérez');
INSERT INTO Proyectos (id, Nombre, Horas) VALUES ('P002', 'Proyecto 2', 200);
INSERT INTO Asignado_A (Cientifico, Proyecto) VALUES ('87654321', 'P002');

UPDATE Cientificos SET NomApels = 'Maria Fernández' WHERE DNI = '12345678';
UPDATE Proyectos SET Nombre = 'Proyecto 1 Actualizado' WHERE id = 'P001';
UPDATE Asignado_A SET Proyecto = 'P002' WHERE Cientifico = '12345678';

UPDATE Cientificos SET NomApels = 'Carlos Rodríguez' WHERE DNI = '87654321';
UPDATE Proyectos SET Nombre = 'Proyecto 2 Actualizado' WHERE id = 'P002';
UPDATE Asignado_A SET Proyecto = 'P001' WHERE Cientifico = '87654321';

DELETE FROM Asignado_A WHERE Cientifico = '12345678' AND Proyecto = 'P002';
DELETE FROM Proyectos WHERE id = 'P001';
DELETE FROM Cientificos WHERE DNI = '12345678';

DELETE FROM Asignado_A WHERE Cientifico = '87654321' AND Proyecto = 'P001';
DELETE FROM Proyectos WHERE id = 'P002';
DELETE FROM Cientificos WHERE DNI = '87654321';