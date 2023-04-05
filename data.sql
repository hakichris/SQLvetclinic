INSERT INTO animals (name, date_of_birth, escape_attempts,
neutered, weight_kg) 
VALUES 
('Charmander', '2020-02-08', 0, FALSE,11.0),
('Plantmon', '2021-11-15', 2, TRUE,5.7),
('Squirtle', '1993-04-02', 3, FALSE,12.13),
('Angemon', '2005-06-12', 1, TRUE,45.0),
('Boarmon', '2005-06-07', 7, TRUE,20.4),
('Blossom', '1998-10-13', 3, TRUE,17.0),
('Ditto', '2022-05-14', 4, TRUE,22.0)
RETURNING *;
