/*
���ϸ�:ex4
*/
-- q1 "employees'���̺��� ��� �������� �� (last name), �̸� (first_name )�� �޿�(salary)�� ��ȸ�ϼ���
SELECT LAST_NAME, FIRST_NAME, SALARY
FROM EMPLOYEES;

-- Q2 "JOBS'���̺��� ��� �������� ���� iD(JOB_Id)�� ������(JOB TITLE)�� ��ȸ�ϼ���
SELECT JOB_ID, JOB_TITLE
FROM JOBS;
-- Q3 'DEPARTMENT ���̺��� ��� �μ� ID(DEPARTMENT_ID)�� �μ��� (DEPARTMENT _NAME)�� ��ȸ�ϼ���
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM departments;

--Q4 'LOCATION ���̺��� ��� �������� ���� id(LOCTION_ID)�� ����(CITY)�� ��ȸ �ϼ���
SELECT LOCATION_ID, CITY
FROM lOCATIONS;

--5 EMPLOYEES ���̺��� �޿� (SALAYRY)�� 5000�̻��� �������� �̸� (FIRST NAME)�� �޿��� ��ȸ �ϼ���
SELECT FIRST_NAME, SALARY
FROM employees
WHERE SALARY>=5000;
--Q6 EMPLOYEE ���̺��� �ٹ�������(HIRE_DATE)�� 2005�� ������ �������� �̸� (FIRST_NAME)�� �ٹ� ������(HIRE_DAT)�� ��ȸ�ϼ���

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE> '05/01/01';

DESC EMPLOYEES;
