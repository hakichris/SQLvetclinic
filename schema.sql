CREATE TABLE vets(
	id SERIAL PRIMARY KEY,
	name varchar(30),
	age int,
	date_of_graduation date
);

CREATE TABLE visits (
    animals_id INT REFERENCES animals(id),
    vets_id INT REFERENCES vets(id),
    visit_date DATE NOT NULL,
    PRIMARY KEY (animals_id, vets_id,visit_date)
);

CREATE TABLE specialization(
species_id int,
vets_id int,
CONSTRAINT specialization_sp_vet PRIMARY KEY (species_id, vets_id),
CONSTRAINT fk_specialization 
	FOREIGN KEY(species_id)
	REFERENCES species(id)
	ON DELETE CASCADE,
	
CONSTRAINT fk_vets
	FOREIGN KEY(vets_id)
	REFERENCES vets(id)
	ON DELETE CASCADE
);