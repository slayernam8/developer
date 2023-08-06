/*





*/
-- �������Լ�
-- avg() ���
-- max() -�ִ밪
-- min- �ּҰ�
-- sum- �հ�

SELECT AVG(SALARY) AS AVG_SALARY,
        MAX(SALARY) AS MAX_SALARY,
        MIN(SALARY) AS MIN_SALARY,
        SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE job_id LIKE '%REP&';


--count() �Լ� -null ���� �ƴ� ��� ���� ������ ��ȯ�մϴ�.
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM employees
WHERE department_id = 50;



SELECT COUNT(COMMISSION_PCT) AS NON_NULL_COMMISSION_COUNT
FROM employees
WHERE department_id= 50;
-- COUNT(DISTINCT EXPR) �� Ư�� ǥ�ǽ��� �������� �ߺ��� ������ ���� ��ü��
SELECT COUNT(DISTINCT DEPARTMENT_ID) AS DISTINCT_DEPARTMENT_COUNT
FROM EMPLOYEES;
/*
GROUP BY 
�������� ������ �÷� �������� �׷�ȭ �Ͽ� ���� �Լ��� �����ϱ� ���� ����

HAVING
  GROUP BY�� �Բ� ���Ǹ� , �׷�ȭ�� ����� ������ �����Ҷ� ����մϴ�.
  WHERE -������ ���� 
  HAVING - �׷��� ���� 
  
*/


--NVL �Լ��� Ȱ���Ͽ� null ���� �ٸ� ������ ��ü�� �� avg() �Լ� ��� 
SELECT AVG(NVL(COMMISSION_PCT,0)) AS AVG_COMMISSION
FROM EMPLOYEES;


-- �μ��� ��� �޿��� ���մϴ�.
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMEN_ID;

SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID > 40

GROUP BY DEPARTMENT_ID, JOB_ID

ORDER BY DEPARTMENT_ID ASC;


--HAVING �� ��� 
-- �μ��� �ִ� �޿��� 10000 ���� ū �μ��� ã���ϴ�.

SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY)>10000;

-- ������ �� �޿��� 13000���� ū ������ ã���ϴ�.

SELECT JOB_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE JOB_ID NOT LIKE '%REP&'
GROUP BY JOB_ID
HAVING SUM (SALARY) >13000
ORDER BY TOTAL_SALARY;

-- �׷��Լ� �Լ���ø ���� 

SELECT MAX(AVG(SALARY)) AS MAX_AVG_SALARY
FROM employees
GROUP BY DEPARTMENT_ID;
