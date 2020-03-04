-- 1. Mostrar los numeros de 1 al 100 con un while.

    DECLARE
        i NUMBER(8) :=1;
    BEGIN
        WHILE(i<=100)
        LOOP
            DBMS_OUTPUT.PUT_LINE(i);
            i := i+1;
        END LOOP;
    END;


-- 2. Mostrar los numeros de 1 al 100 con un for.

    BEGIN
        FOR i IN 1..100 -- REVERSE para hacerlo al reves.
        LOOP
            DBMS_OUTPUT.PUT_LINE(i);
        END LOOP;
    END;


-- 3. Mostrar los numeros de 1 al 100 con un loop. Se acaba cuando llegue al 100.

    DECLARE
        i NUMBER(8) := 1;
    BEGIN
        LOOP
            DBMS_OUTPUT.PUT_LINE(i);
            EXIT WHEN i=100;
            i := i+1;
        END LOOP;
    END;