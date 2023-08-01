CREATE TABLE despachos (
  Numero INT PRIMARY KEY,
  Capacidad INT
);

CREATE TABLE directores (
  DNI VARCHAR(8) PRIMARY KEY,
  NomApels NVARCHAR(255),
  DNIJefe VARCHAR(8),
  Despacho INT,
  FOREIGN KEY (Despacho) REFERENCES despachos (Numero),
  FOREIGN KEY (DNIJefe) REFERENCES directores (DNI)
);






