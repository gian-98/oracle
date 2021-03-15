/*
    Autor: Angie Daniela Escobar
    Fecha: 06/03/2021
    Descripcion: script para insertar datos a las tablas del modelo airbnb
*/

--insert tabla user_airbnb
INSERT INTO user_airbnb 
    VALUES ('prueba1', 'prueba1@gmail.com', 'contra_prueba1', 
        '', '',  sysdate, sysdate);

INSERT INTO user_airbnb 
    VALUES ('gian', 'prueba@gmail.com', 'contra_prueba', 
        'Angie D', 'Escobar', sysdate, sysdate);

SELECT * FROM user_airbnb;

--insert tabla state
INSERT INTO state 
    VALUES ('state_1', 'state1', sysdate, sysdate);

SELECT * FROM state;

--insert tabla amenity 
INSERT INTO amenity 
    VALUES ('amenity_2', 'amenity2', sysdate, sysdate);
    
SELECT * FROM amenity;

--insert tabla city 
INSERT INTO city 
    VALUES ('city_2', 'state_2','city2', sysdate, sysdate);

SELECT * FROM city;

--insert tabla place 
INSERT INTO place
    VALUES ('place_1', 'prueba', 'place1', 'city_1', 'descripcion1', 
            10, 5, 20, 20000, '', '', sysdate, sysdate);

INSERT INTO place
    VALUES ('place_2', 'prueba', 'place2', 'city_1', 'descripcion2', 
            5, 2, 5, 500, '', '', sysdate, sysdate);

INSERT INTO place
    VALUES ('place_3', 'gian', 'place3', 'city_2', 'descripcion3', 
        2,  1, 3, 250, '', '', sysdate, sysdate);
        
INSERT INTO place (place_id, user_id, name, city_id, description, 
                   latitude, longitude, updated_at, created_at)
    VALUES ('place_4', 'gian', 'place3', 'city_2', 'descripcion3', 
            '', '', sysdate, sysdate);

INSERT INTO place
    VALUES ('place_5', 'gian', 'place5', 'city_1', 'descripcion5', 
            3, 2, 6, 50000, 4.570868, -74.297333, sysdate+1, sysdate);
            
INSERT INTO place
    VALUES ('place_6', 'prueba', 'place6', 'city_1', 'descripcion6', 
            3, 2, 6, 50000, 4, -80, sysdate+1, sysdate);

SELECT * FROM place;

--insert tabla place_amenity 
INSERT INTO place_amenity
    VALUES ('amenity_1', 'place_1');

SELECT * FROM place_amenity;

--insert tabla review 
INSERT INTO review 
    VALUES ('review_3', 'prueba', 'place_2', 'text2', sysdate + 1, sysdate);

SELECT * FROM review;
