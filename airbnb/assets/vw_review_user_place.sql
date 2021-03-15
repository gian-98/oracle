/*
    Autor: Angie Daniela Escobar
    Fecha: 14/03/2021
    Descripcion: script para la creacion de la vista que consulta,
		 las Review que realiza un usuario sobre un Place
*/


CREATE OR REPLACE VIEW vw_review_user_place
AS
    SELECT  usu.user_id                                 usuario,
            usu.first_name || ' ' || usu.last_name      nombre_usuario,
            pl.name                                     lugar,
            rw.text                                     opinion
    FROM    review       rw,
            place        pl,
            user_airbnb  usu
    WHERE   rw.user_id = usu.user_id
        AND rw.place_id = pl.place_id;
    