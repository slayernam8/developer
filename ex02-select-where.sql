/* 
파일명: 
선택을 사용하여 행을 제한 합니다.
where 절을 사용하여 변환되는 행을 제한합니다.
where 
조건을 충족하는 행으로 query 를 제한합니다,
세가지 요소 
-열이름
- 비교 조건 
-열 이름 , 상수또는 

*/
 SELECT EMPLOYEE_ID, LAST_NAME , JOB_ID, DEPARTMENT_ID
 FROM EMPLOYEES 
 WHERE DEPARTMENT_ID= 90;
 /*
 문자열 및 날짜
 문자열 및 날짜 값은 작은  따움표로 묵습니다.
 문자 값은 대소문자를 구분하고 날짜 값은 형식을 구분 합니다.
 
 */
 SELECT LAST_NAME ,JOB_ID, DEPARTMENT_ID
 FROM EMPOLYEES
 WHERE LAST_NAME= 'WHALEN';
 
 SELECT LAST_NAME, HIRE_DATE
 FROM EMPLOYEES
 WHERE HIRE_DATE= '03/06/17';
 SELECT * FROM EMPLOYEES;
/*
비교 연산자 
특정 표현식을 다른값인나 표현식과 비교하는 조건에서 사용됩니다.
= 같음
> 보다 큼
< 보다 작음
>= 보다 작거나 같음 
<> 같지않음 
BETWEEN ...AND ... 두 값사이 (경계값 표현)
IN (SET) 값 리스트 중 일치하는 값 검색
LIKE  일치하는 문자 패턴 검색
IS NULL NULL 값인지 여부
*/
-- 비교연산자 사용 
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

-- IN 연산자를 사용하는 멤버 조건 
SELECT employee_id , last_name , salary, manager_id
From employees
WHERE manager_id IN(100,101,201);
SELECT employee_id , last_name , salary, manager_id
From employees
WHERE manager_id =100
OR manger_id=101
OR manger_id=201;
/*
like 연산자를 사용하여 패턴 일치 
like 연산자를 사용하여 유효한 검색 문자열 값의 대체 문자 검색을 수행 합니다.
검색 조건에는 리터럴 문자난 숫자가 포함 될 수 있습니다.
-%:0개 이상의 문자를 나타냅니다.
-_: 한 문자를 나타냅니다.

*/
SELECT first_name 
FROM employees
WHERE first_name Like '%A%';

-- 대체 문자 결합
SELECT last_name
From employees
WHERE last_name LIKE '_o%';
----- escape  식별자
SELECT employee_id , last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE'\';
/*
NULL 조건 사용 
IS NULL 연산자로 nuLL을 테스트 합니다.
*/
SELECT last_name, MANAGER_ID 
FROM EMPLOYEES 
WHERE MANAGER_ID IS NULL;
/*
논리 연산자를 사용하여 조건 정의
AND: 구성 요소 조건이 모두 참인 경우 TRUE 반환
OR: 구성 용소 조건 중 하나가 참인 경우 TRUE반환
NOT: 조건이 거짓인 경우 TRUE를 반환
*/
SELECT employee_id , last_name,JOB_ID, salary
FROM EMPLOYEES
WHERE salary >=1000
AND JOB_ID LIKE '%MAN%';
--- OR 연산자 사용
SELECT employee_id , last_name,JOB_ID, salary,12*12000000 AS TEST
FROM EMPLOYEES
WHERE salary>=10000
OR job_id LIKE '%MAN%';
-- NOT 연산자 사용
SELECT LAST_NAME, JOB_ID 
FROM employees
WHERE JOB_ID NOT IN('IT_PROG', 'ST_CLERK', 'SA_REP');
