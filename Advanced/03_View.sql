-- Representacion virtual de una o mas tablas.

/* El resultado de una consulta en formato tabla*/

CREATE VIEW v_adults_users AS
SELECT name, age
FROM users
WHERE age > 17;
-- Luego para hacer consultas : 
SELECT * FROM v_adults_users;


-- Para eliminar un view
DROP VIEW v_adults_users;

/* se actualiza en tiempo real el trigger*/
/*Sirve si siempre se realiza una misma consulta sobre una tabla*/

