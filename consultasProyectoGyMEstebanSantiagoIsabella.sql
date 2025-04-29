--- Punto A
SELECT 
    i.id_intercambio,
    i.tipo_intercambio AS "Tipo de Intercambio",
    i.fecha_transaccion AS "Fecha de Intercambio",
    
    -- Usuario que realizó el intercambio
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS "Usuario",
    
    -- Libro recibido
    l_recibido.nombre AS "Libro Recibido",
    a_recibido.autores AS "Autor(es) Recibido",
    gl_recibido.generos AS "Género(s) Recibido",
    inv_recibido.estado_fisico AS "Estado Físico Recibido"
    
FROM Intercambio i
JOIN Usuario u ON i.id_usuario = u.id_usuario
JOIN Inventario inv_recibido ON i.id_inventario = inv_recibido.id_inventario
JOIN Libro l_recibido ON inv_recibido.id_libro = l_recibido.id_libro

-- Subconsulta para autores del libro recibido
LEFT JOIN (
    SELECT 
        id_libro,
        LISTAGG(nombre1 || ' ' || COALESCE(nombre2 || ' ', '') || apellido1 || ' ' || COALESCE(apellido2, ''), ', ') 
        WITHIN GROUP (ORDER BY id_autor) AS autores
    FROM Autor
    GROUP BY id_libro
) a_recibido ON l_recibido.id_libro = a_recibido.id_libro

-- Subconsulta para géneros del libro recibido
LEFT JOIN (
    SELECT 
        id_libro,
        LISTAGG(genero, ', ') WITHIN GROUP (ORDER BY genero) AS generos
    FROM Genero_Libro
    GROUP BY id_libro
) gl_recibido ON l_recibido.id_libro = gl_recibido.id_libro

-- Información del libro entregado (si existe)
LEFT JOIN Inventario inv_entregado ON (
    inv_entregado.propietario_actual = u.id_usuario 
    AND inv_entregado.id_inventario != i.id_inventario
    AND inv_entregado.fecha_transaccion = i.fecha_transaccion
)
LEFT JOIN Libro l_entregado ON inv_entregado.id_libro = l_entregado.id_libro

-- Subconsulta para autores del libro entregado
LEFT JOIN (
    SELECT 
        id_libro,
        LISTAGG(nombre1 || ' ' || COALESCE(nombre2 || ' ', '') || apellido1 || ' ' || COALESCE(apellido2, ''), ', ') 
        WITHIN GROUP (ORDER BY id_autor) AS autores
    FROM Autor
    GROUP BY id_libro
) a_entregado ON l_entregado.id_libro = a_entregado.id_libro

-- Subconsulta para géneros del libro entregado
LEFT JOIN (
    SELECT 
        id_libro,
        LISTAGG(genero, ', ') WITHIN GROUP (ORDER BY genero) AS generos
    FROM Genero_Libro
    GROUP BY id_libro
) gl_entregado ON l_entregado.id_libro = gl_entregado.id_libro

-- Filtro por rango de fechas (ejemplo: primer trimestre 2024)
WHERE i.fecha_transaccion BETWEEN TO_DATE('2024-01-01', 'YYYY-MM-DD') AND TO_DATE('2024-03-31', 'YYYY-MM-DD')

ORDER BY i.fecha_transaccion DESC;

--- Punto B

SELECT 
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_completo,
    dg.año_donacion,
    dg.generos,
    dg.libros_donados_en_el_año
FROM (
    SELECT 
        d.id_usuario,
        EXTRACT(YEAR FROM d.fecha_donacion) AS año_donacion,
        LISTAGG(DISTINCT gl.genero, ', ') WITHIN GROUP (ORDER BY gl.genero) AS generos,
        COUNT(DISTINCT i.id_inventario) AS libros_donados_en_el_año
    FROM Donaciones d
    JOIN Inventario i ON d.id_inventario = i.id_inventario
    JOIN Libro l ON i.id_libro = l.id_libro
    JOIN Genero_Libro gl ON l.id_libro = gl.id_libro
    GROUP BY d.id_usuario, EXTRACT(YEAR FROM d.fecha_donacion)
) dg
JOIN Usuario u ON dg.id_usuario = u.id_usuario
ORDER BY dg.año_donacion DESC, dg.libros_donados_en_el_año DESC;




--- Punto C
SELECT
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_completo,
    u.telefono,
    u.email AS correo_electronico,
    
    -- Libros donados (agrupados)
    (SELECT LISTAGG(ld.nombre || ' (Autor(es): ' || 
                  (SELECT LISTAGG(a.nombre1 || ' ' || COALESCE(a.nombre2 || ' ', '') || 
                          a.apellido1 || ' ' || COALESCE(a.apellido2, ''), ', ')
                   FROM Autor a WHERE a.id_libro = ld.id_libro) || 
                  ', Fecha: ' || TO_CHAR(d.fecha_donacion, 'DD/MM/YYYY') || ')', '; ')
     FROM Donaciones d
     JOIN Inventario id ON d.id_inventario = id.id_inventario
     JOIN Libro ld ON id.id_libro = ld.id_libro
     WHERE d.id_usuario = u.id_usuario) AS libros_donados,
    
    -- Libros recibidos (agrupados)
    (SELECT LISTAGG(lr.nombre || ' (Autor(es): ' || 
                  (SELECT LISTAGG(a.nombre1 || ' ' || COALESCE(a.nombre2 || ' ', '') || 
                          a.apellido1 || ' ' || COALESCE(a.apellido2, ''), ', ')
                   FROM Autor a WHERE a.id_libro = lr.id_libro) || 
                  ', Género(s): ' || 
                  (SELECT LISTAGG(gl.genero, ', ') FROM Genero_Libro gl WHERE gl.id_libro = lr.id_libro) ||
                  ', Estado: ' || i.estado || ')', '; ')
     FROM Intercambio it
     JOIN Inventario i ON it.id_inventario = i.id_inventario
     JOIN Libro lr ON i.id_libro = lr.id_libro
     WHERE it.id_usuario = u.id_usuario AND it.tipo_intercambio = 'Compensacion') AS libros_recibidos,
    
    -- Saldo actual
    u.libros_donados AS saldo_actual

FROM Usuario u
WHERE u.id_usuario = 1;



--- Punto D
SELECT
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_completo,
    u.telefono,
    u.email AS correo_electronico,
    c.nombre AS ciudad,
    
    -- Información del libro en préstamo
    l.nombre AS titulo_libro,
    (SELECT LISTAGG(a.nombre1 || ' ' || COALESCE(a.nombre2 || ' ', '') || a.apellido1 || ' ' || COALESCE(a.apellido2, ''), ', ')
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    (SELECT LISTAGG(gl.genero, ', ') FROM Genero_Libro gl WHERE gl.id_libro = l.id_libro) AS generos,
    
    -- Información del intercambio
    i.id_inventario,
    i.estado_fisico AS condicion_libro,
    i.fecha_transaccion AS fecha_prestamo,
    i.fecha_devolucion AS fecha_vencimiento,
    TRUNC(i.fecha_devolucion - SYSDATE) AS dias_restantes
    
FROM
    Intercambio it
JOIN
    Inventario i ON it.id_inventario = i.id_inventario
JOIN
    Libro l ON i.id_libro = l.id_libro
JOIN
    Usuario u ON it.id_usuario = u.id_usuario
LEFT JOIN
    Ciudad c ON u.id_ciudad = c.id_ciudad
WHERE
    i.estado = 'Prestado'
    AND i.fecha_devolucion BETWEEN SYSDATE AND SYSDATE + 30
ORDER BY
    dias_restantes ASC;

--- Punto E
SELECT
    gl.genero,
    COUNT(DISTINCT l.id_libro) AS cantidad_libros,
    COUNT(i.id_inventario) AS ejemplares_disponibles,
    LISTAGG(DISTINCT 
        l.nombre || ' (Cat: ' || i.categoria || ')', 
        '; '
    ) WITHIN GROUP (ORDER BY i.categoria, l.nombre) AS libros_con_categoria
FROM
    Genero_Libro gl
JOIN
    Libro l ON gl.id_libro = l.id_libro
JOIN
    Inventario i ON l.id_libro = i.id_libro
WHERE
    i.estado = 'Disponible'
GROUP BY
    gl.genero
ORDER BY
     cantidad_libros DESC;
     

--- Punto F
SELECT 
    l.id_libro,
    l.nombre AS titulo_libro,
    -- Autores concatenados
    (SELECT LISTAGG(a.nombre1 || ' ' || COALESCE(a.nombre2 || ' ', '') || a.apellido1 || ' ' || COALESCE(a.apellido2, ''), ', ')
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    -- Géneros concatenados
    (SELECT LISTAGG(gl.genero, ', ') FROM Genero_Libro gl WHERE gl.id_libro = l.id_libro) AS generos,
    i.estado,
    i.categoria,
    i.fecha_transaccion AS fecha_ingreso,
    
    -- Origen del libro
    CASE
        WHEN d.id_donacion IS NOT NULL THEN 'Donación'
        WHEN it.id_intercambio IS NOT NULL THEN 'Intercambio'
        ELSE 'Propio'
    END AS origen,
    
    -- Persona que lo entregó (si aplica)
    CASE
        WHEN d.id_donacion IS NOT NULL THEN 
            (SELECT u.nombre1 || ' ' || u.apellido1 FROM Usuario u WHERE u.id_usuario = d.id_usuario)
        WHEN it.id_intercambio IS NOT NULL THEN
            (SELECT u.nombre1 || ' ' || u.apellido1 FROM Usuario u 
             JOIN Intercambio it2 ON u.id_usuario = it2.id_usuario 
             WHERE it2.id_inventario = i.id_inventario 
             AND it2.tipo_intercambio != 'Temporal' AND ROWNUM = 1)
        ELSE 'N/A'
    END AS entregado_por
    
FROM 
    Inventario i
JOIN 
    Libro l ON i.id_libro = l.id_libro
LEFT JOIN 
    Donaciones d ON i.id_inventario = d.id_inventario
LEFT JOIN 
    Intercambio it ON i.id_inventario = it.id_inventario AND it.tipo_intercambio != 'Temporal'
WHERE 
    i.propietario_actual = 4
ORDER BY 
    i.fecha_transaccion DESC;


--- CONSULTAS PROPIAS
--- Punto A

SELECT
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_donante,
    u.email,
    u.telefono,
    c.nombre AS ciudad,
    l.id_libro,
    l.nombre AS titulo_libro,
    -- Autores concatenados
    (SELECT LISTAGG(a.nombre1 || ' ' || COALESCE(a.nombre2 || ' ', '') || a.apellido1 || ' ' || COALESCE(a.apellido2, ''), ', ')
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    -- Géneros concatenados
    (SELECT LISTAGG(gl.genero, ', ') 
     FROM Genero_Libro gl WHERE gl.id_libro = l.id_libro) AS generos,
    i.estado_fisico,
    d.fecha_donacion,
    -- Información del libro en inventario
    i.id_inventario,
    i.categoria
FROM
    Donaciones d
JOIN
    Usuario u ON d.id_usuario = u.id_usuario
JOIN
    Inventario i ON d.id_inventario = i.id_inventario
JOIN
    Libro l ON i.id_libro = l.id_libro
LEFT JOIN
    Ciudad c ON u.id_ciudad = c.id_ciudad
WHERE
    u.javeriano = 'N'  -- Filtro para usuarios no javerianos
ORDER BY
    d.fecha_donacion DESC,
    u.apellido1,
    u.nombre1;

--- Punto B

SELECT
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 AS nombre_javeriano,
    u.email,
    u.telefono,
    it.id_intercambio,
    it.tipo_intercambio,
    it.fecha_transaccion,
    l.id_libro,
    l.nombre AS titulo_libro,
    -- Autores del libro intercambiado
    (SELECT LISTAGG(a.nombre1 || ' ' || a.apellido1, ', ')
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores
    
FROM
    Intercambio it
JOIN
    Usuario u ON it.id_usuario = u.id_usuario
JOIN
    Inventario i ON it.id_inventario = i.id_inventario
JOIN
    Libro l ON i.id_libro = l.id_libro
WHERE
    u.javeriano = 'Y'
    AND it.fecha_transaccion BETWEEN TO_DATE('01/01/2025', 'DD/MM/YYYY') 
                              AND TO_DATE('30/04/2025', 'DD/MM/YYYY')
    AND it.tipo_intercambio IN ('Definitivo', 'Prestamo', 'Compensacion')
ORDER BY
    it.fecha_transaccion DESC,
    it.tipo_intercambio;
    


-- Punto C
SELECT 
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_completo,
    c.nombre AS ciudad,
    u.telefono,
    u.email,
    'Donación' AS tipo_transaccion,
    d.fecha_donacion AS fecha_transaccion,
    l.nombre AS titulo_libro,
    (SELECT LISTAGG(a.nombre1 || ' ' || a.apellido1, ', ') 
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    i.estado_fisico AS condicion_libro,
    i.categoria
FROM 
    Donaciones d
JOIN 
    Usuario u ON d.id_usuario = u.id_usuario
JOIN 
    Ciudad c ON u.id_ciudad = c.id_ciudad
JOIN 
    Inventario i ON d.id_inventario = i.id_inventario
JOIN 
    Libro l ON i.id_libro = l.id_libro
WHERE 
    c.nombre != 'Cali'

UNION ALL

SELECT 
    u.id_usuario,
    u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ', '') || u.apellido1 || ' ' || COALESCE(u.apellido2, '') AS nombre_completo,
    c.nombre AS ciudad,
    u.telefono,
    u.email,
    it.tipo_intercambio AS tipo_transaccion,
    it.fecha_transaccion AS fecha_transaccion,
    l.nombre AS titulo_libro,
    (SELECT LISTAGG(a.nombre1 || ' ' || a.apellido1, ', ') 
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    i.estado_fisico AS condicion_libro,
    i.categoria
FROM 
    Intercambio it
JOIN 
    Usuario u ON it.id_usuario = u.id_usuario
JOIN 
    Ciudad c ON u.id_ciudad = c.id_ciudad
JOIN 
    Inventario i ON it.id_inventario = i.id_inventario
JOIN 
    Libro l ON i.id_libro = l.id_libro
WHERE 
    c.nombre != 'Cali'
    AND it.tipo_intercambio IN ('Definitivo', 'Prestamo', 'Compensacion')

ORDER BY 
    fecha_transaccion DESC,
    nombre_completo;
    
--- Punto D    
SELECT
    l.id_libro,
    l.nombre AS titulo_libro,
    (SELECT LISTAGG(a.nombre1 || ' ' || a.apellido1, ', ') 
     FROM Autor a WHERE a.id_libro = l.id_libro) AS autores,
    (SELECT LISTAGG(gl.genero, ', ') 
     FROM Genero_Libro gl WHERE gl.id_libro = l.id_libro) AS generos,
    i.id_inventario,
    i.estado_fisico,
    i.estado,
    i.categoria,
    i.fecha_publicacion,
    ir.ISBN,
    u.nombre1 || ' ' || u.apellido1 AS propietario_actual,
    c.nombre AS ciudad_propietario
FROM
    Libro l
JOIN
    Inventario i ON l.id_libro = i.id_libro
JOIN
    Usuario u ON i.propietario_actual = u.id_usuario
LEFT JOIN
    Ciudad c ON u.id_ciudad = c.id_ciudad
LEFT JOIN
    ISBN_Registro ir ON i.id_inventario = ir.id_inventario
ORDER BY
    l.nombre,
    i.estado_fisico,
    i.categoria;