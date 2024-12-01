SELECT * FROM users LIMIT 4;
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 20 LIMIT 1;

SELECT * FROM movies ORDER BY title LIMIT 5 OFFSET 5;

-- Selecciona las siguientes 5 con offset.