ACCEPT NUMERO PROMPT 'Ingrese un número: '
DECLARE
    NUM NUMBER(5):= &NUMERO;
BEGIN
    DBMS_OUTPUT.PUT_LINE('el cuadrado del num es: ' || Power(NUM,2));
END;
/