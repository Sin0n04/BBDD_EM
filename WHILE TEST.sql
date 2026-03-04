DECLARE
NUM NUMBER(3):= 2;

BEGIN
    WHILE NUM <= 100 LOOP
        DBMS_OUTPUT.PUT_LINE(NUM);
        NUM := (NUM + 2);
    END LOOP;
END;
/
