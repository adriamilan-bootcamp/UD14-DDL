CREATE DATABASE Ejercicio05;

USE Ejercicio05;

CREATE TABLE Almacenes (
  Codigo INT NOT NULL AUTO_INCREMENT,
  Lugar NCHAR(100) NULL,
  Capacidad INT NULL,
  PRIMARY KEY (Codigo)
);

CREATE TABLE Cajas (
  NumReferencia INT NOT NULL,
  Contenido NVARCHAR(100) NULL,
  Valor INT NULL,
  Almacen INT NULL,
  almacenes_codigo VARCHAR(45) NULL,
  PRIMARY KEY (NumReferencia),
  CONSTRAINT cajas_almacenes_codigo FOREIGN KEY (almacenes_codigo) REFERENCES Almacenes(Codigo)
);
