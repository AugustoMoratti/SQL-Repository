SELECT * FROM users WHERE name IN ('augusto', 'Carlos')

/*Seleccion todos los que cumplan con la condicion entre parentesis, debemos estar seguro que exista porque si esta mal escrito no lo detecta como quizas si pasaria con el LIKE*/


SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;