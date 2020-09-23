DECLARE
    v_num number(8) := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('While LOOP');
    WHILE(v_num<=10)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_num);
        v_num := v_num + 1;
    END LOOP; 
END;

/

BEGIN
    --REVERSE LOOP ITS POSSIBLE
    DBMS_OUTPUT.PUT_LINE('For LOOP');
    FOR i IN 1..10 
    LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

/

DECLARE
    v_number number(8) := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_number);
        EXIT WHEN v_number = 10;
        v_number := v_number+1;
    END LOOP;
END;