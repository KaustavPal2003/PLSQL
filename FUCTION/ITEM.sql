SET SERVEROUTPUT ON

DECLARE

INO1 ITEM.INO%TYPE;
R ITEM.RATE%TYPE;
T NUMBER;

BEGIN

INO1:='&U';

SELECT RATE INTO R FROM ITEM WHERE INO=INO1;

T:=GRADE1(INO1);

IF(T!=-1) THEN

DBMS_OUTPUT.PUT_LINE('INO'||'         '||'RATE'||'         '||'ORIGINAL PRICE');
DBMS_OUTPUT.PUT_LINE('---------------------------');

DBMS_OUTPUT.PUT_LINE(INO1||'         '||R||'         '||T);
DBMS_OUTPUT.PUT_LINE('---------------------------');

END IF;

END;
/
