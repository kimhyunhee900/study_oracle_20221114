


SELECT 2+2
FROM dual;  -- Ȯ�θ� �ϴ� ��¥ ���̺�, ������ ���̺�

--��Ī
SELECT  employee_id emp_id, last_name name, salary, salary *12
FROM    employees
WHERE   department_id=80;

--80���μ��� ��������� �ο���?
SELECT  employee_id emp_id, last_name, salary, salary *12
FROM    employees
WHERE   department_id=80;

--34���̳� �ٹ��ϴ� 80�� �μ��� �������� �ϴ°��ΰ�?
SELECT  *
FROM    departments
WHERE   department_id=80;

--���� �޿��� 120000�� ��������� ��ȸ�϶�
SELECT *
FROM employees
WHERE salary*12=120000;

--�̸��� ���� �����Ͽ� �̸�/���� �̶�� �÷����� ��ȸ?
SELECT  employee_id emp_id, first_name ||' '|| last_name fullname, salary, salary *12
FROM    employees
WHERE   department_id=80;

--6p ����
SELECT employee_id ���, first_name ||' '|| last_name ����
FROM employees
WHERE employee_id=101;

--6p ��� 101�� ����� ���,����,����,�μ��ڵ� ��ȸ
SELECT employee_id ���, first_name ||' '|| last_name ����, salary*12 "Annual Salary", department_id �μ��ڵ�
FROM employees
WHERE employee_id=101;

--6p �޿��� 3000 ������ ����� ���� ��ȸ
SELECT employee_id ���, first_name ||' '|| last_name ����, salary, department_id �μ��ڵ�
FROM employees
WHERE salary<=3000;

--30�μ�, 50�μ�, 80�μ� �̸��� �˾ƿ�
SELECT *
FROM departments
WHERE department_id = 30;

SELECT *
FROM departments
WHERE department_id = 50;

SELECT *
FROM departments
WHERE department_id = 80;

--�μ��ڵ尡 80�� �̻��� ����� ������ ��ȸ
SELECT employee_id ���, first_name ||' '|| last_name ����, salary, department_id �μ��ڵ�
FROM employees
WHERE department_id >80;