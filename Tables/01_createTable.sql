-- Crear una tabla

CREATE TABLE persons(
	id int,
	name varchar(50),
	age int,
    email varchar(100),
    created date
);

-- Restricciones/Constraint

-- NOT NUL , Este campo no puede ser nulo.
-- UNIQUE, Que el campo sea unico, no este repetido
-- PRIMARY KEY, Campo principal, de paso es unico tambien
-- CHECK , En el momento que creamos la tabla le podemos agregar un criterio, por ejemplo guardar usuarios mayores a 18 años
-- DFEAULT, Lo que queremos por defecto, por ejemplo no dejar un email vacio sino darle un valor por default si esta vacio
-- AUTO_INCREMENT, Incrementa automaticamente

CREATE TABLE persons2 (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	age int,
    email varchar(100),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

/* CURRENT_TIMESTAMP(), es una funcion que 
devuelve un tipo datetime del momento en que se guarda un nuevo dato en la tabla*/

