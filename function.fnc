CREATE OR REPLACE FUNCTION Get_cust(v_vinNo IF_HMM_GIN_B.VIN_NO%type, v_ifseq IF_HMM_GIN_B.IF_SEQ%type)
RETURN IF_HMM_GIN_B.CUST_PORT_CD%type
AS
    v_port IF_HMM_GIN_B.CUST_PORT_CD%type;
BEGIN
    SELECT MAX(CUST_PORT_CD) 
    INTO v_port 
    FROM IF_HMM_GIN_B 
    WHERE VIN_NO = v_vinNo 
    AND IF_SEQ = v_ifseq; 
     
    RETURN v_port;
END;

/

DECLARE

    v_port IF_HMM_GIN_B.CUST_PORT_CD%type;
BEGIN
    v_port := Get_cust('5NPDH4AE2FH513886', 107);
    DBMS_OUTPUT.PUT_LINE('The port code is: '||v_port);
END;