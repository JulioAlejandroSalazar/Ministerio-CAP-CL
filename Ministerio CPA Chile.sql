/*
-- Crear secuencias para IDs
CREATE SEQUENCE seq_academia START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_profesor START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_curso START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_turno START WITH 1 INCREMENT BY 1;

-- Tabla Municipalidad
CREATE TABLE Municipalidad (
    idMunicipalidad NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    direccion VARCHAR2(255) NOT NULL
);

-- Tabla Academia
CREATE TABLE Academia (
    idAcademia NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    direccion VARCHAR2(255) NOT NULL,
    tipo VARCHAR2(50) CHECK (tipo IN ('Danza', 'Canto', 'Instrumentos'))
);

-- Tabla Profesor
CREATE TABLE Profesor (
    idProfesor NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    tipo VARCHAR2(20) CHECK (tipo IN ('planta', 'honorarios'))
);

-- Tabla Curso
CREATE TABLE Curso (
    idCurso NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    horario VARCHAR2(100) NOT NULL,
    idAcademia NUMBER,
    FOREIGN KEY (idAcademia) REFERENCES Academia(idAcademia)
);

-- Tabla Turno
CREATE TABLE Turno (
    idTurno NUMBER PRIMARY KEY,
    idProfesor NUMBER,
    idAcademia NUMBER,
    horario VARCHAR2(100) NOT NULL,
    FOREIGN KEY (idProfesor) REFERENCES Profesor(idProfesor),
    FOREIGN KEY (idAcademia) REFERENCES Academia(idAcademia)
);

-- Poblar tablas con datos iniciales
INSERT INTO Municipalidad VALUES (seq_municipalidad.NEXTVAL, 'Municipalidad 1', 'Direccion 1');
INSERT INTO Academia VALUES (seq_academia.NEXTVAL, 'Academia de Danza', 'Direccion 1', 'Danza');
INSERT INTO Profesor VALUES (seq_profesor.NEXTVAL, 'Profesor 1', 'planta');
INSERT INTO Curso VALUES (seq_curso.NEXTVAL, 'Curso de Danza', 'Lunes 10:00-12:00', 1);
INSERT INTO Turno VALUES (seq_turno.NEXTVAL, 1, 1, 'Lunes 10:00-12:00');
*/

-- Ver datos
SELECT * FROM Academia;
SELECT * FROM Academia WHERE nombre = 'Academia de Danza';
