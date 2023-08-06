/*
SUBQUERY ����
SELECT ���� ���ԵǴ� SELECT �� �Դϴ�.
*/
-- ������ SUBQUERY����
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY> (SELECT SALARY FROM EMPLOYEES WHERE LAST_NAME ='Abel');
--subquery ���� �׷� �Լ� ���
SELECT last_name, job_id, salary
FROM employees
WHERE salary=(SELECT MIN(salary) FROM employees);

/* 
������ subquery
in ����Ʈ�� ���� ����� ����
any 
=,<>, >,<,<= ,>= �����ڰ� �տ� �־�� �մϴ�.
< any �� �ִ밪���� ������ �ǹ� �մϴ�.
>any �� �ּҰ����� ŭ�� �ǹ��մϴ�
=any �� in�� �����ϴ�.
all 
>All�� �ִ밪���� ŭ�� �ǹ� �մϴ�.
<All�� �ּҰ����� ������ �ǹ� �մϴ�.
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
EXITS ������
 SUBQUERY���� �ּ��� �Ѱ��� ���� ��ȯ�ϸ� TRUE�� �򰡵˴ϴ�.
 

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
subquery�� null ��
��ȯ�� �� �� �ϳ��� null ���̸� ��ü query�� ���� ��ȯ���� �ʽ��ϴ�.
null ���� ���ϴ� ��� ������ ����� NUll�̱� �����Դϴ�.,
*/

SELE emp. last_name
FROM employees EMP
WHERE EMP. EMPLOYEE_ID IN(SELECT MGR.MANAGER_ID FROM EMPLOYEES);
