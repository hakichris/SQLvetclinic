SELECT owners.id,full_name, owner_id, name FROM animals LEFT JOIN owners ON owners.id = owner_id WHERE full_name = 'Melody Pond ';
SELECT * FROM animals LEFT JOIN species ON species.id = species_id WHERE species.name = 'Pokemon' ;
SELECT * FROM owners INNER JOIN animals ON owners.id = owner_id OR owner_id IS NULL;
SELECT COUNT(animals.id) totalcount FROM animals LEFT JOIN species ON species.id = species_id GROUP BY species.name

SELECT species.name, owners.full_name FROM species LEFT JOIN owners ON species.id = owners.id WHERE owners.full_name = 'Jennifer Orwell';
SELECT * FROM animals LEFT JOIN owners ON owners.id = owner_id WHERE owners.full_name = 'Dean Winchester' AND escape_attempts = 0;
SELECT COUNT(animals.name) as frequency , full_name  FROM animals RIGHT JOIN owners ON owners.id = owner_id GROUP BY owners.full_name
