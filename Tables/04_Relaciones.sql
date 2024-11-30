-- 1 a 1

CREATE TABLE dni(
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);


/*FOREIGN KEY nos ayuda a relacionar, dice que el campo user_id hace referencia al campo 
user_id de la tabla users*/



-- 1 a N

CREATE TABLE dni(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL,
);

ALTER TABLE users ADD company_id int;

ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

/*Un usuario pertenece a una unica compania pero una compania puede tener mas de un usuario*/


-- N a M

CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);


CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE(user_id, language_id)
);

/* el nombre de la tabla intermedia suele colocarse el
nombre de las tablas que relaciona*/

