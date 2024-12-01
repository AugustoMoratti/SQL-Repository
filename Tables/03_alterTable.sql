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

/*Agregar propiedades*/
ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

/*Aveces , si tenes una FK debemos eliminarla y luego colocarla de vuelta para poder añadir propiedades
como el not nul de abajo*/
ALTER TABLE `hello_sql`.`users_languages` 
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `language_id` `language_id` INT NOT NULL ;

