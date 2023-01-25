/* Database schema to keep the structure of entire database. */
-- CREATE TABLE animals (
--     name varchar(100)
-- );

CREATE TABLE animals (
    id INT, 
    name CHAR, 
    date_of_birth DATE, 
    escape_attempts INT, 
    neutered BIT, 
    weight_kg REAL)
