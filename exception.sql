/*
1. Cree un bloque PL/SQL que maneje una excepción, de la siguiente forma:
Pedimos dos números por variable de sustitución que van a ser el
numerador y el denominador. Realizaremos la operación de división entre
ellos.
Debemos controlar la excepción de que el denominador sea 0. 
*/
DECLARE
    numerador NUMBER:= &introduce_el_numerador;
    denominador NUMBER:= &introduce_el_denominador;
    resultado NUMBER;
BEGIN
    resultado:=numerador/denominador;
    DBMS_OUTPUT.PUT_LINE ('El resultado de dividir '|| numerador || ' entre '|| denominador || ' es '||
    resultado);
EXCEPTION

    WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE ('Has intentado dividir entre 0');
END; 


/*
Cree un bloque PL/SQL que maneje una excepción, de la siguiente forma:
Pedimos un apellido por variable de sustitución que se va a usar para
eliminar los empleados con ese ese apellido.
Debemos controlar la excepción de que no haya coincidencias con ese
apellido diciendo que el apellido no existe. 
*/

DECLARE
    v_last_name employees.last_name%TYPE := '&Introduce_Apellido';
BEGIN
    DELETE FROM employees WHERE last_name = v_last_name;
    IF SQL%NOTFOUND THEN
        RAISE_APPLICATION_ERROR (-20201, v_last_name || ' no existe');
    END IF;
END; 