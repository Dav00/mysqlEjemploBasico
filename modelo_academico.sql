
CREATE TABLE personas (
  dni CHAR(9) NOT NULL,
  nombre VARCHAR(20),
  apellidos VARCHAR(40),
  edad INT,
  estudiante BOOLEAN,
  PRIMARY KEY (dni)
);

CREATE TABLE cursos (
  id_curso INT AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  creditos INT NOT NULL,
  PRIMARY KEY (id_curso)
);

CREATE TABLE profesores (
  id_profesor INT AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  departamento VARCHAR(50),
  PRIMARY KEY (id_profesor)
);

CREATE TABLE matriculas (
  dni CHAR(9),
  id_curso INT,
  fecha_matricula DATE,
  nota DECIMAL(4,2),
  PRIMARY KEY (dni, id_curso),
  FOREIGN KEY (dni) REFERENCES personas(dni),
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE cursos_profesor (
  id_profesor INT,
  id_curso INT,
  PRIMARY KEY (id_profesor, id_curso),
  FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor),
  FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);
