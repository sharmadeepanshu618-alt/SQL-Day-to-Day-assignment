DECLARE
    num NUMBER := 2;
    i NUMBER;
    count NUMBER;

BEGIN

    WHILE num <= 600 LOOP

        i := 1;
        count := 0;

        WHILE i <= num LOOP

            IF MOD(num, i) = 0 THEN
             count := count + 1;
            END IF;

            i := i + 1;

        END LOOP;

        IF count = 2 THEN
            DBMS_OUTPUT.PUT_LINE(num);
        END IF;

        num := num + 1;

    END LOOP;

END;






DECLARE
    num NUMBER := 153;
    temp NUMBER;
    rem NUMBER;
    sum NUMBER := 0;
BEGIN

    temp := num;

    WHILE temp > 0 LOOP

        rem := MOD(temp, 10);

        sum := sum + rem * rem * rem;

        temp := TRUNC(temp / 10);

    END LOOP;

    IF sum = num THEN
        DBMS_OUTPUT.PUT_LINE('Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Armstrong Number');
    END IF;

END;






DECLARE
    str VARCHAR2(50) := 'MADAM';
    rev VARCHAR2(50) := '';
    i NUMBER;
BEGIN

    i := LENGTH(str);

    WHILE i >= 1 LOOP

        rev := rev || SUBSTR(str, i, 1);

        i := i - 1;

    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original = ' || str);
    DBMS_OUTPUT.PUT_LINE('Reverse = ' || rev);

    IF str = rev THEN
        DBMS_OUTPUT.PUT_LINE('Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Palindrome');
    END IF;

END;
