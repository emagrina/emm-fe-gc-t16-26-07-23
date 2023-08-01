
CREATE TABLE Cientificos (
  DNI VARCHAR(8) PRIMARY KEY,
  NomApels VARCHAR(255)
);

CREATE TABLE Proyectos (
  id CHAR(4) PRIMARY KEY,
  Nombre VARCHAR(255),
  Horas INT
);

CREATE TABLE Asignado_A (
  Cientifico VARCHAR(8),
  Proyecto CHAR(4),
  PRIMARY KEY (Cientifico, Proyecto),
  FOREIGN KEY (Cientifico) REFERENCES Cientificos (DNI),
  FOREIGN KEY (Proyecto) REFERENCES Proyectos (id)
);