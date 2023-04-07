
SELECT A.name, V.name, Vi.visit_date AS vdate FROM vets V JOIN visits Vi ON V.id = Vi.vets_id JOIN animals A ON Vi.animals_id = A.id WHERE V.name = 'William Tatcher' ORDER BY vdate DESC LIMIT 1;

SELECT V.name, COUNT(S.species_id) FROM vets V JOIN specialization S ON V.id = S.vets_id GROUP BY V.name HAVING V.name = 'Stephanie Mendez';

SELECT V.name, S.name FROM vets V FULL JOIN specialization SV ON V.id = SV.vets_id LEFT JOIN species S on SV.species_id = S.id GROUP BY V.name, S.name;

SELECT  V.name, A.name, Vi.visit_date FROM animals A JOIN visits Vi ON A.id = Vi.animals_id JOIN vets V ON V.id = Vi.vets_id WHERE V.name = 'Stephanie Mendez' AND  Vi.visit_date BETWEEN '2020-04-01' AND '2020-08-30'; 

WITH maxt AS (SELECT A.name AS ani_name, Count(Vi.animals_id) AS count, Max(Count(Vi.animals_id)) OVER() AS maxcount FROM animals A JOIN visits Vi ON A.id = Vi.animals_id GROUP  BY A.name) SELECT ani_name, count
FROM maxt WHERE  count = maxcount; 

SELECT A.name, V.name, Vi.visit_date FROM animals A JOIN visits Vi ON A.id = Vi.animals_id JOIN vets V ON V.id = Vi.vets_id WHERE  V.name = 'Maisy Smith ' ORDER  BY Vi.visit_date LIMIT  1; 

SELECT Vi.visit_date, A.name AS animal_name, A.date_of_birth, A.escape_attempts, A.neutered, A.weight_kg, species.name AS specie, V.name AS vet, V.age, V.date_of_graduation FROM species JOIN animals A ON species.id = A.species_id JOIN visits Vi ON A.id = Vi.animals_id JOIN vets V ON Vi.vets_id = V.id ORDER  BY Vi.visit_date DESC LIMIT  1; 

SELECT count(*)
  FROM visits
  LEFT JOIN animals ON animals.id = visits.animal_id
  LEFT JOIN vets ON vets.id = visits.vet_id
  WHERE animals.species_id NOT IN (SELECT species_id FROM specializations WHERE vet_id = vets.id);

SELECT V.name AS vet ,S.name AS species,  COUNT(S.name) AS count FROM vets V FULL JOIN visits Vi ON  V.id = Vi.vets_id FULL JOIN animals A ON Vi.animals_id = A.id FULL JOIN species S ON S.id = A.species_id GROUP BY S.name,V.name HAVING V.name = 'Maisy Smith ' ORDER BY count DESC LIMIT 1;
