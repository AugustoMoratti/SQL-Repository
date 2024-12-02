/*Procedimiento almacenado*/
-- Es una query como guardada en favoritos

-- SIN PARAMETROS
delimiter \\
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END;\\

-- Se llama asi: 
CALL p_all_users;



-- CON PARAMETROS
DELIMITER //
CREATE PROCEDURE p_age_users(IN age int)
BEGIN
	SELECT * FROM users WHERE age = users.age;
END;//

--Para eliminar
DROP PROCEDURE p_age_users;

--Para consultar
CALL p_age_users(21)