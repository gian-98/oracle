/*
    Autor: Angie Daniela Escobar
    Fecha: 14/03/2021
    Descripcion: script para la creacion de los sinonimos de cada 
		 una de las tablas del modelo airbnb
*/


CREATE SYNONYM user_airbnb FOR AIRBNB.user_airbnb;
CREATE SYNONYM state FOR AIRBNB.state;
CREATE SYNONYM amenity FOR AIRBNB.amenity;
CREATE SYNONYM city FOR AIRBNB.city;
CREATE SYNONYM place FOR AIRBNB.place;
CREATE SYNONYM place_amenity FOR AIRBNB.place_amenity;
CREATE SYNONYM review FOR AIRBNB.review;
CREATE SYNONYM vw_review_user_place FOR AIRBNB.vw_review_user_place;
CREATE SYNONYM vw_place_city_state FOR AIRBNB.vw_place_city_state;
CREATE SYNONYM vw_amenity_place FOR AIRBNB.vw_amenity_place;