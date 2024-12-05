/*Actualizar la tabla, siempre se hacen aparte con una regla de filtrado*/

UPDATE users SET age = '21' WHERE user_id = 1;

UPDATE users SET age = 21, name = 'Jose' WHERE user_id = 2;

/* Tener cuidado con los formatos, ver en w3*/


UPDATE movies SET title = 'Toy Story 3' , director = 'Lee Unkrich' 
WHERE id = 11;
/* cambiar 2 a la vez */
