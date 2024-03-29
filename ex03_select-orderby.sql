/*
order by 절
order by 절을 사용하여 검색된 행을 정렬합니다.
ASC: 오름차순, 기본값
DESC:내림차순
select 문의 맨 마지막에 옵니다
SELECT 문 기본형식
SELECT (DISTICT) 컬럼명1, 컬럼명2.....   5
FROM 테이블명                           .1
WHERE 조건절                            .2
GROUP BY 컬럼명                         .3
HAVING 조건절                           .4
ORDER BY 컬럼명 [ASC|DESC]              .6  
*/
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE;
-- 내림차순
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE DESC;
-- 열 ALIAS를 기준으로 정렬 
SELECT EMPLOYEE_ID, LAST_NAME,SALARY*12 ANNSAL
FROM EMPLOYEES
ORDER BY ANNSAL;
--  열 숫자 위치를 사용하여 정렬
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY 3;
-- 여러 열을 기준으로 정렬
SELECT LAST_NAME, JOB_ID, DEPARTMENT_ID, SALARY
FROM employees
ORDER BY department_id, salary DESC;
