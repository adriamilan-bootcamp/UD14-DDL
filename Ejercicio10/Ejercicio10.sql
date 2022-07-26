CREATE DATABASE Ejercicio10;

USE Ejercicio10;


CREATE TABLE Cajeros(
  codigo int NOT NULL AUTO_INCREMENT,
  nomApels varchar(255),
  PRIMARY KEY (codigo)
);

CREATE TABLE Productos(
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(100),
  precio int,
  PRIMARY KEY (codigo)
);

CREATE TABLE Maquinas_Registradoras(
  codigo int NOT NULL AUTO_INCREMENT,
  piso int,
  PRIMARY KEY (codigo)
);

CREATE TABLE Ventas(
  codigo int NOT NULL AUTO_INCREMENT,
  cajero int,
  maquina int,
  producto int,
  PRIMARY KEY (codigo),
  CONSTRAINT codigo_cajero FOREIGN KEY ( cajero ) REFERENCES Cajeros( codigo )
  ON DELETE SET NULL
  ON UPDATE CASCADE,
  CONSTRAINT codigo_producto FOREIGN KEY ( producto ) REFERENCES Productos( codigo )
  ON DELETE SET NULL
  ON UPDATE CASCADE,
  CONSTRAINT codigo_maquina_registradora FOREIGN KEY ( maquina ) REFERENCES Maquinas_Registradoras( codigo )
  ON DELETE SET NULL
  ON UPDATE CASCADE
);
