SET search_path TO ubd_20241;

BEGIN WORK;

SET TRANSACTION READ WRITE;

INSERT INTO ZONE (zone_id, zone_name, capital_town, climate, region) VALUES
(1, 'Empordà', 'Figueres', 'Mediterranean', 'Catalonia, Spain'),
(2, 'Rías Baixas', 'Pontevedra', 'Atlantic', 'Galicia, Spain'),
(3, 'Ribeira Sacra', 'Monforte de Lemos', 'Mediterranean with Atlantic', 'Galicia, Spain'),
(4, 'Bordeaux', 'Bordeaux', 'Oceanic', 'Nouvelle-Aquitaine, France'),
(5, 'Burgundy', 'Dijon', 'Continental', 'Bourgogne-Franche-Comté, France'),
(6, 'Tuscany', 'Florence', 'Mediterranean', 'Tuscany, Italy'),
(7, 'Piedmont', 'Turin', 'Continental', 'Piedmont, Italy'),
(8, 'Sicily', 'Palermo', 'Mediterranean', 'Sicily, Italy'),
(9, 'Douro', 'Porto', 'Mediterranean', 'Northern Portugal'),
(10, 'Alentejo', 'Évora', 'Mediterranean', 'Alentejo, Portugal'),
(11, 'Vinho Verde', 'Braga', 'Atlantic', 'Northern Portugal'),
(12, 'La Rioja', 'Logroño', 'Continental', 'La Rioja, Spain'),
(13, 'Priorat', 'Tarragona', 'Mediterranean', 'Catalonia, Spain'),
(14, 'Navarra', 'Pamplona', 'Continental', 'Navarre, Spain'),
(15, 'Alsace', 'Strasbourg', 'Continental', 'Grand Est, France'),
(16, 'Loire Valley', 'Tours', 'Oceanic', 'Centre-Val de Loire, France'),
(17, 'Provence', 'Marseille', 'Mediterranean', 'Provence-Alpes-Côte d''Azur, France'),
(18, 'Languedoc', 'Montpellier', 'Mediterranean', 'Occitanie, France'),
(19, 'Abruzzo', 'L''Aquila', 'Mediterranean', 'Abruzzo, Italy'),
(20, 'Veneto', 'Venice', 'Continental', 'Veneto, Italy'),
(21, 'Umbria', 'Perugia', 'Mediterranean', 'Umbria, Italy'),
(22, 'Trentino-Alto Adige', 'Trento', 'Continental', 'Trentino-Alto Adige, Italy'),
(23, 'Madeira', 'Funchal', 'Subtropical', 'Madeira, Portugal'),
(24, 'Dao', 'Viseu', 'Mediterranean', 'Central Portugal'),
(25, 'Rueda', 'Valladolid', 'Continental', 'Castile and León, Spain'),
(26, 'Toro', 'Zamora', 'Continental', 'Castile and León, Spain'),
(27, 'Jerez', 'Jerez de la Frontera', 'Mediterranean', 'Andalusia, Spain'),
(28, 'Valdeorras', 'O Barco de Valdeorras', 'Continental', 'Galicia, Spain'),
(29, 'Costers del Segre', 'Lleida', 'Mediterranean', 'Catalonia, Spain'),
(30, 'Penedès', 'Vilafranca del Penedès', 'Mediterranean', 'Catalonia, Spain'),
(31, 'Ribera del Duero', 'Burgos', 'Continental', 'Castile and León, Spain'),
(32, 'Somontano', 'Barbastro', 'Continental', 'Aragon, Spain'),
(33, 'Bierzo', 'Ponferrada', 'Continental', 'Castile and León, Spain'),
(34, 'Calatayud', 'Calatayud', 'Continental', 'Aragon, Spain'),
(35, 'Campo de Borja', 'Borja', 'Continental', 'Aragon, Spain'),
(36, 'Cariñena', 'Cariñena', 'Continental', 'Aragon, Spain'),
(37, 'Montsant', 'Falset', 'Mediterranean', 'Catalonia, Spain'),
(38, 'Terra Alta', 'Gandesa', 'Mediterranean', 'Catalonia, Spain'),
(39, 'Chianti', 'Pisa', 'Mediterranean', 'Tuscany, Italy'),
(40, 'Barolo', 'Barolo', 'Continental', 'Piedmont, Italy');


INSERT INTO GRAPE_VARIETY (grape_id, grape_name) VALUES
(1, 'Tempranillo'),
(2, 'Albariño'),
(3, 'Mencía'),
(4, 'Cabernet Sauvignon'),
(5, 'Merlot'),
(6, 'Chardonnay'),
(7, 'Sangiovese'),
(8, 'Nebbiolo'),
(9, 'Barbera'),
(10, 'Nero d''Avola'),
(11, 'Touriga Nacional'),
(12, 'Arinto'),
(13, 'Verdejo'),
(14, 'Garnacha'),
(15, 'Syrah'),
(16, 'Pinot Noir'),
(17, 'Sauvignon Blanc'),
(18, 'Grenache'),
(19, 'Montepulciano'),
(20, 'Trebbiano'),
(21, 'Sagrantino'),
(22, 'Lagrein'),
(23, 'Malvasia'),
(24, 'Encruzado'),
(25, 'Palomino'),
(26, 'Pedro Ximénez'),
(27, 'Godello'),
(28, 'Macabeo'),
(29, 'Xarel·lo'),
(30, 'Parellada'),
(31, 'Tinta de Toro'),
(32, 'Bobal'),
(33, 'Cariñena'),
(34, 'Moscatel'),
(35, 'Cannonau'),
(36, 'Vermentino'),
(37, 'Dolcetto'),
(38, 'Cortese'),
(39, 'Fiano'),
(40, 'Aglianico');

INSERT INTO WINERY (winery_id, winery_name, town, established_year, winery_phone, sales_representative) VALUES
(1, 'Bodegas Torres', 'Penedès', 1870, '123-456-7890', 'Miguel Torres'),
(2, 'Marqués de Riscal', 'La Rioja', 1858, '123-456-7891', 'Francisco Hurtado de Amézaga'),
(3, 'Bodegas Vega Sicilia', 'Ribera del Duero', 1864, '123-456-7892', 'Pablo Álvarez'),
(4, 'Château Margaux', 'Bordeaux', 1572, '123-456-7893', 'Philippe Bascaules'),
(5, 'Domaine de la Romanée-Conti', 'Burgundy', 1232, '123-456-7894', 'Aubert de Villaine'),
(6, 'Antinori', 'Tuscany', 1385, '123-456-7895', 'Alessia Antinori'),
(7, 'Gaja', 'Piedmont', 1859, '123-456-7896', 'Angelo Gaja'),
(8, 'Planeta', 'Sicily', 1995, '123-456-7897', 'Francesca Planeta'),
(9, 'Quinta do Crasto', 'Douro', 1615, '123-456-7898', 'Miguel Roquette'),
(10, 'Herdade do Esporão', 'Alentejo', 1973, '123-456-7899', 'João Roquette'),
(11, 'Quinta da Aveleda', 'Vinho Verde', 1870, '123-456-7800', 'António Guedes'),
(12, 'Bodegas Martín Códax', 'Rías Baixas', 1986, '123-456-7801', 'Juan Vázquez'),
(13, 'Bodegas Muga', 'La Rioja', 1932, '123-456-7802', 'Isaac Muga'),
(14, 'Bodegas Julián Chivite', 'Navarra', 1647, '123-456-7803', 'Fernando Chivite'),
(15, 'Trimbach', 'Alsace', 1626, '123-456-7804', 'Jean Trimbach'),
(16, 'Domaine Huet', 'Loire Valley', 1928, '123-456-7805', 'Sarah Hwang'),
(17, 'Château d’Esclans', 'Provence', 2006, '123-456-7806', 'Sacha Lichine'),
(18, 'Mas de Daumas Gassac', 'Languedoc', 1970, '123-456-7807', 'Samuel Guibert'),
(19, 'Masciarelli', 'Abruzzo', 1981, '123-456-7808', 'Miriam Lee Masciarelli'),
(20, 'Masi', 'Veneto', 1772, '123-456-7809', 'Sandro Boscaini'),
(21, 'Lungarotti', 'Umbria', 1962, '123-456-7810', 'Chiara Lungarotti'),
(22, 'Ferrari', 'Trentino-Alto Adige', 1902, '123-456-7811', 'Matteo Lunelli'),
(23, 'Blandy’s', 'Madeira', 1811, '123-456-7812', 'Chris Blandy'),
(24, 'Quinta dos Roques', 'Dao', 1989, '123-456-7813', 'Luis Lourenço'),
(25, 'Bodegas Protos', 'Rueda', 1927, '123-456-7814', 'Carlos Villar'),
(26, 'Bodegas Numanthia', 'Toro', 1998, '123-456-7815', 'Lucas Löwi'),
(27, 'González Byass', 'Jerez', 1835, '123-456-7816', 'Mauricio González-Gordon'),
(28, 'Bodegas Valdesil', 'Valdeorras', 1885, '123-456-7817', 'Borja Prada'),
(29, 'Raimat', 'Costers del Segre', 1914, '123-456-7818', 'Joan Esteve'),
(30, 'Clos Mogador', 'Priorat', 1979, '123-456-7819', 'René Barbier'),
(31, 'Bodegas Enate', 'Somontano', 1991, '123-456-7820', 'Luis Nozaleda'),
(32, 'Descendientes de J. Palacios', 'Bierzo', 1998, '123-456-7821', 'Ricardo Pérez Palacios'),
(33, 'Bodegas Ateca', 'Calatayud', 2005, '123-456-7822', 'Raúl Acha'),
(34, 'Bodegas Borsao', 'Campo de Borja', 1958, '123-456-7823', 'José Luis Chueca'),
(35, 'Bodegas San Valero', 'Cariñena', 1944, '123-456-7824', 'Javier Domeque'),
(36, 'Celler de Capçanes', 'Montsant', 1933, '123-456-7825', 'Jürgen Wagner'),
(37, 'Celler Piñol', 'Terra Alta', 1945, '123-456-7826', 'Josep Piñol'),
(38, 'Castello di Ama', 'Chianti', 1972, '123-456-7827', 'Marco Pallanti'),
(39, 'Marchesi di Barolo', 'Barolo', 1807, '123-456-7828', 'Anna Abbona');

INSERT INTO WINE (wine_name, vintage, alcohol_content, category, color, winery_id, zone_id, stock, price, prizes) VALUES
('Torres Sangre de Toro', 2018, 13.5, 'young', 'red', 1, 1, 83, 62.35, NULL),
('Marqués de Riscal Reserva', 2016, 14.0, 'reserve', 'red', 2, 12, 50, 95.95, 6),
('Vega Sicilia Único', 2010, 14.5, 'grand reserve', 'red', 3, 31, 25, 1439.95, 12),
('Château Margaux', 2015, 13.0, 'grand reserve', 'red', 4, 4, 33, 2399.95, 3),
('Romanée-Conti', 2017, 13.5, 'grand reserve', 'red', 5, 5, 18, 7199.95, 8),
('Antinori Tignanello', 2018, 13.5, 'reserve', 'red', 6, 6, 67, 431.95, 2),
('Gaja Barbaresco', 2017, 14.0, 'reserve', 'red', 7, 7, 42, 959.95, 1),
('Planeta Chardonnay', 2019, 11.0, 'young', 'white', 8, 8, 100, 143.95, 1),
('Quinta do Crasto Vintage Port', 2016, 18.0, 'reserve', 'red', 9, 9, 17, 239.95, 3),
('Herdade do Esporão Reserva', 2017, 14.0, 'reserve', 'red', 10, 10, 58, 119.95, NULL),
('Aveleda Vinho Verde', 2020, 11.0, 'young', 'white', 11, 11, 117, 43.15, NULL),
('Marqués de Riscal Gran Reserva', 2012, 14.0, 'grand reserve', 'red', 2, 12, 33, 191.95, 1),
('Clos Mogador', 2018, 15.0, 'reserve', 'red', 30, 13, 25, 287.95, 2),
('Chivite Colección 125', 2017, 13.5, 'reserve', 'red', 14, 14, 50, 115.15, NULL),
('Trimbach Riesling', 2019, 11.0, 'young', 'white', 15, 15, 83, 95.95, NULL),
('Domaine Huet Vouvray', 2018, 11.0, 'reserve', 'white', 16, 16, 67, 119.95, NULL),
('Château d’Esclans Whispering Angel', 2020, 13.0, 'young', 'rosé', 17, 17, 100, 105.55, 3),
('Mas de Daumas Gassac', 2019, 14.0, 'reserve', 'red', 18, 18, 42, 167.95, NULL),
('Masciarelli Montepulciano d’Abruzzo', 2018, 13.5, 'young', 'red', 19, 19, 83, 62.35, NULL),
('Masi Amarone', 2016, 15.0, 'reserve', 'red', 20, 20, 33, 239.95, 4),
('Lungarotti Rubesco', 2018, 13.0, 'young', 'red', 21, 21, 67, 71.95, NULL),
('Ferrari Perlé', 2017, 11.0, 'reserve', 'white', 22, 22, 50, 143.95, NULL),
('Blandy’s Madeira', 2015, 18.0, 'reserve', 'red', 23, 23, 25, 191.95, NULL),
('Quinta dos Roques Encruzado', 2019, 11.0, 'young', 'white', 24, 24, 58, 91.15, NULL),
('Bodegas Protos Verdejo', 2020, 11.0, 'young', 'white', 25, 25, 83, 47.95, NULL),
('Numanthia Termes', 2017, 15.0, 'reserve', 'red', 26, 26, 42, 167.95, 1),
('González Byass Tío Pepe', 2020, 11.0, 'young', 'white', 27, 27, 100, 71.95, NULL),
('Valdesil Godello', 2019, 11.0, 'young', 'white', 28, 28, 67, 95.95, NULL),
('Raimat Abadia', 2018, 13.5, 'young', 'red', 29, 29, 83, 57.55, NULL),
('Torres Milmanda', 2017, 11.0, 'reserve', 'white', 1, 30, 50, 143.95, NULL),
('Vega Sicilia Valbuena', 2015, 14.5, 'reserve', 'red', 3, 31, 33, 479.95, 4),
('Enate Chardonnay-234', 2020, 11.0, 'young', 'white', 31, 32, 67, 62.35, NULL),
('Descendientes de J. Palacios Pétalos', 2018, 14.0, 'young', 'red', 32, 33, 50, 95.95, NULL),
('Bodegas Ateca Honoro Vera', 2019, 14.5, 'young', 'red', 33, 34, 83, 47.95, NULL),
('Borsao Tres Picos', 2018, 15.0, 'young', 'red', 34, 35, 67, 71.95, NULL),
('San Valero Particular', 2019, 13.5, 'young', 'red', 35, 36, 50, 52.75, NULL),
('Celler de Capçanes Mas Donís', 2018, 14.0, 'young', 'red', 36, 37, 67, 62.35, NULL),
('Celler Piñol L’Avi Arrufi', 2017, 14.5, 'reserve', 'red', 37, 38, 42, 119.95, NULL),
('Castello di Ama Chianti Classico', 2018, 13.5, 'young', 'red', 38, 39, 83, 95.95, NULL),
('Marchesi di Barolo Barolo', 2016, 14.0, 'reserve', 'red', 39, 40, 33, 239.95, 1),
('Alión', 2018, 14.5, 'reserve', 'red', 3, 31, 39, 195.95, NULL),
('Torres Pazo das Bruxas', 2019, 11.0, 'young', 'white', 1, 1, 50, 24.95, 2),
('Enate Merlot-Merlot', 2016, 13.5, 'reserve', 'red', 31, 32, 67, 43.95, NULL),
('López de Heredia Viña Bosconia', 2010, 14.0, 'reserve', 'red', 10, 12, 33, 119.50, 4),
('Pago de Carraovejas', 2018, 14.5, 'reserve', 'red', 13, 31, 70, 95.95, 6),
('El Sequé', 2017, 14.0, 'reserve', 'red', 12, 31, 20, 49.50, 2),
('Hacienda Monasterio', 2018, 14.0, 'reserve', 'red', 2, 31, 25, 69.95, 1),
('Pingus', 2015, 15.0, 'grand reserve', 'red', 16, 31, 10, 1200.00, 5),
('Flor de Pingus', 2017, 14.5, 'reserve', 'red', 16, 31, 20, 249.95, 3),
('Dominio del Águila Reserva', 2016, 14.5, 'reserve', 'red', 17, 31, 15, 95.95, 2),
( 'Mauro', 2019, 14.0, 'reserve', 'red', 18, 31, 60, 79.95, 1),
( 'Aalto PS', 2018, 14.5, 'reserve', 'red', 19, 31, 45, 150.00, 4),
( 'Artadi Pagos Viejos', 2017, 14.5, 'grand reserve', 'red', 10, 12, 12, 225.95, 3),
( 'Remelluri Reserva', 2018, 14.0, 'reserve', 'red', 11, 12, 55, 49.95, 2),
( 'Viña Real Crianza', 2018, 14.0, 'young', 'red', 12, 12, 120, 15.50, 1),
( 'Lan Reserva', 2017, 14.0, 'reserve', 'red', 13, 12, 60, 19.95, NULL),
( 'Marqués de Murrieta Reserva', 2016, 14.0, 'reserve', 'red', 14, 12, 30, 26.50, 4);

INSERT INTO WINE_GRAPE (grape_id, wine_id) VALUES
(14, 1),
(1, 1),
(1, 2),
(14, 2),
(1, 3),
(4, 3),
(4, 4),
(5, 4),
(16, 5),
(7, 6),
(4, 6),
(8, 7),
(6, 8),
(11, 9),
(10, 9),
(10, 10),
(14, 10),
(12, 11),
(27, 11),
(1, 12),
(14, 12),
(14, 13),
(4, 13),
(13, 14),
(6, 14),
(17, 15),
(6, 16),
(18, 17),
(14, 17),
(14, 18),
(1, 18),
(19, 19),
(18, 19),
(19, 20),
(20, 20),
(21, 21),
(19, 21),
(22, 22),
(10, 23),
(24, 23),
(24, 24),
(25, 25),
(26, 25),
(1, 26),
(31, 26),
(27, 27),
(28, 28),
(28, 29),
(29, 29),
(6, 30),
(4, 31),
(5, 31),
(6, 32),
(14, 33),
(18, 33),
(14, 34),
(1, 34),
(14, 35),
(35, 35),
(14, 36),
(14, 37),
(1, 37),
(8, 38),
(7, 39),
(8, 40);

INSERT INTO CUSTOMER (customer_id, customer_VAT, customer_name, customer_address, customer_town, customer_phone, customer_email, customer_status) VALUES
(1, 'ES12345678A', 'SuperMart', '123 Main St', 'Barcelona', '123-456-7890', 'contact@supermart.com', 'active'),
(2, 'ES87654321B', 'FreshFoods', '456 Elm St', 'Madrid', '987-654-3210', 'info@freshfoods.com', 'active'),
(3, 'PT11223344C', 'Bistro Delight', '789 Oak St', 'Lisbon', '112-233-4455', 'hello@bistrodelight.com', 'active'),
(4, 'PT55667788D', 'Gourmet Kitchen', '321 Pine St', 'Porto', '556-677-8899', 'support@gourmetkitchen.com', 'active'),
(5, 'IT99887766E', 'Cafe Aroma', '654 Maple St', 'Rome', '998-877-6655', 'contact@cafearoma.com', 'active'),
(6, 'IT44332211F', 'Green Grocers', '987 Cedar St', 'Milan', '443-322-1100', 'info@greengrocers.com', 'active'),
(7, 'FR66778899G', 'Pet Paradise', '159 Birch St', 'Paris', '667-788-9900', 'hello@petparadise.com', 'active'),
(8, 'FR22334455H', 'Fashion Fiesta', '753 Spruce St', 'Marseille', '223-344-5566', 'support@fashionfiesta.com', 'active'),
(9, 'FR88990011I', 'Electro World', '951 Willow St', 'Lyon', '889-900-1122', 'contact@electroworld.com', 'active'),
(10, 'FR33445566J', 'Book Haven', '357 Aspen St', 'Nice', '334-455-6677', 'info@bookhaven.com', 'active'),
(11, 'ES77889900K', 'Toy Town', '159 Redwood St', 'Seville', '778-899-0011', 'hello@toytown.com', 'active'),
(12, 'ES44556677L', 'Home Essentials', '753 Fir St', 'Valencia', '445-566-7788', 'support@homeessentials.com', 'active'),
(13, 'ES99001122M', 'Beauty Bliss', '951 Poplar St', 'Bilbao', '990-011-2233', 'contact@beautybliss.com', 'active'),
(14, 'ES55667788N', 'Sports Arena', '357 Cypress St', 'Granada', '556-677-8899', 'info@sportsarena.com', 'active'),
(15, 'ES11223344O', 'Music Mania', '159 Alder St', 'Malaga', '112-233-4455', 'hello@musicmania.com', 'active'),
(16, 'PT66778899P', 'Garden Glory', '753 Beech St', 'Porto', '667-788-9900', 'support@gardenglory.com', 'active'),
(17, 'PT22334455Q', 'Auto Hub', '951 Chestnut St', 'Lisbon', '223-344-5566', 'contact@autohub.com', 'active'),
(18, 'IT88990011R', 'Kids Corner', '357 Dogwood St', 'Rome', '889-900-1122', 'info@kidscorner.com', 'active'),
(19, 'IT33445566S', 'Office Outlet', '159 Elmwood St', 'Milan', '334-455-6677', 'hello@officeoutlet.com', 'inactive'),
(20, 'FR77889900T', 'Health Haven', '753 Hawthorn St', 'Paris', '778-899-0011', 'support@healthhaven.com', 'active'),
(21, 'FR44556677U', 'Travel Treasures', '951 Juniper St', 'Marseille', '445-566-7788', 'contact@traveltreasures.com', 'active'),
(22, 'FR99001122V', 'Gadget Galaxy', '357 Magnolia St', 'Lyon', '990-011-2233', 'info@gadgetgalaxy.com', 'active'),
(23, 'FR55667788W', 'Fashion Forward', '159 Palm St', 'Nice', '556-677-8899', 'hello@fashionforward.com', 'active'),
(24, 'ES11223344X', 'Culinary Creations', '753 Sycamore St', 'Seville', '112-233-4455', 'support@culinarycreations.com', 'active'),
(25, 'ES66778899Y', 'Pet Pals', '951 Walnut St', 'Valencia', '667-788-9900', 'contact@petpals.com', 'active'),
(26, 'ES22334455Z', 'Tech Trends', '357 Ash St', 'Bilbao', '223-344-5566', 'info@techtrends.com', 'active'),
(27, 'ES88990011A', 'Book Nook', '159 Cedarwood St', 'Granada', '889-900-1122', 'hello@booknook.com', 'inactive'),
(28, 'ES33445566B', 'Gourmet Delights', '753 Dogwood St', 'Malaga', '334-455-6677', 'support@gourmetdelights.com', 'active'),
(29, 'ES77889900C', 'Foodie Haven', '951 Poplar St', 'Barcelona', '778-899-0011', 'contact@foodiehaven.com', 'active'),
(30, 'IT44556677D', 'Taste of Italy', '357 Cypress St', 'Rome', '445-566-7788', 'info@tasteofitaly.com', 'active'),
(31, 'FR99001122E', 'French Cuisine', '159 Alder St', 'Paris', '990-011-2233', 'hello@frenchcuisine.com', 'active'),
(32, 'ES55667788F', 'Spanish Tapas', '753 Beech St', 'Madrid', '556-677-8899', 'support@spanishtapas.com', 'active'),
(33, 'PT11223344G', 'Portuguese Flavors', '951 Chestnut St', 'Lisbon', '112-233-4455', 'contact@portugueseflavors.com', 'active'),
(34, 'PT66778899H', 'Mediterranean Bites', '357 Dogwood St', 'Porto', '667-788-9900', 'info@mediterraneanbites.com', 'active'),
(35, 'IT22334455I', 'Gourmet Grocers', '159 Elmwood St', 'Milan', '223-344-5566', 'hello@gourmetgrocers.com', 'active'),
(36, 'FR88990011J', 'Culinary Treasures', '753 Hawthorn St', 'Marseille', '889-900-1122', 'support@culinarytreasures.com', 'active'),
(37, 'FR33445566K', 'Food Fiesta', '951 Juniper St', 'Lyon', '334-455-6677', 'contact@foodfiesta.com', 'active'),
(38, 'FR77889900L', 'Taste of Spain', '357 Magnolia St', 'Nice', '778-899-0011', 'info@tasteofspain.com', 'active'),
(39, 'IT44556677M', 'Italian Delights', '159 Palm St', 'Rome', '445-566-7788', 'hello@italiandelights.com', 'active'),
(40, 'FR99001122N', 'French Bistro', '753 Sycamore St', 'Paris', '990-011-2233', 'support@frenchbistro.com', 'active'),
(41, 'ES55667788O', 'Spanish Cuisine', '951 Walnut St', 'Madrid', '556-677-8899', 'contact@spanishcuisine.com', 'active'),
(42, 'PT11223344P', 'Portuguese Delicacies', '357 Ash St', 'Lisbon', '112-233-4455', 'info@portuguesedelicacies.com', 'active'),
(43, 'PT66778899Q', 'Mediterranean Flavors', '159 Cedarwood St', 'Porto', '667-788-9900', 'hello@mediterraneanflavors.com', 'active'),
(44, 'IT22334455R', 'Gourmet Foods', '753 Dogwood St', 'Milan', '223-344-5566', 'support@gourmetfoods.com', 'active'),
(45, 'FR88990011S', 'Culinary Delights', '951 Poplar St', 'Marseille', '889-900-1122', 'contact@culinarydelights.com', 'active'),
(46, 'FR33445566T', 'Food Haven', '357 Cypress St', 'Lyon', '965-234-98765', 'info@foodheaven.fr','active');

INSERT INTO CUSTOMER_ORDER (order_id, customer_id, order_date, order_status, order_amount, order_reference) VALUES
(1, 1, '2021-01-05', 'shipped', 11423.78, 'ABC-01-DEFG'),
(2, 1, '2021-02-06', 'shipped', 345.48, 'XYZ-02-HIJK'),
(3, 1, '2021-03-10', 'delivered', 113.95, 'MNO-03-LMNP'),
(4, 2, '2021-04-11', 'shipped', 518.24, 'PQR-04-QRST'),
(5, 2, '2021-05-14', 'delivered', 215.98, 'EFG-05-UVWX'),
(6, 3, '2021-06-01', 'shipped', 460.60, 'JKL-06-YZAB'),
(7, 3, '2021-07-05', 'delivered', 143.97, 'CDE-07-CDEF'),
(8, 5, '2021-08-07', 'shipped', 2438.18, 'FGH-08-GHIJ'),
(9, 5, '2021-09-10', 'delivered', 1295.96, 'IJK-09-KLMN'),
(10, 6, '2021-10-05', 'shipped', 1799.96, 'LMN-10-OPQR'),
(11, 6, '2021-11-07', 'delivered', 63.33, 'STU-11-STUV'),
(12, 7, '2021-12-20', 'shipped', 119.95, 'VWX-12-WXYZ'),
(13, 7, '2022-01-25', 'shipped', 379.08, 'ABC-13-ABCD'),
(14, 8, '2022-02-05', 'delivered', 93.53, 'DEF-14-DEFG'),
(15, 10, '2022-03-15', 'shipped', 259.16, 'GHI-15-GHIJ'),
(16, 10, '2022-04-18', 'delivered', 163.12, 'JKL-16-JKLM'),
(17, 12, '2022-05-10', 'shipped', 149.64, 'MNO-17-NOPQ'),
(18, 13, '2022-06-01', 'shipped', 2879.90, 'PQR-18-PQRS'),
(19, 14, '2022-07-05', 'shipped', 179.96, 'TUV-19-TUVW'),
(20, 15, '2022-08-10', 'delivered', 695.66, 'XYZ-20-WXYZ'),
(21, 17, '2022-09-01', 'shipped', 37.41, 'ABC-21-ABCD'),
(22, 17, '2022-10-05', 'delivered', 11843.79, 'DEF-22-DEFG'),
(23, 19, '2022-11-15', 'shipped', 77.48, 'GHI-23-GHIJ'),
(24, 19, '2022-12-20', 'delivered', 6479.87, 'JKL-24-JKLM'),
(25, 20, '2023-01-01', 'shipped', 863.90, 'MNO-25-NOPQ'),
(26, 21, '2023-02-05', 'delivered', 95.98, 'PQR-26-PQRS'),
(27, 22, '2023-03-20', 'shipped', 479.90, 'STU-27-STUV'),
(28, 22, '2023-04-25', 'shipped', 134.36, 'VWX-28-WXYZ'),
(29, 22, '2023-05-30', 'delivered', 43.15, 'ABC-29-ABCD'),
(30, 23, '2023-06-01', 'shipped', 10528.08, 'DEF-30-DEFG'),
(31, 24, '2023-07-05', 'shipped', 119.95, 'GHI-31-GHIJ'),
(32, 26, '2023-08-10', 'delivered', 259.07, 'JKL-32-JKLM'),
(33, 27, '2023-09-20', 'shipped', 115.16, 'MNO-33-NOPQ'),
(34, 27, '2023-10-25', 'shipped', 230.34, 'PQR-34-PQRS'),
(35, 27, '2023-11-30', 'delivered', 109.39, 'STU-35-STUV'),
(36, 28, '2023-12-10', 'shipped', 187.05, 'VWX-36-WXYZ'),
(37, 28, '2023-12-15', 'shipped', 815.96, 'ABC-37-ABCD'),
(38, 29, '2022-01-01', 'delivered', 302.37, 'DEF-38-DEFG'),
(39, 30, '2022-02-10', 'shipped', 4799.90, 'GHI-39-GHIJ'),
(40, 30, '2022-03-15', 'shipped', 5759.96, 'JKL-40-JKLM'),
(41, 31, '2022-04-20', 'delivered', 239.90, 'MNO-41-NOPQ'),
(42, 32, '2022-05-25', 'shipped', 1295.96, 'PQR-42-PQRS'),
(43, 33, '2022-06-01', 'shipped', 287.90, 'STU-43-STUV'),
(44, 33, '2022-07-05', 'shipped', 163.16, 'VWX-44-WXYZ'),
(45, 33, '2022-08-10', 'delivered', 719.96, 'ABC-45-ABCD'),
(46, 34, '2022-09-20', 'shipped', 479.90, 'DEF-46-DEFG'),
(47, 34, '2022-10-25', 'shipped', 259.16, 'GHI-47-GHIJ'),
(48, 35, '2022-11-01', 'delivered', 95.95, 'JKL-48-JKLM'),
(49, 36, '2022-12-10', 'shipped', 153.52, 'MNO-49-NOPQ'),
(50, 36, '2023-01-15', 'shipped', 327.50, 'PQR-50-PQRS'),
(51, 37, '2023-02-20', 'delivered', 103.64, 'STU-51-STUV'),
(52, 38, '2023-03-01', 'shipped', 239.95, 'VWX-52-WXYZ'),
(53, 39, '2023-04-10', 'shipped', 2159.93, 'ABC-53-ABCD'),
(54, 40, '2023-05-20', 'delivered', 100.77, 'DEF-54-DEFG'),
(55, 41, '2023-06-01', 'shipped', 91.15, 'GHI-55-GHIJ'),
(56, 41, '2023-07-05', 'delivered', 189.99, 'JKL-56-JKLM'),
(57, 42, '2023-08-01', 'shipped', 119.95, 'MNO-57-NOPQ'),
(58, 42, '2023-09-05', 'shipped', 307.12, 'PQR-58-PQRS'),
(59, 43, '2023-10-01', 'delivered', 31.18, 'STU-59-STUV'),
(60, 44, '2023-11-01', 'shipped', 129.51, 'VWX-60-WXYZ'),
(61, 45, '2023-12-01', 'shipped', 191.90, 'ABC-61-ABCD'),
(62, 45, '2023-12-15', 'delivered', 6479.96, 'DEF-62-DEFG'),
(63, 45, '2023-12-20', 'shipped', 772.59, 'GHI-63-GHIJ'),
(64, 46, '2023-12-25', 'shipped', 143.95, 'JKL-64-JKLM'),
(65, 46, '2023-12-30', 'delivered', 244.76, 'MNO-65-NOPQ'),
(66, 46, '2023-11-10', 'shipped', 863.90, 'PQR-66-PQRS'),
(67, 17, '2023-10-15', 'shipped', 76.76, 'STU-67-STUV'),
(68, 17, '2023-09-20', 'delivered', 117.57, 'VWX-68-WXYZ'),
(69, 22, '2023-08-01', 'shipped', 479.90, 'ABC-69-ABCD'),
(70, 22, '2023-07-05', 'shipped', 863.96, 'DEF-70-DEFG'),
(71, 17, '2024-01-01', 'pending', 3599.98, 'GHI-71-GHIJ'),
(72, 18, '2024-01-15', 'shipped', 431.95, 'JKL-72-JKLM'),
(73, 19, '2024-02-05', 'delivered', 187.17, 'MNO-73-NOPQ'),
(74, 20, '2024-02-10', 'pending', 230.30, 'PQR-74-PQRS'),
(75, 21, '2024-02-20', 'shipped', 203.96, 'STU-75-STUV'),
(76, 22, '2024-03-01', 'delivered', 95.95, 'VWX-76-WXYZ'),
(77, 23, '2024-03-15', 'pending', 230.34, 'ABC-77-ABCD'),
(78, 24, '2024-03-25', 'shipped', 1295.96, 'DEF-78-DEFG'),
(79, 25, '2024-04-01', 'pending', 287.90, 'GHI-79-GHIJ'),
(80, 26, '2024-04-10', 'delivered', 911.95, 'JKL-80-JKLM'),
(81, 27, '2024-04-20', 'shipped', 2039.96, 'MNO-81-NOPQ'),
(82, 28, '2024-05-05', 'pending', 124.70, 'PQR-82-PQRS'),
(83, 29, '2024-05-15', 'shipped', 73.89, 'STU-83-STUV'),
(84, 30, '2024-06-01', 'delivered', 107.96, 'VWX-84-WXYZ'),
(85, 31, '2024-06-10', 'pending', 138.18, 'ABC-85-ABCD'),
(86, 32, '2024-06-20', 'shipped', 95.95, 'DEF-86-DEFG'),
(87, 33, '2024-07-01', 'delivered', 95.96, 'GHI-87-GHIJ'),
(88, 34, '2024-07-15', 'pending', 124.70, 'JKL-88-JKLM'),
(89, 35, '2024-07-25', 'shipped', 151.16, 'MNO-89-NOPQ'),
(90, 36, '2024-08-01', 'delivered', 959.95, 'PQR-90-PQRS'),
(91, 37, '2024-08-10', 'pending', 311.94, 'STU-91-STUV'),
(92, 38, '2024-08-20', 'shipped', 43.15, 'VWX-92-WXYZ'),
(93, 39, '2024-09-01', 'delivered', 179.96, 'ABC-93-ABCD'),
(94, 40, '2024-09-10', 'pending', 71.98, 'DEF-94-DEFG'),
(95, 41, '2024-09-15', 'shipped', 71.95, 'GHI-95-GHIJ'),
(96, 42, '2024-09-15', 'delivered', 6697.22, 'JKL-96-JKLM');

INSERT INTO ORDER_LINE (order_id, order_line_id, wine_id, quantity, discount) VALUES
(1, 1, 3, 2, 10),
(1, 2, 5, 1, NULL),
(1, 3, 7, 2, 15),
(2, 1, 8, 3, 20),
(3, 1, 10, 1, 5),
(4, 1, 12, 2, 25),
(4, 2, 1, 1, NULL),
(4, 3, 9, 1, 30),
(5, 1, 6, 1, 50),
(6, 1, 14, 4, NULL),
(7, 1, 9, 1, 40),
(8, 1, 7, 2, NULL),
(8, 2, 15, 1, 60),
(8, 3, 20, 2, NULL),
(9, 1, 3, 1, 10),
(10, 1, 4, 1, 25),
(11, 1, 17, 2, 70),
(12, 1, 16, 1, NULL),
(13, 1, 18, 2, 30),
(13, 2, 8, 1, NULL),
(14, 1, 19, 3, 50),
(15, 1, 13, 1, 10),
(16, 1, 2, 2, 15),
(17, 1, 1, 3, 20),
(18, 1, 3, 2, NULL),
(19, 1, 20, 1, 25),
(20, 1, 25, 4, NULL),
(20, 2, 9, 1, 10),
(20, 3, 22, 2, NULL),
(21, 1, 19, 1, 40),
(22, 1, 5, 2, 20),
(22, 2, 10, 1, 30),
(22, 3, 16, 2, NULL),
(23, 1, 24, 1, 15),
(24, 1, 4, 3, 10),
(25, 1, 6, 2, NULL),
(26, 1, 23, 1, 50),
(27, 1, 9, 2, NULL),
(28, 1, 18, 1, 20),
(29, 1, 11, 1, NULL),
(30, 1, 17, 2, 25),
(30, 2, 12, 1, NULL),
(30, 3, 14, 1, 15),
(30, 4, 5, 2, 30),
(31, 1, 16, 1, NULL),
(32, 1, 15, 3, 10),
(33, 1, 8, 1, 20),
(34, 1, 12, 2, 40),
(35, 1, 14, 1, 5),
(36, 1, 19, 3, NULL),
(37, 1, 7, 1, 15),
(38, 1, 6, 1, 30),
(39, 1, 4, 2, NULL),
(40, 1, 5, 1, 20),
(41, 1, 10, 2, NULL),
(42, 1, 3, 1, 10),
(43, 1, 8, 2, NULL),
(44, 1, 12, 1, 15),
(45, 1, 7, 1, 25),
(46, 1, 9, 2, NULL),
(47, 1, 13, 1, 10),
(48, 1, 15, 1, NULL),
(49, 1, 2, 2, 20),
(50, 1, 18, 3, 35),
(51, 1, 14, 1, 10),
(52, 1, 20, 1, NULL),
(53, 1, 3, 2, 25),
(54, 1, 22, 1, 30),
(55, 1, 24, 1, NULL),
(56, 1, 17, 2, 10),
(57, 1, 16, 1, NULL),
(58, 1, 23, 2, 20),
(59, 1, 19, 1, 50),
(60, 1, 21, 3, 40),
(61, 1, 2, 2, NULL),
(62, 1, 5, 1, 10),
(63, 1, 10, 2, NULL),
(63, 2, 8, 1, NULL),
(63, 3, 13, 2, NULL),
(64, 1, 8, 1, NULL),
(65, 1, 13, 1, 15),
(66, 1, 6, 2, NULL),
(67, 1, 15, 1, 20),
(68, 1, 18, 1, 30),
(69, 1, 20, 2, NULL),
(70, 1, 7, 1, 10),
(71, 1, 5, 1, 50),
(72, 1, 6, 1, NULL),
(73, 1, 13, 1, 35),
(74, 1, 14, 2, NULL),
(75, 1, 9, 1, 15),
(76, 1, 2, 1, NULL),
(77, 1, 12, 2, 40),
(78, 1, 3, 1, 10),
(79, 1, 8, 2, NULL),
(80, 1, 7, 1, 5),
(81, 1, 4, 1, 15),
(82, 1, 1, 2, NULL),
(83, 1, 17, 1, 30),
(84, 1, 10, 1, 10),
(85, 1, 14, 2, 40),
(86, 1, 15, 1, NULL),
(87, 1, 16, 1, 20),
(88, 1, 19, 2, NULL),
(89, 1, 18, 1, 10),
(90, 1, 7, 1, NULL),
(91, 1, 9, 2, 35),
(92, 1, 11, 1, NULL),
(93, 1, 20, 1, 25),
(94, 1, 22, 1, 50),
(95, 1, 21, 1, NULL),
(96, 1, 13, 1, 10),
(96, 2, 8, 2, NULL),
(96, 3, 5, 1, 15),
(96, 4, 11, 1, 30);

COMMIT;