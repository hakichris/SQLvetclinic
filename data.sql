INSERT INTO owners (full_name, age) 
VALUES 
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond ', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38)
RETURNING *;

INSERT INTO species(name) 
VALUES 
('Pokemon'),
('Digimon')
RETURNING *;
