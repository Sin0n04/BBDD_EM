ACCEPT NOMBRE PROMPT 'Ingrese su nombre: '  
DECLARE
    NOM VARCHAR2(50);
BEGIN  
  NOM := '&NOMBRE';
  DBMS_OUTPUT.PUT_LINE('Hola, ' || NOM || '! Bienvenido a Oracle SQL.');  
END;