/*
파일명:ex4
*/
-- q1 "employees'테이블에서 모든 직원들의 성 (last name), 이름 (first_name )및 급여(salary)를 조회하세요
SELECT LAST_NAME, FIRST_NAME, SALARY
FROM EMPLOYEES;

-- Q2 "JOBS'테이블에서 모든 직무들의 직무 iD(JOB_Id)와 직무명(JOB TITLE)을 조회하세요
SELECT JOB_ID, JOB_TITLE
FROM JOBS;
-- Q3 'DEPARTMENT 테이블에서 모든 부서 ID(DEPARTMENT_ID)와 부서명 (DEPARTMENT _NAME)을 조회하세요
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM departments;

--Q4 'LOCATION 테이블에서 모든 지역들의 지역 id(LOCTION_ID)와 도시(CITY)를 조회 하세요
SELECT LOCATION_ID, CITY
FROM lOCATIONS;

--5 EMPLOYEES 테이블에서 급여 (SALAYRY)가 5000이상인 직원들의 이름 (FIRST NAME)과 급여를 조회 하세요
SELECT FIRST_NAME, SALARY
FROM employees
WHERE SALARY>=5000;
--Q6 EMPLOYEE 테이블에서 근무시작일(HIRE_DATE)이 2005년 이후인 직원들의 이름 (FIRST_NAME)과 근무 시작일(HIRE_DAT)를 조회하세요

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE> '05/01/01';

DESC EMPLOYEES;
