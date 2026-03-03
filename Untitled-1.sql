ACCEPT NOMBRE PROMPT 'Ingrese su nombre: '
DECLARE
    nombre VARCHAR2(30):= '&NOMBRE';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hola, ' || nombre || '!');

END;
/