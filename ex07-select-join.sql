/* ex7-select-join .spl
join 
sql���� �ΰ� �̻��� ���̺��� ���õ� ����� �����ϱ� ���� �����Դϴ�.

*/

/*
Natural join
 �����̺��� 
 */
 SELECT DEPARTMENT_ID, DEPARTMENT_NAME,
        LOCATION_ID, CITY
 FROM DEPARTMENTS
 NATURAL JOIN LOCATIONS;
 /*
 USING ���� ���� 
 ��������� ������ �����ϰ��� �ϴ� ���� �����ݴϴ�.
 
 
 */
 
 SELECT EMPLOYEE_ID, LAST_NAME,
        LOCATION_ID, DEPARTMENT_ID
FROM employees JOIN DEPARTMENTS
USING (DEPARTMENT_ID);
 /* 
 ON ���� ����
 ON���� ����Ͽ� ���� ������ �����մϴ�.*/
 
 SELECT e.employee_id, e.last_name, 
        e.department_id, d.location_id
FROM employees e join departments d
ON(e. department_id =d.department_id);

SELECT e.employee_id, e.last_name, 
        e.department_id, d.location_id
FROM employees e, departments d        
WHERE e.department_id = d.department_id;


-- on�� ����Ͽ� 3-way ����
SELECT e.employee_id, l. CITY, d. DEPARTMENT_NAME
FROM employees e 
JOIN departments d
ON e. department_id = d. department_id
JOIN LOCATIONS l
ON d. location_id= l. location_id;

--���ο� �߰� ���� ���� 
SELECT e. employee_id, e.last_name,e.manager_id, e. department_id,
       d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id =d.department_id
WHERE e.manager_id= 149;
/*
���̺� ��ü ���� 
     on���� ����ϴ� Self join
    




*/
SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id= manager.employee_id;


/*
nonequijoin








 ��ȣ ������ ���� �ٸ� �����ڸ� �����ϴ� ���� �����Դϴ�.
 
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
 �л��� ��������
 ��������
 �л� id
 ���� id 
 �б�
 ��û��¥*/
 
 
 /*
 INNER JOIN�� OUTER JOIN 
 INNER JOIN 
 ��ġ���� �ʴ� ���� ��¿� ǥ�õ��� �ʽ��ϴ�( ������ �ش� �� ���)
 
 OUTER JOIN 
 �� ���̺��� ���� ������� �ٸ� ���̺�� ������ ���� ����� �����Ͽ� ��ȯ
 */
 
 /*
 LEFT OUTER JOIN
 DEPARTMENTS ���̺� �����Ǵ� ���� ��� 
 ���� ���̺��� EMPLOYEES���̺��� ��� ���� �˻��մϴ�.
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
 EMPLOYEES ���̺� �����Ǵ� ���� ��� 
 ������ ���̺��� DEAPARTMENTS ���̺� ������ �д�
 */
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
RIGHT OUTER JOIN departments d
 ON e.department_id= d.department_id;
 /*
 FULL OUTER JOIN
 DEPARTMENTS , EMPLOYESS �����Ǵ� ���� ��� 
 ���̺��� ��� ���� �˻��Ѵ�*/
 SELECT e.last_name, e.department_id, d. department_name
 FROM employees e
FULL OUTER JOIN departments d
 ON e.department_id= d.department_id; 
 /* 
 CARTESIAN PRODUCT
 ���� ������ �߸��ǰų� ������ ������ ��� ����� ��� ���� ������ ǥ�õǴ� 
 CARTESIAN PRODUCT�� ��Ÿ���ϴ�.*/
 /*
 CROSS JOIN
 �����̺��� ���� ���� �����մϴ�.
 
 */
 SELECT LAST_NAME, department_name
 FROM employees
 CROSS JOIN DEPARTMENTS;