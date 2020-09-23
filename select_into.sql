DECLARE
    v_client IF_HMM_GIN_H.SNDR_ID%type;
    v_clientFullName varchar(200);
BEGIN 
    SELECT SNDR_ID 
    INTO v_client 
    FROM IF_HMM_GIN_H 
    WHERE FILE_NM = 'R0120140326000001.txt';
    
    IF(v_client = 'HMM') THEN
        v_clientFullName := 'Hong mm';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('The name of the client is: '|| v_clientFullName);
END;

/

DECLARE
    v_info IF_HMM_GIN_H%rowtype;
    v_clientFullName varchar(200);
BEGIN
    SELECT * 
    INTO v_info 
    FROM IF_HMM_GIN_H 
    WHERE FILE_NM = 'R0120140326000001.txt';
    
    IF(v_info.SNDR_ID = 'HMM') THEN
        v_clientFullName := 'Hong mm';
    END IF;
    DBMS_OUTPUT.PUT_LINE('Client: '|| v_clientFullName || '. Number: '|| v_info.IF_SEQ);
END;