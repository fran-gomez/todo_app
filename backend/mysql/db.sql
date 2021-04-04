CREATE DATABASE eventos;
USE eventos;

# Entidades
CREATE TABLE evento(
    titulo VARCHAR(30),
    descripcion VARCHAR(30),
    importancia CHAR,
    fecha_creacion DATE,
    hora_creacion TIME,
    fecha_finalizacion DATE,
    hora_finalizacion TIME,

    PRIMARY KEY titulo, fecha_creacion, hora_creacion;
) ENGINE=InnoDB;