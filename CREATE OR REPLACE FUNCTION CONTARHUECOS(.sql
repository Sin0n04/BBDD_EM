CREATE OR REPLACE FUNCTION CONTARHUECOS(Cadena VARCHAR2) RETURN NUMBER IS
    CONT NUMBER(3):= 0;

    BEGIN 
        FOR I IN 1..LENGTH(Cadena) LOOP
            IF SUBSTR(Cadena,I,1) = ' ' THEN
                CONT := CONT + 1;
            END IF;
        END LOOP;
        RETURN CONT;
    END;
    /