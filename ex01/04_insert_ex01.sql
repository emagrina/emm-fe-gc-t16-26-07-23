-- Insertamos 5 directores con sus respectivos despachos
-- Asumiremos que el director con DNI '11111111' es el jefe máximo, por lo que su campo DNIJefe será NULL
INSERT INTO directores VALUES ('11111111', 'Maria González', NULL, 1);
INSERT INTO directores VALUES ('22222222', 'Carlos Ruiz', '11111111', 2);
INSERT INTO directores VALUES ('33333333', 'Juan Pérez', '11111111', 3);
INSERT INTO directores VALUES ('44444444', 'Laura García', '22222222', 4);
INSERT INTO directores VALUES ('55555555', 'Fernando López', '33333333', 5);

-- Actualizamos la capacidad de todos los despachos incrementándola en 5
UPDATE despachos SET Capacidad = Capacidad + 5 WHERE Numero BETWEEN 1 AND 5;

-- Actualizamos los nombres de los directores y cambiamos sus despachos
UPDATE directores SET NomApels = 'Mariana Martínez', Despacho = 2 WHERE DNI = '11111111';
UPDATE directores SET NomApels = 'Carlos Moreno', Despacho = 1 WHERE DNI = '22222222';
UPDATE directores SET NomApels = 'Juanita Sánchez', Despacho = 4 WHERE DNI = '33333333';
UPDATE directores SET NomApels = 'Lorena Torres', Despacho = 3 WHERE DNI = '44444444';
UPDATE directores SET NomApels = 'Fernando Rodríguez', Despacho = 1 WHERE DNI = '55555555';

-- Antes de eliminar a los directores, tenemos que remover sus referencias como jefes de otros directores
UPDATE directores SET DNIJefe = NULL WHERE DNIJefe = '11111111';
DELETE FROM directores WHERE DNI = '11111111';

UPDATE directores SET DNIJefe = NULL WHERE DNIJefe = '22222222';
DELETE FROM directores WHERE DNI = '22222222';

UPDATE directores SET DNIJefe = NULL WHERE DNIJefe = '33333333';
DELETE FROM directores WHERE DNI = '33333333';

-- Primero, eliminamos los directores asignados a los despachos
DELETE FROM directores WHERE DNI = '11111111';
DELETE FROM directores WHERE DNI = '22222222';
DELETE FROM directores WHERE DNI = '33333333';
DELETE FROM directores WHERE DNI = '44444444';
DELETE FROM directores WHERE DNI = '55555555';

-- Ahora, podemos eliminar los despachos
DELETE FROM despachos WHERE Numero = 1;
DELETE FROM despachos WHERE Numero = 2;
DELETE FROM despachos WHERE Numero = 3;
DELETE FROM despachos WHERE Numero = 4;
DELETE FROM despachos WHERE Numero = 5;