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
WHERE department_id= 80;




