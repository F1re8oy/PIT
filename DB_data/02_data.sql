USE auto;

INSERT INTO Markas (Marka, Apraksts, Dibinatajs, Dibinasanas_gads, Logo) 
VALUES 
('BMW', 'BMW (Bayerische Motoren Werke AG — "Bavarian Motor Works") is a German company that manufactures automobiles, motorcycles, bicycles, and engines. It was founded on March 7, 1916. The company’s headquarters is located in Munich, Bavaria, Germany. BMW also owns and produces Mini and Rolls Royce brand cars. The company operates 25 factories across 13 countries, including Germany, China, South Africa, the USA, India, Japan, Canada, the UK, Austria, Russia, Indonesia, Malaysia, and Egypt. BMW is one of the three largest German luxury car manufacturers, along with Audi and Mercedes-Benz.', 'Karl Rapp, Gustav Otto, Camillo Castiglioni, Franz Josef Popp', '1916', NULL),
('AUDI', 'Audi AG is a German automobile manufacturer of luxury vehicles headquartered in Ingolstadt, Bavaria, Germany. Audi is a subsidiary of the Volkswagen Group and manufactures vehicles in nine factories worldwide. The company’s origins are complex, dating back to the early 20th century and involving the founding companies (Horch and Audiwerke) established by engineer August Horch. Two other manufacturers (DKW and Wanderer) also contributed to the formation of Auto Union in 1932. The modern era of Audi began in the 1960s when Volkswagen acquired Auto Union from Daimler-Benz. After reviving the Audi brand by introducing the Audi F103 series in 1965, Volkswagen merged Auto Union with NSU Motorenwerke in 1969, forming the current structure of the company. The name "Audi" is derived from a Latin translation of founder August Horch\'s surname. "Horch," meaning "listen" in German, becomes "audi" in Latin. The four rings in Audi’s logo represent the four automobile companies that merged to form Auto Union, Audi\'s predecessor. Audi’s slogan is "Vorsprung durch Technik," translated as "Progress through Technology".', 'August Horch', '1909', NULL),
('Mercedes-Benz', 'Mercedes-Benz is a German automobile brand and, since 2019, operates as Mercedes-Benz AG, a subsidiary of Daimler. The company manufactures luxury vehicles, buses, and trucks. Its headquarters is located in Stuttgart, Germany. The company traces its history back to 1890, with the establishment of Daimler Motoren Gesellschaft. Over the years, Mercedes-Benz has introduced numerous safety and technological innovations that are now standard in modern vehicles. Mercedes-Benz dealerships operate in 130 countries worldwide. Today, Mercedes-Benz offers a full range of vehicles, from small city cars to heavy-duty trucks. The Smart "city cars" brand has also been part of Mercedes-Benz since 1994.', 'Karl Benz, Gottlieb Daimler, Wilhelm Maybach, Emil Jellinek', '1890', NULL);


INSERT INTO Modeli (ID_markas, Modelis, Nosaukums, Bilde) 
VALUES 
(1, 'E46', '316i', NULL),
(1, 'E46', '318i', NULL),
(1, 'E46', '318d', NULL),
(1, 'E46', '320d', NULL),

(1, 'E39', '520i', NULL),
(1, 'E39', 'M5', NULL),
(1, 'E39', '520d', NULL),
(1, 'E39', '530d', NULL),

(2, 'A4', 'B4', NULL),
(2, 'A4', 'B5', NULL),
(2, 'A4', 'B6', NULL),

(2, 'A6', 'C4', NULL),
(2, 'A6', 'C5', NULL),
(2, 'A6', 'C6', NULL);

INSERT INTO Specifikacija (ID_modeli, Drosibas_sistemas, Svars, Piedzina, Virsbuves_tips, Atrumkarba, Parnesumu_skaits)
VALUES 
(1, 'ABS, ESP', 1695, 'Rear-wheel drive', 'Sedan, Hatchback, Coupe, Universal', 'Manual', 5),
(2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO Motori (ID_specifikacija, Dzinejs, Dzineja_tilpums, Degviela, Paterins, Jauda)
VALUES 
(1, 'M43B19', 1.9, 'Benzīns', 8.0, 103),
(2, 'N40B16', 1.6, 'Benzīns', 7.7, 115),
(3, 'N46B18', 1.8, 'Benzīns', 7.1, 114);
