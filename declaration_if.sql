declare
    v_numero number(8) := &numero;
begin
    IF(v_numero > 10) THEN
        DBMS_OUTPUT.PUT_LINE(v_numero||' es mayor que 10.');
    ELSIF(v_numero = 10)THEN
        DBMS_OUTPUT.PUT_LINE(v_numero||' es igual que 10.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_numero||' es menor que 10.');
    END IF;
end;