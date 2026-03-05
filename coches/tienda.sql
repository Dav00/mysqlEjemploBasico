-- ======================================
-- BASE DE DATOS PRACTICA JOINS Y SUBCONSULTAS
-- ======================================

DROP DATABASE IF EXISTS tienda_sql;
CREATE DATABASE tienda_sql;
USE tienda_sql;

-- =========================
-- TABLA CLIENTES
-- =========================
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

-- =========================
-- TABLA CATEGORIAS
-- =========================
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- =========================
-- TABLA PRODUCTOS
-- =========================
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    id_categoria INT,
    stock INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- =========================
-- TABLA PEDIDOS
-- =========================
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATE,
    estado VARCHAR(50),
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- =========================
-- TABLA DETALLE_PEDIDO
-- =========================
CREATE TABLE detalle_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- ======================================
-- INSERTS
-- ======================================

-- CATEGORIAS
INSERT INTO categorias (nombre) VALUES
('Electrónica'),
('Ropa'),
('Hogar'),
('Deportes');

-- PRODUCTOS
INSERT INTO productos (nombre, precio, id_categoria, stock) VALUES
('Laptop',1200,1,10),
('Auriculares',80,1,50),
('Ratón',25,1,70),
('Camiseta',25,2,100),
('Zapatillas',90,2,40),
('Lámpara',45,3,30),
('Silla oficina',150,3,15),
('Mesa escritorio',250,3,10),
('Balón fútbol',30,4,60),
('Raqueta tenis',120,4,20);

-- CLIENTES
INSERT INTO clientes (nombre,email,ciudad,fecha_registro) VALUES
('Ana López','ana@email.com','Madrid','2024-01-10'),
('Carlos Ruiz','carlos@email.com','Barcelona','2024-03-12'),
('Laura Díaz','laura@email.com','Valencia','2024-05-01'),
('Miguel Torres','miguel@email.com','Sevilla','2024-06-15'),
('Lucía Romero','lucia@email.com','Madrid','2024-07-10'),
('Jorge Martín','jorge@email.com','Bilbao','2024-07-18'),
('Elena Navarro','elena@email.com','Zaragoza','2024-08-05');

-- PEDIDOS
INSERT INTO pedidos (id_cliente,fecha_pedido,estado,total) VALUES
(1,'2024-09-01','enviado',1280),
(1,'2024-09-10','pendiente',90),
(2,'2024-09-05','enviado',25),
(3,'2024-09-08','enviado',150),
(4,'2024-09-09','cancelado',45),
(5,'2024-09-12','enviado',250),
(6,'2024-09-15','enviado',30),
(7,'2024-09-20','pendiente',120);

-- DETALLE PEDIDO
INSERT INTO detalle_pedido (id_pedido,id_producto,cantidad,precio_unitario) VALUES
(1,1,1,1200),
(1,2,1,80),
(2,5,1,90),
(3,4,1,25),
(4,7,1,150),
(5,6,1,45),
(6,8,1,250),
(7,9,1,30),
(8,10,1,120);