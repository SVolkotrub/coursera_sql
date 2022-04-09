select * from employees;
select * from departments;
select * from employees
where SALARY < (select avg(SALARY) from employees);
select EMP_ID, SALARY, (select avg(SALARY) from employees) as average from employees;
select * from (select EMP_ID, F_NAME, DEP_ID from employees) as sveta_table;
select * from employees where DEP_ID IN (select DEPT_ID_DEP from departments) order by DEP_ID; -- получить список сотрудников, для которых существует идентификатор в таблице департаментов
select * from employees where DEP_ID IN (select DEPT_ID_DEP from departments where LOC_ID = 'L0003');-- получить список работников, работающих в определенном месте
select DEP_NAME, DEPT_ID_DEP from departments where DEPT_ID_DEP in (select DEP_ID from employees where SALARY > 70000); 
select E.EMP_ID, E.L_NAME, D.DEP_NAME from employees E, departments D where E.DEP_ID=D.DEPT_ID_DEP;
SELECT F_NAME, DEP_NAME FROM EMPLOYEES, DEPARTMENTS WHERE DEPT_ID_DEP = DEP_ID;