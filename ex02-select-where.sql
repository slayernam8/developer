/* 
���ϸ�: 
������ ����Ͽ� ���� ���� �մϴ�.
where ���� ����Ͽ� ��ȯ�Ǵ� ���� �����մϴ�.
where 
������ �����ϴ� ������ query �� �����մϴ�,
������ ��� 
-���̸�
- �� ���� 
-�� �̸� , ����Ǵ� 

*/
 SELECT EMPLOYEE_ID, LAST_NAME , JOB_ID, DEPARTMENT_ID
 FROM EMPLOYEES 
 WHERE DEPARTMENT_ID= 90;
 /*
 ���ڿ� �� ��¥
 ���ڿ� �� ��¥ ���� ����  ����ǥ�� �����ϴ�.
 ���� ���� ��ҹ��ڸ� �����ϰ� ��¥ ���� ������ ���� �մϴ�.
 
 */
 SELECT LAST_NAME ,JOB_ID, DEPARTMENT_ID
 FROM EMPOLYEES
 WHERE LAST_NAME= 'WHALEN';
 
 SELECT LAST_NAME, HIRE_DATE
 FROM EMPLOYEES
 WHERE HIRE_DATE= '03/06/17';
 SELECT * FROM EMPLOYEES;
/*
�� ������ 
Ư�� ǥ������ �ٸ����γ� ǥ���İ� ���ϴ� ���ǿ��� ���˴ϴ�.
= ����
> ���� ŭ
< ���� ����
>= ���� �۰ų� ���� 
<> �������� 
BETWEEN ...AND ... �� ������ (��谪 ǥ��)
IN (SET) �� ����Ʈ �� ��ġ�ϴ� �� �˻�
LIKE  ��ġ�ϴ� ���� ���� �˻�
IS NULL NULL ������ ����
*/
-- �񱳿����� ��� 
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY <= 300;
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 2500 AND 3500;

SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >= 2500 
AND salary <=3500;

-- IN �����ڸ� ����ϴ� ��� ���� 
SELECT employee_id , last_name , salary, manager_id
From employees
WHERE manager_id IN(100,101,201);
SELECT employee_id , last_name , salary, manager_id
From employees
WHERE manager_id =100
OR manger_id=101
OR manger_id=201;
/*
like �����ڸ� ����Ͽ� ���� ��ġ 
like �����ڸ� ����Ͽ� ��ȿ�� �˻� ���ڿ� ���� ��ü ���� �˻��� ���� �մϴ�.
�˻� ���ǿ��� ���ͷ� ���ڳ� ���ڰ� ���� �� �� �ֽ��ϴ�.
-%:0�� �̻��� ���ڸ� ��Ÿ���ϴ�.
-_: �� ���ڸ� ��Ÿ���ϴ�.

*/
SELECT first_name 
FROM employees
WHERE first_name Like '%A%';

-- ��ü ���� ����
SELECT last_name
From employees
WHERE last_name LIKE '_o%';
----- escape  �ĺ���
SELECT employee_id , last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE'\';
/*
NULL ���� ��� 
IS NULL �����ڷ� nuLL�� �׽�Ʈ �մϴ�.
*/
SELECT last_name, MANAGER_ID 
FROM EMPLOYEES 
WHERE MANAGER_ID IS NULL;
/*
�� �����ڸ� ����Ͽ� ���� ����
AND: ���� ��� ������ ��� ���� ��� TRUE ��ȯ
OR: ���� ��� ���� �� �ϳ��� ���� ��� TRUE��ȯ
NOT: ������ ������ ��� TRUE�� ��ȯ
*/
SELECT employee_id , last_name,JOB_ID, salary
FROM EMPLOYEES
WHERE salary >=1000
AND JOB_ID LIKE '%MAN%';
--- OR ������ ���
SELECT employee_id , last_name,JOB_ID, salary,12*12000000 AS TEST
FROM EMPLOYEES
WHERE salary>=10000
OR job_id LIKE '%MAN%';
-- NOT ������ ���
SELECT LAST_NAME, JOB_ID 
FROM employees
WHERE JOB_ID NOT IN('IT_PROG', 'ST_CLERK', 'SA_REP');
