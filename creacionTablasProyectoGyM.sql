-- Eliminar tablas en orden por dependencias
DROP TABLE Genero_Libro CASCADE CONSTRAINTS;
DROP TABLE Autor CASCADE CONSTRAINTS;
DROP TABLE ISBN_Registro CASCADE CONSTRAINTS;
DROP TABLE Donaciones CASCADE CONSTRAINTS;
DROP TABLE Intercambio CASCADE CONSTRAINTS;
DROP TABLE Inventario CASCADE CONSTRAINTS;
DROP TABLE Libro CASCADE CONSTRAINTS;
DROP TABLE Usuario CASCADE CONSTRAINTS;
DROP TABLE Ciudad CASCADE CONSTRAINTS;

-- Crear tabla Ciudad
CREATE TABLE Ciudad (
    id_ciudad INT PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL
);

-- Crear tabla Usuario
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nombre1 VARCHAR2(100) NOT NULL,
    nombre2 VARCHAR2(100),
    apellido1 VARCHAR2(100) NOT NULL,
    apellido2 VARCHAR2(100),
    edad INT CHECK (edad >= 0),
    email VARCHAR2(255) UNIQUE NOT NULL,
    javeriano CHAR(1) CHECK (javeriano IN ('Y', 'N')),
    telefono VARCHAR2(20),
    libros_donados INT DEFAULT 0 CHECK (libros_donados >= 0),
    id_ciudad INT,
    FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad) ON DELETE SET NULL
);

-- Crear tabla Libro
CREATE TABLE Libro (
    id_libro INT PRIMARY KEY,
    nombre VARCHAR2(255) NOT NULL,
    sinopsis CLOB
);

-- Crear tabla Autor
CREATE TABLE Autor (
    id_libro INT,
    id_autor INT,
    nombre1 VARCHAR2(100) NOT NULL,
    nombre2 VARCHAR2(100),
    apellido1 VARCHAR2(100) NOT NULL,
    apellido2 VARCHAR2(100),
    CONSTRAINT pk_autor PRIMARY KEY (id_autor, id_libro),
    CONSTRAINT fk_autor_libro FOREIGN KEY (id_libro) REFERENCES Libro(id_libro) ON DELETE CASCADE
);

-- Crear tabla Inventario
CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY,
    id_libro INT,
    categoria NUMBER(1) CHECK (categoria BETWEEN 1 AND 5),
    propietario_actual INT,
    fecha_publicacion DATE,
    estado VARCHAR2(50),
    estado_fisico VARCHAR2(50),
    foto_portada VARCHAR2(255),
    fecha_transaccion DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro) ON DELETE CASCADE,
    FOREIGN KEY (propietario_actual) REFERENCES Usuario(id_usuario) ON DELETE SET NULL
);

-- Crear tabla ISBN_Registro
CREATE TABLE ISBN_Registro (
    ISBN VARCHAR2(20) PRIMARY KEY,
    id_inventario INT UNIQUE,
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario) ON DELETE CASCADE
);

-- Crear tabla Intercambio
CREATE TABLE Intercambio (
    id_intercambio INT PRIMARY KEY,
    id_inventario INT,
    id_usuario INT,
    tipo_intercambio VARCHAR2(50) NOT NULL,
    fecha_transaccion DATE NOT NULL,
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);

-- Crear tabla Donaciones
CREATE TABLE Donaciones (
    id_donacion INT PRIMARY KEY,
    id_inventario INT,
    id_usuario INT,
    fecha_donacion DATE NOT NULL,
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE
);

-- Crear tabla Genero_Libro
CREATE TABLE Genero_Libro (
    id_libro INT,
    genero VARCHAR2(100),
    PRIMARY KEY (id_libro, genero),
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro) ON DELETE CASCADE
);