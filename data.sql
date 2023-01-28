/* Populate database with sample data. */

INSERT INTO animals VALUES (1, 'Agumon', '03-02-2020', 0, TRUE, 10.23)
INSERT INTO animals VALUES (2, 'Gabumon', '15-11-2018', 2, TRUE, 8)
INSERT INTO animals VALUES (3, 'Pikachu', '07-01-2021', 1, FALSE, 15.04)
INSERT INTO animals VALUES (4, 'Devimon', '12-06-2017', 5, TRUE, 11)

INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES        
        (5,'Charmander', '2022-02-08', 0, 'FALSE', -11),
        (6,'Plantmon', '2021-11-15', 2, 'TRUE', -5.7), 
        (7,'Squirtle', '1993-04-02', 3, 'FALSE', -12.13), 
        (8,'Angemon', '2005-06-12', 1, 'TRUE', -45),
        (9,'Boarmon', '2005-06-07', 7, 'TRUE', 20.4), 
        (10,'Blossom', '1998-08-13', 3, 'TRUE', 17), 
        (11,'Ditto', '2022-05-14', 4, 'TRUE', 22)
;
