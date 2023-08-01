CREATE TABLE Facultad (
  Codigo INT PRIMARY KEY,
  Nombre VARCHAR(100)
);

CREATE TABLE Investigadores (
  DNI VARCHAR(8) PRIMARY KEY,
  NomApels VARCHAR(255),
  Facultad INT,
  FOREIGN KEY (Facultad) REFERENCES Facultad (Codigo)
);

CREATE TABLE Equipos (
  NumSerie CHAR(4) PRIMARY KEY,
  Nombre VARCHAR(100),
  Facultad INT,
  FOREIGN KEY (Facultad) REFERENCES Facultad (Codigo)
);

CREATE TABLE Reservas (
  DNI VARCHAR(8),
  NumSerie CHAR(4),
  Comienzo DATETIME,
  Fin DATETIME,
  PRIMARY KEY (DNI, NumSerie),
  FOREIGN KEY (DNI) REFERENCES Investigadores (DNI),
  FOREIGN KEY (NumSerie) REFERENCES Equipos (NumSerie)
);