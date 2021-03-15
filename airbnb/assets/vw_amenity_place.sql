/*
    Autor: Angie Daniela Escobar
    Fecha: 14/03/2021
    Descripcion: script para la creacion de la vista que consulta,
		 los Place x Amenity o Ameniy x Place
*/

CREATE OR REPLACE VIEW vw_amenity_place
AS
    SELECT  pl.name             nombre_lugar,
            pl.description      desc_lugar,
            pl.number_rooms     num_habitaciones,
            pl.number_bathrooms num_baños,
            pl.max_guest        num_huespedes,
            pl.price_by_night   precio_noche,
            pl.latitude         latitud,
            pl.longitude        longitud,
            am.name             caracteristicas
    FROM    place_amenity pm,
            place pl,
            amenity am
    WHERE pm.place_id = pl.place_id
        AND pm.amenity_id = am.amenity_id;