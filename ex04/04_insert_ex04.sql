
INSERT INTO productos (Nombre, Precio) VALUES ('Producto 1', 100);
INSERT INTO Maquinas_registradoras (codigo, piso) VALUES (1, 1);
INSERT INTO Cajeros (NomApels) VALUES ('Juan Perez');
INSERT INTO Ventas (Cajero, Maquina, Producto) VALUES (1, 1, 1);

UPDATE productos SET Nombre = 'Producto 1b', Precio = 150 WHERE codigo = 1;
UPDATE Maquinas_registradoras SET piso = 2 WHERE codigo = 1;
UPDATE Cajeros SET NomApels = 'Pedro Ramirez' WHERE codigo = 1;
UPDATE Ventas SET Producto = 1 WHERE Cajero = 1 AND Maquina = 1;

DELETE FROM Ventas WHERE Cajero = 1 AND Maquina = 1 AND Producto = 1;
DELETE FROM productos WHERE codigo = 1;
DELETE FROM Maquinas_registradoras WHERE codigo = 1;
DELETE FROM Cajeros WHERE codigo = 1;