BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT SPA1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SPA1;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(name) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) as avg_amount FROM animals;

SELECT AVG(escape_attempts) as avg_amount_neutered FROM animals WHERE neutered = TRUE;
SELECT AVG(escape_attempts) as avg_amount_notneutered FROM animals WHERE neutered = FALSE;

SELECT MIN(weight_kg), MAX(weight_kg) FROM animals WHERE species = 'pokemon';
SELECT MIN(weight_kg), MAX(weight_kg) FROM animals WHERE species = 'digimon';
