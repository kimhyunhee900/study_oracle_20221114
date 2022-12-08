


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



select employee_id, first_name, salary, commission_pct bonus, department_id
from employees, departments
where department_id = department_id
and commission_pct is not null
order by 1;


DESC EMPLOYEE_ID
FROM DUAL;

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME, L.LOCATION_ID, L.CITY
FROM EMPLOYEES E, DEPARTMENTS D, LOCATIONS L
WHERE E. DEPARTMENT_ID = D.DEPARTMENT_ID
AND D.LOCATION_ID = L.LOCATION_ID
ORDER BY 1;

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME, L.LOCATION_ID, L.CITY
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON D.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN LOCATIONS L
ON D.LOCATION_ID = L.LOCATION_ID
ORDER BY 1;

SELECT e.employee_id, e.first_name, d.department_id, d.department_name
from employees e, departments d
where e.department_id=d.department_id(+)
order by 1;

SELECT e.employee_id, e.first_name, d.department_id, d.department_name
from employees e outer join departments d
on e.department_id=d.department_id
where e.manager_id is not null
order by 1;


select e.employee_id, e.first_name, d.department_name
from employees e, departments d
where e.employee_id=d.department_id
and employee_id in(110,130,150);


select e.employee_id, e.first_name, d.department_name
from employees e inner join departments d
on e.employee_id=d.department_id
and employee_id in(110,130,150);



select dept_id, sum_salary, avg_salary
from month_salary;

UPDATE month_salary
SET EMP_CNT = ( SELECT COUNT(*)
                FROM    employees
                WHERE   department_id IS NULL ),
    SUM_SALARY = (  SELECT SUM(salary)
                    FROM    employees
                    WHERE   department_id IS NULL ),
    AVG_SALARY = ( SELECT ROUND(AVG(salary))
                   FROM    employees
                   WHERE   department_id IS NULL )
WHERE   dept_id IS NULL; 

SELECT salary
FROM    employees
WHERE   department_id IS NULL;

commit;



select decode(to_char(hire_date, 'mm'), '01', count(*), 0) "1월",
       decode(to_char(hire_date, 'mm'), '02', count(*), 0) "2월",
       decode(to_char(hire_date, 'mm'), '03', count(*), 0) "3월",
       decode(to_char(hire_date, 'mm'), '04', count(*), 0) "4월",
       decode(to_char(hire_date, 'mm'), '05', count(*), 0) "5월",
       decode(to_char(hire_date, 'mm'), '06', count(*), 0) "6월",
       decode(to_char(hire_date, 'mm'), '07', count(*), 0) "7월",
       decode(to_char(hire_date, 'mm'), '08', count(*), 0) "8월",
       decode(to_char(hire_date, 'mm'), '09', count(*), 0) "9월",
       decode(to_char(hire_date, 'mm'), '10', count(*), 0) "10월",
       decode(to_char(hire_date, 'mm'), '11', count(*), 0) "11월",
       decode(to_char(hire_date, 'mm'), '12', count(*), 0) "12월"
from employees
group by to_char(hire_date, 'mm')
order by to_char(hire_date, 'mm');
       
       
       
select sum(m1) "1월", sum(m1) "2월", sum(m1) "3월", sum(m1) "4월", sum(m1) "5월", 
        sum(m1) "6월", sum(m1) "7월", sum(m1) "8월", sum(m1) "9월", sum(m1) "10월", sum(m1) "11월", sum(m1) "12월"
from ( select DECODE(TO_DATE(hire_date, 'mm'), '01', count(*), 0) m1,
               decode(to_char(hire_date, 'mm'), '02', count(*), 0) m2,
               decode(to_char(hire_date, 'mm'), '03', count(*), 0) m3,
               decode(to_char(hire_date, 'mm'), '04', count(*), 0) m4,
               decode(to_char(hire_date, 'mm'), '05', count(*), 0) m5,
               decode(to_char(hire_date, 'mm'), '06', count(*), 0) m6,
               decode(to_char(hire_date, 'mm'), '07', count(*), 0) m7,
               decode(to_char(hire_date, 'mm'), '08', count(*), 0) m8,
               decode(to_char(hire_date, 'mm'), '09', count(*), 0) m9,
               decode(to_char(hire_date, 'mm'), '10', count(*), 0) m10,
               decode(to_char(hire_date, 'mm'), '11', count(*), 0) m11,
               decode(to_char(hire_date, 'mm'), '12', count(*), 0) m12
        from employees
        group by to_char(hire_date, 'mm')
        )
order by to_char(hire_date, 'mm');


select employee_id, first_name,
        average_rank() over (order by salary desc) sal_avg_rank
from employees;



SAVEPOINT SP1; 

CREATE TABLE emp(
    emp_id NUMBER PRIMARY KEY,
    fname VARCHAR2(20),
    lname VARCHAR2(20),
    hire_date DATE DEFAULT SYSDATE
    );
DROP TABLE emp;


create table emp as
select employee_id emp_id, first_name fname, last_name lname, hire_date, job_id, salary, commission_pct, department_id dept_id
from employees
where 1=2;

select *
from emp;

insert into emp(emp_id, fname, lname, hire_date, job_id)
values (300, 'Steven', 'Jobs', sysdate, 'st_clerk');

insert into emp(emp_id, fname, lname, hire_date, job_id)
values (301, 'Bill', 'Gates', sysdate, 'st_man');

insert into emp(emp_id, fname, lname, hire_date, job_id, salary, NVL(COMMISSION_PCT,0), DEPARTMENT_ID)
select employee_id, first_name, last_name, hire_date, job_id
from employees
where department_id = 80;


insert into emp (emp_id, fname, lname, hire_date, job_ID, )
VALUES(302, 'Warren', 'Buffett', susdate, '');


TRUNCATE TABLE MONTH_SALARY;

INSERT INTO month_salary (magam_date, dept_id)
select sysdate, department_id
from employees
where department_id is not null
group by department_id;

select * from month_salary;

insert into emp(
select employee_id, first_name, last_name, hire_date, job_id, salary, commission_pct, department_id
from employees
where department_id between 30 and 60);

select * from emp;

commit;

update emp
set dept_id = 20
where emp_id >= 300;

select * from emp;

update emp
set salary = 5000, comm_pct = 0.4;

select max(salary)
from employees
where department_id=20;

select * from emp;

update emp
set salary = (select max(salary) from employees where department_id=20)
where emp_id = 103;

update emp
set salary = ( select round(avg(salary))
                from employees
                where department_id = 50)
where to_char(hire_date,'yyyy') = (select to_char(hire_date,'yyyy')
                                    from emp
                                    where emp_id = 180);
                                    
                                    
                                    
TRUNCATE TABLE MONTH_SALARY;

CREATE TABLE TMP(
ID NUMBER(3),
FNAME VARCHAR2(30)
);

COMMIT

create table dept1 as
select * from departments;

desc dept1;

select * from dept1;

create table emp20 as
select employee_id emp_id, first_name, hire_date
from employees
where department_id = 20;

desc emp20;

CREATE TABLE DEPT2 AS
SELECT * FROM DEPARTMENTS
WHERE 1 = 2;

select *
from dept2;


select * 
from emp20;

alter table emp20
add ( salary number(10,2), job_id varchar2(5));

alter table emp20
modify (salary number(8,2), job_id varchar2(10));

alter table emp20
drop column job_id;

alter table emp20
drop column salary;


create table null_test(col1 varchar2(5) NOT NULL, col2 varchar2(5));

insert into null_test(col1) values('AA');

insert into null_test (col2) values ('BB');

SELECT * FROM NULL_TEST;

UPDATE NULL_TEST SET COL2 = 'BB';

alter table null_test
modify (col2 not null);

alter table null_test
modify (col2 null);


create table check_test(
    NAME VARCHAR2(10) NOT NULL,
    GENDER VARCHAR2(10) NOT NULL CHECK (GENDER IN ('남성','여성')),
    SALARY NUMBER(8),
    DEPT_ID NUMBER(4),
    CONSTRAINT CHECK_SALARY_CK CHECK(SALARY>2000)
    );
    
INSERT INTO CHECK_TEST VALUES('홍길동','남성',3000,10);
INSERT INTO CHECK_TEST VALUES('이순신','남성',2100,0010);
INSERT INTO CHECK_TEST VALUES('김한울','여성',2500,0210);

ALTER TABLE CHECK_TEST
DROP CONSTRAINT CHECK_SALARY_CK;

ALTER TABLE CHECK_TEST
ADD CONSTRAINT CHECK_SALARY_DEPT_CK CHECK (SALARY > 2000);

CREATE TABLE UNIQUE_TEST(
COL1 VARCHAR2(5) UNIQUE NOT NULL,
COL2 VARCHAR2(5),
COL3 VARCHAR2(5) NOT NULL,
COL4 VARCHAR2(5) NOT NULL,
CONSTRAINT UNI_COL2_UK UNIQUE (COL2),
CONSTRAINT UNI_COL34_UK UNIQUE (COL3, COL4)
);

INSERT INTO UNIQUE_TEST
VALUES ('A1', 'B1', 'C1', 'D1');

INSERT INTO UNIQUE_TEST
VALUES ('A2', 'B2', 'C2', 'D2');

SELECT * FROM UNIQUE_TEST;

CREATE TABLE DEPT_TEST(
DEPT_ID NUMBER(4), DEPT_NAME VARCHAR2(30) NOT NULL,
CONSTRAINT DEPT_TEST_ID_PK PRIMARY KEY (DEPT_ID)
);

INSERT INTO DEPT_TEST VALUES(10, '개발부');
INSERT INTO DEPT_TEST VALUES(10, '영업부');

ALTER TABLE DEPT_TEST
DROP CONSTRAINT DEPT_TEST_ID_PK;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'DEPT_TEST';

ALTER TABLE DEPT_TEST
ADD CONSTRAINT DEPT_TEST_ID_NAME_PK PRIMARY KEY (DEPT_ID,DEPT_NAME);

