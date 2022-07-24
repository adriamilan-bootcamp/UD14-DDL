CREATE DATABASE Ejercicio08;

USE Ejercicio08;

CREATE TABLE Piezas (
  Codigo INT NOT NULL AUTO_INCREMENT,
  Nombre NVARCHAR(100) NULL,
  PRIMARY KEY (Codigo)
);

CREATE TABLE Proveedores (
  Id CHAR(4) NOT NULL,
  Nombre NVARCHAR(100) NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Suministra (
  CodigoPieza INT NOT NULL,
  IdProveedor CHAR(4) NOT NULL,
  Precio INT NULL,
  PRIMARY KEY (CodigoPieza, IdProveedor),
  FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo),
  FOREIGN KEY (IdProveedor) REFERENCES Proveedores(Id)
);