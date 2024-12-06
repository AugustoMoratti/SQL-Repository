USE twitter_db;
CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT , -- No es necesario el not null
    user_handle VARCHAR(50) NOT NULL UNIQUE,
    email_adress VARCHAR(50) NOT NULL UNIQUE,
    firts_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phonenumber CHAR(10) UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT(NOW()), -- Guarda la fecha de creacion del usuario
    PRIMARY KEY (user_id)
);

INSERT INTO users (user_handle, email_adress, firts_name, last_name, phonenumber)
VALUES ('augus','augus@gmail.com', 'Augusto', 'Moratti' , 45653615), 
('ferdinandalexa', 'ferdinand@gmail.com', 'Fernando', 'Alexa', 688888888),
('marta815', 'marta815@gmail.com', 'Marta', 'Garcia', 666666666),
('itzar', 'itzi@gmail.com', 'Itzi', 'Ar', 77777777); 