CREATE DATABASE Ejercicio04;

USE Ejercicio04;

CREATE TABLE Departamentos(
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(100),
  presupuesto int,
  PRIMARY KEY (codigo)
);

CREATE TABLE Empleados(
  DNI varchar(8) NOT NULL UNIQUE,
  nombre varchar(100),
  apellidos varchar(255),
  departamento int NULL,
  PRIMARY KEY (DNI),
  CONSTRAINT departamento FOREIGN KEY (departamento ) REFERENCES Departamentos(codigo)
  ON DELETE SET NULL
  ON UPDATE CASCADE
);