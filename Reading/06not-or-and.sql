SELECT * FROM users WHERE NOT email = 'sara@gmail.com';
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR  age = 20;
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND  age = 20;
SELECT * FROM users WHERE email = 'sara@gmail.com' OR  age = 20;
SELECT * FROM users WHERE email = 'sara@gmail.com' AND  age = 20;