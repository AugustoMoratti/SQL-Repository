CASE
	WHEN age > 17 THEN 'Es mayor de edad'
    WHEN age < 18 THEN 'No es mayor de edad'
    ELSE 'No tiene cargada la edad'
END AS agetext
FROM users;


/*------------*/

SELECT *,
CASE
	WHEN age > 17 THEN True
    ELSE false
END AS 'Es mayor de edad?'
FROM users;

/*Recordar que el primero que se cumple es el valor que queda*/

