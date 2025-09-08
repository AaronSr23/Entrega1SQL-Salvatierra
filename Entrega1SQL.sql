-- =========================================================
-- Librería Online
-- Alumno: Aaron Salvatierra Rojas
-- =========================================================

CREATE DATABASE IF NOT EXISTS libreria_online;
USE libreria_online;

-- Tabla Autor
CREATE TABLE Autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  nacionalidad VARCHAR(100)
);

-- Tabla Libro
CREATE TABLE Libro (
  id_libro INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  precio DECIMAL(10,2),
  id_autor INT,
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- Tabla Cliente
CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE,
  telefono VARCHAR(50)
);

-- Tabla Pedido
CREATE TABLE Pedido (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE NOT NULL,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabla DetallePedido
CREATE TABLE DetallePedido (
  id_detalle INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido INT,
  id_libro INT,
  cantidad INT,
  FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
  FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
);
