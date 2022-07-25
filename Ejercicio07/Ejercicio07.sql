CREATE DATABASE Ejercicio07;

USE Ejercicio07;

CREATE TABLE Despachos(
  numero int NOT NULL AUTO_INCREMENT,
  capacidad int,
  PRIMARY KEY (numero)
);

CREATE TABLE Directores(
  DNI varchar(8) NOT NULL UNIQUE,
  nomApels varchar(255),
  despacho int NULL,
  PRIMARY KEY (DNI),
  FOREIGN KEY (despacho) REFERENCES Despachos(numero)
  ON DELETE SET NULL
  ON UPDATE CASCADE
);


CREATE TABLE Director_Director(
  Id INT NOT NULL AUTO_INCREMENT,
  dni_director varchar(8),
  dni_jefe varchar(8),
  PRIMARY KEY (Id),
  CONSTRAINT dni_subempleado FOREIGN KEY (  dni_director ) REFERENCES Directores ( DNI )
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT dni_jefe FOREIGN KEY (  dni_jefe ) REFERENCES Directores ( DNI )
  ON DELETE CASCADE
  ON UPDATE CASCADE
  );