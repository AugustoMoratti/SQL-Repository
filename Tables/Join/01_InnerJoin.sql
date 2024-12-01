/* Es un comando que sirve para obtener
los datos comunes de las tablas referenciadas*/
/*Solo muestra si hay coincidencias*/

/*El on es para que iguale por los
campos seleccionados, antes del punto
va la tabla y despues el campo*/
/* Para 1 a 1 y 1 a N*/
SELECT * FROM users 
INNER JOIN dni 
ON users.user_id = dni.user_id ;

SELECT * FROM users 
JOIN dni 
ON users.user_id = dni.user_id ;

SELECT users.name, companies.name FROM users
JOIN companies
ON users.company_id = companies.company_id;

/* Para M a N*/
SELECT users.name, languages.name FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id
ORDER BY users.name ;


/* En M a N*/
SELECT users.name, languages.name FROM users_languages
LEFT JOIN users ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id
ORDER BY users.name ;

