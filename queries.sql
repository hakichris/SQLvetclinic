/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE animal_name LIKE '%mon';
SELECT animal_name FROM animals WHERE date_of_birth BETWEEN '2016/02/01' AND '2019/01/04';
SELECT animal_name FROM animals WHERE neutered=TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE animal_name = 'Agumon' OR animal_name = 'Pikachu';
SELECT date_of_birth, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE NOT animal_name = 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 

