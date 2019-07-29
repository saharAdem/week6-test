BEGIN;

DROP TABLE IF EXISTS cities CASCADE;


CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

INSERT INTO cities (name, country) VALUES
('Hebron', 'Palestine'),
('Amman', 'Jordan'),
('Berlin', 'Germany');

COMMIT;