-- Modificar una tabla, añadiendo, renombrando, eliminando, etc.

/*Anadir*/
ALTER TABLE persons3
ADD surname varchar(150);

/*Actualizar, renombrar*/
ALTER TABLE persons3
RENAME COLUMN surname TO description;
-- Cambia el nombre de surname a description

/*Actualizar el campo*/
ALTER TABLE persons3
MODIFY COLUMN description varchar(100);
-- Cambiamos la la longitud del campo

/*Eliminar una columna*/
ALTER TABLE persons3
DROP COLUMN description;