INSERT INTO owners (full_name, age) 
VALUES 
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38)
RETURNING *;

INSERT INTO species(name) 
VALUES 
('Pokemon'),
('Digimon')
RETURNING *;

INSERT INTO animals (name, date_of_birth, escape_attempts,
neutered, weight_kg) 
VALUES 
('Charmander', '2020-02-08', 0, FALSE,-11.0),
('Plantmon', '2021-11-15', 2, TRUE,-5.7),
('Squirtle', '1993-04-02', 3, FALSE,-12.13),
('Angemon', '2005-06-12', 1, TRUE,-45.0),
('Boarmon', '2005-06-07', 7, TRUE,20.4),
('Blossom', '1998-10-13', 3, TRUE,17.0),
('Ditto', '2022-05-14', 4, TRUE,22.0),
('Agumon', '2020-02-03', 0, FALSE,10.23),
('Gabumon', '2018-11-15', 2, TRUE,8.0),
('Pikachu', '2021-01-07', 1, FALSE,15.04),
('Devimon', '2017-05-12', 5, TRUE,11.0)
RETURNING *;

UPDATE animals SET species_id = (SELECT species.id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';
UPDATE animals SET species_id = (SELECT species.id FROM species WHERE name = 'Pokemon') WHERE name NOT LIKE '%mon' ;

UPDATE animals SET owner_id = (SELECT owners.id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id = (SELECT owners.id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name = 'Gabumon'OR name= 'Pikachu';
UPDATE animals SET owner_id = (SELECT owners.id FROM owners WHERE full_name = 'Bob') WHERE name = 'Devimon'OR name= 'Plantmon';
UPDATE animals SET owner_id = (SELECT owners.id FROM owners WHERE full_name = 'Dean Winchester') WHERE name = 'Angemon'OR name= 'Boarmon';
UPDATE animals SET owner_id = (SELECT owners.id FROM owners WHERE full_name = 'Melody Pond ') WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

