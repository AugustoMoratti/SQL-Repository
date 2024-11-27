SELECT)
---------------------
SELECT * FROM users;

selecciona todas las columnas de la tabla

SELECT name FROM users; 

Selecciona la columna name de la base de la tabla users.

SELECT user_id, name FROM users;

Selecciona la columna user_id y name de la tabla users.
________________________________________________________

DISTINCT)
--------------------
SELECT DISTINCT age FROM users;

Selecciona todas las filas que tengan un valor distinto en la columna age de la tabla users.
_____________________________________________________________________________________________

WHERE)
--------------------
SELECT * FROM users WHERE age = 20;

Nos selecciona las filas que cumplan con la condicion.
_______________________________________________________
combinando

SELECT DISTINCT age FROM users WHERE age = 20;
SELECT DISTINCT * FROM users WHERE age = 20;
_______________________________________________________

ORDER BY)
---------------------
SELECT * FROM users ORDER BY age;

Nos ordena la tabla por el campo que seleccionemos en este caso por age. Siendo el minimo el null.

SELECT * FROM users ORDER BY age ASC;  
SELECT * FROM users ORDER BY age DESC;

ASC es la default osea ascendente, y el DESC es descendente.

SELECT * FROM users WHERE age = 20 ORDER BY ini_date ;

Ordena por fecha de inicializacion o sea ini_date a todas las filas que cumplan con la condicion age=20
_______________________________________________________________________________________________________

LIKE)
---------------------
SELECT * FROM users WHERE email LIKE '%gmail.com';

Nos selecciona todas las filas que el email contenga gmail.com, no debemos olvidar el porcentaje, este nos dice que todo lo que haya antes de gmail.com no nos interesa.

SELECT * FROM users WHERE email LIKE '%@%';

Nos selecciona todas las filas que el email contenga @, no debemos olvidar el porcentaje, este nos dice que todo lo que haya antes de @ no nos interesa y lo que haya despues tampoco.
_______________________________________________________________________________________________________________________________________________

NOT-AND-OR)
-----------------------
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

Niega la condicion, o sea realiza lo opuesto, como en todo lenguaje.

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR  age = 20;
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND  age = 20;
______________________________________________________________________

LIMIT)
-----------------------
SELECT * FROM users LIMIT 4;

Selecciona los primeros 4 datos de la tabla.

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 20 LIMIT 1;