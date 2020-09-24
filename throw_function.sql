CREATE OR REPLACE FUNCTION Get_cust(v_vinNo IF_HMM_GIN_B.VIN_NO%type, v_ifseq IF_HMM_GIN_B.IF_SEQ%type)
RETURN IF_HMM_GIN_B.CUST_PORT_CD%type
AS
    v_port IF_HMM_GIN_B.CUST_PORT_CD%type;
    e_limit EXCEPTION;
BEGIN
    SELECT MAX(CUST_PORT_CD) 
    INTO v_port 
    FROM IF_HMM_GIN_B 
    WHERE VIN_NO = v_vinNo 
    AND IF_SEQ = v_ifseq; 
    
    IF v_port IS NULL THEN
        RAISE no_data_found;
    ELSIF v_po
    ELSE
        RETURN v_port;
    END IF;
    
EXCEPTION
    WHEN no_data_found then
        DBMS_OUTPUT.PUT_LINE('There is no matching information.');
        RETURN '0000';
    WHEN e_limit THEN
        DBMS_OUTPUT.PUT_LINE('There is no matching information.');
        RETURN '1000';
END;

/

DECLARE
    v_port IF_HMM_GIN_B.CUST_PORT_CD%type;
BEGIN
    v_port := Get_cust('5NPDH4AE2FH53s886', 107);
    IF v_port != '0000' THEN
        DBMS_OUTPUT.PUT_LINE('The port code is: '||v_port);
    END IF;
END;    