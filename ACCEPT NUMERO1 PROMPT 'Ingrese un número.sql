ACCEPT NUMERO1 PROMPT 'Ingrese un número: '
ACCEPT NUMERO2 PROMPT 'Ingrese otro número: '
DECLARE
    NUM1 NUMBER(8):= &NUMERO1;
    NUM2 NUM1%TYPE:= &NUMERO2;
BEGIN
    IF NUM1 < NUM2 THEN
        DBMS_OUTPUT.PUT_LINE('El número mayor es: ' || NUM2);
    ELSE 
        IF NUM1 > NUM2 THEN
        DBMS_OUTPUT.PUT_LINE('el numero es : ' || NUM1 );
        ELSE
            DBMS_OUTPUT.PUT_LINE('los dos numeros son iguales.');
        END IF;
    END IF;


END;
/