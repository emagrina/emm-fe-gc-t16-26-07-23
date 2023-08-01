-- Insertamos piezas
INSERT INTO Piezas (Nombre) VALUES ('Pieza A');
INSERT INTO Piezas (Nombre) VALUES ('Pieza B');
INSERT INTO Piezas (Nombre) VALUES ('Pieza C');

-- Insertamos proveedores
INSERT INTO Proveedores (Id, Nombre) VALUES ('P001', 'Proveedor 1');
INSERT INTO Proveedores (Id, Nombre) VALUES ('P002', 'Proveedor 2');

-- Insertamos las relaciones en Suministra
INSERT INTO Suministra (CodigoPieza, IdProveedor, Precio) VALUES (1, 'P001', 100);
INSERT INTO Suministra (CodigoPieza, IdProveedor, Precio) VALUES (2, 'P001', 200);
INSERT INTO Suministra (CodigoPieza, IdProveedor, Precio) VALUES (3, 'P002', 300);

-- Actualizamos una pieza
UPDATE Piezas SET Nombre = 'Pieza X' WHERE Codigo = 1;

-- Actualizamos un proveedor
UPDATE Proveedores SET Nombre = 'Proveedor X' WHERE Id = 'P001';

-- Actualizamos el precio de una relación en Suministra
UPDATE Suministra SET Precio = 400 WHERE CodigoPieza = 1 AND IdProveedor = 'P001';

-- Primero, eliminamos las relaciones en Suministra
DELETE FROM Suministra WHERE CodigoPieza = 1 AND IdProveedor = 'P001';
DELETE FROM Suministra WHERE CodigoPieza = 2 AND IdProveedor = 'P001';
DELETE FROM Suministra WHERE CodigoPieza = 3 AND IdProveedor = 'P002';

-- Luego, eliminamos las piezas y los proveedores
DELETE FROM Piezas WHERE Codigo = 1;
DELETE FROM Piezas WHERE Codigo = 2;
DELETE FROM Piezas WHERE Codigo = 3;

DELETE FROM Proveedores WHERE Id = 'P001';
DELETE FROM Proveedores WHERE Id = 'P002';