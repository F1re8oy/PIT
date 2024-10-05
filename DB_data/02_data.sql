USE auto;

INSERT INTO Markas (Marka, Apraksts, Dibinatajs, Dibinasanas_gads, Logo) VALUES ('BMW', 'BMW (Bayerische Motoren Werke AG — "Bavārijas Motordarbnīcas") ir Vācijas uzņēmums, kas ražo automobiļus, motociklus, velosipēdus un dzinējus, un ir dibināta 1916. gada 7. martā. BMW galvenā mītne atrodas Minhenē, Bavārijā, Vācijā. Kompānijai arī pieder un ražo Mini un Rolls Royce markas automašīnas. Uzņēmumam kopumā ir 25 rūpnīcas, 13 valstīs kā Vācija, Ķīna, Dienvidāfrika, ASV, Indija, Japāna, Kanāda, Lielbritānija, Austrija, Krievija, Indonēzija, Malaizija un Ēģipte. BMW ir viena no trijām lielākajam Vācijas luksusa automašīnu ražotājām, šajā grupā ietilpst arī Audi un Mercedes-Benz.', 'Karl Rapp, Gustav Otto, Camillo Castiglioni, Franz Josef Popp','1916', NULL);
INSERT INTO Markas (Marka, Apraksts, Dibinatajs, Dibinasanas_gads, Logo) VALUES ('AUDI', 'Audi AG ir Vācijas automobiļu ražotājs luksusa transportlīdzekļiem, kura galvenā mītne atrodas Ingolštatē, Bavārijā, Vācijā. Audi ir Volkswagen grupas meitas uzņēmums, kas ražo transportlīdzekļus deviņās ražotnēs visā pasaulē. Uzņēmuma pirmsākumi ir sarežģīti, sākot no 20. gadsimta sākuma un sākotnējiem uzņēmumiem (Horch un Audiwerke), ko dibināja inženieris Augusts Horhs. Divi citi ražotāji (DKW un Wanderer) arī piedalījās Auto Union dibināšanā 1932. gadā. Mūsdienu Audi ēra sākās 1960. gados, kad Auto Union iegādājās Volkswagen no Daimler-Benz. Pēc Audi zīmola atsākšanas, 1965. gadā ieviešot Audi F103 sēriju, Volkswagen 1969. gadā apvienoja Auto Union ar NSU Motorenwerke, tādējādi izveidojot mūsdienu uzņēmuma formu. Uzņēmuma nosaukuma pamatā ir dibinātāja Augusta Horha uzvārda tulkojums latīņu valodā. Horch, kas nozīmē “klausies”, latīņu valodā kļūst par audi. Katrs Audi logotipa četri gredzeni ir viens no četriem automašīnu uzņēmumiem, kas apvienojās, lai izveidotu Audi priekšteci Auto Union. Audi sauklis ir Vorsprung durch Technik, kas tiek tulkots kā "Progress caur tehnoloģiju".','August Horch','1909', NULL);
INSERT INTO Markas (Marka, Apraksts, Dibinatajs, Dibinasanas_gads, Logo) VALUES ('Mercedes-Benz', 'Mercedes-Benz ir vācu automašīnu zīmols un, kopš 2019. gada kā Mercedes-Benz AG, Daimler meitasuzņēmums, kas ražo luksus auto, autobusus un kravas automašīnas. Uzņēmuma galvenā mītne atrodas Vācijas pilsētā Štutgartē. Uzņēmuma vūsture izsekojama no 1890. gada, kad nodibinājās uzņēmums Daimler Motoren Gesellschaft. Gadu gaitā Mercedes-Benz ir ieviesuši vairākas drošības un tehnoloģiju iespējas, kas šobrīd ir bieži sastopamas modernos auto. Mercedes-Benz automašīnu pārdevēji ir 130 pasaules valstīs. Šobrīd Mercedes Benz piedāvā pilnu auto klāstu, no maziem pilsētas auto līdz smagajiem auto. Smart "city cars" zīmols arī ir daļa no Mercedes-Benz kopš 1994. gada.', 'Karl Benz, Gottlieb Daimler, Wilhelm Maybach, Emil Jellinek','1890', NULL);


INSERT INTO Modeli (ID_marka, Modelis, Nosaukums, Bilde) 
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
(2, 'A6', 'C6', NULL),

INSERT INTO Specifikacija (ID_modeli, Drosibas_sistemas, Svars, Piedzina, Virsbuves_tips, Atrumkarba, Parnesumu_skaits)
VALUES 
(1, 'ABS, ESP', '1695', 'Rear-wheel drive', 'Sedan, Hatchbeck, Coupe, Universal', 'Manual', '5'),
(1, 'ABS, ESP', '1695', 'Rear-wheel drive', 'Sedan, Hatchbeck, Coupe, Universal', 'Manual', '5'),
(1, 'ABS, ESP', '1695', 'Rear-wheel drive', 'Sedan, Hatchbeck, Coupe, Universal', 'Manual', '5');

INSERT INTO Motori (ID_specifikacija, Dzinejs, Dzineja_tilpums, Degviela, Paterins, Jauda)
VALUES 
(1, 'M43B19', '1.9', 'Benzīns', '8.0', '103'),
(1, 'N40B16', '1.6', 'Benzīns', '7.7', '115'),
(1,'N46B18', '1.8', 'Benzīns', '7.1', '114');
