-- 1. Realiza una función para sumar dos números.
CREATE OR REPLACE FUNCTION suma_numeros (v_numA NUMBER, v_numB NUMBER)
    RETURN NUMBER
    IS
    v_resultado NUMBER;
BEGIN
    v_resultado := v_numA + v_numB;
    RETURN v_resultado;
END;

-- Para usar esta función.
DECLARE 
    v_suma NUMBER;
BEGIN 
    v_suma := suma_numeros(200,350);
    BDMS_OUTPUT.PUT.LINE('La suma es: ' || v_suma);
END;


