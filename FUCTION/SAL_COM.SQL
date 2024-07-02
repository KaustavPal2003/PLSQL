SET SERVEROUTPUT ON

DECLARE

ENO EMP.EMPNO%TYPE;
T NUMBER;

BEGIN

ENO:='&U';

T:=EMP1(ENO);

IF(T!=-1) THEN

DBMS_OUTPUT.PUT_LINE('EMPNO'||'         '||'TOTAL');
DBMS_OUTPUT.PUT_LINE('---------------------------');

DBMS_OUTPUT.PUT_LINE(ENO||'         '||T);
DBMS_OUTPUT.PUT_LINE('---------------------------');

END IF;

END;
/
