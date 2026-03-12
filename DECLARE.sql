DECLARE
    CURSOR CEMPLEADO IS 
        SELECT GRADO
        FROM EMPLEADO, GRADO
        WHERE SALARIO BETWEEN SALARIO_MIN AND SALARIO_MAX
        ORDER BY SALARIO DESC;
    CEMP CEMPLEADO%ROWTYPE;

    C1 NUMBER(3):= 0;
    C2 C1%TYPE := 0;
    C3 C2%TYPE:= 0;

BEGIN 
    OPEN CEMPLEADO;
    LOOP
        FETCH CEMPLEADO INTO CEMP;
        EXIT WHEN CEMPLEADO%ROWCOUNT = 15;

        IF CEMP.GRADO = 1 THEN
            C1 := C1 + 1;
        ELSE
          IF CEMP.GRADO = 2 THEN
            C2 := C2 + 1;
            ELSE
                   C3 := C3 + 1;
            END IF;
        END IF;
    END LOOP;

    CLOSE CEMPLEADO;


    DBMS_OUTPUT.PUT_LINE('hay ' ||C1 || ' empleados de grado 1 de los 15 que menos cobran' );
    DBMS_OUTPUT.PUT_LINE('hay ' ||C2 || " empleados de grado 2 de los 15 que menos cobran" );
    DBMS_OUTPUT.PUT_LINE('hay ' ||C3 || " empleados otro grado de los 15 que menos cobran" );
END;
/

                
       
        
      
        

