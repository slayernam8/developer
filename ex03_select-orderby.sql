/*
order by ��
order by ���� ����Ͽ� �˻��� ���� �����մϴ�.
ASC: ��������, �⺻��
DESC:��������
select ���� �� �������� �ɴϴ�
SELECT �� �⺻����
SELECT (DISTICT) �÷���1, �÷���2.....   5
FROM ���̺��                           .1
WHERE ������                            .2
GROUP BY �÷���                         .3
HAVING ������                           .4
ORDER BY �÷��� [ASC|DESC]              .6  
*/
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE;
-- ��������
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE DESC;
-- �� ALIAS�� �������� ���� 
SELECT EMPLOYEE_ID, LAST_NAME,SALARY*12 ANNSAL
FROM EMPLOYEES
ORDER BY ANNSAL;
--  �� ���� ��ġ�� ����Ͽ� ����
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY 3;
-- ���� ���� �������� ����
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, SALARY
FROM employees
ORDER BY department_id, salary DESC;
