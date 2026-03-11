ACCEPT NOMPROVIN PROMPT 'ESCRIBE EL NOMBRE DE LA PROVINCIA'
DECLARE
NOMPRO  TPROVINCIA.NOMBRE%TYPE;

CURSOR CCLIENTE IS
    SELECT TIPO
    FROM TCLIENTE
    WHERE EXISTS
        (SELECT * 
         FROM TPROVINCIA
         WHERE TCLIENTE.PROVINCIA = TPROVINCIA.CODIGO
         AND UPPER(NOMBRE) = UPPER(NOMPRO));
CCLI CCLIENTE%ROWTYPE;

CAA NUMBER(3):= 0;
CBB CAA%TYPE:= 0;
CCC CAA%TYPE:= 0;
CDD CAA%TYPE:= 0;

BEGIN
    OPEN CCLIENTE;
        LOOP
            FETCH CCLIENTE INTO CCLI;
            EXIT WHEN CCLIENTE%NOTFOUND;

            IF CCLI.TIPO = 'AA' THEN
                CAA:= CAA+1;
            ELSE
                IF CCLI.TIPO = 'BB' THEN
                    CBB:= CBB + 1;
                ELSE  
                    IF CCLI.TIPO = 'CC' THEN 
                        CCC:= CCC + 1;
                    ELSE
                        IF CCLI.TIPO = 'DD' THEN
                            CDD:= CDD + 1;
                        END IF;
                    END IF;
                END IF;
            END IF;
        END LOOP;
    CLOSE CCLIENTE;

        DBMS_OUTPUT.PUT_LINE('EN ' || NOMPRO || ' HAY ' || CAA|| ' CLIENTES DE TIPO AA'|| CBB|| ' CLIENTES DE TIPO BB'|| CCC|| ' CLIENTES DE TIPO CC'|| CDD|| ' CLIENTES DE TIPO DD')
                                                                                                                                    CH