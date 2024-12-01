

SELECT user_id FROM users
UNION 
SELECT user_id FROM dni;

/*----*/

SELECT *
FROM users 
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;






