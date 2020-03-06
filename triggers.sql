/*
Creación de un disparador llamado "Actualizar_Precio_Libros" a nivel de fila que se
dispara "antes" que se ejecute un "update" sobre el campo "precio" de la tabla "libros".
En el cuerpo del disparador, se insertará en la tabla "control", el nombre del usuario
que realizó la actualización, la fecha, el código del libro que ha sido modificado, el
precio anterior y el nuevo.
*/

CREATE OR REPLACE TRIGGER actualiza_precios
BEFORE UPDATE OF precio ON libros
FOR EACH ROW 
BEGIN
    INSERT INTO control
    VALUES(user,sysdate,:NEW.codigo,:OLD.precio,:NEW.precio);
END;

-- Para lanzar el trigger.
UPDATE libros SET precio=40 WHERE codig=100;