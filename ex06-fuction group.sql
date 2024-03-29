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
WHERE department_id= 50;
-- COUNT(DISTINCT EXPR) 은 특정 표션식을 기주으로 중복을 제거한 행의 개체수
SELECT COUNT(DISTINCT DEPARTMENT_ID) AS DISTINCT_DEPARTMENT_COUNT
FROM EMPLOYEES;
/*
GROUP BY 
여러행을 지정된 컬럼 기준으로 그룹화 하여 집계 함수를 적용하기 위한 구문

HAVING
  GROUP BY와 함께 사용되며 , 그룹화된 결과에 조건을 적용할때 사용합니다.
  WHERE -개별의 조건 
  HAVING - 그룹의 조건 
  
*/


--NVL 함수를 활용하여 null 값을 다른 값으로 대체한 후 avg() 함수 사용 
SELECT AVG(NVL(COMMISSION_PCT,0)) AS AVG_COMMISSION
FROM EMPLOYEES;


-- 부서별 평균 급여를 구합니다.
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMEN_ID;

SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID > 40

GROUP BY DEPARTMENT_ID, JOB_ID

ORDER BY DEPARTMENT_ID ASC;


--HAVING 절 사용 
-- 부서별 최대 급여가 10000 보다 큰 부서를 찾습니다.

SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY)>10000;

-- 직무별 총 급여가 13000보다 큰 직무를 찾습니다.

SELECT JOB_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE JOB_ID NOT LIKE '%REP&'
GROUP BY JOB_ID
HAVING SUM (SALARY) >13000
ORDER BY TOTAL_SALARY;

-- 그룹함수 함수중첩 가능 

SELECT MAX(AVG(SALARY)) AS MAX_AVG_SALARY
FROM employees
GROUP BY DEPARTMENT_ID;
