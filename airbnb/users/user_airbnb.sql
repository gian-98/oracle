/*
    Autor: Angie Daniela Escobar
    Fecha: 06/03/2021
    Descripcion: script para la creacion del usuario airbnb
*/

-- usuario: airbnb 
-- password: por defecto es uceva_airbnb, se recomienda cambiarlo
CREATE USER airbnb IDENTIFIED BY uceva_airbnb;


/*
    si a la hora de insertar datos aparece el error 
    ORA-01950: no privileges on tablespace,
    el sgte comando lo resuelve, ya que permite 
    asignar un espacio para que el usuario almacene datos
*/
GRANT UNLIMITED TABLESPACE TO airbnb;


