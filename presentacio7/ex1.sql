-- a) Crea la vista 'vehicles_alemanya' que mostri els vehicles de marca 'Mercedes'.
CREATE VIEW vehicles_alemanya AS
	SELECT * FROM vehicles WHERE marca = 'Mercedes';
	
-- Comprovació estructura de la vista
DESCRIBE vehicles_alemanya;
SELECT * FROM vehicles_alemanya;

-- b) Modifica la vista 'vehicles_alemanya' per a que també mostri els vehicles de la marca 'BMW'.
ALTER VIEW vehicles_alemanya AS
	SELECT * FROM vehicles 
	WHERE marca IN('Mercedes','BMW');
	
-- Comprovació estructura de la vista
DESCRIBE vehicles_alemanya;
SELECT * FROM vehicles_alemanya;

-- c) Crea la vista 'mecanic_vehicles_reparats' que mostri el nom dels mecànics i les matrícules dels vehicles reparats per cada mecànic.
CREATE VIEW mecanic_vehicles_reparats AS
	SELECT m.nom 'Mecànic',v.matricula 'Vehicle reparat'
	FROM mecanics m
	INNER JOIN vehicles v
	ON m.dni = v.reparat_per;

-- Versió alternativa
CREATE VIEW mecanics_vehicles_reparats_concat AS
	SELECT m.nom 'Mecànic',GROUP_CONCAT(v.matricula SEPARATOR ',') 'Vehicles reparats'
	FROM mecanics m
	INNER JOIN vehicles v
	ON m.dni = v.reparat_per
	GROUP BY m.nom;

-- Comprovació
DESCRIBE mecanics_vehicles_reparats_concat;
SELECT * FROM mecanics_vehicles_reparats_concat;

-- d) Consulta la definició de les vistes creades al SGBD a partir de la taula views de la base de dades information_schema.
SELECT view_definition FROM information_schema.views;
