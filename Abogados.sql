CREATE TABLE Cliente (
cedula INT PRIMARY KEY,
nombre VARCHAR(150) NOT NULL,
telefono VARCHAR(15) NOT NULL,
direccion VARCHAR(150) NOT NULL
);

CREATE TABLE Asunto (
numero_expediente SERIAL PRIMARY KEY,
estado VARCHAR(20) NOT NULL,
fecha_Inicio DATE NOT NULL,
fecha_Archivo DATE NOT NULL,
cedula INT NOT NULL,
FOREIGN KEY (cedula) REFERENCES
Cliente(cedula)
);

CREATE TABLE Procurador (
Cedula_profesional INT PRIMARY KEY,
Nombre VARCHAR(150) NOT NULL,
telefono VARCHAR(15) NOT NULL,
direccion VARCHAR(150) NOT NULL
);

CREATE TABLE Asignacion_Procurador (
Cedula_profesional INT NOT NULL,
numero_expediente SERIAL NOT NULL,
FOREIGN KEY(numero_expediente) REFERENCES
Asunto(numero_expediente),
FOREIGN KEY(Cedula_profesional) REFERENCES
Procurador(Cedula_profesional),
PRIMARY KEY(numero_expediente, Cedula_profesional),
fecha_asignacion DATE NOT NULL
/* Composite Primary Key */
);


