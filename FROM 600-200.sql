DECLARE 
    NUM NUMBER(3):= 600;
BEGIN
    WHILE(NUM >= 200) LOOP
        DBMS_OUTPUT.PUT_LINE(NUM);
        NUM:= NUM - 1;
    END LOOP;

END;
/