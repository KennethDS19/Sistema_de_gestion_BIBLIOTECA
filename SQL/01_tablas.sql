DROP DATABASE IF EXISTS biblioteca_universitaria;
CREATE DATABASE biblioteca_universitaria CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE biblioteca_universitaria;

CREATE TABLE UNIVERSIDAD (
    NIT BIGINT,
    Nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (NIT)
);

CREATE TABLE AUTOR (
    ID_autor VARCHAR(20),
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    PRIMARY KEY (ID_autor)
);

CREATE TABLE RECURSO (
    ID_recurso VARCHAR(20),
    Titulo VARCHAR(150),
    Tematica VARCHAR(100),
    Formato VARCHAR(50),
    Editorial VARCHAR(100),
    PRIMARY KEY (ID_recurso)
);


CREATE TABLE SEDE (
    ID_sede VARCHAR(20),
    Nombre VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(150),
    NIT BIGINT,
    PRIMARY KEY (ID_sede),
    FOREIGN KEY (NIT) REFERENCES UNIVERSIDAD(NIT)
);

CREATE TABLE USUARIO (
    NIT BIGINT,
    Nombre VARCHAR(100),
    Correo VARCHAR(100),
    Codigo_usuario VARCHAR(20),
    PRIMARY KEY (Codigo_usuario),
    FOREIGN KEY (NIT) REFERENCES UNIVERSIDAD(NIT)
);

CREATE TABLE RECURSO_FISICO (
    ID_recurso_fis VARCHAR(20),
    PRIMARY KEY (ID_recurso_fis),
    FOREIGN KEY (ID_recurso_fis) REFERENCES RECURSO(ID_recurso)
);

CREATE TABLE RECURSO_DIGITAL (
    ID_recurso VARCHAR(20),
    URL VARCHAR(500),
    PRIMARY KEY (ID_recurso),
    FOREIGN KEY (ID_recurso) REFERENCES RECURSO(ID_recurso)
);

CREATE TABLE AUTOR_RECURSO (
    ID_autor VARCHAR(20),
    ID_recurso VARCHAR(20),
    PRIMARY KEY (ID_autor, ID_recurso),
    FOREIGN KEY (ID_autor) REFERENCES AUTOR(ID_autor),
    FOREIGN KEY (ID_recurso) REFERENCES RECURSO(ID_recurso)
);

CREATE TABLE TELEFONO_USUARIO (
    Tel BIGINT,
    Codigo_usuario VARCHAR(20),
    PRIMARY KEY (Tel),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE ESTUDIANTE (
    Codigo_usuario VARCHAR(20),
    Programa VARCHAR(100),
    Semestre VARCHAR(20),
    PRIMARY KEY (Codigo_usuario),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE PROFESOR (
    Codigo_usuario VARCHAR(20),
    Escuela VARCHAR(100),
    PRIMARY KEY (Codigo_usuario),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE ADMINISTRATIVO (
    Codigo_usuario VARCHAR(20),
    Cargo VARCHAR(100),
    PRIMARY KEY (Codigo_usuario),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE BIBLIOTECA (
    Cod_biblioteca VARCHAR(20),
    Nombre VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(150),
    ID_sede VARCHAR(20),
    PRIMARY KEY (Cod_biblioteca),
    UNIQUE (Ubicacion),
    FOREIGN KEY (ID_sede) REFERENCES SEDE(ID_sede)
);

CREATE TABLE CONSULTA (
    ID_recurso VARCHAR(20),
    Codigo_usuario VARCHAR(20),
    Fecha_hora_acceso DATETIME,
    PRIMARY KEY (ID_recurso, Codigo_usuario, Fecha_hora_acceso),
    FOREIGN KEY (ID_recurso) REFERENCES RECURSO_DIGITAL(ID_recurso),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE RESERVA (
    ID_recurso VARCHAR(20),
    Codigo_usuario VARCHAR(20),
    Fecha_inicio DATE,
    Fecha_fin DATE,
    Estado VARCHAR(30),
    PRIMARY KEY (ID_recurso, Codigo_usuario),
    FOREIGN KEY (ID_recurso) REFERENCES RECURSO(ID_recurso),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario)
);

CREATE TABLE EJEMPLAR (
    Cod_ejemplar VARCHAR(20),
    Cod_biblioteca VARCHAR(20),
    ID_recurso_fis VARCHAR(20),
    Estado VARCHAR(30),
    Ubicacion_estante VARCHAR(50),
    PRIMARY KEY (Cod_ejemplar),
    FOREIGN KEY (Cod_biblioteca) REFERENCES BIBLIOTECA(Cod_biblioteca),
    FOREIGN KEY (ID_recurso_fis) REFERENCES RECURSO_FISICO(ID_recurso_fis)
);

CREATE TABLE PRESTAMO (
    ID_prestamo VARCHAR(20),
    Fecha_prestamo DATE,
    Fecha_vencimiento DATE,
    Fecha_devolucion DATE,
    Codigo_usuario VARCHAR(20),
    Cod_ejemplar VARCHAR(20),
    PRIMARY KEY (ID_prestamo),
    FOREIGN KEY (Codigo_usuario) REFERENCES USUARIO(Codigo_usuario),
    FOREIGN KEY (Cod_ejemplar) REFERENCES EJEMPLAR(Cod_ejemplar)
);

CREATE TABLE MULTA (
    ID_multa VARCHAR(20),
    Valor INT,
    Fecha_multa DATE,
    Estado_pago VARCHAR(30),
    ID_prestamo VARCHAR(20),
    PRIMARY KEY (ID_multa),
    FOREIGN KEY (ID_prestamo) REFERENCES PRESTAMO(ID_prestamo)
);

CREATE TABLE RENOVACION (
    ID_renovacion VARCHAR(20),
    Fecha_renov DATE,
    Fecha_venc DATE,
    ID_prestamo VARCHAR(20),
    PRIMARY KEY (ID_renovacion),
    FOREIGN KEY (ID_prestamo) REFERENCES PRESTAMO(ID_prestamo)
);
