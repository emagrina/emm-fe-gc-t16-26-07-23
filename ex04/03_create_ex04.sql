CREATE TABLE productos (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(100),
  Precio INT
);

CREATE TABLE Maquinas_registradoras (
  codigo INT PRIMARY KEY,
  piso INT
);

CREATE TABLE Cajeros (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  NomApels VARCHAR(255)
);

CREATE TABLE Ventas (
  Cajero INT,
  Maquina INT,
  Producto INT,
  PRIMARY KEY (Cajero, Maquina, Producto),
  FOREIGN KEY (Cajero) REFERENCES Cajeros (codigo),
  FOREIGN KEY (Maquina) REFERENCES Maquinas_registradoras (codigo),
  FOREIGN KEY (Producto) REFERENCES productos (codigo)
);