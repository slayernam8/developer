/*





*/
-- 여러행함수
-- avg() 평균
-- max() -최대값
-- min- 최소값
-- sum- 합계

SELECT AVG(SALARY) AS AVG_SALARY,
        MAX(SALARY) AS MAX_SALARY,
        MIN(SALARY) AS MIN_SALARY,
        SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE job_id LIKE '%REP&';


--count() 함수 -null 값이 아니 모든 행의 개수를 반환합니다.
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM employees
WHERE department_id = 50;



SELECT COUNT(COMMISSION_PCT) AS NON_NULL_COMMISSION_COUNT
FROM employees
WHERE department_id= 80;




