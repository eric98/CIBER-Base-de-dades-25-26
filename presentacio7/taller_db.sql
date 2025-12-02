CREATE TABLE mecanics (
	dni CHAR(9),
	nom VARCHAR(9),
	edat TINYINT UNSIGNED,
	poblacio VARCHAR(20),
	PRIMARY KEY (dni)
);

CREATE TABLE vehicles (
	matricula CHAR(7),
	propietari VARCHAR(20),
	marca VARCHAR(20),
	reparat_per CHAR(9),
	PRIMARY KEY (matricula),
	FOREIGN KEY (reparat_per)
		REFERENCES mecanics(dni)
);

-- Taula mecanics
INSERT INTO mecanics (dni, nom, edat, poblacio) VALUES
('45645645A', 'Ernest', 27, 'Manresa'),
('46946946P', 'Maria', 18, 'Barcelona'),
('47147147Z', 'Carla', 28, 'Barcelona'),
('48248248B', 'Jordi', 35, 'Girona'),
('49349349C', 'Anna', 22, 'Lleida');

-- Taula vehicles
INSERT INTO vehicles (matricula, propietari, marca, reparat_per) VALUES
('1121JKL', 'Laura', 'BMW', '46946946P'),
('1234ABC', 'Pere', 'Ford', '45645645A'),
('3141MNO', 'Sofia', 'Mercedes', '47147147Z'),
('9101GHI', 'Joan', 'Honda', '46946946P'),
('5161PQR', 'Marc', 'Audi', NULL),
('5678DEF', 'Marta', 'Toyota', NULL);
