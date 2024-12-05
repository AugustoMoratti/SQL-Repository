/* INTERSECT es un operador de conjuntos que se utiliza para recuperar 
los elementos comunes de dos conjuntos. 
También se utiliza para obtener registros (filas) DISTINTO (o comunes) de dos tablas.*/

SELECT candidate_id FROM candidates
WHERE skill = 'Python' 

INTERSECT

SELECT candidate_id FROM candidates
WHERE skill = 'Tableau' 

INTERSECT

SELECT candidate_id FROM candidates
WHERE skill = 'PostgreSQL' 

ORDER BY candidate_id DESC;
