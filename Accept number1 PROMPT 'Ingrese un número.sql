Accept number1 PROMPT 'Ingrese un número: '
Accept number2 PROMPT 'Ingrese otro número: '
DECLARE
    NUM1 NUMBER(8):= &number1;
    NUM2 NUM1%TYPE:= &number2;
BEGIN
    DBMS_OUTPUT.PUT_LINE('EL RESULTADO DE LA SUMA ES: ' || (NUM1 * NUM2));
END;
/