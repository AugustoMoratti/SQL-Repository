-- Es un disparador.
/* Instrucciones que se ejecutan automaticamente
cuando ocurren eventos en la tabla*/

/* EJJEMPLO : Cuando cambiamos el nombre
de un usuario, debemos guardar en otra tabla
el nombre anterior*/

delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW 
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;
|
delimiter ;

-- Eliminar un trigger
DROP TRIGGER tg_email;