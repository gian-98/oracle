/*
    Autor: Angie Daniela Escobar
    Fecha: 06/03/2021
    Descripcion: script para modificar la estructura de las tabla creadas
                 para el modelo airbnb
*/

-- DEFAULT
ALTER TABLE place MODIFY number_rooms DEFAULT 0;
ALTER TABLE place MODIFY number_bathrooms DEFAULT 0;
ALTER TABLE place MODIFY max_guest DEFAULT 0;
ALTER TABLE place MODIFY price_by_night DEFAULT 0;

-- NOT NULL
-- Tabla USER
ALTER TABLE user_airbnb MODIFY (user_id NOT NULL);
ALTER TABLE user_airbnb MODIFY (email NOT NULL);
ALTER TABLE user_airbnb MODIFY (password NOT NULL);
ALTER TABLE user_airbnb MODIFY (updated_at NOT NULL);
ALTER TABLE user_airbnb MODIFY (created_at NOT NULL);

-- Tabla STATE
ALTER TABLE state MODIFY (state_id NOT NULL);
ALTER TABLE state MODIFY (name NOT NULL);
ALTER TABLE state MODIFY (updated_at NOT NULL);
ALTER TABLE state MODIFY (created_at NOT NULL);

-- Tabla AMENITY
ALTER TABLE amenity MODIFY (amenity_id NOT NULL);
ALTER TABLE amenity MODIFY (name NOT NULL);
ALTER TABLE amenity MODIFY (updated_at NOT NULL);
ALTER TABLE amenity MODIFY (created_at NOT NULL);

-- Tabla CITY
ALTER TABLE city MODIFY (city_id NOT NULL);
ALTER TABLE city MODIFY (state_id NOT NULL);
ALTER TABLE city MODIFY (name NOT NULL);
ALTER TABLE city MODIFY (updated_at NOT NULL);
ALTER TABLE city MODIFY (created_at NOT NULL);

-- Tabla PLACE
ALTER TABLE place MODIFY (place_id NOT NULL);
ALTER TABLE place MODIFY (user_id NOT NULL);
ALTER TABLE place MODIFY (name NOT NULL);
ALTER TABLE place MODIFY (city_id NOT NULL);
ALTER TABLE place MODIFY (number_rooms NOT NULL);
ALTER TABLE place MODIFY (number_bathrooms NOT NULL);
ALTER TABLE place MODIFY (max_guest NOT NULL);
ALTER TABLE place MODIFY (price_by_night NOT NULL);
ALTER TABLE place MODIFY (updated_at NOT NULL);
ALTER TABLE place MODIFY (created_at NOT NULL);

-- Tabla PLACEAMENITY
ALTER TABLE place_amenity MODIFY (amenity_id NOT NULL);
ALTER TABLE place_amenity MODIFY (place_id NOT NULL);

-- Tabla REVIEW
ALTER TABLE review MODIFY (review_id NOT NULL);
ALTER TABLE review MODIFY (user_id NOT NULL);
ALTER TABLE review MODIFY (place_id NOT NULL);
ALTER TABLE review MODIFY (text NOT NULL);
ALTER TABLE review MODIFY (updated_at NOT NULL);
ALTER TABLE review MODIFY (created_at NOT NULL);

--PK, PRIMARY KEY
ALTER TABLE user_airbnb ADD CONSTRAINT pk_user_id PRIMARY KEY (user_id);
ALTER TABLE state ADD CONSTRAINT pk_state_id PRIMARY KEY (state_id);
ALTER TABLE amenity ADD CONSTRAINT pk_amenity_id PRIMARY KEY (amenity_id);
ALTER TABLE city ADD CONSTRAINT pk_city_id PRIMARY KEY (city_id);
ALTER TABLE place ADD CONSTRAINT pk_place_id PRIMARY KEY (place_id);
ALTER TABLE review ADD CONSTRAINT pk_review_id PRIMARY KEY (review_id);

--FK, FOREIGN KEY
-- Tabla CITY
ALTER TABLE city 
ADD CONSTRAINT fk_state_id
      FOREIGN KEY (state_id) 
      REFERENCES state (state_id);

-- Tabla PLACE
ALTER TABLE place 
ADD CONSTRAINT fk_place_user_id
      FOREIGN KEY (user_id) 
      REFERENCES user_airbnb (user_id);
      
ALTER TABLE place 
ADD CONSTRAINT fk_place_city_id
      FOREIGN KEY (city_id) 
      REFERENCES city (city_id);
      
-- Tabla PLACEAMENITY
ALTER TABLE place_amenity 
ADD CONSTRAINT fk_place_amenity_id
      FOREIGN KEY (amenity_id) 
      REFERENCES amenity (amenity_id);
      
ALTER TABLE place_amenity 
ADD CONSTRAINT fk_place_id
      FOREIGN KEY (place_id) 
      REFERENCES place (place_id);

-- Tabla REVIEW
ALTER TABLE review
ADD CONSTRAINT fk_review_user_id
      FOREIGN KEY (user_id) 
      REFERENCES user_airbnb (user_id);
      
ALTER TABLE review 
ADD CONSTRAINT fk_review_place_id
      FOREIGN KEY (place_id) 
      REFERENCES place (place_id);