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

CREATE TABLE Cursos (
  cod_curso INT NOT NULL,
  nombre_curso VARCHAR(45) NULL,
  dni_profesor VARCHAR(8) NULL,
  maximo_alumnos INT NULL,
  fecha_inicio DATE NULL,
  fecha_final DATE NULL,
  PRIMARY KEY (cod_curso),
  CONSTRAINT curso_dni_profesor FOREIGN KEY ( dni_profesor ) REFERENCES Profesores( DNI )
  ON DELETE SET NULL
  ON UPDATE CASCADE
);