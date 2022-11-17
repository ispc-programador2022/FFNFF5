/*Importar tablas*/

ispc
localhost
ProyectoISPC


USE ispc;

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `IDCarrera`	INTEGER NOT NULL AUTO_INCREMENT,
  `Carrera`		VARCHAR(30),
  `Fecha`		DATE,
  `Ganador`		VARCHAR(30),
  `Auto`		VARCHAR(30),
  `Vueltas`		INTEGER,
  `Tiempo`		TIME,
  PRIMARY KEY (IDCarrera)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\xampp\\tmp\\2021_racesCarreras.csv' 
INTO TABLE `tipo_gasto` 
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `pilotos`;
CREATE TABLE IF NOT EXISTS `pilotos` (
  `IDPiloto`	INTEGER NOT NULL AUTO_INCREMENT,
  `Posicion`	INTEGER,
  `Piloto` 		VARCHAR(30),
  `Nacionalidad`VARCHAR(30),
  `Auto`		VARCHAR(30),
  `Puntos`		INTEGER
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\xampp\\tmp\\2021_drivers1Pilotos.csv' 
INTO TABLE `tipo_gasto` 
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `escuderias`;
CREATE TABLE IF NOT EXISTS `escuderias` (
  `IDEscuderia`	INTEGER NOT NULL AUTO_INCREMENT,
  `Posicion`	INTEGER,
  `Escuderia` 	VARCHAR(30),
  `Puntos`		VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\xampp\\tmp\\2021_team1Equipos.csv' 
INTO TABLE `tipo_gasto` 
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `vuelta`;
CREATE TABLE IF NOT EXISTS `vuelta` (
  `Carrera`		VARCHAR(30),
  `Piloto` 		VARCHAR(30),
  `Auto`		VARCHAR(30),
  `VueltaRapida`TIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\xampp\\tmp\\2021_fastest-laps1Vueltas.csv' 
INTO TABLE `tipo_gasto` 
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

