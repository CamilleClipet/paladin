-- ************************************************************
-- Converted SQL dump for PostgreSQL
-- ************************************************************
-- Dump of table clients
-- ------------------------------------------------------------

DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

-- Insert Data
INSERT INTO clients (id, first_name, last_name)
VALUES
  (1, 'Jean', 'Dupont'),
  (2, 'Marie', 'Martin'),
  (3, 'Pierre', 'Bernard'),
  (4, 'Jean', 'Dupont'),
  (5, 'Isabelle', 'Thomas'),
  (6, 'Michel', 'Dubois'),
  (7, 'Michel', 'Dubois'),
  (8, 'Catherine', 'Robert'),
  (9, 'Philippe', 'Petit'),
  (10, 'Sophie', 'Richard'),
  (11, 'Jacques', 'Roux'),
  (12, 'Nathalie', 'Lefebvre'),
  (13, 'François', 'Girard'),
  (14, 'Martine', 'Moreau'),
  (15, 'Eric', 'Laurent'),
  (16, 'Caroline', 'Simon'),
  (17, 'Thierry', 'Leclerc'),
  (18, 'Sophie', 'Richard'),
  (19, 'Valérie', 'Lecomte'),
  (20, 'Patrick', 'Fournier'),
  (21, 'Eric', 'Laurent'),
  (22, 'Eric', 'Laurent'),
  (23, 'Sylvie', 'Mercier'),
  (24, 'Sébastien', 'Garcia'),
  (25, 'Pierre', 'Bernard'),
  (26, 'Anne', 'David');

-- Dump of table health_reports
-- ------------------------------------------------------------

DROP TABLE IF EXISTS health_reports;

CREATE TABLE health_reports (
  year INT NOT NULL,
  client_id INT NOT NULL,
  guidance VARCHAR(8) NOT NULL,
  PRIMARY KEY (year, client_id),
  FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- Insert Data
INSERT INTO health_reports (year, client_id, guidance)
VALUES
  (2020, 1, 'positive'),
  (2020, 3, 'negative'),
  (2020, 4, 'positive'),
  (2020, 6, 'negative'),
  (2020, 7, 'positive'),
  (2020, 8, 'positive'),
  (2020, 9, 'negative'),
  (2020, 10, 'positive'),
  (2020, 11, 'positive'),
  (2020, 12, 'negative'),
  (2020, 13, 'positive'),
  (2020, 14, 'negative'),
  (2020, 15, 'positive'),
  (2020, 17, 'negative'),
  (2020, 18, 'positive'),
  (2020, 19, 'positive'),
  (2020, 20, 'positive'),
  (2020, 22, 'positive'),
  (2020, 23, 'negative'),
  (2020, 24, 'negative'),
  (2020, 25, 'negative'),
  (2020, 26, 'negative'),
  (2021, 1, 'positive'),
  (2021, 2, 'negative'),
  (2021, 3, 'positive'),
  (2021, 4, 'negative'),
  (2021, 5, 'negative'),
  (2021, 6, 'negative'),
  (2021, 7, 'negative'),
  (2021, 8, 'positive'),
  (2021, 9, 'positive'),
  (2021, 10, 'positive'),
  (2021, 11, 'positive'),
  (2021, 12, 'positive'),
  (2021, 13, 'positive'),
  (2021, 14, 'positive'),
  (2021, 15, 'negative'),
  (2021, 16, 'negative'),
  (2021, 17, 'negative'),
  (2021, 18, 'positive'),
  (2021, 19, 'negative'),
  (2021, 20, 'negative'),
  (2021, 21, 'negative'),
  (2021, 22, 'negative'),
  (2021, 23, 'negative'),
  (2021, 24, 'negative'),
  (2021, 25, 'positive'),
  (2021, 26, 'negative'),
  (2022, 1, 'negative'),
  (2022, 2, 'positive'),
  (2022, 3, 'negative'),
  (2022, 4, 'positive'),
  (2022, 5, 'positive'),
  (2022, 6, 'negative'),
  (2022, 7, 'positive'),
  (2022, 8, 'positive'),
  (2022, 9, 'positive'),
  (2022, 10, 'negative'),
  (2022, 11, 'negative'),
  (2022, 12, 'negative'),
  (2022, 13, 'negative'),
  (2022, 14, 'negative'),
  (2022, 15, 'positive'),
  (2022, 16, 'negative'),
  (2022, 17, 'negative'),
  (2022, 19, 'positive'),
  (2022, 20, 'negative'),
  (2022, 21, 'positive'),
  (2022, 22, 'positive'),
  (2022, 23, 'negative'),
  (2022, 24, 'positive'),
  (2022, 25, 'negative'),
  (2022, 26, 'negative'),
  (2023, 1, 'negative'),
  (2023, 2, 'positive'),
  (2023, 3, 'positive'),
  (2023, 4, 'negative'),
  (2023, 6, 'negative'),
  (2023, 7, 'negative'),
  (2023, 8, 'positive'),
  (2023, 9, 'positive'),
  (2023, 10, 'negative'),
  (2023, 11, 'positive'),
  (2023, 12, 'positive'),
  (2023, 13, 'negative'),
  (2023, 14, 'positive'),
  (2023, 15, 'positive'),
  (2023, 16, 'positive'),
  (2023, 19, 'positive'),
  (2023, 20, 'negative'),
  (2023, 21, 'positive'),
  (2023, 22, 'positive'),
  (2023, 23, 'positive'),
  (2023, 24, 'negative'),
  (2023, 25, 'positive');

-- End of Dump
