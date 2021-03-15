/*
    Autor: Angie Daniela Escobar
    Fecha: 06/03/2021
    Descripcion: script para la creacion de tablas del modelo airbnb
*/

-- Tabla USER
CREATE TABLE user_airbnb (
    user_id     VARCHAR2(20), --PK
    email       VARCHAR2(50),
    password    VARCHAR2(20),
    first_name  VARCHAR2(20),
    last_name   VARCHAR2(20),
    updated_at  DATE,
    created_at  DATE
); 

-- Tabla STATE
CREATE TABLE state (
    state_id    VARCHAR2(20), --PK
    name        VARCHAR2(30),
    updated_at  DATE,
    created_at  DATE
);

-- Tabla AMENITY
CREATE TABLE amenity (
    amenity_id  VARCHAR2(20), --PK
    name        VARCHAR2(50),
    updated_at  DATE,
    created_at  DATE
);

-- Tabla CITY
CREATE TABLE city (
    city_id     VARCHAR2(20), --PK
    state_id    VARCHAR2(50), --FK STATE
    name        VARCHAR2(30),
    updated_at  DATE,
    created_at  DATE
);

-- Tabla PLACE
CREATE TABLE place (
    place_id            VARCHAR2(20), --PK
    user_id             VARCHAR2(50), --FK USER
    name                VARCHAR2(100),
    city_id             VARCHAR2(50), --FK CITY
    description         VARCHAR2(50), --NULL
    number_rooms        NUMBER(3),    --DEFAULT 0
    number_bathrooms    NUMBER(2),    --DEFAULT 0
    max_guest           NUMBER(3),    --DEFAULT 0
    price_by_night      NUMBER(10),   --DEFAULT 0
    latitude            NUMBER(13, 10), --NULL
    longitude           NUMBER(13, 10), --NULL
    updated_at          DATE,
    created_at          DATE
);

-- Tabla PLACEAMENITY
CREATE TABLE place_amenity (
    amenity_id  VARCHAR2(20), --FK AMENITY
    place_id    VARCHAR2(20)  --FK PLACE
);

-- Tabla REVIEW
CREATE TABLE review (
    review_id   VARCHAR2(20), --PK
    user_id     VARCHAR2(20),
    place_id    VARCHAR2(20),
    text        VARCHAR2(100),
    updated_at  DATE,
    created_at  DATE
);