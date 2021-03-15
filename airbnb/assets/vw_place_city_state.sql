/*
    Autor: Angie Daniela Escobar
    Fecha: 14/03/2021
    Descripcion: script para la creacion de la vista que consulta,
		 los Place que hay en una City y un State
*/

CREATE OR REPLACE VIEW vw_place_city_state
AS
    SELECT  pl.name             nombre_lugar,
            pl.description      desc_lugar,
            pl.number_rooms     num_habitaciones,
            pl.number_bathrooms num_baños,
            pl.max_guest        num_huespedes,
            pl.price_by_night   precio_noche,
            pl.latitude         latitud,
            pl.longitude        longitud,
            ct.name             nombre_ciudad,
            st.name             nombre_estado
    FROM    place  pl,
            city   ct,
            state  st
    WHERE   pl.city_id = ct.city_id
        AND st.state_id = ct.state_id;