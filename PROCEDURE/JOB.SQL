SET SERVEROUTPUT ON

DECLARE

X NUMBER;
Y NUMBER;
Z EMP.JOB%TYPE;

BEGIN

Z:='&P';

JOB_REPORT(Z,X,Y);

DBMS_OUTPUT.PUT_LINE('----------------------------------------');
DBMS_OUTPUT.PUT_LINE('TOTAL NUMBER OF EMPLOYEE='||Y);

DBMS_OUTPUT.PUT_LINE('TOTAL SALARY = '||X);
DBMS_OUTPUT.PUT_LINE('----------------------------------------');

END;
/