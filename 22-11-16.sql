


SELECT 2+2
FROM dual;  -- 확인만 하는 가짜 테이블, 가상의 테이블

--별칭
SELECT  employee_id emp_id, last_name name, salary, salary *12
FROM    employees
WHERE   department_id=80;

--80번부서의 사원정보와 인원수?
SELECT  employee_id emp_id, last_name, salary, salary *12
FROM    employees
WHERE   department_id=80;

--34명이나 근무하는 80번 부서는 무슨일을 하는곳인가?
SELECT  *
FROM    departments
WHERE   department_id=80;

--한해 급여가 120000인 사원정보를 조회하라
SELECT *
FROM employees
WHERE salary*12=120000;

--이름과 성을 연결하여 이름/성명 이라는 컬럼으로 조회?
SELECT  employee_id emp_id, first_name ||' '|| last_name fullname, salary, salary *12
FROM    employees
WHERE   department_id=80;

--6p 예제
SELECT employee_id 사번, first_name ||' '|| last_name 성명
FROM employees
WHERE employee_id=101;

--6p 사번 101인 사원의 사번,성명,연봉,부서코드 조회
SELECT employee_id 사번, first_name ||' '|| last_name 성명, salary*12 "Annual Salary", department_id 부서코드
FROM employees
WHERE employee_id=101;

--6p 급여가 3000 이하인 사원의 정보 조회
SELECT employee_id 사번, first_name ||' '|| last_name 성명, salary, department_id 부서코드
FROM employees
WHERE salary<=3000;

--30부서, 50부서, 80부서 이름을 알아와
SELECT *
FROM departments
WHERE department_id = 30;

SELECT *
FROM departments
WHERE department_id = 50;

SELECT *
FROM departments
WHERE department_id = 80;

--부서코드가 80번 이상인 사원의 정보를 조회
SELECT employee_id 사번, first_name ||' '|| last_name 성명, salary, department_id 부서코드
FROM employees
WHERE department_id >80;