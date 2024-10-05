CREATE DATABASE IF NOT EXISTS auto;
USE auto;

CREATE TABLE IF NOT EXISTS Markas (
    MarkasID INT AUTO_INCREMENT PRIMARY KEY,    -- Primary key
    Marka VARCHAR(255),                         -- Name of the brand
    Apraksts TEXT,                              -- Description of the brand
    Dibinatajs VARCHAR(255),                    -- Founder of the brand
    Dibinasanas_gads INT,                       -- Year of establishment
    Logo BLOB                                   -- Image data for logo
);

CREATE TABLE IF NOT EXISTS Modeli (
    ModeliID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key for each model
    ID_markas INT,                             -- Foreign key linking to MarkasID
    Modelis VARCHAR(255),                     -- Model 
    Nosaukums VARCHAR(255),                   -- Model name
    Bilde BLOB,                               -- Image data for the car model
    FOREIGN KEY (ID_marka) REFERENCES Markas(MarkasID) -- Relationship between models and brands
);

CREATE TABLE IF NOT EXISTS Specifikacija (
    SpecifikacijaID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key
    ID_modeli INT,                                   -- Foreign key linking to ModeliID
    Drosibas_sistemas TEXT,                          -- Safety systems
    Svars INT,                                       -- Weight of the car in kg
    Piedzina VARCHAR(255),                           -- Drive type 
    Virsbuves_tips VARCHAR(255),                     -- Body type
    Atrumkarba VARCHAR(255),                         -- Transmission type
    Parnesumu_skaits INT,                            -- Number of gears
    FOREIGN KEY (ID_modeli) REFERENCES Modeli(ModeliID) -- Relationship with the model
);

CREATE TABLE IF NOT EXISTS Motori (
    MotoriID INT AUTO_INCREMENT PRIMARY KEY,         -- Primary key for each motor
    ID_specifikacija INT,                            -- Foreign key linking to SpecifikacijaID
    Dzinejs VARCHAR(255),                            -- Engine details
    Dzineja_tilpums DECIMAL(5, 2),                   -- Engine displacement
    Degviela VARCHAR(255),                           -- Engine 
    Paterins DECIMAL(5, 2),                          -- Fuel consumption L/100 km
    Jauda INT,                                       -- Power in horsepower HP
    FOREIGN KEY (ID_specifikacija) REFERENCES Specifikacija(SpecifikacijaID) -- Relationship between motors and specifications
);
