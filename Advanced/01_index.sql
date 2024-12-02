/* Es un elemento que se puede crear
en una tabla de bases de datos*/

/*Va a mejorar el rendimiento, acelera
la busqueda de los registros*/

/* Indices primarios, vinculados a las Primary key*/
/* Indices unicos, asegura que dos filas de la tabla no tengan valores duplicados*/
/* Indices comuestos, permite que se utilicen dos o mas columnas*/

/*Crear indice hace que la tabla pese mas*/

CREATE INDEX idx_name ON USERS(name);
CREATE UNIQUE INDEX idx_name ON USERS(name);
CREATE INDEX idx_name_surname ON USERS(name, surname);
SELECT * FROM users WHERE name = 'Brais';
DROP INDEX idx_name ON users;

/* Para mayor cantidad de informacion es util, ya que notamos la diferencia entre la velocidad de busqueda*/

