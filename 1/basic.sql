SET SERVEROUTPUT ON
-- 1. Mostrar 'Hola mundo' por pantalla.
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Hola mundo');
    END;

-- 2. Declarar una variable numerica y mostrar si es mayor o menor que 10.
    DECLARE
        mi_numero NUMBER(8) := 10;
    BEGIN
        IF (mi_numero > 10 ) THEN
        DBMS_OUTPUT.PUT_LINE('El número es mayor a 10.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('El numero es menor.');
        END IF;
    END;

-- 3. Declarar una variable numerica, pedir su valor y mostrarla.    

    DECLARE
        mi_numero NUMBER(8) := &numero;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('El numero elegido es el ' || mi_numero);
    END;