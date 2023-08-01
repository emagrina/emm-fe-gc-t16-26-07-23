
CREATE TABLE Piezas (
  Codigo INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(100)
);

CREATE TABLE Proveedores (
  Id CHAR(4) PRIMARY KEY,
  Nombre VARCHAR(100)
);

CREATE TABLE Suministra (
  CodigoPieza INT,
  IdProveedor CHAR(4),
  Precio INT,
  PRIMARY KEY (CodigoPieza, IdProveedor),
  FOREIGN KEY (CodigoPieza) REFERENCES Piezas (Codigo),
  FOREIGN KEY (IdProveedor) REFERENCES Proveedores (Id)
);