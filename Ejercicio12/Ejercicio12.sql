CREATE DATABASE Ejercicio12;

USE Ejercicio12;

CREATE TABLE Profesores(
  DNI varchar(9) NOT NULL,
  NOMBRE varchar(35) UNIQUE,
  APELLIDO1 varchar(35),
  APELLIDO2 varchar(35),
  DIRECCION varchar(45),
  TITULO varchar(40),
  GANA double NOT NULL,
  PRIMARY KEY (DNI)
);



