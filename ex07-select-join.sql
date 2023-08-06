/* ex7-select-join .spl
join 
sql에서 두개 이사의 테이블에서 관련된 행들을 결합하기 위한 연산입니다.

*/

/*
Natural join
 두테이블에서 
 */
 SELECT DEPARTMENT_ID, DEPARTMENT_NAME,
        LOCATION_ID, CITY
 FROM DEPARTMENTS
 NATURAL JOIN LOCATIONS;
 /*
 USING 절로 조인 
 명시적으로 결합을 수행하고자 하는 열을 정해줍니다.
 
 
 */
 
 SELECT EMPLOYEE_ID, LAST_NAME,
        LOCATION_ID, DEPARTMENT_ID
FROM employees JOIN DEPARTMENTS
USING (DEPARTMENT_ID);
 /* 
 ON 절로 조인
 ON절을 사용하여 조인 조건을 지정합니다.*/
 
 SELECT e.employee_id, e.last_name, 
        e.department_id, d.location_id
FROM employees e join departments d
ON(e. department_id =d.department_id);

SELECT e.employee_id, e.last_name, 
        e.department_id, d.location_id
FROM employees e, departments d        
WHERE e.department_id = d.department_id;


-- on절 사용하여 3-way 조인
SELECT e.employee_id, l. CITY, d. DEPARTMENT_NAME
FROM employees e 
JOIN departments d
ON e. department_id = d. department_id
JOIN LOCATIONS l
ON d. location_id= l. location_id;

--조인에 추가 조건 적용 
SELECT e. employee_id, e.last_name,e.manager_id, e. department_id,
       d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id =d.department_id
WHERE e.manager_id= 149;
/*
테이블 자체 조인 
     on절을 사용하는 Self join
    




*/
SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id= manager.employee_id;


/*
nonequijoin








 등호 연산자 외의 다른 연산자를 포함하는 조인 조건입니다.
 
 */
 
 CREATE TABLE JOB_GRADES(
 grade_level CHAR(1),
 lowest_sal NUMBER(8,2) NOT NULL,
 highest_sal NUMBER(8,2) NOT NULL
 );
 ALTER TABLE job_grades
 ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY(grade_level);
 
 INSERT INTO job_grades VALUES('A', 1000,2999);
 INSERT INTO job_grades VALUES('B', 3000,5999);
 INSERT INTO job_grades VALUES('C', 6000,9999);
 INSERT INTO job_grades VALUES('D', 10000,14999);
 INSERT INTO job_grades VALUES('E', 15000,24999);
 INSERT INTO job_grades VALUES('F', 25000,40000);
 COMMIT;
 
 SELECT e.last_name, e.salary, j.grade_level
 FROM employees e JOIN job_grades j
 ON e.salary BETWEEN j.lowest_sal and j.highest_sal;
 
 SELECT * FROM JOB_GRADES;
 
 
 /*
 학생이 수강과목
 수강과목
 학생 id
 과목 id 
 학기
 신청날짜*/
 
 
 /*
 INNER JOIN과 OUTER JOIN 
 INNER JOIN 
 일치하지 않는 행은 출력에 표시되지 않습니다( 교집합 해당 행 출력)
 
 OUTER JOIN 
 한 테이블의 행을 기반으로 다른 테이블과 연결이 없는 행까지 포함하여 반환
 */
 
 /*
 LEFT OUTER JOIN
 DEPARTMENTS 테이블에 대응되는 행이 없어도 
 왼쪽 테이블인 EMPLOYEES테이블의 모든 행을 검색합니다.
 */
 
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
 join departments d
 ON e.department_id= d.department_id;
 
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
 LEFT OUTER JOIN departments d
 ON e.department_id= d.department_id;
 
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e,departments d
 WHERE e.department_id= d.department_id(+);
 
 /* RIGHT OUTER JOIN
 EMPLOYEES 테이블에 대응되는 행이 없어도 
 오른쪽 테이블인 DEAPARTMENTS 테이블에 기준을 둔다
 */
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
RIGHT OUTER JOIN departments d
 ON e.department_id= d.department_id;
 /*
 FULL OUTER JOIN
 DEPARTMENTS , EMPLOYESS 대응되는 행이 없어도 
 테이블의 모든 행을 검색한다*/
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
FULL OUTER JOIN departments d
 ON e.department_id= d.department_id; 
 /* 
 CARTESIAN PRODUCT
 조인 조건이 잘못되거나 완전히 생략된 경우 결과가 모든 해의 조합이 표시되는 
 CARTESIAN PRODUCT로 나타냅니다.*/
 /*
 CROSS JOIN
 두테이블의 교차 곱을 생성합니다.
 
 */
 SELECT LAST_NAME, department_name
 FROM employees
 CROSS JOIN DEPARTMENTS;