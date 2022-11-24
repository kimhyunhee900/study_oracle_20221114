--[실습문제]
--
--1. 50번 부서의 급여 평균과 사원수를 조회하시오

select department_id, round(avg(salary)), count(*)
from employees
where department_id = 50
group by department_id;

--2. 80번 부서의 급여 평균, 사원수, 업무코드를 조회하시오

select department_id, round(avg(salary)), count(*), job_id
from employees
where department_id = 80
group by department_id, job_id;


--3. 사원테이블에서 부서별 사원의 수, 급여 합계, 급여 평균을 조회하는 쿼리를 작성하시오

select department_id, count(*), sum(salary), round(avg(salary))
from employees
group by department_id
order by 1;

--4. 각 부서별로 급여합계, 급여평균, 사원수 수를 조회하시오
---- 업무코드별로

select department_id, sum(salary), round(avg(salary)), count(*)
from employees
group by department_id
order by 1;

select job_id, sum(salary), round(avg(salary)), count(*)
from employees
group by job_id
order by 1;

--문제의 유형이 같은듯.. 2.3.4번

--5. 10번, 20번, 40번, 60번 80번 부서에 대해 (부서별로) 급여합계, 급여평균, 사원의 수를 조회하시오

select department_id, sum(salary), round(avg(salary)), count(*)
from employees
where department_id IN(10, 20, 40, 60, 80)
group by department_id
order by 1;


--6. 업무코드가 CLERK인 사원들의 급여 합계, 급여평균을 조회하시오

select job_id, sum(salary) SUM_SAL, round(avg(salary)) AVG_SAL
from employees
where job_id  'CLERK'
group by job_id
order by 1;

-- 값은 나오지만 조회되지않음

--7. 각 부서별로 소속된 사원의 수가 5명 이하인 부서들의 급여 합계, 급여평균, 사원수를 조회하시오
---- 각 부서별, 업무별로 소속된 사원의 수가 10명 이상인 부서들의 급여 합계, 급여평균, 사원수를 조회하시오

SELECT department_id, sum(salary), round(avg(salary)), count(*)
FROM employees
GROUP BY department_id
HAVING  count(*) <= 5
ORDER BY 1;

SELECT department_id, job_id, sum(salary), round(avg(salary)), count(*)
FROM employees
GROUP BY department_id, job_id
HAVING  count(*) >= 10
ORDER BY 1;