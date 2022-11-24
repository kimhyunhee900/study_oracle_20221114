


select '[' || trim('    abcdefg    ') || ']' t1,
        trim(leading 'A' from 'ABCDEFG') t2,
        trim(trailIng 'G' from 'ABCDEFG') t3,
        trim(both 'A' from 'ABCDEFG') t4,
        trim('A' from 'ABCDEFG') t5
from dual;

SELECT SUBSTR('You are not alone', 9, 3) STR1,
        SUBSTR('You are not alone', 5) STR2,
        SUBSTR('You are not alone', 0, 5) STR3,
        SUBSTR('You are not alone', 1, 5) STR4
FROM DUAL;

SELECT SUBSTR('You are not alone', -9, 3) STR1,
        SUBSTR('You are not alone', -5) STR2,
        SUBSTR('You are not alone', 0, 5) STR3,
        SUBSTR('You are not alone', -1, 5) STR4
FROM DUAL;


SELECT REPLACE('You are not alone', 'You', 'We') rep1,
       REPLACE('You are not alone', 'not') rep2,
       REPLACE('You are not alone', 'not', null) rep3
FROM DUAL;


SELECT TRANSLATE('u! You are not alone', 'You', 'We') trans
from dual;


select replace('너는 나를 모르는데 나는 너를 알겠느냐', '너', '나') rep
from dual;

select translate('나는 너를 모르는데 너는 나를 알겠느냐', '너', '나') rep
from dual;


select instr('Every Sha-la-la-la', 'la') ins,
       instr('Every Sha-la-la-la', 'la', 7) ins2,
       instr('Every Sha-la-la-la', 'la', 1, 2) ins3,
       instr('Every Sha-la-la-la', 'la', 12, 2) ins4,
       instr('Every Sha-la-la-la', 'la', 15,1) ins
from dual;



SELECT 'khh4477@naver.com' EMAIL_ADDR,
        SUBSTR('khh4477@naver.com', 1, INSTR('khh4477@naver.com', '@')-1 EMAIL '@' DIVIDER,
        SUBSTR('khh4477@naver.com', INSTR('khh4477@naver.com',@')+1 EMAIL_
        
        
        
select employee_id, first_name, LENGTH(first_name) name_length
from employees
where first_name LIKE 'A%'
ORDER BY 1;

SELECT employee_id, first_name, lpad(salary,15,'$') salary
from employees


select employee_id, first_name, phone_number, substr(phone_number, 1, instr(phone_number, '.')-1) "Local Number"
from employees
where department_id in(60,80, 100)
order by 1;





