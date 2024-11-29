/* Cuando la clave no se puede utilizar en funciones agregadas*/
/* Limita el resultado con otra funcion*/


SELECT COUNT(age) FROM users HAVING COUNT(age) > 3;

/*En este caso me muestra un contador de cuantos tienen la edad definida solo si supera la cantidad de 3*/

/* Se usa bastante con los GROUP BY*/
