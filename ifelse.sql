-- 1. Un bloque con una variable de sustitución.
/*El programa solicitará la inclusión de un número entre 0 y 100 (si el valor esta fuera
de este rango, se mostrara un mensaje que indicará que valor no es válido). */
/*En el caso de que el valor estén en el rango de 0 a 100, comprobaremos el número
y si es igual a 10, 20 o 30, el programa nos mostrara un mensaje indicándonos que
hemos ganado el primer premio, segundo premio o tercer premio respectivamente,
finalmente si el número es diferente a estos 3, nos indicará que el número no ha
sido agraciado.*/

DECLARE 
    valor NUMBER(3) := &introduce_valor;
BEGIN
    IF valor >= 0 AND valor <=100 THEN 
        IF(valor=10)THEN
            Dbms_Output.Put_Line('Has ganado el primer premio');
        ELSIF(valor=20)THEN
            Dbms_Output.Put_Line('Has ganado el segundo precio');
        ELSIF(valor=30)THEN
            Dbms_Output.Put_Line('Has ganado el tercer premio');
        ELSE
            Dbms_Output.Put_Line('No ha sido premiado');
        END IF;
    ELSE
        Dbms_Output.Put_Line('El valor tiene que ser entre 0 y 100');
    END IF;
END;