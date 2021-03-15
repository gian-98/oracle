/*
    Autor: Angie Daniela Escobar
    Fecha: 14/03/2021
    Descripcion: script para la asignacion de privilegios 
		 de objeto al usuario airbnb_angie
*/

--privilegio de select a todas las tablas del modelo airbnb
GRANT select ON user_airbnb TO airbnb_angie;
GRANT select ON state TO airbnb_angie;
GRANT select ON amenity TO airbnb_angie;
GRANT select ON city TO airbnb_angie;
GRANT select ON place TO airbnb_angie;
GRANT select ON place_amenity TO airbnb_angie;
GRANT select ON review TO airbnb_angie;
GRANT select ON vw_review_user_place TO airbnb_angie;
GRANT select ON vw_place_city_state TO airbnb_angie;
GRANT select ON vw_amenity_place TO airbnb_angie;