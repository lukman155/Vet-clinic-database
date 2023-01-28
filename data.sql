/* Populate database with sample data. */

INSERT INTO animals VALUES (1, 'Agumon', '03-02-2020', 0, TRUE, 10.23)
INSERT INTO animals VALUES (2, 'Gabumon', '15-11-2018', 2, TRUE, 8)
INSERT INTO animals VALUES (3, 'Pikachu', '07-01-2021', 1, FALSE, 15.04)
INSERT INTO animals VALUES (4, 'Devimon', '12-06-2017', 5, TRUE, 11)

INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES        
        (5,'Charmander', '2022-02-08', 0, 'FALSE', 11),
        (6,'Plantmon', '2021-11-15', 2, 'TRUE', -5.7), 
        (7,'Squirtle', '1993-04-02', 3, 'FALSE', -12.13), 
        (8,'Angemon', '2005-06-12', 1, 'TRUE', -45),
        (9,'Boarmon', '2005-06-07', 7, 'TRUE', 20.4), 
        (10,'Blossom', '1998-08-13', 3, 'TRUE', 17), 
        (11,'Ditto', '2022-05-14', 4, 'TRUE', 22)
;


/*Create a table named owners*/

CREATE TABLE owners (
    id INT GENERATED BY DEFAULT AS IDENTITY, 
    full_name CHAR(150), 
    age INT
);
ALTER TABLE owners ADD PRIMARY KEY (id);

/*Create a table named species*/

CREATE TABLE species (
    id INT GENERATED BY DEFAULT AS IDENTITY, 
    name CHAR(150)
);
ALTER TABLE species ADD PRIMARY KEY (id);


/*Remove column species from animals table*/

  ALTER TABLE animals DROP COLUMN species;

  /*Add column species_id which is a foreign key referencing species table*/

  ALTER TABLE animals ADD COLUMN species_ID INT;
  ALTER TABLE animals ADD FOREIGN KEY (species_ID) REFERENCES species(id);  

  /*Add column owner_id which is a foreign key referencing the owners table*/  

  ALTER TABLE animals ADD COLUMN owners_ID INT;
  ALTER TABLE animals ADD FOREIGN KEY (owners_ID) REFERENCES owners(id);

   /*Add data to vets table*/

    INSERT INTO vets (name, age, date_of_graduation) VALUES 
    ( 'William Tatcher', 45, '2000-04-23'), 
    ('Maisy Smith', 26, '2019-01-17'), 
    ('Stephanie Mendez', 64, '1981-05-04'), 
    ('Jack Harkness', 38, '2008-06-08');

    /*Add data to specialization table*/

    INSERT INTO specializations (vets_id, species_id) VALUES (1,1) , (3,1), (3,2), (4,2);

    /* Add data to visits*/

    INSERT INTO visits (animals_id, vets_id, date_of_visits) VALUES (1,1,'2020-05-24'),
    (1,3,'2020-07-22'),
    (2,4,'2021-02-02'),
    (3,2,'2020-01-05'),
    (3,2,'2020-03-08'),
    (3,2,'2020-05-14'),
    (4,3,'2021-05-04'),
    (5,4,'2021-02-24'),
    (7,2,'2019-12-21'),
    (7,1,'2020-08-10'),
    (7,2,'2021-04-07'),
    (8,3,'2019-09-29'),
    (9,4,'2020-10-03'),
    (9,4,'2020-11-04'),
    (10,2,'2019-01-24'),
    (10,2,'2019-05-15'),
    (10,2,'2020-02-27'),
    (10,2,'2020-08-03'),
    (11,3,'2020-05-24'), 
    (11,1,'2021-01-11');