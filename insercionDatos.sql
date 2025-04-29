-- Insertar datos en la tabla Ciudad
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (1, 'Cali');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (2, 'Palmira');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (3, 'Yumbo');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (4, 'Jamundi');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (5, 'Bogota');

--- Insertar usuarios
INSERT INTO Usuario (id_usuario, nombre1, apellido1, apellido2, edad, email, javeriano, telefono, libros_donados, id_ciudad)
VALUES (1, 'Santiago', 'Arango', 'Henao', 20, 'sarango@javerianacali.edu.co', 'Y', '3101020300', 0, 1);

INSERT INTO Usuario (id_usuario, nombre1, apellido1, apellido2, edad, email, javeriano, telefono, libros_donados, id_ciudad)
VALUES (2, 'Esteban', 'Munoz', 'Serrano', 19, 'estebanm@javerianacali.edu.co', 'Y', '3155478342', 0, 2);

INSERT INTO Usuario (id_usuario, nombre1, apellido1, apellido2, edad, email, javeriano, telefono, libros_donados, id_ciudad)
VALUES (3, 'Isabella', 'Pacheco', 'Marin', 20, 'isabellap@javerianacali.edu.co', 'Y', '3246294578', 0, 2);

INSERT INTO Usuario (id_usuario, nombre1, nombre2 ,apellido1, apellido2, edad, email, javeriano, telefono, libros_donados, id_ciudad)
VALUES (4, 'Juan', 'Carlos', 'Martinez', 'Arias', 45, 'jcmartinez@javerianacali.edu.co', 'Y', '3145683548', 0, 1);

INSERT INTO Usuario (id_usuario, nombre1, nombre2, apellido1, apellido2, edad, email, javeriano, telefono, libros_donados, id_ciudad) VALUES
(5, 'Esperanza', '', 'Serrano', 'Parra', 55, 'esperanza@email.com', 'N', '3154685932', 0, 1),
(6, 'Laura', 'Isabel', 'Hernandez', 'Gutierrez', 29, 'laura.hernandez@email.com', 'Y', '3151234567', 0, 1),
(7, 'Andres', 'Felipe', 'Torres', 'Vargas', 24, 'andres.torres@email.com', 'Y', '3202345678', 0, 2),
(8, 'Sofia', '', 'Ramirez', 'Diaz', 31, 'sofia.ramirez@email.com', 'N', '3103456789', 0, 3),
(9, 'Diego', 'Alejandro', 'Silva', 'Mendoza', 26, 'diego.silva@email.com', 'Y', '3004567890', 0, 4),
(10, 'Valentina', 'Maria', 'Castro', 'Rojas', 22, 'valentina.castro@email.com', 'N', '3155678901', 0, 5),
(11, 'Javier', 'Enrique', 'Ortiz', 'Paredes', 35, 'javier.ortiz@email.com', 'Y', '3206789012', 0, 1),
(12, 'Camila', '', 'Navarro', 'Fuentes', 27, 'camila.navarro@email.com', 'N', '3107890123', 0, 2),
(13, 'Ricardo', 'Alberto', 'Molina', 'Pena', 30, 'ricardo.molina@email.com', 'Y', '3008901234', 0, 3),
(14, 'Isabella', 'Carolina', 'Guerrero', 'Santos', 23, 'isabella.guerrero@email.com', 'N', '3159012345', 0, 4),
(15, 'Fernando', 'Jose', 'Delgado', 'Cordero', 33, 'fernando.delgado@email.com', 'Y', '3200123456', 0, 5),
(16, 'Gabriela', 'Alejandra', 'Rios', 'Paz', 28, 'gabriela.rios@email.com', 'N', '3101234509', 0, 1),
(17, 'Oscar', 'David', 'Vega', 'Luna', 25, 'oscar.vega@email.com', 'Y', '3002345601', 0, 2),
(18, 'Daniela', 'Patricia', 'Morales', 'Cruz', 32, 'daniela.morales@email.com', 'N', '3153456701', 0, 3),
(19, 'Luis', 'Miguel', 'Flores', 'Herrera', 29, 'luis.flores@email.com', 'Y', '3204567801', 0, 4),
(20, 'Mariana', 'Lucia', 'Medina', 'Reyes', 24, 'mariana.medina@email.com', 'N', '3105678901', 0, 5),
(21, 'Carlos', 'Arturo', 'Paredes', 'Zambrano', 36, 'carlos.paredes@email.com', 'Y', '3006789012', 0, 1),
(22, 'Adriana', 'Marcela', 'Salazar', 'Gomez', 27, 'adriana.salazar@email.com', 'N', '3157890123', 0, 2),
(23, 'Juan', 'Pablo', 'Cardenas', 'Velez', 31, 'juan.cardenas@email.com', 'Y', '3208901234', 0, 3),
(24, 'Paula', 'Andrea', 'Franco', 'Jimenez', 26, 'paula.franco@email.com', 'N', '3109012345', 0, 4),
(25, 'Sebastian', '', 'Giraldo', 'Moreno', 34, 'sebastian.giraldo@email.com', 'Y', '3000123456', 0, 5);

--- Insertar libros

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES
(1, 'Cien Anos de Soledad', 'La saga de la familia Buendia en el pueblo ficticio de Macondo.'),
(2, 'Don Quijote de la Mancha', 'Las aventuras del caballero Don Quijote y su escudero Sancho Panza.'),
(3, 'Orgullo y Prejuicio', 'La historia de amor y malentendidos entre Elizabeth Bennet y el señor Darcy.'),
(4, '1984', 'Un futuro distopico donde el gobierno vigila y controla todos los aspectos de la vida.'),
(5, 'El Principito', 'Un pequeno principe viaja de planeta en planeta aprendiendo sobre la vida y la naturaleza humana.');
INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(6, 'El coronel no tiene quien le escriba', 'Un coronel retirado espera indefinidamente una pension que nunca llega, mientras cuida de un gallo de pelea.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(7, 'Cronica de una muerte anunciada', 'La reconstruccion de un asesinato que todos en el pueblo sabian que iba a ocurrir pero nadie impidio.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(8, 'La metamorfosis', 'Gregorio Samsa despierta una manana convertido en un monstruoso insecto, alterando su vida y la de su familia.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(9, 'El extranjero', 'Meursault, un hombre indiferente a las convenciones sociales, comete un crimen aparentemente sin motivo.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(10, 'Rebelion en la granja', 'Los animales de una granja se rebelan contra los humanos pero terminan creando su propia tirania.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(11, 'Un mundo feliz', 'En una sociedad futurista donde los seres humanos son creados y condicionados para roles especificos.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(12, 'Fahrenheit 451', 'Guy Montag es un bombero cuyo trabajo es quemar libros en una sociedad distopica.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(13, 'El guardian entre el centeno', 'Holden Caulfield, un adolescente rebelde, deambula por Nueva York tras ser expulsado de su escuela.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(14, 'Matar a un ruisenor', 'Un abogado blanco defiende a un hombre negro falsamente acusado en el sur racista de los anos 1930.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(15, 'El gran Gatsby', 'El misterioso millonario Jay Gatsby organiza fastuosas fiestas mientras anhela a su antiguo amor.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(16, 'El viejo y el mar', 'Un viejo pescador cubano emprende una epica batalla con un gigantesco pez en el mar.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(17, 'Moby Dick', 'El capitán Ahab obsesionado con vengarse de la ballena blanca que le arranco una pierna.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(18, 'Los juegos del hambre', 'En un futuro distopico, adolescentes son seleccionados para competir en un juego televisado a muerte.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(19, 'El senor de los anillos', 'Frodo Bolson emprende un peligroso viaje para destruir un anillo malvado y salvar la Tierra Media.');

INSERT INTO Libro (id_libro, nombre, sinopsis) VALUES 
(20, 'Harry Potter y la piedra filosofal', 'Un nino mago descubre su herencia magica y comienza sus estudios en el colegio Hogwarts.');

-- Autores libros 
INSERT INTO Autor (id_libro, id_autor, nombre1, nombre2, apellido1, apellido2) VALUES
(6, 1, 'Gabriel', 'Garcia', 'Marquez', ''),
(7, 1, 'Gabriel', 'Garcia', 'Marquez', ''),
(8, 2, 'Franz', '', 'Kafka', ''),
(9, 3, 'Albert', '', 'Camus', ''),
(10, 4, 'George', '', 'Orwell', ''),
(11, 5, 'Aldous', '', 'Huxley', ''),
(12, 6, 'Ray', 'Douglas', 'Bradbury', ''),
(13, 7, 'J', 'D', 'Salinger', ''),
(14, 8, 'Harper', '', 'Lee', ''),
(15, 9, 'F', 'Scott', 'Fitzgerald', ''),
(16, 10, 'Ernest', '', 'Hemingway', ''),
(17, 11, 'Herman', '', 'Melville', ''),
(18, 12, 'Suzanne', '', 'Collins', ''),
(19, 13, 'J', 'R', 'Tolkien', ''),
(20, 14, 'J', 'K', 'Rowling', '');

INSERT INTO Autor (id_libro, id_autor, nombre1, apellido1) VALUES
(10, 15, 'Julian', 'Assange'); 

INSERT INTO Autor (id_libro, id_autor, nombre1, nombre2, apellido1, apellido2) VALUES
(1, 1, 'Gabriel', 'Garcia', 'Marquez', ''),
(2, 2, 'Miguel', 'de', 'Cervantes', 'Saavedra'),
(3, 3, 'Jane', '', 'Austen', ''),
(4, 4, 'George', '', 'Orwell', ''),
(5, 5, 'Antoine', 'de', 'Saint', 'Exupery');

-- Inventario para el libro 1 (Cien Anos de Soledad)
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(1, 1, 5, 1, TO_DATE('2000-05-01', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'cien_anos_1.jpg', NULL, NULL),
(2, 1, 4, 2, TO_DATE('2005-03-15', 'YYYY-MM-DD'), 'Prestado', 'Aceptable', 'cien_anos_2.jpg', TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'));

-- Inventario para el libro 2 (Don Quijote de la Mancha)
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(3, 2, 5, 3, TO_DATE('1998-09-10', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'don_quijote_1.jpg', NULL, NULL),
(4, 2, 3, 4, TO_DATE('2010-07-22', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'don_quijote_2.jpg', NULL, NULL);

-- Inventario para el libro 3 (Orgullo y Prejuicio)
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(5, 3, 4, 5, TO_DATE('2015-02-20', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'orgullo_prejuicio_1.jpg', NULL, NULL);

-- Inventario para el libro 4 (1984)
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(6, 4, 5, 6, TO_DATE('2018-08-30', 'YYYY-MM-DD'), 'Disponible', 'Nuevo', '1984_1.jpg', NULL, NULL),
(7, 4, 2, 7, TO_DATE('2020-01-12', 'YYYY-MM-DD'), 'Prestado', 'Bueno', '1984_2.jpg', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));

-- Inventario para el libro 5 (El Principito)
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(8, 5, 5, 8, TO_DATE('2001-12-01', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'el_principito_1.jpg', NULL, NULL),
(9, 5, 4, 9, TO_DATE('2003-11-15', 'YYYY-MM-DD'), 'Disponible', 'Aceptable', 'el_principito_2.jpg', NULL, NULL);

-- Insertar datos en Inventario
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
(10, 6, 5, 1, TO_DATE('2000-06-15', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'portada1.jpg', TO_DATE('2024-04-01', 'YYYY-MM-DD'), NULL),
(11, 7, 4, 2, TO_DATE('1995-09-10', 'YYYY-MM-DD'), 'Prestado', 'Regular', 'portada2.jpg', TO_DATE('2024-04-10', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD')),
(12, 8, 3, 3, TO_DATE('1915-11-20', 'YYYY-MM-DD'), 'Disponible', 'Dañado', 'portada3.jpg', TO_DATE('2024-04-05', 'YYYY-MM-DD'), NULL),
(13, 9, 2, 4, TO_DATE('1942-06-30', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'portada4.jpg', TO_DATE('2024-04-07', 'YYYY-MM-DD'), NULL),
(14, 10, 5, 5, TO_DATE('1945-08-17', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'portada5.jpg', TO_DATE('2024-04-08', 'YYYY-MM-DD'), NULL),
(15, 11, 4, 6, TO_DATE('1932-12-05', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'portada6.jpg', TO_DATE('2024-04-12', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD')),
(16, 12, 3, 7, TO_DATE('1953-10-19', 'YYYY-MM-DD'), 'Disponible', 'Regular', 'portada7.jpg', TO_DATE('2024-04-15', 'YYYY-MM-DD'), NULL),
(17, 13, 2, 8, TO_DATE('1951-07-16', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'portada8.jpg', TO_DATE('2024-04-18', 'YYYY-MM-DD'), NULL),
(18, 14, 5, 9, TO_DATE('1960-07-11', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'portada9.jpg', TO_DATE('2024-04-20', 'YYYY-MM-DD'), NULL),
(19, 15, 5, 10, TO_DATE('1925-04-10', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'portada10.jpg', TO_DATE('2024-04-22', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD')),
(20, 16, 4, 11, TO_DATE('1952-09-01', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'portada11.jpg', TO_DATE('2024-04-24', 'YYYY-MM-DD'), NULL),
(21, 17, 3, 12, TO_DATE('1851-11-14', 'YYYY-MM-DD'), 'Disponible', 'Regular', 'portada12.jpg', TO_DATE('2024-04-25', 'YYYY-MM-DD'), NULL),
(22, 18, 2, 13, TO_DATE('2008-09-14', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'portada13.jpg', TO_DATE('2024-04-26', 'YYYY-MM-DD'), NULL),
(23, 19, 5, 14, TO_DATE('1954-07-29', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'portada14.jpg', TO_DATE('2024-04-26', 'YYYY-MM-DD'), NULL),
(24, 20, 5, 15, TO_DATE('1997-06-26', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'portada15.jpg', TO_DATE('2024-04-27', 'YYYY-MM-DD'), NULL);



-- ISBN para el libro 1 (Cien Anos de Soledad)
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-3-16-148410-0', 1),  -- ISBN version 1
('978-3-16-148411-7', 2);  -- ISBN version 2

-- ISBN para el libro 2 (Don Quijote de la Mancha)
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-1-4028-9462-6', 3), 
('978-1-4028-9463-3', 4);  

-- ISBN para el libro 3 (Orgullo y Prejuicio)
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-0-141-43988-9', 5); 

-- ISBN para el libro 4 (1984)
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-0-452-28423-4', 6), 
('978-0-452-28424-1', 7); 

-- ISBN para el libro 5 (El Principito)
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-0-15-601219-5', 8),  
('978-0-15-601220-1', 9); 

-- Insertar ISBN para más libros
INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-0-123-47678-9', 10),
('978-0-234-56789-0', 11),
('978-0-345-67890-1', 12),
('978-0-456-72101-2', 13),
('978-0-567-89012-3', 14),
('978-0-678-90123-4', 15),
('978-0-789-01234-5', 16),
('978-0-890-12345-6', 17),
('978-0-901-23456-7', 18),
('978-0-012-34567-8', 19),
('978-0-123-45378-9', 20),
('978-0-234-54289-0', 21),
('978-0-345-67120-1', 22),
('978-0-456-78901-2', 23),
('978-0-567-24312-3', 24);

-- Cien Anos de Soledad
INSERT INTO Genero_Libro (id_libro, genero) VALUES (1, 'Realismo Magico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (1, 'Latinoamericana');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (1, 'Ficcion');

-- Don Quijote de la Mancha
INSERT INTO Genero_Libro (id_libro, genero) VALUES (2, 'Caballeria');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (2, 'Clasica');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (2, 'Aventura');

-- Orgullo y Prejuicio
INSERT INTO Genero_Libro (id_libro, genero) VALUES (3, 'Romance');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (3, 'Clasica');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (3, 'Social');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (3, 'Comedia');

-- 1984
INSERT INTO Genero_Libro (id_libro, genero) VALUES (4, 'Distopia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (4, 'Ciencia Ficcion');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (4, 'Politica');

-- El Principito
INSERT INTO Genero_Libro (id_libro, genero) VALUES (5, 'Fantasia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (5, 'Infantil');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (5, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (5, 'Fabula');

-- El coronel no tiene quien le escriba
INSERT INTO Genero_Libro (id_libro, genero) VALUES (6, 'Realismo Magico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (6, 'Latinoamericana');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (6, 'Social');

-- Cronica de una muerte anunciada
INSERT INTO Genero_Libro (id_libro, genero) VALUES (7, 'Latinoamericana');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (7, 'Realismo Magico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (7, 'Suspenso');

-- La metamorfosis
INSERT INTO Genero_Libro (id_libro, genero) VALUES (8, 'Surrealismo');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (8, 'Existencialismo');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (8, 'Filosofico');

-- El extranjero
INSERT INTO Genero_Libro (id_libro, genero) VALUES (9, 'Existencialismo');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (9, 'Filosofico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (9, 'Drama');

-- Rebelion en la granja
INSERT INTO Genero_Libro (id_libro, genero) VALUES (10, 'Politico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (10, 'Filosofico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (10, 'Allegorico');

-- Un mundo feliz
INSERT INTO Genero_Libro (id_libro, genero) VALUES (11, 'Distopia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (11, 'Ciencia Ficcion');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (11, 'Social');

-- Fahrenheit 451
INSERT INTO Genero_Libro (id_libro, genero) VALUES (12, 'Distopia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (12, 'Ciencia Ficcion');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (12, 'Politico');

-- El guardian entre el centeno
INSERT INTO Genero_Libro (id_libro, genero) VALUES (13, 'Filosofico');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (13, 'Existencialismo');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (13, 'Drama');

-- Matar a un ruisenor
INSERT INTO Genero_Libro (id_libro, genero) VALUES (14, 'Drama');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (14, 'Social');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (14, 'Politico');

-- El gran Gatsby
INSERT INTO Genero_Libro (id_libro, genero) VALUES (15, 'Drama');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (15, 'Clasica');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (15, 'Romance');

-- El viejo y el mar
INSERT INTO Genero_Libro (id_libro, genero) VALUES (16, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (16, 'Epica');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (16, 'Naturalismo');

-- Moby Dick
INSERT INTO Genero_Libro (id_libro, genero) VALUES (17, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (17, 'Epica');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (17, 'Maritimo');

-- Los juegos del hambre
INSERT INTO Genero_Libro (id_libro, genero) VALUES (18, 'Distopia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (18, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (18, 'Politico');

-- El senor de los anillos
INSERT INTO Genero_Libro (id_libro, genero) VALUES (19, 'Fantasia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (19, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (19, 'Epica');

-- Harry Potter y la piedra filosofal
INSERT INTO Genero_Libro (id_libro, genero) VALUES (20, 'Fantasia');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (20, 'Aventura');
INSERT INTO Genero_Libro (id_libro, genero) VALUES (20, 'Magia');



-- Intercambios tipo Prestamo
INSERT INTO Intercambio (id_intercambio, id_inventario, id_usuario, tipo_intercambio, fecha_transaccion) VALUES
(1, 1, 2, 'Prestamo', TO_DATE('2024-01-15', 'YYYY-MM-DD')),
(2, 2, 3, 'Prestamo', TO_DATE('2024-02-20', 'YYYY-MM-DD')),
(3, 3, 5, 'Prestamo', TO_DATE('2024-03-10', 'YYYY-MM-DD')),
(4, 4, 7, 'Prestamo', TO_DATE('2024-01-25', 'YYYY-MM-DD')),
(5, 5, 9, 'Prestamo', TO_DATE('2024-02-15', 'YYYY-MM-DD')),
(6, 6, 11, 'Prestamo', TO_DATE('2024-03-05', 'YYYY-MM-DD')),
(7, 7, 13, 'Prestamo', TO_DATE('2024-01-10', 'YYYY-MM-DD')),
(8, 8, 15, 'Prestamo', TO_DATE('2024-02-28', 'YYYY-MM-DD')),

-- Intercambios tipo Definitivo
(9, 9, 21, 'Definitivo', TO_DATE('2024-03-15', 'YYYY-MM-DD')),
(10, 10, 6, 'Definitivo', TO_DATE('2024-04-01', 'YYYY-MM-DD')),
(11, 11, 8, 'Definitivo', TO_DATE('2024-01-20', 'YYYY-MM-DD')),
(12, 12, 10, 'Definitivo', TO_DATE('2024-02-05', 'YYYY-MM-DD')),
(13, 13, 12, 'Definitivo', TO_DATE('2024-03-12', 'YYYY-MM-DD')),
(14, 14, 14, 'Definitivo', TO_DATE('2024-04-05', 'YYYY-MM-DD')),
(15, 15, 16, 'Definitivo', TO_DATE('2024-01-30', 'YYYY-MM-DD')),
(16, 16, 18, 'Definitivo', TO_DATE('2024-02-18', 'YYYY-MM-DD'));

INSERT INTO Intercambio (id_intercambio, id_inventario, id_usuario, tipo_intercambio, fecha_transaccion) VALUES
(17, 17, 20, 'Definitivo', TO_DATE('2024-03-22', 'YYYY-MM-DD')),  
(18, 18, 22, 'Definitivo', TO_DATE('2024-04-10', 'YYYY-MM-DD')), 


(19, 19, 5, 'Prestamo', TO_DATE('2024-01-12', 'YYYY-MM-DD')),    
(20, 20, 6, 'Prestamo', TO_DATE('2024-02-25', 'YYYY-MM-DD')),   
(21, 21, 8, 'Prestamo', TO_DATE('2024-03-18', 'YYYY-MM-DD')),    
(22, 22, 10, 'Prestamo', TO_DATE('2024-04-15', 'YYYY-MM-DD')),   
(23, 23, 12, 'Prestamo', TO_DATE('2024-01-08', 'YYYY-MM-DD')),  
(24, 24, 14, 'Prestamo', TO_DATE('2024-02-22', 'YYYY-MM-DD')),   
(25, 1, 17, 'Prestamo', TO_DATE('2024-03-28', 'YYYY-MM-DD')),   
(26, 3, 18, 'Prestamo', TO_DATE('2024-04-05', 'YYYY-MM-DD')), 
(27, 5, 20, 'Prestamo', TO_DATE('2024-01-18', 'YYYY-MM-DD')),
(28, 7, 22, 'Prestamo', TO_DATE('2024-02-14', 'YYYY-MM-DD')),
(29, 9, 24, 'Prestamo', TO_DATE('2024-03-08', 'YYYY-MM-DD')),   
(30, 11, 1, 'Prestamo', TO_DATE('2024-04-20', 'YYYY-MM-DD'));   


INSERT INTO Donaciones (id_donacion, id_inventario, id_usuario, fecha_donacion) VALUES
(13, 2, 2, TO_DATE('2023-12-10', 'YYYY-MM-DD')), 
(14, 4, 4, TO_DATE('2023-11-25', 'YYYY-MM-DD')), 
(15, 6, 6, TO_DATE('2023-10-30', 'YYYY-MM-DD')),  
(16, 8, 8, TO_DATE('2023-09-15', 'YYYY-MM-DD')),
(17, 10, 10, TO_DATE('2023-08-20', 'YYYY-MM-DD')), 
(18, 12, 12, TO_DATE('2023-07-25', 'YYYY-MM-DD')), 
(19, 14, 14, TO_DATE('2023-06-30', 'YYYY-MM-DD')), 
(20, 16, 16, TO_DATE('2023-05-15', 'YYYY-MM-DD')), 
(21, 18, 18, TO_DATE('2023-04-20', 'YYYY-MM-DD')), 
(22, 20, 20, TO_DATE('2023-03-25', 'YYYY-MM-DD')), 
(23, 22, 22, TO_DATE('2023-02-28', 'YYYY-MM-DD')), 
(24, 24, 24, TO_DATE('2023-01-15', 'YYYY-MM-DD')), 
(25, 1, 25, TO_DATE('2022-12-20', 'YYYY-MM-DD')),
(26, 5, 3, TO_DATE('2022-11-25', 'YYYY-MM-DD')), 
(27, 15, 7, TO_DATE('2022-10-30', 'YYYY-MM-DD')); 


INSERT INTO Donaciones (id_donacion, id_inventario, id_usuario, fecha_donacion) VALUES
(1, 1, 1, TO_DATE('2023-12-01', 'YYYY-MM-DD')),
(2, 3, 3, TO_DATE('2023-11-15', 'YYYY-MM-DD')), 
(3, 5, 5, TO_DATE('2023-10-20', 'YYYY-MM-DD')), 
(4, 7, 7, TO_DATE('2023-09-10', 'YYYY-MM-DD')),
(5, 9, 9, TO_DATE('2023-08-05', 'YYYY-MM-DD')), 
(6, 11, 11, TO_DATE('2023-07-15', 'YYYY-MM-DD')),
(7, 13, 13, TO_DATE('2023-06-20', 'YYYY-MM-DD')),
(8, 15, 15, TO_DATE('2023-05-10', 'YYYY-MM-DD')),
(9, 17, 17, TO_DATE('2023-04-05', 'YYYY-MM-DD')), 
(10, 19, 19, TO_DATE('2023-03-12', 'YYYY-MM-DD')),
(11, 21, 21, TO_DATE('2023-02-18', 'YYYY-MM-DD')),
(12, 23, 23, TO_DATE('2023-01-25', 'YYYY-MM-DD')); 
INSERT INTO Donaciones (id_donacion, id_inventario, id_usuario, fecha_donacion) VALUES
(13, 2, 2, TO_DATE('2023-12-10', 'YYYY-MM-DD')),
(14, 4, 7, TO_DATE('2023-11-25', 'YYYY-MM-DD')),  
(15, 6, 6, TO_DATE('2023-10-30', 'YYYY-MM-DD')),   
(16, 8, 8, TO_DATE('2023-09-15', 'YYYY-MM-DD'));   


-- Continuación del inventario
INSERT INTO Inventario (id_inventario, id_libro, categoria, propietario_actual, fecha_publicacion, estado, estado_fisico, foto_portada, fecha_transaccion, fecha_devolucion) VALUES
-- Libros adicionales de Cien Años de Soledad (IDs 25-27)
(25, 1, 4, 5, TO_DATE('2012-05-10', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'cien_anos_3.jpg', NULL, NULL),
(26, 1, 3, 4, TO_DATE('2008-08-15', 'YYYY-MM-DD'), 'No Disponible', 'Aceptable', 'cien_anos_4.jpg', NULL, NULL),
(27, 1, 5, 10, TO_DATE('2020-11-20', 'YYYY-MM-DD'), 'Prestado', 'Excelente', 'cien_anos_5.jpg', TO_DATE('2024-04-25', 'YYYY-MM-DD'), TO_DATE('2024-05-25', 'YYYY-MM-DD')),

-- Libros adicionales de Don Quijote (IDs 28-30)
(28, 2, 4, 15, TO_DATE('2015-03-18', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'don_quijote_3.jpg', NULL, NULL),
(29, 2, 2, 20, TO_DATE('2005-07-22', 'YYYY-MM-DD'), 'Prestado', 'Regular', 'don_quijote_4.jpg', TO_DATE('2024-04-20', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD')),
(30, 2, 5, 4, TO_DATE('2018-09-30', 'YYYY-MM-DD'), 'No Disponible', 'Excelente', 'don_quijote_5.jpg', NULL, NULL),

-- Libros adicionales de Orgullo y Prejuicio (IDs 31-33)
(31, 3, 3, 25, TO_DATE('2010-02-14', 'YYYY-MM-DD'), 'Disponible', 'Aceptable', 'orgullo_2.jpg', NULL, NULL),
(32, 3, 4, 3, TO_DATE('2017-06-10', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'orgullo_3.jpg', TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD')),
(33, 3, 5, 8, TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'orgullo_4.jpg', NULL, NULL),

-- Libros adicionales de 1984 (IDs 34-36)
(34, 4, 2, 12, TO_DATE('2007-04-20', 'YYYY-MM-DD'), 'Disponible', 'Regular', '1984_3.jpg', NULL, NULL),
(35, 4, 4, 17, TO_DATE('2015-08-12', 'YYYY-MM-DD'), 'Prestado', 'Bueno', '1984_4.jpg', TO_DATE('2024-04-10', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD')),
(36, 4, 5, 22, TO_DATE('2019-11-30', 'YYYY-MM-DD'), 'Disponible', 'Excelente', '1984_5.jpg', NULL, NULL),

-- Libros adicionales de El Principito (IDs 37-39)
(37, 5, 1, 4, TO_DATE('1995-12-01', 'YYYY-MM-DD'), 'No Disponible', 'Dañado', 'principito_3.jpg', NULL, NULL),
(38, 5, 3, 7, TO_DATE('2005-10-15', 'YYYY-MM-DD'), 'Prestado', 'Aceptable', 'principito_4.jpg', TO_DATE('2024-04-05', 'YYYY-MM-DD'), TO_DATE('2024-05-05', 'YYYY-MM-DD')),
(39, 5, 5, 14, TO_DATE('2018-07-22', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'principito_5.jpg', NULL, NULL),

-- Libros adicionales de otros títulos (IDs 40-50)
(40, 6, 4, 19, TO_DATE('2002-04-15', 'YYYY-MM-DD'), 'Disponible', 'Bueno', 'coronel_2.jpg', NULL, NULL),
(41, 7, 3, 4, TO_DATE('1998-03-10', 'YYYY-MM-DD'), 'No Disponible', 'Aceptable', 'cronica_2.jpg', TO_DATE('2024-04-18', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD')),
(42, 8, 2, 11, TO_DATE('1920-05-20', 'YYYY-MM-DD'), 'Disponible', 'Regular', 'metamorfosis_2.jpg', NULL, NULL),
(43, 9, 5, 16, TO_DATE('1950-08-30', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'extranjero_2.jpg', NULL, NULL),
(44, 10, 4, 21, TO_DATE('1960-09-17', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'rebelion_2.jpg', TO_DATE('2024-04-22', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD')),
(45, 11, 3, 6, TO_DATE('1935-12-05', 'YYYY-MM-DD'), 'Disponible', 'Aceptable', 'mundo_feliz_2.jpg', NULL, NULL),
(46, 12, 5, 13, TO_DATE('1965-10-19', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'fahrenheit_2.jpg', NULL, NULL),
(47, 13, 4, 18, TO_DATE('1960-07-16', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'guardian_2.jpg', TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-05-28', 'YYYY-MM-DD')),
(48, 14, 5, 23, TO_DATE('1970-07-11', 'YYYY-MM-DD'), 'Disponible', 'Excelente', 'ruisenor_2.jpg', NULL, NULL),
(49, 15, 3, 9, TO_DATE('1930-04-10', 'YYYY-MM-DD'), 'Disponible', 'Aceptable', 'gatsby_2.jpg', NULL, NULL),
(50, 16, 4, 24, TO_DATE('1960-09-01', 'YYYY-MM-DD'), 'Prestado', 'Bueno', 'viejo_mar_2.jpg', TO_DATE('2024-04-30', 'YYYY-MM-DD'), TO_DATE('2024-05-30', 'YYYY-MM-DD'));


INSERT INTO ISBN_Registro (ISBN, id_inventario) VALUES
('978-3-16-148412-4', 25),
('978-3-16-148413-1', 26),
('978-3-16-148414-8', 27),
('978-1-4028-9464-0', 28),
('978-1-4028-9465-7', 29),
('978-1-4028-9466-4', 30),
('978-0-141-43989-6', 31),
('978-0-141-43990-2', 32),
('978-0-141-43991-9', 33),
('978-0-452-28425-8', 34),
('978-0-452-28426-5', 35),
('978-0-452-28427-2', 36),
('978-0-15-601221-8', 37),
('978-0-15-601222-5', 38),
('978-0-15-601223-2', 39),
('978-0-123-47679-6', 40),
('978-0-234-56790-6', 41),
('978-0-345-67891-8', 42),
('978-0-456-78902-9', 43),
('978-0-567-89013-0', 44),
('978-0-678-90124-1', 45),
('978-0-789-01235-2', 46),
('978-0-890-12346-3', 47),
('978-0-901-23457-4', 48),
('978-0-012-34568-5', 49),
('978-0-123-45679-6', 50);