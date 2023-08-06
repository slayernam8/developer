/*
SUBQUERY 구문
SELECT 문의 포함되는 SELECT 문 입니다.
*/
-- 단일행 SUBQUERY실행
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY> (SELECT SALARY FROM EMPLOYEES WHERE LAST_NAME ='Abel');
--subquery 에서 그룹 함수 사용
SELECT last_name, job_id, salary
FROM employees
WHERE salary=(SELECT MIN(salary) FROM employees);

/* 
여러행 subquery
in 리스트의 임의 멤버와 같음
any 
=,<>, >,<,<= ,>= 연산자가 앞에 있어야 합니다.
< any 는 최대값보다 작음을 의미 합니다.
>any 는 최소값보다 큼을 의미합니다
=any 는 in과 같습니다.
all 
>All은 최대값보다 큼을 의미 합니다.
<All은 최소값보다 작음을 의미 합니다.
*/
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE SALARY< ANY(SELECT SALARY FROM EMPLOYEES WHERE JOB_ID= 'IT_PROG')
AND job_id<>'IT_PROG';

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE SALARY IN (SELECT SALARY FROM EMPLOYEES WHERE JOB_ID= 'IT_PROG')
AND job_id<>'IT_PROG';

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE SALARY >ALL (SELECT SALARY FROM EMPLOYEES WHERE JOB_ID= 'IT_PROG')
AND job_id<>'IT_PROG';


/*
EXITS 연산자
 SUBQUERY에서 최소한 한개의 행을 반환하면 TRUE로 평가됩니다.
 

*/

SELECT * FROM departments
WHERE NOT EXISTS
            (SELECT* FROM employees 
            WHERE employees.department_id= departments.department_id);
            
            
SELECT * FROM departments
WHERE department_id NOT IN
            (SELECT* FROM employees 
            WHERE employees.department_id= departments.department_id);
            
            
/* 
subquery의 null 값
반환된 값 중 하나가 null 값이면 전체 query가 행을 반환하지 않습니다.
null 값을 비교하는 모든 조건은 결과가 NUll이기 때문입니다.,
*/

SELE emp. last_name
FROM employees EMP
WHERE EMP. EMPLOYEE_ID IN(SELECT MGR.MANAGER_ID FROM EMPLOYEES);
