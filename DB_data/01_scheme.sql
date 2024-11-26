CREATE DATABASE IF NOT EXISTS auto;
USE auto;

CREATE TABLE IF NOT EXISTS Markas (
    MarkasID INT AUTO_INCREMENT PRIMARY KEY,
    Marka VARCHAR(255),
    Apraksts TEXT,
    Dibinatajs VARCHAR(255),
    Dibinasanas_gads INT,
    Logo BLOB
);

CREATE TABLE IF NOT EXISTS Modeli (
    ModeliID INT AUTO_INCREMENT PRIMARY KEY,
    ID_markas INT,
    Modelis VARCHAR(255),
    Nosaukums VARCHAR(255),
    Bilde BLOB,
    FOREIGN KEY (ID_markas) REFERENCES Markas(MarkasID)
);

CREATE TABLE IF NOT EXISTS Specifikacija (
    SpecifikacijaID INT AUTO_INCREMENT PRIMARY KEY,
    ID_modeli INT,
    Drosibas_sistemas TEXT,
    Svars INT,
    Piedzina VARCHAR(255),
    Virsbuves_tips VARCHAR(255),
    Atrumkarba VARCHAR(255),
    Parnesumu_skaits INT,
    FOREIGN KEY (ID_modeli) REFERENCES Modeli(ModeliID)
);

CREATE TABLE IF NOT EXISTS Motori (
    MotoriID INT AUTO_INCREMENT PRIMARY KEY,
    ID_specifikacija INT,
    Dzinejs VARCHAR(255),
    Dzineja_tilpums DECIMAL(5, 2),
    Degviela VARCHAR(255),
    Paterins DECIMAL(5, 2),
    Jauda INT,
    FOREIGN KEY (ID_specifikacija) REFERENCES Specifikacija(SpecifikacijaID)
);
