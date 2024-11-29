SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NULL;

/* IFNULL*/
SELECT name, username, ifnull(age, 0) AS 'Age' FROM users;

/*ISNULL tambien está , veer en w3
Returna 1 o 0 dependiendo si es nulo o no*/

