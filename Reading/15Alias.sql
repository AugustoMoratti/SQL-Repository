/*Sirve para establecer alias, para intentar darle un nombre distinto a alguna columna de la tabla*/

SELECT name, ini_date AS 'fecha de inicio en programacion' FROM users WHERE age BETWEEN 20 AND 30   

/*En la tabla el campo ini_date ahora se cambia por el nombre de 'fecha de inicio de programacion'*/
/* comillas simples o dobles es lo mismo*/

SELECT concat(name, ' ' ,username) FROM users

/* Nos muestra la informacion dentro de la tabla dentro de la tabla*/
/* Augusto Moratti en vez de ir en dos casillas distinta van en la misma y escrita con el formato que colocamos en los parentesis*/

SELECT concat(name, ' ' ,username) AS 'Nombre completo' FROM users;


