ACCEPT HIGH PROMPT 'INTRODUCE UN NUMERO'
ACCEPT LOWEST PROMPT 'INTRODUCE OTRO NUMERO'
DECLARE
    H NUMBER(4) := &HIGH;
    L H%TYPE := &LOWEST;
    AUX H%TYPE;
BEGIN
    IF L > H THEN
        AUX := L;
        L := H;
        H := AUX;
    END IF;

    AUX := H;

    WHILE AUX > L LOOP
        DBMS_OUTPUT.PUT_LINE(AUX);
        AUX := AUX - 1 ;
    END LOOP;

END;
/