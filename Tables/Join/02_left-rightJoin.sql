/* Se trae todo lo que tiene 
la primer tabla de la relacion, incluyendo lo 
que tienen en comun, nulo o no*/ 

SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

/*Se trae todo lo que tiene 
la segunda tabla de la relacion, incluyendo lo 
que tienen en comun, nulo o no*/
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

