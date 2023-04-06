CREATE TABLE owners(
id SERIAL,
full_name varchar(30),
age int,
PRIMARY KEY(id)
); 

CREATE TABLE species(
id SERIAL,
name varchar(30),
PRIMARY KEY(id)
);

CREATE TABLE animals(
id  SERIAL,
species_id int,
owner_id int,
name  varchar(30) not null,
date_of_birth date not null,
escape_attempts int, 
neutered boolean ,
weight_kg decimal(4,2) not null,
PRIMARY KEY(id),
CONSTRAINT fk_species
	FOREIGN KEY(species_id)
	REFERENCES species(id)
	ON DELETE CASCADE,
CONSTRAINT fk_owners
    FOREIGN KEY (owner_id)
	REFERENCES owners(id)
	ON DELETE CASCADE
);