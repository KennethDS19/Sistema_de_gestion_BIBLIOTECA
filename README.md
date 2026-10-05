## Tabla de Contenido

* [1. Contexto del problema y conceptos importantes](#1-contexto-del-problema-y-conceptos-importantes-en-la-temática-de-sistema-de-gestión-de-una-biblioteca-universitaria)
* [2. Tendencias actuales en dichos conceptos](#2-tendencias-actuales-en-dichos-conceptos)
* [3. Consultar y analizar al menos 2 herramientas existentes](#3-consultar-y-analizar-al-menos-2-herramientas-existentes-en-el-mercado-para-el-problema-o-situación-asignado)
* [4. Diagrama Entidad Relación](#4-diagrama-entidad-relación)
* [5. Introducción y Justificación del Nivel de Normalización](#5-introducción-y-justificación-del-nivel-de-normalización)
* [6. Análisis del Modelo Entidad - Relación](#6-análisis-del-modelo-entidad---relación)
* [7. Primera Forma Normal](#7-primera-forma-normal)
* [8. Segunda Forma Normal](#8-segunda-forma-normal)
* [9. Tercera Forma Normal](#9-tercera-forma-normal)
* [10. Modelo Relacional Final](#10-modelo-relacional-final)
* [Referencias Bibliográficas](#referencias-bibliográficas)


# CONSULTA DE EXPLORACIÓN
## Sistema de gestión de una biblioteca universitaria

---

María Bueno - 2243504
María Escalante - 2242732
Karol Lizarazo - 2243131
Mariana Martínez - 2242746
Kenneth Silva - 2242735
Juliana Serrano - 2221122
---

## 1. Contexto del problema y conceptos importantes en la temática de sistema de gestión de una biblioteca universitaria

Para las bibliotecas existe la necesidad latente de organizar y automatizar los procesos como consulta, préstamo, devolución, renovación y reserva de recursos bibliográficos, de acuerdo con su disponibilidad. La implementación de un sistema de gestión de bibliotecas permite optimizar la administración de libros, tesis, revistas y otros recursos en diferentes formatos, facilitando su organización y consulta, evitando conflictos en los préstamos y mejorando la experiencia de los usuarios de una universidad: estudiantes, docentes y administrativos.

### Sistema de Gestión de Bibliotecas
Se refiere a un conjunto automatizado que contemple las funciones de recopilación, almacenamiento, búsqueda y distribución del material bibliográfico de forma que se puedan satisfacer las necesidades y demandas de la institución, y al mismo tiempo mejorar la experiencia de los usuarios.

### Usuarios (estudiantes, docentes y administrativos)
Para los usuarios en general el sistema de gestión debe contar con un panel administrativo de usuario que permita la búsqueda sistemática de recursos, verificación de la disponibilidad, la solicitud y el seguimiento en los préstamos, guardar colecciones de recursos previos, la gestión de pagos en el caso de multas y otras acciones que mejoren la experiencia al usuario.

### Libros y otros recursos bibliográficos
Contempla la adquisición, donación o canje de los recursos bibliográficos con otras organizaciones y distribuidores, sean libros, tesis, revistas y/o recursos audiovisuales en distintas áreas del conocimiento. Asegurando un acceso a información internacional y la calidad en la recuperación de la información por parte del usuario, para lo que se requiere aplicar criterios de selección que garanticen la veracidad y relevancia de los recursos adquiridos tanto físicos como digitales.

### Préstamo y devolución del material
Implica la administración por parte de los usuarios de las solicitudes para adquirir recursos físicos de la biblioteca, en una red que actualice la disponibilidad y establezca el cronograma para el recurso determinado de forma que se eviten superposiciones en el préstamo de materiales.

### Renovación de préstamos
Aplica para los materiales físicos de la biblioteca, y es la extensión del tiempo de uso de un recurso ya prestado, sujeta a la disponibilidad del material (que no esté reservado por otro usuario) y la verificación de paz y salvos o el sobrepaso del límite de renovaciones permitidas, de forma que se asegure que otros usuarios también puedan prestar el material.

### Reserva de libros
Una reserva se trata de pedirle a la biblioteca que cuando un documento que en ese momento se encuentra prestado, tengamos la prioridad para pedirlo prestado.

Se debe tener en cuenta que, solo se puede reservar sobre ejemplares prestados, la reserva se realiza sobre un ejemplar específico y no sobre un título. Además, la biblioteca tiene la obligación de informar sobre el tiempo de espera al usuario.

### Catálogo bibliográfico
Es un registro organizado que contiene la descripción de todos los materiales disponibles en una biblioteca incluye libros, revistas, tesis, entre otros. Cada registro comprende datos como autor, editorial, título, año de publicación, clasificación y ubicación del material bien sea física o digital.

### Disponibilidad de ejemplares
Se refiere a la disponibilidad del material dentro de la biblioteca, bien sea disponibilidad física o digital de la revista, libro, artículo, tesis u otros recursos.

### Multas por retraso o no devolución
Las multas son sanciones administrativas aplicadas a los usuarios que incumplen con los plazos estipulados para la entrega del material. Estas pueden ser recargos económicos, suspensión temporal o restricciones para realizar reservas u otros servicios, todo ello de acuerdo a las políticas propias de la biblioteca.

### Gestor de bases de datos
Los gestores de datos comprenden como una capa intermedia entre los programas que utiliza el usuario y el sistema operativo del mismo. Son los encargados de establecer comunicación entre los dos sistemas indicados anteriormente. Este gestor presta los siguientes servicios: definición y creación de la base de datos, manipulación de los datos, acceso controlado de los datos por medio de mecanismos de seguridad, mantener la integridad de los datos, mecanismos de copias de respaldo y recuperación con el fin de poder restablecer la información en caso de fallos del sistema.

---

## 2. Tendencias actuales en dichos conceptos

Las tendencias actuales en los sistemas de gestión de bibliotecas (ILS) se encaminan hacia el almacenamiento de información en la nube, la asistencia con inteligencia artificial para el uso de chatbots, la implementación de sistemas de recomendación de lecturas y la optimización de procesos internos. Con la finalidad de ofrecer una mejor organización y recuperación de información lo que permite mejorar la eficiencia y experiencia del usuario.

Los ILS cuentan con un modelo de usuarios, basado en el rol que le corresponde a cada persona; dependiendo del rol que desempeñan pueden obtener ciertos beneficios adicionales o controles administrativos, gestionados idealmente mediante un sistema de identidad digital única. Asimismo los libros y otros recursos bibliográficos se registran en la nube donde se almacenan en un único sistema integrado que centraliza y optimiza tareas operativas esenciales como la catalogación, consultas, registros de usuarios, préstamos, devoluciones y renovación automatizada.

Los sistemas gestores de bases de datos (SGBD) permiten la creación, gestión y administración de bases de datos, así como el manejo y elección de las estructuras necesarias para el almacenamiento y búsqueda de información para garantizar la máxima eficiencia en el acceso a los datos. Por ejemplo, para la búsqueda de algún material el usuario puede ingresar palabras pertenecientes al título del material, el autor, el tema, el código de barras, además se puede filtrar el contenido por rango de publicación, idioma, ubicación o disponibilidad.

Otra tendencia importante en los sistemas de gestión de bibliotecas es la integración con otras plataformas institucionales, usando APIs y herramientas que permiten el intercambio de información con sistemas académicos, repositorios digitales y plataformas de aprendizaje.

También se han incorporado herramientas de análisis de datos que permiten generar estadísticas sobre el uso de los servicios y los recursos, identificar patrones de consulta y facilitar la toma de decisiones; estas herramientas pueden complementarse con inteligencia artificial y aprendizaje automático para analizar mucha información y ofrecer recomendaciones de contenido de acuerdo con los intereses y necesidades de los usuarios.

Por otra parte, la seguridad y protección de la información se han convertido en aspectos fundamentales debido al manejo de datos personales y registros de actividad. Los sistemas actuales incorporan mecanismos de autenticación, autorización, control de acceso, copias de seguridad y protección de las bases de datos para garantizar la confidencialidad, integridad y disponibilidad de la información. También existe una tendencia hacia la automatización y el acceso multiplataforma, permitiendo que los servicios puedan ser utilizados desde computadores y dispositivos móviles, mientras que diferentes procesos administrativos se realizan de forma automática, reduciendo la intervención manual y mejorando la eficiencia general del sistema.

---

## 3. Consultar y analizar al menos 2 herramientas existentes en el mercado para el problema o situación asignado

Para resolver la situación asignada, en este caso, un sistema de gestión de una biblioteca universitaria, actualmente el mercado ofrece software especializado tipo ILS (*Integrated Library System*) y repositorios institucionales, que permiten automatizar procesos como préstamos, catalogación, control de usuarios y acceso a la información. Se analizaron dos herramientas de código abierto ampliamente adoptadas por instituciones académicas:

### Koha
Es uno de los sistemas de biblioteca más comunes, conocido porque se puede personalizar por completo y adaptar a las necesidades de una institución en específico (software de código abierto). Este sistema permite la gestión de los datos relacionados con el ciclo físico de los libros existentes en una biblioteca (préstamos, devoluciones, reservas, multas), además, es capaz de gestionar colecciones digitales dentro del mismo catálogo y aplicación. Incluye un catálogo público en línea (OPAC), donde los usuarios pueden buscar, consultar y comprobar la disponibilidad de los distintos materiales (tanto físicos como digitales).

### DSpace
Es una plataforma creada para guardar y dar acceso abierto a la producción académica de una institución como tesis, artículos e informes de investigación, en lugar de gestionar el préstamo de documentos físicos. Organiza y facilita el acceso a recursos académicos para estudiantes e investigadores en diferentes disciplinas. Inicialmente fue desarrollada en el MIT y Hewlett-Packard, y ha sido usada por más de 3.000 instituciones en el mundo, con la misión de capturar, almacenar, indexar, preservar y redistribuir la producción intelectual de una organización.

### Tabla comparativa

| Aspecto | Koha | DSpace |
|---|---|---|
| **¿Para qué sirve?** | Gestionar préstamos físicos y también colecciones digitales | Almacenar y dar acceso a documentos digitales |
| **¿Qué gestiona?** | Circulación, catálogo, usuarios, multas, colecciones digitales | Tesis, artículos, trabajos de investigación |
| **Diferencia** | Circulación (préstamos y devoluciones) | Preservación y acceso abierto a documentos digitales |
| **Costo** | Gratuito (software libre) | Gratuito (software libre) |

El uso y selección del software depende netamente de las necesidades y problemáticas de la institución, donde deberán primar los aspectos más importantes para ellos.

---

## 4. Diagrama Entidad Relación

![Modelo Entidad-Relación](Modelo%20E-R/biblioteca.png)

---
# INFORME DE NORMALIZACIÓN DE BASE DE DATOS
---
### 5. Introducción y Justificación del Nivel de Normalización

Este documento detalla el proceso de transformación del Modelo Entidad-Relación presentado con anteriorirdad del sistema de biblioteca universitaria a un Modelo Relacional normalizado. 

**Justificación del nivel alcanzado:**
El objetivo principal de la normalización es eliminar la redundancia de datos y evitar anomalías de inserción, actualización y eliminación. Para este sistema se ha decidido normalizar hasta la `Tercera Forma Normal`. 

Llegar a 3FN garantiza que:
1.  Cada dato se almacene en un solo lugar.

2.  Las actualizaciones como el cambio de estado de un préstamo o el pago de una multa sean consistentes y eficientes.

3.  Se mantenga la integridad referencial mediante el uso de llaves primarias (PK) y foráneas (FK).

No se aplicó la Forma Normal de Boyce-Codd (FNBC) ni la Cuarta (4FN) de manera estricta porque, si bien el sistema maneja jerarquías, el modelo relacional propuesto con tablas separadas para subtipos ya resuelve los problemas de dependencias multivaluadas y redundancias sin fragmentar en exceso el esquema, lo que facilitaría las consultas y el rendimiento general del sistema.

---

### 6. Análisis del Modelo Entidad - Relación

Partimos del diagrama conceptual donde identificamos entidades, atributos y relaciones. En este estado, existen problemas potenciales si intentáramos crear una sola tabla global o tablas sin normalizar:

*   **Atributos Multivaluados:** La entidad "Usuario" tiene el atributo "Teléfono" (un usuario puede tener varios teléfonos).

*   **Relaciones N:M:** Existen relaciones de muchos a muchos como "Consulta" (Usuario - Recurso Digital), "Reserva" (Usuario - Recurso) y "Escrito" por (Autor - Recurso).

*   **Jerarquías:** La entidad "Usuario" se especializa en "Estudiante", "Profesor" y "Administrativo". 
La entidad "Recurso" se especializa en "Recurso Digital" y "Recurso Físico".

*   **Atributos Derivados/Redundantes:** Si no se separan correctamente, datos como la ubicación o el NIT podrían repetirse innecesariamente.

---

### 7. Primera Forma Normal

**Regla:** Eliminar grupos repetidos y atributos multivaluados. Cada celda debe contener un valor atómico. Se deben definir llaves primarias.

**Aplicación al modelo:**
1.  **Atributo Multivaluado (Teléfono):** Se extrae de la entidad "Usuario" y se crea una nueva tabla llamada "TELEFONO_USUARIO". La llave primaria de esta nueva tabla es el propio número de "Teléfono"  y el "Código Usuario" actúa como llave foránea.

2.  **Relaciones N:M:** Se convierten en entidades asociativas o tablas intermedias:
    *   CONSULTA
    *   RESERVA
    *   AUTOR_RECURSO

3.  **Definición de PKs:** Cada entidad base recibe su llave primaria correspondiente. 

**Aclaracion**
En este punto, las jerarquías aún no están resueltas, por lo que los atributos específicos de Estudiantes, Profesores y Administrativos aún podrían estar mezclados en USUARIO o en tablas separadas temporalmente, pero las relaciones N:M ya se resolvieron.

**Diagrama del Modelo en 1FN:**

```mermaid
erDiagram
    UNIVERSIDAD {
        caracter NIT PK
        caracter Nombre "Not Null"
    }
    SEDE {
        caracter ID_sede PK
        caracter Nombre "Not Null"
        caracter Ubicacion
        caracter NIT FK
    }
    BIBLIOTECA {
        caracter Cod_biblioteca PK
        caracter Nombre "Not Null"
        caracter Ubicacion UK
        caracter ID_sede FK
    }
    USUARIO {
        caracter NIT FK
        caracter Nombre
        caracter Correo
        caracter Codigo_usuario PK
    }
    "TELEFONO USUARIO" {
        caracter Tel PK
        caracter Codigo_usuario FK
    }
    ESTUDIANTE {
        caracter Codigo_usuario PK, FK
        caracter Programa
        entero Semestre
    }
    PROFESOR {
        caracter Codigo_usuario PK, FK
        caracter Escuela
    }
    ADMINISTRATIVO {
        caracter Codigo_usuario PK, FK
        caracter Cargo
    }
    MULTA {
        caracter ID_multa PK
        caracter Valor
        date Fecha_multa
        caracter Estado_pago
        entero ID_prestamo FK
    }
    RENOVACION {
        entero ID_renovacion PK
        date Fecha_renov
        date Fecha_venc
        entero ID_prestamo FK
    }
    PRESTAMO {
        entero ID_prestamo PK
        date Fecha_prestamo
        date Fecha_vencimiento
        date Fecha_devolucion
        entero Codigo_usuario FK
        entero Cod_ejemplar FK
    }
    EJEMPLAR {
        entero Cod_ejemplar PK
        entero Cod_biblioteca FK
        entero ID_recurso_fis FK
        caracter Estado
        caracter Ubicacion_estante
    }
    "RECURSO FISICO" {
        entero ID_recurso_fis PK, FK
    }
    "CONSULTA (USUARIO_REC DIG)" {
        entero ID_recurso PK, FK
        entero Codigo_usuario PK, FK
        datetime fecha_hora_acceso PK
    }
    "RECURSO DIGITAL" {
        entero ID_recurso PK, FK
        caracter URL
    }
    "RESERVA (USUARIO_RECURSO)" {
        entero ID_recurso PK, FK
        entero Codigo_usuario PK, FK
        date Fecha_inicio
        date Fecha_fin
        caracter Estado
    }
    RECURSO {
        entero ID_recurso PK
        caracter Titulo
        caracter Tematica
        caracter Formato
        caracter Editorial
    }
    AUTOR {
        entero ID_autor PK
        caracter Nombre
        caracter Apellido
    }
    AUTOR_RECURSO {
        entero ID_autor PK, FK
        entero ID_recurso PK, FK
    }

    %% RELACIONES (FLECHAS)
    UNIVERSIDAD ||--o{ SEDE : "tiene"
    UNIVERSIDAD ||--o{ USUARIO : "tiene"
    SEDE ||--o{ BIBLIOTECA : "tiene"
    BIBLIOTECA ||--o{ EJEMPLAR : "contiene"
    USUARIO ||--o{ "TELEFONO USUARIO" : "posee"
    USUARIO ||--o| ESTUDIANTE : "es"
    USUARIO ||--o| PROFESOR : "es"
    USUARIO ||--o| ADMINISTRATIVO : "es"
    USUARIO ||--o{ PRESTAMO : "realiza"
    PRESTAMO ||--o{ MULTA : "genera"
    PRESTAMO ||--o{ RENOVACION : "tiene"
    EJEMPLAR ||--o{ PRESTAMO : "es prestado"
    "RECURSO FISICO" ||--o{ EJEMPLAR : "es un"
    RECURSO ||--o| "RECURSO FISICO" : "es un"
    RECURSO ||--o| "RECURSO DIGITAL" : "es un"
    USUARIO ||--o{ "CONSULTA (USUARIO_REC DIG)" : "realiza"
    RECURSO ||--o{ "CONSULTA (USUARIO_REC DIG)" : "es consultado"
    USUARIO ||--o{ "RESERVA (USUARIO_RECURSO)" : "realiza"
    RECURSO ||--o{ "RESERVA (USUARIO_RECURSO)" : "es reservado"
    AUTOR ||--o{ AUTOR_RECURSO : "escribe"
    RECURSO ||--o{ AUTOR_RECURSO : "es escrito por"
```
---

### 8. Segunda Forma Normal

**Regla:** Estar en 1FN y eliminar las dependencias parciales. Ningún atributo que no sea llave debe depender de una parte de la llave primaria. Esta regla aplica únicamente a las tablas que poseen llaves primarias compuestas.

**Aplicación al modelo:**
En nuestro diseño, la mayoría de las entidades ya cuentan con llaves primarias simples, por lo que automáticamente cumplen con esta forma normal. 

Sin embargo, debemos verificar las tablas asociativas creadas en el paso anterior para resolver las relaciones N:M:
*   **CONSULTA**: Su llave primaria es compuesta "ID_recurso", "Codigo_usuario", "fecha_hora_acceso". No posee atributos adicionales, por lo que no hay dependencias parciales.

*   **RESERVA**: Su llave primaria es compuesta "ID_recurso", "Codigo_usuario. Los atributos "Fecha_inicio", "Fecha_fin" y "Estado" dependen funcionalmente de la combinación de ambos, no de uno solo. Por lo tanto, cumple 2FN.

*   **AUTOR_RECURSO**: Su llave primaria es "ID_autor", "ID_recurso". No tiene atributos adicionales, por lo que cumple 2FN.

**Diagrama del Modelo en 2FN:**

```mermaid
erDiagram
    %% --- JERARQUÍA INSTITUCIONAL ---
    UNIVERSIDAD {
        caracter NIT PK
        caracter Nombre
    }
    SEDE {
        caracter ID_sede PK
        caracter Nombre
        caracter Ubicacion
        caracter NIT FK
    }
    BIBLIOTECA {
        caracter Cod_biblioteca PK
        caracter Nombre
        caracter Ubicacion
        caracter ID_sede FK
    }

    %% --- USUARIOS ---
    USUARIO {
        caracter Codigo_usuario PK
        caracter Nombre
        caracter Correo
        caracter NIT FK
    }
    "TELEFONO USUARIO" {
        caracter Tel PK
        caracter Codigo_usuario FK
    }

    %% --- RECURSOS ---
    RECURSO {
        entero ID_recurso PK
        caracter Titulo
        caracter Tematica
        caracter Formato
        caracter Editorial
    }
    AUTOR {
        entero ID_autor PK
        caracter Nombre
        caracter Apellido
    }
    AUTOR_RECURSO {
        entero ID_autor PK, FK
        entero ID_recurso PK, FK
    }

    %% --- TRANSACCIONES ---
    EJEMPLAR {
        entero Cod_ejemplar PK
        entero Cod_biblioteca FK
        entero ID_recurso_fis FK
        caracter Estado
        caracter Ubicacion_estante
    }
    PRESTAMO {
        entero ID_prestamo PK
        date Fecha_prestamo
        date Fecha_vencimiento
        date Fecha_devolucion
        caracter Codigo_usuario FK
        entero Cod_ejemplar FK
    }
    MULTA {
        caracter ID_multa PK
        caracter Valor
        date Fecha_multa
        caracter Estado_pago
        entero ID_prestamo FK
    }
    RENOVACION {
        entero ID_renovacion PK
        date Fecha_renov
        date Fecha_venc
        entero ID_prestamo FK
    }

    %% --- ASOCIATIVAS ---
    "CONSULTA (USUARIO_REC DIG)" {
        entero ID_recurso PK, FK
        entero Codigo_usuario PK, FK
        datetime fecha_hora_acceso PK
    }
    "RESERVA (USUARIO_RECURSO)" {
        entero ID_recurso PK, FK
        entero Codigo_usuario PK, FK
        date Fecha_inicio
        date Fecha_fin
        caracter Estado
    }

    %% --- RELACIONES ---
    UNIVERSIDAD ||--o{ SEDE : "tiene"
    UNIVERSIDAD ||--o{ USUARIO : "tiene"
    SEDE ||--o{ BIBLIOTECA : "tiene"
    BIBLIOTECA ||--o{ EJEMPLAR : "contiene"
    USUARIO ||--o{ "TELEFONO USUARIO" : "posee"
    USUARIO ||--o{ PRESTAMO : "realiza"
    EJEMPLAR ||--o{ PRESTAMO : "es prestado"
    PRESTAMO ||--o{ MULTA : "genera"
    PRESTAMO ||--o{ RENOVACION : "tiene"
    USUARIO ||--o{ "CONSULTA (USUARIO_REC DIG)" : "realiza"
    RECURSO ||--o{ "CONSULTA (USUARIO_REC DIG)" : "es consultado"
    USUARIO ||--o{ "RESERVA (USUARIO_RECURSO)" : "realiza"
    RECURSO ||--o{ "RESERVA (USUARIO_RECURSO)" : "es reservado"
    AUTOR ||--o{ AUTOR_RECURSO : "escribe"
    RECURSO ||--o{ AUTOR_RECURSO : "es escrito por"
```
---

### 9. Tercera Forma Normal

**Regla:** Estar en 2FN y eliminar dependencias transitivas. Ningún atributo que no sea llave debe depender de otro atributo que no sea llave. En otras palabras, los atributos no clave deben depender únicamente de la llave primaria.

**Aplicación al modelo:**

1.  **Jerarquía de Usuarios :**
    *   "Usuario" tiene atributos como "Semestre", "Programa" para estudiantes, "Escuela" para profesores y "Cargo" para administrativos.

    *   Si dejáramos todo en una sola tabla "USUARIO", tendríamos dependencias transitivas y una gran cantidad de valores nulos. 
    Por ejemplo:
    *Código usuario -> Tipo de usuario -> Cargo* 
    El "Cargo" depende del tipo de usuario, no directamente del código.

    *   **Solución:** Se crean las tablas "ESTUDIANTE", "PROFESOR" y "ADMINISTRATIVO". Estas heredan la llave primaria de "USUARIO". Los atributos específicos se mueven a estas tablas.

2.  **Jerarquía de Recursos:**
    *   Ocurre lo mismo con "Recurso". Si tuviéramos "URL" en la tabla general, aplicaría solo a los digitales.

    *   **Solución:** Se crean "RECURSO DIGITAL" y "RECURSO FÍSICO". El "RECURSO DIGITAl" añade el atributo "URL", mientras el  "RECURSO FÍSICO" no añade atributos propios en este modelo, pero sirve como puente para la relación con "EJEMPLAR".

3.  **Dependencias Transitivas en la ubicación geográfica:**
    *   Una "BIBLIOTECA" pertenece a una "SEDE", y una "SEDE" pertenece a una "UNIVERSIDAD".

    *   Si pusiéramos el "NIT" de la universidad directamente en "BIBLIOTECA", tendríamos una dependencia transitiva *Cod_biblioteca -> ID_sede -> NIT*

    *   **Solución:** La tabla "BIBLIOTECA" solo guarda "ID_sede" como llave foránea. El "NIT" se obtiene haciendo un JOIN con "SEDE".

4.  **Dependencias Transitivas en Préstamos y Multas:**
    *   Una "MULTA" se genera por un "PRESTAMO".

    *   Si guardáramos el "Código usuario" en "MULTA", sería una dependencia transitiva *ID_multa -> ID_prestamo -> Código usuario*.

    *   **Solución:** La tabla "MULTA" solo guarda "ID_prestamo" como llave foránea. El usuario se obtiene a través del préstamo. Está misma idea se aplica para "RENOVACION".

---

### 10. Modelo Relacional Final

Como resultado de aplicar las tres primeras formas normales, obtenemos el siguiente esquema relacional. Este esquema elimina la redundancia, asegura la integridad de los datos y coincide exactamente con el modelo lógico propuesto.

**Diagrama del Modelo Relacional Final:**

![Modelo Relacional](Modelo%20Relacional/modelorelacional.png)

---

## Referencias Bibliográficas

- Aprende Biblioteconomía: puntualizaciones para realizar reservas de documentos en bibliotecas – Academia Auxiliar de Biblioteca. (s. f.). https://www.auxiliardebiblioteca.com/aprende-biblioteconomia-reservas-bibliotecas/
- Breeding, M. (2025, 5 enero). *Tendencias tecnológicas en bibliotecas 2024: Los sistemas de gestión bibliotecaria*. Nora Quiroz. https://www.noraquiroz.com/post/tendencias-tecnol%C3%B3gicas-en-bibliotecas-2024-los-sistemas-de-gesti%C3%B3n-bibliotecaria
- Crespo, B. *Bibliotecas digitales y actividad bibliotecaria*. Researchgate.net. https://www.researchgate.net/profile/Luis-Bermello/publication/265758359_Bibliotecas_digitales_y_actividad_bibliotecaria/links/555cb58d08ae6f4dcc8bcc91/Bibliotecas-digitales-y-actividad-bibliotecaria.pdf
- García, A. A. R. (2012). El proceso de catalogación: esquemas, principios y prácticas contemporáneas. *Biblioteca universitaria*, 15(2), 139-146.
- Geraldine Trujillo. (1 noviembre, 2024). *Recomendaciones de software de gestión para bibliotecas y archivos en 2024*. Paideia Studio [Blog]. https://doi.org/10.62059/paideia.studio.17593
- Lenz, H. (2025, 18 marzo). *DSpace Home - DSpace*. DSpace. https://dspace.org/
- Marín, R. (2026, 16 julio). *Los gestores de bases de datos más usados en la actualidad*. Canal Informática y TICS. https://www.inesem.es/revistadigital/informatica-y-tics/los-gestores-de-bases-de-datos-mas-usados
- Mieles, J. M. G., & Toro, D. P. B. (2018). *Los sistemas de gestión bibliotecarios y su uso en las universidades manabitas*. Dialnet. https://dialnet.unirioja.es/servlet/articulo?codigo=9767250
- *Official Website of Koha Library Software*. (s. f.). https://koha-community.org/
- Ramírez, R. Z., & MEDIO, C. F. G. (2008). Sistemas gestores de base de datos. *Innovación y Experiencias Educativas*.
- Vega, E. G., & Martín, A. E. (2016). *Sistemas Integrales de Gestión para Bibliotecas*. Dialnet. https://dialnet.unirioja.es/servlet/articulo?codigo=5454192
- Xercode. (2024, 26 febrero). *¿Qué es y qué funciones tiene el sistema de gestión de bibliotecas?* Xercode. https://xercode.com/que-es-y-que-funciones-tiene-el-sistema-de-gestion-de-bibliotecas/
- Silberschatz, A., Korth, H. F., & Sudarshan, S. (2020). *Database System Concepts* (7th ed.). McGraw-Hill. https://www.mheducation.com/highered/product/database-system-concepts-silberschatz-korth/M9780078022159.html
- Tramullas, J. (2020). Sistemas de gestión de bibliotecas: evolución y tendencias. *Anuario ThinkEPI*, 14, e14a01. https://doi.org/10.3145/thinkepi.2020.e14a01
