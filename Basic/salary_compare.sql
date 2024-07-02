SET SERVEROUTPUT ON

DECLARE
ENO1 EMP.EMPNO%TYPE;
NM1 EMP.ENAME%TYPE;
SA1 NUMBER;

ENO2 EMP.EMPNO%TYPE;
NM2 EMP.ENAME%TYPE;
SA2 NUMBER;

BEGIN
SELECT EMPNO,ENAME,SAL INTO ENO1,NM1,SA1 FROM EMP WHERE EMPNO='&A';
SELECT EMPNO,ENAME,SAL INTO ENO2,NM2,SA2 FROM EMP WHERE EMPNO='&B';

DBMS_OUTPUT.PUT_LINE(CHR(10));

DBMS_OUTPUT.PUT_LINE('EMPNO1='||ENO1);
DBMS_OUTPUT.PUT_LINE('ENAME1='||NM1);
DBMS_OUTPUT.PUT_LINE('SAL1='||SA1);

DBMS_OUTPUT.PUT_LINE(CHR(10));

DBMS_OUTPUT.PUT_LINE('EMPNO2='||ENO2);
DBMS_OUTPUT.PUT_LINE('ENAME2='||NM2);
DBMS_OUTPUT.PUT_LINE('SAL2='||SA2);

DBMS_OUTPUT.PUT_LINE(CHR(10));

IF(SA1>SA2) THEN
DBMS_OUTPUT.PUT_LINE('1');
ELSIF(SA1=SA2)THEN
DBMS_OUTPUT.PUT_LINE('0');
ELSE
DBMS_OUTPUT.PUT_LINE('-1');
END IF;

EXCEPTION 
WHEN NO_DATA_FOUND
THEN DBMS_OUTPUT.PUT_LINE('INVALID EMPNO');
END;
/
