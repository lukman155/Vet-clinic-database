CREATE TABLE animals (
    id INT, 
    name CHAR(24), 
    date_of_birth DATE, 
    escape_attempts INT, 
    neutered BOOLEAN, 
    weight_kg DECIMAL)

ALTER TABLE animals ADD species varchar(255);

