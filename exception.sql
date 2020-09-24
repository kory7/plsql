CREATE OR REPLACE PROCEDURE Get_custProcedure(v_vinNo IF_HMM_GIN_B.VIN_NO%type, v_ifseq IF_HMM_GIN_B.IF_SEQ%type)
AS
    v_port IF_HMM_GIN_B.CUST_PORT_CD%type;
BEGIN
    SELECT CUST_PORT_CD 
    INTO v_port 
    FROM IF_HMM_GIN_B 
    WHERE VIN_NO = v_vinNo 
    AND IF_SEQ = v_ifseq;
    
    DBMS_OUTPUT.PUT_LINE('The code is: '|| v_port);
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('There is no matching code.');
        
END;
    
BEGIN
    Get_custProcedure('5NPDH4AE2FH53s886', 107);  
    Get_custProcedure('5NPDH4AE0FH513689', 83);    
END;