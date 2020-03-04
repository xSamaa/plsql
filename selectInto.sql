-- Vamos a usar el schema HR de oracle.
-- 1. Mostrar el nombre de un empleado dando un codigo.

    DECLARE
        v_id_empleado Employees.Employee_Id%Type := &employees_id;
        v_nombre_empleado Employees.First_Name%Type;
    BEGIN
        SELECT first_name INTO v_nombre_empleado
        FROM Employees
        where Employee_Id = v_id_empleado;
    
        DBMS_OUTPUT.PUT_LINE('El nombre del empleado del codigo ' || v_id_empleado || ' es ' || v_nombre_empleado);
    END;

-- 2. Mostrar toda la información de un empleado dando su codigo.

    DECLARE
        v_id_empleado Employees.Employee_Id%Type := &employees_id;
        v_empleados Employees%rowType;
    BEGIN
        SELECT * INTO v_empleados
        FROM Employees
        where Employee_Id = v_id_empleado;
    
        DBMS_OUTPUT.PUT_LINE('El nombre del empleado del codigo ' || v_id_empleado || ' es ' || v_empleados.first_name
                            || ' apellido ' || V_Empleados.last_name 
                            ||  ' email ' || V_Empleados.email
                            || ' telefono ' || V_Empleados.phone_number
                            || ' salario ' || V_Empleados.salary
                            || ' departamento ' || V_Empleados.department_id
                            );
    END;
