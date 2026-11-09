USE biblioteca_universitaria;

-- 1. ¿Qué recursos bibliográficos están registrados? (SELECT, ORDER BY)
SELECT ID_recurso, Titulo, Tematica, Formato, Editorial
FROM RECURSO
ORDER BY Titulo ASC;

-- 2. ¿Cuáles son los libros de tecnología? (WHERE, AND)
SELECT ID_recurso, Titulo, Editorial
FROM RECURSO
WHERE Tematica = 'Tecnologia' AND Formato = 'Libro'
ORDER BY Titulo;

-- 3. ¿Qué recursos contienen "Sistemas" en su título? (LIKE)
SELECT ID_recurso, Titulo, Tematica
FROM RECURSO
WHERE Titulo LIKE '%Sistemas%';

-- 4. ¿Qué formatos de recurso existen, sin repeticiones? (DISTINCT)
SELECT DISTINCT Formato
FROM RECURSO
ORDER BY Formato;

-- 5. ¿Qué estudiantes están registrados y qué programa cursan? (INNER JOIN)
SELECT u.Codigo_usuario, u.Nombre AS Estudiante, e.Programa, e.Semestre
FROM USUARIO AS u
INNER JOIN ESTUDIANTE AS e ON u.Codigo_usuario = e.Codigo_usuario
ORDER BY u.Nombre;

-- 6. ¿Qué recursos tienen préstamos sin devolución? (INNER JOIN múltiple)
SELECT p.ID_prestamo, u.Nombre AS Usuario, r.Titulo AS Recurso,
       p.Fecha_prestamo, p.Fecha_vencimiento
FROM PRESTAMO AS p
INNER JOIN USUARIO AS u ON p.Codigo_usuario = u.Codigo_usuario
INNER JOIN EJEMPLAR AS e ON p.Cod_ejemplar = e.Cod_ejemplar
INNER JOIN RECURSO AS r ON e.ID_recurso_fis = r.ID_recurso
WHERE p.Fecha_devolucion IS NULL
ORDER BY p.Fecha_vencimiento;

-- 7. ¿Qué usuarios tienen multas pendientes y cuánto deben? (INNER JOIN, WHERE)
SELECT m.ID_multa, u.Nombre AS Usuario, m.Valor AS Valor_multa,
       m.Fecha_multa, m.Estado_pago
FROM MULTA AS m
INNER JOIN PRESTAMO AS p ON m.ID_prestamo = p.ID_prestamo
INNER JOIN USUARIO AS u ON p.Codigo_usuario = u.Codigo_usuario
WHERE m.Estado_pago = 'Pendiente'
ORDER BY m.Valor DESC;

-- 8. ¿Qué recursos han sido reservados y por quién? (INNER JOIN)
SELECT u.Nombre AS Usuario, r.Titulo AS Recurso,
       re.Fecha_inicio, re.Fecha_fin, re.Estado
FROM RESERVA AS re
INNER JOIN USUARIO AS u ON re.Codigo_usuario = u.Codigo_usuario
INNER JOIN RECURSO AS r ON re.ID_recurso = r.ID_recurso
ORDER BY re.Fecha_inicio DESC;

-- 9. ¿A qué sede y universidad pertenece cada biblioteca? (INNER JOIN múltiple)
SELECT b.Nombre AS Biblioteca,
       s.Nombre AS Sede,
       u.Nombre AS Universidad,
       b.Ubicacion
FROM BIBLIOTECA AS b
INNER JOIN SEDE AS s ON b.ID_sede = s.ID_sede
INNER JOIN UNIVERSIDAD AS u ON s.NIT = u.NIT
ORDER BY u.Nombre, b.Nombre;

-- 10. ¿Quiénes son los autores de los recursos bibliográficos? (INNER JOIN múltiple)
SELECT r.Titulo AS Recurso,
       a.Nombre AS Nombre_autor,
       a.Apellido AS Apellido_autor,
       r.Tematica
FROM RECURSO AS r
INNER JOIN AUTOR_RECURSO AS ar ON r.ID_recurso = ar.ID_recurso
INNER JOIN AUTOR AS a ON ar.ID_autor = a.ID_autor
ORDER BY r.Titulo, a.Apellido;
