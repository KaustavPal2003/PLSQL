SET SERVEROUTPUT ON 

DECLARE

M NUMBER;
K NUMBER;

BEGIN

M:='&U';
K:=FACTORIAL(M);
DBMS_OUTPUT.PUT_LINE('FACTORIAL='||K);

END;
/
